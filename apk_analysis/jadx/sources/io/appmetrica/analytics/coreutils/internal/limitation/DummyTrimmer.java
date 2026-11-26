package io.appmetrica.analytics.coreutils.internal.limitation;

/* JADX INFO: loaded from: classes5.dex */
public final class DummyTrimmer<T> implements Trimmer<T> {
    @Override // io.appmetrica.analytics.coreutils.internal.limitation.Trimmer
    public T trim(T t) {
        return t;
    }
}
