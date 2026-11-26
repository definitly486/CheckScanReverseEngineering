package androidx.compose.runtime;

import defpackage.av;
import defpackage.nl3;
import defpackage.vu1;

/* JADX INFO: loaded from: classes2.dex */
public final class ComputedProvidableCompositionLocal<T> extends ProvidableCompositionLocal<T> {
    public static final int $stable = 0;
    private final ComputedValueHolder<T> defaultValueHolder;

    public ComputedProvidableCompositionLocal(nl3<? super CompositionLocalAccessorScope, ? extends T> nl3Var) {
        super(new vu1(0));
        this.defaultValueHolder = new ComputedValueHolder<>(nl3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object _init_$lambda$0() {
        throw av.b("Unexpected call to default provider");
    }

    @Override // androidx.compose.runtime.ProvidableCompositionLocal
    public ProvidedValue<T> defaultProvidedValue$runtime(T t) {
        return new ProvidedValue<>(this, t, t == null, null, null, null, true);
    }

    @Override // androidx.compose.runtime.CompositionLocal
    public ComputedValueHolder<T> getDefaultValueHolder$runtime() {
        return this.defaultValueHolder;
    }
}
