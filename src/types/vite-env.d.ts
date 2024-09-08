/// <reference types="vite/client" />

interface ImportMetaEnv {
  readonly APP_VERSION: string;
  readonly VITE_ENVIRONMENT: string;
  readonly VITE_S3_IMAGES_BUCKET: string;
}

interface ImportMeta {
  readonly env: ImportMetaEnv;
}

declare const __APP_VERSION__: string;
