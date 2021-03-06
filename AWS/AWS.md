# <center>AWS</center>

## ¿Qué es AWS?

Amazon Web Service es un conjunto de herramientas y servicio de cloud computing de Amazon

**Herramientas:**

- Cloud computing

- Aplicaciones empresariales

- Bases de datos

- Almacenamiento y gestores de contenido

- Inteligencia de negocios o Business Intellegence

- Gestión de aplicaciones móviles

- Internet de las cosas (IT)

- Herramientas para desarrolladores

- Seguridad y control de acceso

## Aspectos básicos de EC2

Amazon Elastic computing cloud es una parte central dentro de AWS el cual te permite alquilar computadores virtuales a los cuales pueden ejecutar nuestras propias aplicaciones. Este proporciona la capacidad escalable en la nube de AWS.

El uso de EC2 elimina la necesidad de invertir inicialmente en hardware de manera que puedes desarrollar e implementar aplicaciones en menos tiempo. EC2 te permite escalar hacia arriba y hacia abajo para controlar cambios en los requisitos o picos de popularidad con lo que se reduce la necesidad de prever el trafico. 

**Características:**   

- Entorno informáticos virtuales (instancias)

- Plantilla pre-configuradas para las instancias

- Varias configuraciones

- Información de inicio de sesión segura

- Volúmenes de almacenamiento

- Ubicaciones físicas para los recursos

- Un firewall

- Direcciones IPv4

- Redes virtuales

## Aspectos básicos de SNS

Dentro de la infraestructura de AWS, SNS (servicio simple de notificaciones) es uno de los servicios que se ocupan de enviar notificaciones.

**Funcionamiento de SNS:**

<img src="https://docs.aws.amazon.com/es_es/sns/latest/dg/images/vpce-tutorial-architecture.png" title="Funcionamiento de SNS" alt="" data-align="center">

En su estructura más básica solo necesitamos crear un tema de notificación o un asunto para avisar y subscribir los puntos que recibirán la notificación. Esto puntos deben ser de diferentes tipos por ejemplo: http, https, email, etc.  

<img src="https://d2908q01vomqb2.cloudfront.net/1b6453892473a467d07372d45eb05abc2031647a/2017/11/20/introducing_sns_message_filtering_image_1.png" title="" alt="" data-align="center">

## ¿Qué es IAM?

AWS Identity and Access Management (IAM) es un servicio web que le ayuda a controlar de forma segura el acceso a los recursos de AWS. Utilice IAM para controlar quién está autenticado (ha iniciado sesión) y autorizado (tiene permisos) para utilizar recursos.

Cuando se crea por primera vez una cuenta de AWS, se comienza con una única identidad de inicio de sesión que tiene acceso completo a todos los servicios y recursos de AWS de la cuenta. Esta identidad recibe el nombre de AWS de la cuenta de *usuario raíz* y se obtiene acceso a ella iniciando sesión con la dirección de correo electrónico y la contraseña que utilizó para crear la cuenta. Le recomendamos que no utilice usuario raíz en sus tareas cotidianas, ni siquiera en las tareas administrativas. En lugar de ello, es mejor ceñirse a la [práctica recomendada de utilizar exclusivamente usuario raíz para crear el primer usuario de IAM](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#create-iam-users). A continuación, guarde las credenciales de usuario raíz en un lugar seguro y utilícelas únicamente para algunas tareas de administración de cuentas y servicios.

## Características de IAM

IAM le ofrece las siguientes características:

**Acceso compartido a la cuenta de AWS**

Puede conceder permiso a otras personas para administrar y utilizar los recursos de su cuenta de AWS sin tener que compartir su contraseña o clave de acceso.



**Permisos detallados**

Puede conceder diferentes permisos a diferentes personas para diferentes recursos. Por ejemplo, puede permitir que algunos usuarios tengan acceso completo a Amazon Elastic Compute Cloud (Amazon EC2), Amazon Simple Storage Service (Amazon S3), Amazon DynamoDB, Amazon Redshift y otros servicios de AWS. En el caso de otros usuarios, puede permitir el acceso de solo lectura a solo algunos buckets de S3 o conceder permiso para administrar solo algunas instancias EC2 o para tener acceso a la información de facturación, pero nada más.



**Acceso seguro a los recursos de AWS para aplicaciones que se ejecutan en Amazon EC2**

Puede utilizar características de IAM para proporcionar de forma segura credenciales para las aplicaciones que se ejecutan en instancias EC2. Estas credenciales proporcionan permisos a la aplicación para obtener acceso a otros recursos de AWS. Entre los ejemplos se incluyen buckets de S3 y tablas de DynamoDB.



**Multi-Factor authentication (MFA)**

Puede agregar una autenticación de dos factores a la cuenta y a los usuarios individuales para mayor seguridad. Con MFA usted o sus usuarios deben proporcionar no solo una contraseña o clave de acceso para trabajar con la cuenta, sino también un código de un dispositivo configurado específicamente.



**Identidad federada**

Puede permitir que los usuarios que ya tienen contraseñas en otros lugares, por ejemplo, en la red corporativa o en un proveedor de identidad de Internet, obtengan acceso temporal a la cuenta de AWS.

Información de identidad para realizar un control

Si utiliza AWS CloudTrail, recibirá registros de logs que incluyen información sobre los usuarios que realizaron solicitudes de recursos en su cuenta. Esta información se basa en identidades de IAM.



**Conformidad con DSS de PCI**

IAM admite el procesamiento, el almacenamiento y la transmisión de datos de tarjetas de crédito por parte de un comerciante o proveedor de servicios, y se ha validado por estar conforme con el Estándar de Seguridad de los Datos de la Industria de las Tarjetas de Pago (DSS PCI). Para obtener más información acerca de PCI DSS, incluido cómo solicitar una copia de AWS PCI Compliance Package, consulte PCI DSS nivel 1.

Integración con muchos servicios de AWS

Para obtener una lista de servicios de AWS que funcionan con IAM, consulte Servicios de AWS que funcionan con IAM.



**Consistencia final**

IAM, al igual que muchos otros servicios de AWS, brinda consistencia final. IAM ofrece una alta disponibilidad, ya que replica datos entre varios servidores ubicados en centros de datos de Amazon de todo el mundo. Si una solicitud para cambiar algunos datos se realiza correctamente, el cambio se confirma y se almacena de forma segura. Sin embargo, el cambio se debe replicar en IAM, lo que puede llevar algún tiempo. Estos cambios incluyen la creación o actualización de usuarios, grupos, roles o políticas. Le recomendamos que no los incluya en las rutas de código de gran importancia y alta disponibilidad de su aplicación. En su lugar, realice los cambios de IAM en otra rutina de inicialización o configuración que ejecute con menos frecuencia. Además, asegúrese de comprobar que los cambios se han propagado antes de que los flujos de trabajo de producción dependan de ellos. Para obtener más información, consulte Los cambios que realizo no están siempre visibles inmediatamente.



**Uso gratuito**

AWS Identity and Access Management (IAM) y AWS Security Token Service (AWS STS) son características de las cuentas de AWS que se ofrecen sin cargo adicional. Solo se le cobrará cuando tenga acceso a otros servicios de AWS utilizando los usuarios de IAM o las credenciales de seguridad temporales de AWS STS. Para obtener información sobre los precios de otros productos de AWS, consulte la página de precios de Amazon Web Services.

## Roles IAM

Un rol IAM es una identidad con permisos específicos. Sin embargo la intención es que cualquier usuario pueda asumir un rol que necesite, además un rol no tiene asociada credenciales a lo largo o con algún plazo estándar como una contraseña o claves de acceso. En su lugar cuando se asume un rol se dan credenciales temporales para la sesión.

## Usuarios y políticas IAM

Las políticas de IAM definen los permisos para una acción independiente del método que se utilice para realizar la operación.

**Tipos de políticas:**

- Políticas basadas en identidad

- Políticas basadas en recursos

- Límites de permisos

- SCP de organizaciones

- Listas de control de acceso

- Políticas de sesión

## Acceso a IAM

Puede trabajar con AWS Identity and Access Management de cualquiera de las siguientes formas.

**Consola de administración de AWS**

La consola es una interfaz basada en navegador para administrar los recursos de IAM y AWS. Para obtener más información sobre cómo acceder a IAM a través de la consola, consulte [La consola de IAM y la página de inicio de sesión](https://docs.aws.amazon.com/es_es/IAM/latest/UserGuide/console.html). Para ver un tutorial que le oriente en el uso de la consola, consulte [Creación del primer grupo y usuario administrador de IAM](https://docs.aws.amazon.com/es_es/IAM/latest/UserGuide/getting-started_create-admin-group.html).

**Herramientas de línea de comandos de AWS**

Puede utilizar las herramientas de línea de comandos de AWS para emitir comandos en la línea de comando de su sistema con el fin de llevar a cabo tareas de IAM y de AWS. El uso de la línea de comandos puede ser más rápido y cómodo que la consola. Las herramientas de línea de comandos también son útiles si desea crear scripts que realicen tareas de AWS.

AWS proporciona dos conjuntos de herramientas de línea de comandos: [AWS Command Line Interface](https://aws.amazon.com/cli/) (AWS CLI) y la [Herramientas de AWS para Windows PowerShell](https://aws.amazon.com/powershell/). Para obtener información acerca del modo de instalar y usar la AWS CLI, consulte [AWS Command Line Interface Guía del usuario](https://docs.aws.amazon.com/cli/latest/userguide/). Para obtener información acerca del modo de instalar y usar la Herramientas para Windows PowerShell, consulte [Guía del usuario de Herramientas de AWS para Windows PowerShell](https://docs.aws.amazon.com/powershell/latest/userguide/).

**SDK de AWS**

AWS ofrece SDK (kits de desarrollo de software) que se componen de bibliotecas y código de muestra para diversos lenguajes de programación y plataformas (Java, Python, Ruby, .NET, iOS, Android, etc.). Los SDK proporcionan una forma cómoda de crear acceso mediante programación a IAM y AWS. Por ejemplo, los SDK se encargan de tareas como firmar solicitudes criptográficamente, gestionar los errores y reintentar las solicitudes de forma automática. Para obtener información sobre los SDK de AWS, incluido cómo descargarlos e instalarlos, consulte la página [Herramientas para Amazon Web Services](https://aws.amazon.com/tools/).

**API HTTPS de IAM**

Puede acceder a IAM y AWS de manera programática mediante la API HTTPS de IAM, que le permite emitir solicitudes HTTPS directamente al servicio. Cuando use la API HTTPS, debe incluir código para firmar digitalmente las solicitudes utilizando sus credenciales. Para obtener más información, consulte [Llamar a la API mediante solicitudes de consulta HTTP](https://docs.aws.amazon.com/es_es/IAM/latest/UserGuide/programming.html) y la [IAM API Reference](https://docs.aws.amazon.com/IAM/latest/APIReference/).

## Infraestructura Global de AWS

Los centros de datos de AWS se crean en clusters en diversas regiones globales, ningún centro de datos está frío en caso de falla los procesos automatizados alejan el trafico de datos del cliente del área afectada así las aplicaciones principales se implementan en una configuración de 'n+1' para que en el caso de una falla en el centro de datos haya capacidad suficiente para permitir que el trafico se equilibre en la carga de los sitios restantes.



Los centros de datos están organizados en AZ (Zona de Disponibilidad) los cuales comprenden uno o más centro de datos con alguna o algunas zonas de disponibilidad que tienen hasta seis centro de datos sin embarga ningún centro de datos puede ser parte de dos AZ.



Como la directiva de privacidad de datos de la unión europea, cuando se almacenen datos en una región especifica no se replica fuera de está región. AWS nunca saca sus datos de la región donde los coloco por lo tanto es tu responsabilidad replicar datos en todas las regiones si así lo requieren las necesidades del negocio. AWS proporcionara información sobre el país y el estado donde reside cada región.



Los cache de bordes regionales utilizados por defecto con Cloud from de Amazon se utilizan cuando se tiene contenido al que no se accede con la frecuencia suficiente para permanecer en un ubicación de borde. Los cachés de bordes regionales absorben todo el contenido y proporcionan una alternativa a este contenido que debe ser recuperado de algún servidor de origen en caso de alguna falla.



## Auto escalado en AWS

El escalado de aplicaciones para optimizar los costos y el nivel de desempeño es muy utilizado en AWS, éste monitoriza tus aplicaciones y ajusta automáticamente la capacidad para mantener un desempeño predecible y escalable al menor costo posible.



## Puertos de enlace a Internet

Un gateway de Internet es un componente de la BPC de escalado horizontal redundante y de alta disponibilidad que permite la comunicación entre las instancias de BPC e Internet.

Por lo tanto no plantea riesgos de disponibilidad ni restricciones de ancho de banda para el tráfico de red de Internet.

Sirve para dos fines uno proporcionar un objetivo en sus tablas de ruteo de bpc para el tráfico direccionable de Internet y realizar la conversión de las direcciones de red NAT para las distancias que tengan asignadas direcciones IPv4 públicas.



## ¿Qué es Amazon VPC?

Amazon Virtual Private Cloud (Amazon VPC) le permite lanzar recursos de AWS en una red virtual que haya definido. Dicha red virtual es prácticamente idéntica a las redes tradicionales que se utilizan en sus propios centros de datos, con los beneficios que supone utilizar la infraestructura escalable de AWS.



**Más información**

- [VPC y subredes](https://docs.aws.amazon.com/es_es/vpc/latest/userguide/what-is-amazon-vpc.html#what-is-vpc-subnet)

- [Plataformas admitidas](https://docs.aws.amazon.com/es_es/vpc/latest/userguide/what-is-amazon-vpc.html#what-is-supported-platform)

- [VPC predeterminadas y no predeterminadas](https://docs.aws.amazon.com/es_es/vpc/latest/userguide/what-is-amazon-vpc.html#what-is-default-nondefault)

- [Acceso a Internet](https://docs.aws.amazon.com/es_es/vpc/latest/userguide/what-is-amazon-vpc.html#what-is-connectivity)

- [Acceso a redes corporativas o domésticas](https://docs.aws.amazon.com/es_es/vpc/latest/userguide/what-is-amazon-vpc.html#what-is-vpn)

- [Acceso a servicios a través de AWS PrivateLink](https://docs.aws.amazon.com/es_es/vpc/latest/userguide/what-is-amazon-vpc.html#what-is-privatelink)

- [Consideraciones sobre la red global privada de AWS](https://docs.aws.amazon.com/es_es/vpc/latest/userguide/what-is-amazon-vpc.html#what-is-aws-global-network)



## Tablas de ruteo

Contienen conjuntos de reglas denominadas rutas que se usan para determinar a dónde se dirige el tráfico de red. Cada subred de la BPC debe estar asociada a una tabla de ruteo. La tabla controla el direccionamiento de la subred.

La subred sólo puede asociarse a una tabla de ruteo a la vez. Sin embargo puede asociarse a varias subred a la misma tabla de ruteo. Dentro de los conceptos básicos de la tabla de ruteo tenemos a continuación los siguientes:



- La BPC dispone de un router implícito de manera automática. 

- La BPC cuenta con una tabla de ruteo principal que puede modificar. 

- Asimismo puede crear tablas de ruteo adicionales personalizadas para tu BPC. 

- Cada subred debe estar asociada a una tabla de ruteo. Dicha tabla controlará el direccionamiento de la subred si no asocias de manera explícita ninguna subred a una tabla de ruteo.



## Amazon RDS

RDS (Servicio de bases de datos relacional) escala una base de datos relacional en la nube con tan solo unos clics ya que es sencillo de configurar utilizar y escalar una base de datos relacional en la nube.



El servicio suministra la capacidad rentable y escalable al mismo tiempo que automatiza las arduas tareas administrativas como el aprovisionamiento del hardware la configuración de bases de datos y la implementación de parches así como la creación de copias de seguridad lo libera de estas tareas para que pueda concentrarse en sus aplicaciones y darles un rendimiento más rápido.



Esta función de Amazon está disponible para varios tipos de instancias de bases de datos optimizadas para memoria rendimiento u operaciones de entrada salida y le proporciona seis motores de bases de datos conocidos entre los que puedes elegir incluidos Amazon Arora posgrado SQL SQL Maria de Oracle Data Boyz y SQL Server.



## Dynamo DB

Es un servicio de bases de datos No SQLrápido y flexible para cualquier escala.



Este es una base de datos de claves valor y documentos que ofrece rendimiento en milisegundos de un solo dígito a cualquier escala se trate de una base de datos multi región y multi maestro completamente administrada con seguridad integrada copia de seguridad y restauración así como almacenamiento de caché en memoria para aplicaciones a escala de Internet Dayna Mode puede gestionar más de 10 billones de solicitudes por día y admite picos de más de 20 millones de solicitudes por segundo.
