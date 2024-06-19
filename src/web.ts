import { WebPlugin } from '@capacitor/core';

import type { HelloPlugin } from './definitions';

export class HelloWeb extends WebPlugin implements HelloPlugin {
  async echo(): Promise<String> {
    console.log('ECHO');
    return "Hello World!";
  }
}
