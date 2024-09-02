# releasebird-capacitor-sdk

Releasebird SDK for Capacitor

## Install

```bash
yarn install releasebird-capacitor-sdk
npx cap sync
```

## API

<docgen-index>

* [`echo(...)`](#echo)
* [`initialize(...)`](#initialize)
* [`identify(...)`](#identify)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### echo(...)

```typescript
echo(options: { value: string; }) => Promise<{ value: string; }>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ value: string; }</code> |

**Returns:** <code>Promise&lt;{ value: string; }&gt;</code>

--------------------


### initialize(...)

```typescript
initialize(apiKey: string) => Promise<void>
```

| Param        | Type                |
| ------------ | ------------------- |
| **`apiKey`** | <code>string</code> |

--------------------


### identify(...)

```typescript
identify(identify: any, hash: string) => Promise<void>
```

| Param          | Type                |
| -------------- | ------------------- |
| **`identify`** | <code>any</code>    |
| **`hash`**     | <code>string</code> |

--------------------

</docgen-api>
