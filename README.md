generic-docker-symfony-dev-container
====================================

Generic Docker Symfony Dev Container

This Repository is home to a Genric Smyfony Docker Container to help Devlopment

Installation:
  ```
  git submodule add https://github.com/stiftungswo/generic-docker-symfony-dev-container.git env
  cd env
  ./build.sh
  ```
  
  Add the Following to AppKernel.php
  ```php
  public function getCacheDir()
  {
      if (in_array($this->getEnvironment(), array(
          'dev',
          'test'
      ))) {
          return '/tmp/app/cache/' . $this->environment;
      } else {
          return $this->rootDir . '/cache/' . $this->environment;
      }
  }

  public function getLogDir()
  {
      if (in_array($this->getEnvironment(), array(
          'dev',
          'test'
      ))) {
          return '/tmp/app/log/' . $this->environment;
      } else {
          return $this->rootDir . '/log/' . $this->environment;
      }
  }
  ```

Usage
  ```
  cd env
  ./run.sh #Starts the Conatainer with the Symfony Main Directory Mounted
  ```
  
  ```
  cd env
  ./stop.sh #Stops the Container whos id is under app/cache/docker.cid
  ```
