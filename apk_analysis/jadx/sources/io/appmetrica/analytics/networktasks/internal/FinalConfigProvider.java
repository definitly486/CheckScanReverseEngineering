package io.appmetrica.analytics.networktasks.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class FinalConfigProvider<T> implements ConfigProvider<T> {
    private final Object a;

    public FinalConfigProvider(T t) {
        this.a = t;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.ConfigProvider
    public T getConfig() {
        return (T) this.a;
    }
}
