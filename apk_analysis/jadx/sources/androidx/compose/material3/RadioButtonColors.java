package androidx.compose.material3;

import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import defpackage.jh2;
import defpackage.r01;

/* JADX INFO: loaded from: classes2.dex */
public final class RadioButtonColors {
    public static final int $stable = 0;
    private final long disabledSelectedColor;
    private final long disabledUnselectedColor;
    private final long selectedColor;
    private final long unselectedColor;

    private RadioButtonColors(long j, long j2, long j3, long j4) {
        this.selectedColor = j;
        this.unselectedColor = j2;
        this.disabledSelectedColor = j3;
        this.disabledUnselectedColor = j4;
    }

    /* JADX INFO: renamed from: copy-jRlVdoo$default, reason: not valid java name */
    public static /* synthetic */ RadioButtonColors m3759copyjRlVdoo$default(RadioButtonColors radioButtonColors, long j, long j2, long j3, long j4, int i, Object obj) {
        if ((i & 1) != 0) {
            j = radioButtonColors.selectedColor;
        }
        long j5 = j;
        if ((i & 2) != 0) {
            j2 = radioButtonColors.unselectedColor;
        }
        long j6 = j2;
        if ((i & 4) != 0) {
            j3 = radioButtonColors.disabledSelectedColor;
        }
        return radioButtonColors.m3760copyjRlVdoo(j5, j6, j3, (i & 8) != 0 ? radioButtonColors.disabledUnselectedColor : j4);
    }

    /* JADX INFO: renamed from: copy-jRlVdoo, reason: not valid java name */
    public final RadioButtonColors m3760copyjRlVdoo(long j, long j2, long j3, long j4) {
        return new RadioButtonColors(j != 16 ? j : this.selectedColor, j2 != 16 ? j2 : this.unselectedColor, j3 != 16 ? j3 : this.disabledSelectedColor, j4 != 16 ? j4 : this.disabledUnselectedColor, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof RadioButtonColors)) {
            return false;
        }
        RadioButtonColors radioButtonColors = (RadioButtonColors) obj;
        return Color.m6233equalsimpl0(this.selectedColor, radioButtonColors.selectedColor) && Color.m6233equalsimpl0(this.unselectedColor, radioButtonColors.unselectedColor) && Color.m6233equalsimpl0(this.disabledSelectedColor, radioButtonColors.disabledSelectedColor) && Color.m6233equalsimpl0(this.disabledUnselectedColor, radioButtonColors.disabledUnselectedColor);
    }

    /* JADX INFO: renamed from: getDisabledSelectedColor-0d7_KjU, reason: not valid java name */
    public final long m3761getDisabledSelectedColor0d7_KjU() {
        return this.disabledSelectedColor;
    }

    /* JADX INFO: renamed from: getDisabledUnselectedColor-0d7_KjU, reason: not valid java name */
    public final long m3762getDisabledUnselectedColor0d7_KjU() {
        return this.disabledUnselectedColor;
    }

    /* JADX INFO: renamed from: getSelectedColor-0d7_KjU, reason: not valid java name */
    public final long m3763getSelectedColor0d7_KjU() {
        return this.selectedColor;
    }

    /* JADX INFO: renamed from: getUnselectedColor-0d7_KjU, reason: not valid java name */
    public final long m3764getUnselectedColor0d7_KjU() {
        return this.unselectedColor;
    }

    public int hashCode() {
        return Color.m6239hashCodeimpl(this.disabledUnselectedColor) + r01.b(r01.b(Color.m6239hashCodeimpl(this.selectedColor) * 31, 31, this.unselectedColor), 31, this.disabledSelectedColor);
    }

    public final State<Color> radioColor$material3(boolean z, boolean z2, Composer composer, int i) {
        long j;
        State<Color> stateRememberUpdatedState;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1840145292, i, -1, "androidx.compose.material3.RadioButtonColors.radioColor (RadioButton.kt:223)");
        }
        if (z && z2) {
            j = this.selectedColor;
        } else if (!z || z2) {
            j = (z || !z2) ? this.disabledUnselectedColor : this.disabledSelectedColor;
        } else {
            j = this.unselectedColor;
        }
        long j2 = j;
        if (z) {
            composer.startReplaceGroup(1194696477);
            stateRememberUpdatedState = SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(j2, MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composer, 6), null, null, composer, 0, 12);
            composer.endReplaceGroup();
        } else {
            composer.startReplaceGroup(1194874138);
            stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m6222boximpl(j2), composer, 0);
            composer.endReplaceGroup();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return stateRememberUpdatedState;
    }

    public /* synthetic */ RadioButtonColors(long j, long j2, long j3, long j4, jh2 jh2Var) {
        this(j, j2, j3, j4);
    }
}
