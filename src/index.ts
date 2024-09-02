import { registerPlugin } from '@capacitor/core';

import type { ReleasebirdPlugin } from './definitions';

const Releasebird = registerPlugin<ReleasebirdPlugin>('Releasebird', {
  web: () => import('./web').then(m => new m.ReleasebirdWeb()),
});

export * from './definitions';
export { Releasebird };
