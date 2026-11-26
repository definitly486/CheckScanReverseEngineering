package androidx.compose.runtime;

import defpackage.jh2;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CompositionLocal<T> {
    public static final int $stable = 0;
    private final ValueHolder<T> defaultValueHolder;

    private CompositionLocal(ll3<? extends T> ll3Var) {
        this.defaultValueHolder = new LazyValueHolder(ll3Var);
    }

    public static /* synthetic */ void getCurrent$annotations(Composer composer, int i) {
    }

    public final T getCurrent(Composer composer, int i) {
        return (T) composer.consume(this);
    }

    public ValueHolder<T> getDefaultValueHolder$runtime() {
        return this.defaultValueHolder;
    }

    public abstract ValueHolder<T> updatedStateOf$runtime(ProvidedValue<T> providedValue, ValueHolder<T> valueHolder);

    public /* synthetic */ CompositionLocal(ll3 ll3Var, jh2 jh2Var) {
        this(ll3Var);
    }
}
