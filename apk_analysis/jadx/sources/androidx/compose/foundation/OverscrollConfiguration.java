package androidx.compose.foundation;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.ln;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
@ul2
public final class OverscrollConfiguration {
    public static final int $stable = 0;
    private final PaddingValues drawPadding;
    private final long glowColor;

    public /* synthetic */ OverscrollConfiguration(long j, PaddingValues paddingValues, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? ColorKt.Color(4284900966L) : j, (i & 2) != 0 ? PaddingKt.m2028PaddingValuesYgX7TsA$default(0.0f, 0.0f, 3, null) : paddingValues, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!OverscrollConfiguration.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        OverscrollConfiguration overscrollConfiguration = (OverscrollConfiguration) obj;
        return Color.m6233equalsimpl0(this.glowColor, overscrollConfiguration.glowColor) && aa4.e(this.drawPadding, overscrollConfiguration.drawPadding);
    }

    public final PaddingValues getDrawPadding() {
        return this.drawPadding;
    }

    /* JADX INFO: renamed from: getGlowColor-0d7_KjU, reason: not valid java name */
    public final long m1376getGlowColor0d7_KjU() {
        return this.glowColor;
    }

    public int hashCode() {
        return this.drawPadding.hashCode() + (Color.m6239hashCodeimpl(this.glowColor) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("OverscrollConfiguration(glowColor=");
        ln.g(this.glowColor, ", drawPadding=", sb);
        sb.append(this.drawPadding);
        sb.append(')');
        return sb.toString();
    }

    private OverscrollConfiguration(long j, PaddingValues paddingValues) {
        this.glowColor = j;
        this.drawPadding = paddingValues;
    }

    public /* synthetic */ OverscrollConfiguration(long j, PaddingValues paddingValues, jh2 jh2Var) {
        this(j, paddingValues);
    }
}
