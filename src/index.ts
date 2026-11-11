import { Hono } from 'hono';

const app = new Hono();

app.get('/', (c) => {
  return c.text('Hello from Hono! Running locally on Deno, ready for Cloudflare.');
});

// Both `deno serve` and Cloudflare Workers look for this default export
export default app;