package androidx.compose.runtime;

import defpackage.aa4;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ProvidableCompositionLocal<T> extends CompositionLocal<T> {
    public static final int $stable = 0;

    public ProvidableCompositionLocal(ll3<? extends T> ll3Var) {
        super(ll3Var, null);
    }

    private final ValueHolder<T> valueHolderOf(ProvidedValue<T> providedValue) {
        if (!providedValue.isDynamic$runtime()) {
            if (providedValue.getCompute$runtime() != null) {
                return new ComputedValueHolder(providedValue.getCompute$runtime());
            }
            return providedValue.getState$runtime() != null ? new DynamicValueHolder(providedValue.getState$runtime()) : new StaticValueHolder(providedValue.getEffectiveValue$runtime());
        }
        MutableState<T> state$runtime = providedValue.getState$runtime();
        if (state$runtime == null) {
            T value = providedValue.getValue();
            SnapshotMutationPolicy<T> mutationPolicy$runtime = providedValue.getMutationPolicy$runtime();
            if (mutationPolicy$runtime == null) {
                mutationPolicy$runtime = SnapshotStateKt.structuralEqualityPolicy();
            }
            state$runtime = SnapshotStateKt.mutableStateOf(value, mutationPolicy$runtime);
        }
        return new DynamicValueHolder(state$runtime);
    }

    public abstract ProvidedValue<T> defaultProvidedValue$runtime(T t);

    public final ProvidedValue<T> provides(T t) {
        return defaultProvidedValue$runtime(t);
    }

    public final ProvidedValue<T> providesComputed(nl3<? super CompositionLocalAccessorScope, ? extends T> nl3Var) {
        return new ProvidedValue<>(this, null, false, null, null, nl3Var, false);
    }

    public final ProvidedValue<T> providesDefault(T t) {
        return defaultProvidedValue$runtime(t).ifNotAlreadyProvided$runtime();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0034 A[PHI: r5
      0x0034: PHI (r5v2 java.lang.Object) = (r5v5 java.lang.Object), (r5v6 java.lang.Object) binds: [B:17:0x0044, B:12:0x0032] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.compose.runtime.CompositionLocal
    public ValueHolder<T> updatedStateOf$runtime(ProvidedValue<T> providedValue, ValueHolder<T> valueHolder) {
        ComputedValueHolder computedValueHolder;
        StaticValueHolder staticValueHolder;
        DynamicValueHolder dynamicValueHolder = null;
        if (valueHolder instanceof DynamicValueHolder) {
            if (providedValue.isDynamic$runtime()) {
                dynamicValueHolder = (DynamicValueHolder) valueHolder;
                dynamicValueHolder.getState().setValue(providedValue.getEffectiveValue$runtime());
            }
        } else if (valueHolder instanceof StaticValueHolder) {
            if (providedValue.isStatic$runtime()) {
                staticValueHolder = (StaticValueHolder) valueHolder;
                if (aa4.e(providedValue.getEffectiveValue$runtime(), staticValueHolder.getValue())) {
                    Object obj = computedValueHolder;
                    obj = staticValueHolder;
                    dynamicValueHolder = (ValueHolder<T>) obj;
                }
            }
        } else if (valueHolder instanceof ComputedValueHolder) {
            computedValueHolder = (ComputedValueHolder) valueHolder;
            if (providedValue.getCompute$runtime() == computedValueHolder.getCompute()) {
                Object obj2 = computedValueHolder;
                obj2 = staticValueHolder;
                dynamicValueHolder = (ValueHolder<T>) obj2;
            }
        }
        return dynamicValueHolder == null ? valueHolderOf(providedValue) : dynamicValueHolder;
    }
}
