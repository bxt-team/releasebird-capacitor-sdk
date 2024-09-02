export interface ReleasebirdPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  initialize(apiKey: string): Promise<void>;
  identify(identify: any, hash: string): Promise<void>;

}
