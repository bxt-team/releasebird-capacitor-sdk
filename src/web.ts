import { WebPlugin } from '@capacitor/core';

import type { ReleasebirdPlugin } from './definitions';

export class ReleasebirdWeb extends WebPlugin implements ReleasebirdPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
