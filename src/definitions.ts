export interface ReleasebirdPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  initialize(options: { apiKey: string }): Promise<void>;
  identify(identify: any, hash: string): Promise<void>;

}
