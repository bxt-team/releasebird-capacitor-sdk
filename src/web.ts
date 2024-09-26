import { WebPlugin } from '@capacitor/core';
import Rbird from 'releasebird-javascript-sdk';

import type { ReleasebirdPlugin } from './definitions';

export class ReleasebirdWeb extends WebPlugin implements ReleasebirdPlugin {

  async showWidget(): Promise<void> {
    Rbird.showWidget();
  }

  async logout(): Promise<void> {
    Rbird.logout();
  }

  async showButton(options: { showButton: boolean } ): Promise<void> {
    Rbird.showButton(options.showButton);
  }

  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }

  async initialize(options: { apiKey: string, showButton: boolean } ): Promise<void> {
    if (options.showButton != null) {
      Rbird.initialize(options.apiKey, options.showButton);
    } else {
      Rbird.initialize(options.apiKey);
    }
  }

  async identify(options: {identify: any, hash: string}): Promise<void> {
    Rbird.identify(options.identify, options.hash);
  }

}

