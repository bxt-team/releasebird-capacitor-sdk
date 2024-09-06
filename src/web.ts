import { WebPlugin } from '@capacitor/core';
import Rbird from 'releasebird-javascript-sdk';

import type { ReleasebirdPlugin } from './definitions';

export class ReleasebirdWeb extends WebPlugin implements ReleasebirdPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }

  async initialize(options: { apiKey: string } ): Promise<void> {
    Rbird.initialize(options.apiKey);
  }

  async identify(identify: any, hash: string): Promise<void> {
    Rbird.identify(identify, hash);
  }

}
