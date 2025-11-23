# Makefile para gestionar la configuración de VS Code
# Compatible con macOS/Linux

.PHONY: help install backup verify clean all

help: ## Mostrar esta ayuda
	@echo "Comandos disponibles:"
	@echo ""
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}'
	@echo ""

install: ## Instalar configuración de VS Code
	@echo "Instalando configuración..."
	@./scripts/install.sh

install-backup: ## Instalar con backup automático
	@echo "Instalando configuración con backup..."
	@./scripts/install.sh --backup

backup: ## Hacer backup de configuración actual
	@echo "Creando backup..."
	@./scripts/backup.sh
	@echo ""
	@echo "No olvides hacer commit:"
	@echo "  git add ."
	@echo "  git commit -m 'Update configuration'"
	@echo "  git push"

verify: ## Verificar instalación
	@./scripts/verify.sh

sync: backup ## Sincronizar (backup + commit + push)
	@echo "Sincronizando con el repositorio..."
	@git add .
	@git status
	@echo ""
	@read -p "¿Deseas hacer commit? (s/n): " -n 1 -r; \
	echo ""; \
	if [[ $$REPLY =~ ^[Ss]$$ ]]; then \
		read -p "Mensaje de commit: " msg; \
		git commit -m "$$msg"; \
		git push; \
		echo "✓ Cambios sincronizados"; \
	else \
		echo "Commit cancelado"; \
	fi

clean: ## Limpiar archivos temporales
	@echo "Limpiando archivos temporales..."
	@find . -name "*.backup" -delete
	@find . -name "*.bak" -delete
	@find . -name ".DS_Store" -delete
	@find . -name "Thumbs.db" -delete
	@echo "✓ Limpieza completada"

all: backup install verify ## Hacer backup, instalar y verificar

permissions: ## Arreglar permisos de scripts
	@echo "Configurando permisos de ejecución..."
	@chmod +x scripts/*.sh
	@echo "✓ Permisos configurados"

# Aliases
i: install ## Alias para install
b: backup ## Alias para backup
v: verify ## Alias para verify
s: sync ## Alias para sync
