const { NOTIFY_MESSAGE, WEBHOOK_URL } = process.env;

async function notify() {
  try {
    await fetch(WEBHOOK_URL, {
      method: 'POST',
      body: JSON.stringify({
        message: NOTIFY_MESSAGE,
      }),
    });
  } catch (error) {
    console.error('Error sending message to Webhook', error);
  }
}

await notify();
