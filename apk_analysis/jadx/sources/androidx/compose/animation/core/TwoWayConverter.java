package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public interface TwoWayConverter<T, V extends AnimationVector> {
    nl3<V, T> getConvertFromVector();

    nl3<T, V> getConvertToVector();
}
