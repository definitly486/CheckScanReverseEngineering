package androidx.compose.ui.graphics;

import defpackage.jh2;
import defpackage.ln;

/* JADX INFO: loaded from: classes2.dex */
public final class BlendModeColorFilter extends ColorFilter {
    public static final int $stable = 0;
    private final int blendMode;
    private final long color;

    private BlendModeColorFilter(long j, int i) {
        this(j, i, AndroidColorFilter_androidKt.m6094actualTintColorFilterxETnrds(j, i), null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BlendModeColorFilter)) {
            return false;
        }
        BlendModeColorFilter blendModeColorFilter = (BlendModeColorFilter) obj;
        return Color.m6233equalsimpl0(this.color, blendModeColorFilter.color) && BlendMode.m6141equalsimpl0(this.blendMode, blendModeColorFilter.blendMode);
    }

    /* JADX INFO: renamed from: getBlendMode-0nO6VwU, reason: not valid java name */
    public final int m6174getBlendMode0nO6VwU() {
        return this.blendMode;
    }

    /* JADX INFO: renamed from: getColor-0d7_KjU, reason: not valid java name */
    public final long m6175getColor0d7_KjU() {
        return this.color;
    }

    public int hashCode() {
        return BlendMode.m6142hashCodeimpl(this.blendMode) + (Color.m6239hashCodeimpl(this.color) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("BlendModeColorFilter(color=");
        ln.g(this.color, ", blendMode=", sb);
        sb.append((Object) BlendMode.m6143toStringimpl(this.blendMode));
        sb.append(')');
        return sb.toString();
    }

    public /* synthetic */ BlendModeColorFilter(long j, int i, android.graphics.ColorFilter colorFilter, jh2 jh2Var) {
        this(j, i, colorFilter);
    }

    private BlendModeColorFilter(long j, int i, android.graphics.ColorFilter colorFilter) {
        super(colorFilter);
        this.color = j;
        this.blendMode = i;
    }

    public /* synthetic */ BlendModeColorFilter(long j, int i, jh2 jh2Var) {
        this(j, i);
    }
}
