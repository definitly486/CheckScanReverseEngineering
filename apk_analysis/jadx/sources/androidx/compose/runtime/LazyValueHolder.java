package androidx.compose.runtime;

import defpackage.av;
import defpackage.cl4;
import defpackage.ll3;
import defpackage.nm4;

/* JADX INFO: loaded from: classes2.dex */
public final class LazyValueHolder<T> implements ValueHolder<T> {
    public static final int $stable = 8;
    private final cl4 current$delegate;

    public LazyValueHolder(ll3<? extends T> ll3Var) {
        this.current$delegate = nm4.b(ll3Var);
    }

    private final T getCurrent() {
        return (T) this.current$delegate.getValue();
    }

    @Override // androidx.compose.runtime.ValueHolder
    public T readValue(PersistentCompositionLocalMap persistentCompositionLocalMap) {
        return getCurrent();
    }

    @Override // androidx.compose.runtime.ValueHolder
    public ProvidedValue<T> toProvided(CompositionLocal<T> compositionLocal) {
        throw av.b("Cannot produce a provider from a lazy value holder");
    }
}
