# 地理定位

## 安装

```shell script
eeui plugin install https://github.com/aipaw/eeui-plugin-geolocation
```

## 卸载

```shell script
eeui plugin uninstall https://github.com/aipaw/eeui-plugin-geolocation
```

## 引用

```js
const geolocation = app.requireModule("eeui/geolocation");
```

### get(callback) 获取当前定位

#### 参数

1.  [`callback`] (Function)

#### 返回

1.  `result` (Object)
    *   `latitude` (Float)

    *   `longitude` (Float)

    *   `speed` (Float) (m/s)

    *   `accuracy` (Int) (m)

#### 示例

```
geolocation.get((ret) => {
    console.log(ret)
})
```

* * *

### watch(options, callback) 实时监听定位

1.  [`options`] (Object)
    *   `maximumAge` (Int) (ms)

    *   `timeout` (Int) (ms)

    *   `model` (String) (`highAccuracy` | `lowAccuracy`, default: `highAccuracy`)

2.  [`callback`] (Function)

#### 返回

1.  `result` (Object)
    *   `latitude` (Float)

    *   `longitude` (Float)

    *   `speed` (Float) (m/s)

    *   `accuracy` (Int) (m)

#### 示例

```
geolocation.watch((ret) => {
    console.log(ret)
})
```

* * *

### clearWatch(callback) 取消监听定位

#### 参数

1.  [`callback`] (Function)

#### 示例

```
geolocation.clearWatch(() => {
    console.log('cleared')
})
```

* * *

> **Error**<br/>
> LOCATION_INTERNAL_ERROR<br/>
> LOCATION_NOT_SUPPORTED<br/>
> LOCATION_PERMISSION_DENIED<br/>
> LOCATION_SERVICE_BUSY<br/>
> GET_LOCATION_INVALID_ARGUMENT<br/>
> WATCH_LOCATION_INVALID_ARGUMENT<br/>
> LOCATION_UNAVAILABLE<br/>
> LOCATION_TIMEOUT
