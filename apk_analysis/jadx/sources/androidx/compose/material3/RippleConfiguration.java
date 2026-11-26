package androidx.compose.material3;

import androidx.compose.material.ripple.RippleAlpha;
import androidx.compose.ui.graphics.Color;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.ln;

/* JADX INFO: loaded from: classes2.dex */
public final class RippleConfiguration {
    public static final int $stable = 0;
    private final long color;
    private final RippleAlpha rippleAlpha;

    public /* synthetic */ RippleConfiguration(long j, RippleAlpha rippleAlpha, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j, (i & 2) != 0 ? null : rippleAlpha, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RippleConfiguration)) {
            return false;
        }
        RippleConfiguration rippleConfiguration = (RippleConfiguration) obj;
        return Color.m6233equalsimpl0(this.color, rippleConfiguration.color) && aa4.e(this.rippleAlpha, rippleConfiguration.rippleAlpha);
    }

    /* JADX INFO: renamed from: getColor-0d7_KjU, reason: not valid java name */
    public final long m3773getColor0d7_KjU() {
        return this.color;
    }

    public final RippleAlpha getRippleAlpha() {
        return this.rippleAlpha;
    }

    public int hashCode() {
        int iM6239hashCodeimpl = Color.m6239hashCodeimpl(this.color) * 31;
        RippleAlpha rippleAlpha = this.rippleAlpha;
        return iM6239hashCodeimpl + (rippleAlpha != null ? rippleAlpha.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("RippleConfiguration(color=");
        ln.g(this.color, ", rippleAlpha=", sb);
        sb.append(this.rippleAlpha);
        sb.append(')');
        return sb.toString();
    }

    private RippleConfiguration(long j, RippleAlpha rippleAlpha) {
        this.color = j;
        this.rippleAlpha = rippleAlpha;
    }

    public /* synthetic */ RippleConfiguration(long j, RippleAlpha rippleAlpha, jh2 jh2Var) {
        this(j, rippleAlpha);
    }
}
