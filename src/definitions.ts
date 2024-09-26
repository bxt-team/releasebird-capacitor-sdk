export interface ReleasebirdPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  initialize(options: { apiKey: string }): Promise<void>;
  initialize(options: { apiKey: string, showButton: boolean }): Promise<void>;
  showButton(options: { showButton: boolean }): Promise<void>;
  identify(options: {hash: string, identify: any }): Promise<void>;
  showWidget(): Promise<void>;
  logout(): Promise<void>;
}
