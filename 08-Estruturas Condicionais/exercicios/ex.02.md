# Exercício 02

O que é impresso na tela após a execução do seguinte script? Explique cada linha do script.

```bash
#!/bin/bash

case "${1}" in
          start) /bin/daemon start ;;
           stop) /bin/daemon stop  ;;
         status) /bin/daemon status anacron ;;

        restart) /bin/daemon stop 
                 /bin/daemon start ;;

              *) echo $"Usage: $0 {start|stop|restart|condrestart|status}"
                 exit 1 ;;
esac

```

