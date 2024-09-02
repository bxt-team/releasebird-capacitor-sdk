export interface ReleasebirdPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
