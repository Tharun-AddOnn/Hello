import { WebPlugin } from '@capacitor/core';

import type { HelloPlugin } from './definitions';

export class HelloWeb extends WebPlugin implements HelloPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
