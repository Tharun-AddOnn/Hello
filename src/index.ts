import { registerPlugin } from '@capacitor/core';

import type { HelloPlugin } from './definitions';

const Hello = registerPlugin<HelloPlugin>('Hello', {
  web: () => import('./web').then(m => new m.HelloWeb()),
});

export * from './definitions';
export { Hello };
