package androidx.compose.runtime;

import defpackage.av;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class ProvidedValue<T> {
    public static final int $stable = 8;
    private boolean canOverride = true;
    private final CompositionLocal<T> compositionLocal;
    private final nl3<CompositionLocalAccessorScope, T> compute;
    private final boolean explicitNull;
    private final boolean isDynamic;
    private final SnapshotMutationPolicy<T> mutationPolicy;
    private final T providedValue;
    private final MutableState<T> state;

    /* JADX WARN: Multi-variable type inference failed */
    public ProvidedValue(CompositionLocal<T> compositionLocal, T t, boolean z, SnapshotMutationPolicy<T> snapshotMutationPolicy, MutableState<T> mutableState, nl3<? super CompositionLocalAccessorScope, ? extends T> nl3Var, boolean z2) {
        this.compositionLocal = compositionLocal;
        this.explicitNull = z;
        this.mutationPolicy = snapshotMutationPolicy;
        this.state = mutableState;
        this.compute = nl3Var;
        this.isDynamic = z2;
        this.providedValue = t;
    }

    public static /* synthetic */ void getEffectiveValue$runtime$annotations() {
    }

    public static /* synthetic */ void getValue$annotations() {
    }

    public final boolean getCanOverride() {
        return this.canOverride;
    }

    public final CompositionLocal<T> getCompositionLocal() {
        return this.compositionLocal;
    }

    public final nl3<CompositionLocalAccessorScope, T> getCompute$runtime() {
        return this.compute;
    }

    public final T getEffectiveValue$runtime() {
        if (this.explicitNull) {
            return null;
        }
        MutableState<T> mutableState = this.state;
        if (mutableState != null) {
            return mutableState.getValue();
        }
        T t = this.providedValue;
        if (t != null) {
            return t;
        }
        throw av.b("Unexpected form of a provided value");
    }

    public final SnapshotMutationPolicy<T> getMutationPolicy$runtime() {
        return this.mutationPolicy;
    }

    public final MutableState<T> getState$runtime() {
        return this.state;
    }

    public final T getValue() {
        return this.providedValue;
    }

    public final ProvidedValue<T> ifNotAlreadyProvided$runtime() {
        this.canOverride = false;
        return this;
    }

    public final boolean isDynamic$runtime() {
        return this.isDynamic;
    }

    public final boolean isStatic$runtime() {
        return (this.explicitNull || getValue() != null) && !this.isDynamic;
    }
}
