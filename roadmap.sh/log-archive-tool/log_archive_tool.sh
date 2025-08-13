validateDir(){
  if [ -z "$1" ]; then 
    echo "Require directory parameter !!"
    return 1
  fi

  if [ ! -d "$1" ]; then 
    echo "Directory not exist !!"
    return 1
  fi
  return 0
}


saveOnCloud(){
  echo "Fake save on Cloud processing ...  "
  # aws s3 sync --endpoint=endpoint  \
  #  --profile=cloudflare ./$1 s3://bucket/save-path
}


compress(){
  COMPRESS_NAME=$(date +"%Y%m%d_%H%M%S")
  tar -czf logs_archive_$COMPRESS_NAME.tar.gz $1    
  saveOnCloud $COMPRESS_NAME
}



log-archive(){
  if validateDir $1 ; then 
    compress $1
  fi
}

