package androidx.compose.runtime;

import defpackage.aa4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class ComputedValueHolder<T> implements ValueHolder<T> {
    public static final int $stable = 0;
    private final nl3<CompositionLocalAccessorScope, T> compute;

    /* JADX WARN: Multi-variable type inference failed */
    public ComputedValueHolder(nl3<? super CompositionLocalAccessorScope, ? extends T> nl3Var) {
        this.compute = nl3Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ComputedValueHolder copy$default(ComputedValueHolder computedValueHolder, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            nl3Var = computedValueHolder.compute;
        }
        return computedValueHolder.copy(nl3Var);
    }

    public final nl3<CompositionLocalAccessorScope, T> component1() {
        return this.compute;
    }

    public final ComputedValueHolder<T> copy(nl3<? super CompositionLocalAccessorScope, ? extends T> nl3Var) {
        return new ComputedValueHolder<>(nl3Var);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ComputedValueHolder) && aa4.e(this.compute, ((ComputedValueHolder) obj).compute);
    }

    public final nl3<CompositionLocalAccessorScope, T> getCompute() {
        return this.compute;
    }

    public int hashCode() {
        return this.compute.hashCode();
    }

    @Override // androidx.compose.runtime.ValueHolder
    public T readValue(PersistentCompositionLocalMap persistentCompositionLocalMap) {
        return this.compute.invoke(persistentCompositionLocalMap);
    }

    @Override // androidx.compose.runtime.ValueHolder
    public ProvidedValue<T> toProvided(CompositionLocal<T> compositionLocal) {
        return new ProvidedValue<>(compositionLocal, null, false, null, null, this.compute, false);
    }

    public String toString() {
        return "ComputedValueHolder(compute=" + this.compute + ')';
    }
}
