package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class TwoWayConverterImpl<T, V extends AnimationVector> implements TwoWayConverter<T, V> {
    private final nl3<V, T> convertFromVector;
    private final nl3<T, V> convertToVector;

    /* JADX WARN: Multi-variable type inference failed */
    public TwoWayConverterImpl(nl3<? super T, ? extends V> nl3Var, nl3<? super V, ? extends T> nl3Var2) {
        this.convertToVector = nl3Var;
        this.convertFromVector = nl3Var2;
    }

    @Override // androidx.compose.animation.core.TwoWayConverter
    public nl3<V, T> getConvertFromVector() {
        return this.convertFromVector;
    }

    @Override // androidx.compose.animation.core.TwoWayConverter
    public nl3<T, V> getConvertToVector() {
        return this.convertToVector;
    }
}
