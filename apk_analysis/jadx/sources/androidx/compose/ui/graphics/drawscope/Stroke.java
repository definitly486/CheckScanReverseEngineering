package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.graphics.PathEffect;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.jn;

/* JADX INFO: loaded from: classes2.dex */
public final class Stroke extends DrawStyle {
    public static final float DefaultMiter = 4.0f;
    public static final float HairlineWidth = 0.0f;
    private final int cap;
    private final int join;
    private final float miter;
    private final PathEffect pathEffect;
    private final float width;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private static final int DefaultCap = StrokeCap.Companion.m6606getButtKaPHkGw();
    private static final int DefaultJoin = StrokeJoin.Companion.m6617getMiterLxFBmk8();

    public /* synthetic */ Stroke(float f, float f2, int i, int i2, PathEffect pathEffect, int i3, jh2 jh2Var) {
        this((i3 & 1) != 0 ? 0.0f : f, (i3 & 2) != 0 ? 4.0f : f2, (i3 & 4) != 0 ? DefaultCap : i, (i3 & 8) != 0 ? DefaultJoin : i2, (i3 & 16) != 0 ? null : pathEffect, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Stroke)) {
            return false;
        }
        Stroke stroke = (Stroke) obj;
        return this.width == stroke.width && this.miter == stroke.miter && StrokeCap.m6602equalsimpl0(this.cap, stroke.cap) && StrokeJoin.m6612equalsimpl0(this.join, stroke.join) && aa4.e(this.pathEffect, stroke.pathEffect);
    }

    /* JADX INFO: renamed from: getCap-KaPHkGw, reason: not valid java name */
    public final int m6875getCapKaPHkGw() {
        return this.cap;
    }

    /* JADX INFO: renamed from: getJoin-LxFBmk8, reason: not valid java name */
    public final int m6876getJoinLxFBmk8() {
        return this.join;
    }

    public final float getMiter() {
        return this.miter;
    }

    public final PathEffect getPathEffect() {
        return this.pathEffect;
    }

    public final float getWidth() {
        return this.width;
    }

    public int hashCode() {
        int iM6613hashCodeimpl = (StrokeJoin.m6613hashCodeimpl(this.join) + ((StrokeCap.m6603hashCodeimpl(this.cap) + jn.b(this.miter, Float.hashCode(this.width) * 31, 31)) * 31)) * 31;
        PathEffect pathEffect = this.pathEffect;
        return iM6613hashCodeimpl + (pathEffect != null ? pathEffect.hashCode() : 0);
    }

    public String toString() {
        return "Stroke(width=" + this.width + ", miter=" + this.miter + ", cap=" + ((Object) StrokeCap.m6604toStringimpl(this.cap)) + ", join=" + ((Object) StrokeJoin.m6614toStringimpl(this.join)) + ", pathEffect=" + this.pathEffect + ')';
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getDefaultCap-KaPHkGw, reason: not valid java name */
        public final int m6877getDefaultCapKaPHkGw() {
            return Stroke.DefaultCap;
        }

        /* JADX INFO: renamed from: getDefaultJoin-LxFBmk8, reason: not valid java name */
        public final int m6878getDefaultJoinLxFBmk8() {
            return Stroke.DefaultJoin;
        }

        private Companion() {
        }
    }

    private Stroke(float f, float f2, int i, int i2, PathEffect pathEffect) {
        super(null);
        this.width = f;
        this.miter = f2;
        this.cap = i;
        this.join = i2;
        this.pathEffect = pathEffect;
    }

    public /* synthetic */ Stroke(float f, float f2, int i, int i2, PathEffect pathEffect, jh2 jh2Var) {
        this(f, f2, i, i2, pathEffect);
    }
}
