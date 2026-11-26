package androidx.compose.runtime;

import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class StaticProvidableCompositionLocal<T> extends ProvidableCompositionLocal<T> {
    public static final int $stable = 0;

    public StaticProvidableCompositionLocal(ll3<? extends T> ll3Var) {
        super(ll3Var);
    }

    @Override // androidx.compose.runtime.ProvidableCompositionLocal
    public ProvidedValue<T> defaultProvidedValue$runtime(T t) {
        return new ProvidedValue<>(this, t, t == null, null, null, null, false);
    }
}
