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
* [`initialize(...)`](#initialize)
* [`showButton(...)`](#showbutton)
* [`identify(...)`](#identify)
* [`showWidget()`](#showwidget)
* [`logout()`](#logout)

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
initialize(options: { apiKey: string; }) => Promise<void>
```

| Param         | Type                             |
| ------------- | -------------------------------- |
| **`options`** | <code>{ apiKey: string; }</code> |

--------------------


### initialize(...)

```typescript
initialize(options: { apiKey: string; showButton: boolean; }) => Promise<void>
```

| Param         | Type                                                  |
| ------------- | ----------------------------------------------------- |
| **`options`** | <code>{ apiKey: string; showButton: boolean; }</code> |

--------------------


### showButton(...)

```typescript
showButton(options: { showButton: boolean; }) => Promise<void>
```

| Param         | Type                                  |
| ------------- | ------------------------------------- |
| **`options`** | <code>{ showButton: boolean; }</code> |

--------------------


### identify(...)

```typescript
identify(options: { identify: any; hash: string; }) => Promise<void>
```

| Param         | Type                                          |
| ------------- | --------------------------------------------- |
| **`options`** | <code>{ identify: any; hash: string; }</code> |

--------------------


### showWidget()

```typescript
showWidget() => Promise<void>
```

--------------------


### logout()

```typescript
logout() => Promise<void>
```

--------------------

</docgen-api>
