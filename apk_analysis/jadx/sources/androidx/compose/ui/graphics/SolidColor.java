package androidx.compose.ui.graphics;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class SolidColor extends Brush implements Interpolatable {
    public static final int $stable = 0;
    private final long value;

    private SolidColor(long j) {
        super(null);
        this.value = j;
    }

    @Override // androidx.compose.ui.graphics.Brush
    /* JADX INFO: renamed from: applyTo-Pq9zytI */
    public void mo6177applyToPq9zytI(long j, Paint paint, float f) {
        paint.setAlpha(1.0f);
        long jM6231copywmQWz5c$default = this.value;
        if (f != 1.0f) {
            jM6231copywmQWz5c$default = Color.m6231copywmQWz5c$default(jM6231copywmQWz5c$default, Color.m6234getAlphaimpl(jM6231copywmQWz5c$default) * f, 0.0f, 0.0f, 0.0f, 14, null);
        }
        paint.mo6108setColor8_81llA(jM6231copywmQWz5c$default);
        if (paint.getShader() != null) {
            paint.setShader(null);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SolidColor) && Color.m6233equalsimpl0(this.value, ((SolidColor) obj).value);
    }

    /* JADX INFO: renamed from: getValue-0d7_KjU, reason: not valid java name */
    public final long m6588getValue0d7_KjU() {
        return this.value;
    }

    public int hashCode() {
        return Color.m6239hashCodeimpl(this.value);
    }

    @Override // androidx.compose.ui.graphics.Interpolatable
    public Object lerp(Object obj, float f) {
        jh2 jh2Var = null;
        if (obj == null) {
            obj = new SolidColor(Color.Companion.m6267getTransparent0d7_KjU(), jh2Var);
        }
        if (obj instanceof SolidColor) {
            return new SolidColor(ColorKt.m6283lerpjxsXWHM(this.value, ((SolidColor) obj).value, f), jh2Var);
        }
        return null;
    }

    public String toString() {
        return "SolidColor(value=" + ((Object) Color.m6240toStringimpl(this.value)) + ')';
    }

    public /* synthetic */ SolidColor(long j, jh2 jh2Var) {
        this(j);
    }
}
