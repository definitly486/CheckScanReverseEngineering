package androidx.compose.animation.core;

import defpackage.b36;
import defpackage.jh2;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public abstract class KeyframeBaseEntity<T> {
    public static final int $stable = 8;
    private Easing easing;
    private final T value;

    private KeyframeBaseEntity(T t, Easing easing) {
        this.value = t;
        this.easing = easing;
    }

    public final Easing getEasing$animation_core() {
        return this.easing;
    }

    public final T getValue$animation_core() {
        return this.value;
    }

    public final void setEasing$animation_core(Easing easing) {
        this.easing = easing;
    }

    public final <V extends AnimationVector> b36<V, Easing> toPair$animation_core(nl3<? super T, ? extends V> nl3Var) {
        return new b36<>(nl3Var.invoke(this.value), this.easing);
    }

    public /* synthetic */ KeyframeBaseEntity(Object obj, Easing easing, jh2 jh2Var) {
        this(obj, easing);
    }
}
