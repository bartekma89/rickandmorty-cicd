import * as Sentry from '@sentry/react';

export function initSentry() {
  if (import.meta.env.VITE_ENVIRONMENT !== 'production') {
    return;
  }

  Sentry.init({
    dsn: import.meta.env.VITE_SENTRY_DSN,
    integrations: [],
  });
}
