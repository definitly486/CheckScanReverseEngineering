package androidx.compose.material3;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import defpackage.jh2;
import defpackage.r01;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
@ul2
public final class ChipBorder {
    public static final int $stable = 0;
    private final long borderColor;
    private final float borderWidth;
    private final long disabledBorderColor;

    private ChipBorder(long j, long j2, float f) {
        this.borderColor = j;
        this.disabledBorderColor = j2;
        this.borderWidth = f;
    }

    public final State<BorderStroke> borderStroke$material3(boolean z, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1899621712, i, -1, "androidx.compose.material3.ChipBorder.borderStroke (Chip.kt:2915)");
        }
        State<BorderStroke> stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(BorderStrokeKt.m1315BorderStrokecXLIe8U(this.borderWidth, z ? this.borderColor : this.disabledBorderColor), composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return stateRememberUpdatedState;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ChipBorder)) {
            return false;
        }
        ChipBorder chipBorder = (ChipBorder) obj;
        return Color.m6233equalsimpl0(this.borderColor, chipBorder.borderColor) && Color.m6233equalsimpl0(this.disabledBorderColor, chipBorder.disabledBorderColor) && Dp.m9047equalsimpl0(this.borderWidth, chipBorder.borderWidth);
    }

    public int hashCode() {
        return Dp.m9048hashCodeimpl(this.borderWidth) + r01.b(Color.m6239hashCodeimpl(this.borderColor) * 31, 31, this.disabledBorderColor);
    }

    public /* synthetic */ ChipBorder(long j, long j2, float f, jh2 jh2Var) {
        this(j, j2, f);
    }
}
