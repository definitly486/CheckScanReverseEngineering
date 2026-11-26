package androidx.compose.ui.graphics.shadow;

import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpOffset;
import defpackage.aa4;
import defpackage.ch;
import defpackage.jh2;
import defpackage.jn;
import defpackage.kx6;
import defpackage.ln;
import defpackage.r01;
import defpackage.rg;

/* JADX INFO: loaded from: classes2.dex */
public final class Shadow {
    public static final int $stable = 0;
    private final float alpha;
    private final int blendMode;
    private final Brush brush;
    private final long color;
    private final long offset;
    private final float radius;
    private final float spread;

    public /* synthetic */ Shadow(float f, long j, float f2, long j2, float f3, int i, int i2, jh2 jh2Var) {
        this(f, (i2 & 2) != 0 ? Color.Companion.m6258getBlack0d7_KjU() : j, (i2 & 4) != 0 ? Dp.m9042constructorimpl(0.0f) : f2, (i2 & 8) != 0 ? DpOffset.Companion.m9113getZeroRKDOV3M() : j2, (i2 & 16) != 0 ? 1.0f : f3, (i2 & 32) != 0 ? DrawScope.Companion.m6808getDefaultBlendMode0nO6VwU() : i, (jh2) null);
    }

    public final Shadow copyWithoutOffset$ui_graphics() {
        return new Shadow(this.radius, this.spread, DpOffset.Companion.m9113getZeroRKDOV3M(), this.color, this.brush, this.alpha, this.blendMode, (jh2) null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Shadow)) {
            return false;
        }
        Shadow shadow = (Shadow) obj;
        return Dp.m9047equalsimpl0(this.radius, shadow.radius) && Dp.m9047equalsimpl0(this.spread, shadow.spread) && DpOffset.m9102equalsimpl0(this.offset, shadow.offset) && this.alpha == shadow.alpha && BlendMode.m6141equalsimpl0(this.blendMode, shadow.blendMode) && Color.m6233equalsimpl0(this.color, shadow.color) && aa4.e(this.brush, shadow.brush);
    }

    public final float getAlpha() {
        return this.alpha;
    }

    /* JADX INFO: renamed from: getBlendMode-0nO6VwU, reason: not valid java name */
    public final int m6949getBlendMode0nO6VwU() {
        return this.blendMode;
    }

    public final Brush getBrush() {
        return this.brush;
    }

    /* JADX INFO: renamed from: getColor-0d7_KjU, reason: not valid java name */
    public final long m6950getColor0d7_KjU() {
        return this.color;
    }

    /* JADX INFO: renamed from: getOffset-RKDOV3M, reason: not valid java name */
    public final long m6951getOffsetRKDOV3M() {
        return this.offset;
    }

    /* JADX INFO: renamed from: getRadius-D9Ej5fM, reason: not valid java name */
    public final float m6952getRadiusD9Ej5fM() {
        return this.radius;
    }

    /* JADX INFO: renamed from: getSpread-D9Ej5fM, reason: not valid java name */
    public final float m6953getSpreadD9Ej5fM() {
        return this.spread;
    }

    public int hashCode() {
        int iB = r01.b((BlendMode.m6142hashCodeimpl(this.blendMode) + jn.b(this.alpha, (DpOffset.m9107hashCodeimpl(this.offset) + rg.c(this.spread, Dp.m9048hashCodeimpl(this.radius) * 31, 31)) * 31, 31)) * 31, 31, this.color);
        Brush brush = this.brush;
        return iB + (brush != null ? brush.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Shadow(radius=");
        ch.d(sb, ", spread=", this.radius);
        ch.d(sb, ", offset=", this.spread);
        sb.append((Object) DpOffset.m9110toStringimpl(this.offset));
        sb.append(", alpha=");
        sb.append(this.alpha);
        sb.append(", blendMode=");
        sb.append((Object) BlendMode.m6143toStringimpl(this.blendMode));
        sb.append(", color=");
        ln.g(this.color, ", brush=", sb);
        sb.append(this.brush);
        sb.append(')');
        return sb.toString();
    }

    public final Shadow transparentCopy$ui_graphics() {
        return new Shadow(this.radius, Color.Companion.m6267getTransparent0d7_KjU(), this.spread, this.offset, this.alpha, this.blendMode, (jh2) null);
    }

    public /* synthetic */ Shadow(float f, long j, float f2, long j2, float f3, int i, jh2 jh2Var) {
        this(f, j, f2, j2, f3, i);
    }

    public /* synthetic */ Shadow(float f, Brush brush, float f2, long j, float f3, int i, jh2 jh2Var) {
        this(f, brush, f2, j, f3, i);
    }

    private Shadow(float f, float f2, long j, long j2, Brush brush, float f3, int i) {
        this.radius = f;
        this.spread = f2;
        this.offset = j;
        this.blendMode = i;
        if (brush instanceof SolidColor) {
            this.color = ((SolidColor) brush).m6588getValue0d7_KjU();
            this.brush = null;
        } else {
            this.color = j2;
            this.brush = brush;
        }
        this.alpha = kx6.d(f3, 0.0f, 1.0f);
    }

    private Shadow(float f, Brush brush, float f2, long j, float f3, int i) {
        this(f, f2, j, Color.Companion.m6258getBlack0d7_KjU(), brush, f3, i, (jh2) null);
    }

    public /* synthetic */ Shadow(float f, float f2, long j, long j2, Brush brush, float f3, int i, jh2 jh2Var) {
        this(f, f2, j, j2, brush, f3, i);
    }

    private Shadow(float f, long j, float f2, long j2, float f3, int i) {
        this(f, f2, j2, j != 16 ? j : Color.Companion.m6258getBlack0d7_KjU(), (Brush) null, f3, i, (jh2) null);
    }

    public /* synthetic */ Shadow(float f, Brush brush, float f2, long j, float f3, int i, int i2, jh2 jh2Var) {
        this(f, brush, (i2 & 4) != 0 ? Dp.m9042constructorimpl(0.0f) : f2, (i2 & 8) != 0 ? DpOffset.Companion.m9113getZeroRKDOV3M() : j, (i2 & 16) != 0 ? 1.0f : f3, (i2 & 32) != 0 ? DrawScope.Companion.m6808getDefaultBlendMode0nO6VwU() : i, (jh2) null);
    }
}
