package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Offset;
import defpackage.jh2;
import defpackage.js2;
import defpackage.ln;

/* JADX INFO: loaded from: classes2.dex */
public final class Shadow {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private static final Shadow None = new Shadow(0, 0, 0.0f, 7, null);
    private final float blurRadius;
    private final long color;
    private final long offset;

    public /* synthetic */ Shadow(long j, long j2, float f, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? ColorKt.Color(4278190080L) : j, (i & 2) != 0 ? Offset.Companion.m6003getZeroF1C5BW0() : j2, (i & 4) != 0 ? 0.0f : f, null);
    }

    /* JADX INFO: renamed from: copy-qcb84PM$default, reason: not valid java name */
    public static /* synthetic */ Shadow m6572copyqcb84PM$default(Shadow shadow, long j, long j2, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            j = shadow.color;
        }
        long j3 = j;
        if ((i & 2) != 0) {
            j2 = shadow.offset;
        }
        long j4 = j2;
        if ((i & 4) != 0) {
            f = shadow.blurRadius;
        }
        return shadow.m6575copyqcb84PM(j3, j4, f);
    }

    public static /* synthetic */ void getBlurRadius$annotations() {
    }

    /* JADX INFO: renamed from: getColor-0d7_KjU$annotations, reason: not valid java name */
    public static /* synthetic */ void m6573getColor0d7_KjU$annotations() {
    }

    /* JADX INFO: renamed from: getOffset-F1C5BW0$annotations, reason: not valid java name */
    public static /* synthetic */ void m6574getOffsetF1C5BW0$annotations() {
    }

    /* JADX INFO: renamed from: copy-qcb84PM, reason: not valid java name */
    public final Shadow m6575copyqcb84PM(long j, long j2, float f) {
        return new Shadow(j, j2, f, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Shadow)) {
            return false;
        }
        Shadow shadow = (Shadow) obj;
        return Color.m6233equalsimpl0(this.color, shadow.color) && Offset.m5984equalsimpl0(this.offset, shadow.offset) && this.blurRadius == shadow.blurRadius;
    }

    public final float getBlurRadius() {
        return this.blurRadius;
    }

    /* JADX INFO: renamed from: getColor-0d7_KjU, reason: not valid java name */
    public final long m6576getColor0d7_KjU() {
        return this.color;
    }

    /* JADX INFO: renamed from: getOffset-F1C5BW0, reason: not valid java name */
    public final long m6577getOffsetF1C5BW0() {
        return this.offset;
    }

    public int hashCode() {
        return Float.hashCode(this.blurRadius) + ((Offset.m5989hashCodeimpl(this.offset) + (Color.m6239hashCodeimpl(this.color) * 31)) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Shadow(color=");
        ln.g(this.color, ", offset=", sb);
        sb.append((Object) Offset.m5995toStringimpl(this.offset));
        sb.append(", blurRadius=");
        return js2.b(sb, this.blurRadius, ')');
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public static /* synthetic */ void getNone$annotations() {
        }

        public final Shadow getNone() {
            return Shadow.None;
        }

        private Companion() {
        }
    }

    private Shadow(long j, long j2, float f) {
        this.color = j;
        this.offset = j2;
        this.blurRadius = f;
    }

    public /* synthetic */ Shadow(long j, long j2, float f, jh2 jh2Var) {
        this(j, j2, f);
    }
}
