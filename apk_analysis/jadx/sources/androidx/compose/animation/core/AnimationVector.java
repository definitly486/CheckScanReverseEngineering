package androidx.compose.animation.core;

import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public abstract class AnimationVector {
    public static final int $stable = 0;

    public /* synthetic */ AnimationVector(jh2 jh2Var) {
        this();
    }

    public abstract float get$animation_core(int i);

    public abstract int getSize$animation_core();

    public abstract AnimationVector newVector$animation_core();

    public abstract void reset$animation_core();

    public abstract void set$animation_core(int i, float f);

    private AnimationVector() {
    }
}
