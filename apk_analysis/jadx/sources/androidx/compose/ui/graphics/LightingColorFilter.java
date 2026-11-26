package androidx.compose.ui.graphics;

import defpackage.jh2;
import defpackage.ln;

/* JADX INFO: loaded from: classes2.dex */
public final class LightingColorFilter extends ColorFilter {
    public static final int $stable = 0;
    private final long add;
    private final long multiply;

    private LightingColorFilter(long j, long j2) {
        this(j, j2, AndroidColorFilter_androidKt.m6093actualLightingColorFilterOWjLjI(j, j2), null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LightingColorFilter)) {
            return false;
        }
        LightingColorFilter lightingColorFilter = (LightingColorFilter) obj;
        return Color.m6233equalsimpl0(this.multiply, lightingColorFilter.multiply) && Color.m6233equalsimpl0(this.add, lightingColorFilter.add);
    }

    /* JADX INFO: renamed from: getAdd-0d7_KjU, reason: not valid java name */
    public final long m6469getAdd0d7_KjU() {
        return this.add;
    }

    /* JADX INFO: renamed from: getMultiply-0d7_KjU, reason: not valid java name */
    public final long m6470getMultiply0d7_KjU() {
        return this.multiply;
    }

    public int hashCode() {
        return Color.m6239hashCodeimpl(this.add) + (Color.m6239hashCodeimpl(this.multiply) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LightingColorFilter(multiply=");
        ln.g(this.multiply, ", add=", sb);
        sb.append((Object) Color.m6240toStringimpl(this.add));
        sb.append(')');
        return sb.toString();
    }

    public /* synthetic */ LightingColorFilter(long j, long j2, android.graphics.ColorFilter colorFilter, jh2 jh2Var) {
        this(j, j2, colorFilter);
    }

    private LightingColorFilter(long j, long j2, android.graphics.ColorFilter colorFilter) {
        super(colorFilter);
        this.multiply = j;
        this.add = j2;
    }

    public /* synthetic */ LightingColorFilter(long j, long j2, jh2 jh2Var) {
        this(j, j2);
    }
}
