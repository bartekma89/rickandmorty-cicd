/// <reference types="vite/client" />

interface ImportMetaEnv {
  readonly APP_VERSION: string;
  readonly VITE_ENVIRONMENT: string;
  readonly VITE_S3_IMAGES_BUCKET: string;
  readonly VITE_AWS_MONITORING_API: string;
  readonly VITE_SENTRY_DSN: string;
  readonly SENTRY_AUTH_TOKEN: string;
  readonly VITE_AWS_FEATUREVISIOR: string;
  readonly VITE_ENV_NAME: string;
}

interface ImportMeta {
  readonly env: ImportMetaEnv;
}

declare const __APP_VERSION__: string;
