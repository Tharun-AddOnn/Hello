export interface HelloPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
