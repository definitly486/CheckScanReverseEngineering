package androidx.graphics.shapes;

import defpackage.jh2;

/* JADX INFO: loaded from: classes3.dex */
public final class CornerRounding {
    public static final Companion Companion;
    public static final CornerRounding Unrounded;
    private final float radius;
    private final float smoothing;

    static {
        jh2 jh2Var = null;
        Companion = new Companion(jh2Var);
        float f = 0.0f;
        Unrounded = new CornerRounding(f, f, 3, jh2Var);
    }

    public /* synthetic */ CornerRounding(float f, float f2, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? 0.0f : f, (i & 2) != 0 ? 0.0f : f2);
    }

    public final float getRadius() {
        return this.radius;
    }

    public final float getSmoothing() {
        return this.smoothing;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public CornerRounding(float f, float f2) {
        this.radius = f;
        this.smoothing = f2;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public CornerRounding() {
        float f = 0.0f;
        this(f, f, 3, null);
    }
}
