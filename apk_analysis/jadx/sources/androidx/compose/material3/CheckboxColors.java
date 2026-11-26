package androidx.compose.material3;

import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.state.ToggleableState;
import defpackage.jh2;
import defpackage.me0;
import defpackage.r01;

/* JADX INFO: loaded from: classes2.dex */
public final class CheckboxColors {
    public static final int $stable = 0;
    private final long checkedBorderColor;
    private final long checkedBoxColor;
    private final long checkedCheckmarkColor;
    private final long disabledBorderColor;
    private final long disabledCheckedBoxColor;
    private final long disabledIndeterminateBorderColor;
    private final long disabledIndeterminateBoxColor;
    private final long disabledUncheckedBorderColor;
    private final long disabledUncheckedBoxColor;
    private final long uncheckedBorderColor;
    private final long uncheckedBoxColor;
    private final long uncheckedCheckmarkColor;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ToggleableState.values().length];
            try {
                iArr[ToggleableState.On.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ToggleableState.Indeterminate.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ToggleableState.Off.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private CheckboxColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12) {
        this.checkedCheckmarkColor = j;
        this.uncheckedCheckmarkColor = j2;
        this.checkedBoxColor = j3;
        this.uncheckedBoxColor = j4;
        this.disabledCheckedBoxColor = j5;
        this.disabledUncheckedBoxColor = j6;
        this.disabledIndeterminateBoxColor = j7;
        this.checkedBorderColor = j8;
        this.uncheckedBorderColor = j9;
        this.disabledBorderColor = j10;
        this.disabledUncheckedBorderColor = j11;
        this.disabledIndeterminateBorderColor = j12;
    }

    private final AnimationSpec<Color> colorAnimationSpecForState(ToggleableState toggleableState, Composer composer, int i) {
        FiniteAnimationSpec finiteAnimationSpecValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1075456245, i, -1, "androidx.compose.material3.CheckboxColors.colorAnimationSpecForState (Checkbox.kt:684)");
        }
        if (toggleableState == ToggleableState.Off) {
            composer.startReplaceGroup(1539262271);
            finiteAnimationSpecValue = MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composer, 6);
            composer.endReplaceGroup();
        } else {
            composer.startReplaceGroup(1539355581);
            finiteAnimationSpecValue = MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composer, 6);
            composer.endReplaceGroup();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return finiteAnimationSpecValue;
    }

    /* JADX INFO: renamed from: copy-2qZNXz8$default, reason: not valid java name */
    public static /* synthetic */ CheckboxColors m3162copy2qZNXz8$default(CheckboxColors checkboxColors, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, int i, Object obj) {
        long j13;
        long j14;
        long j15 = (i & 1) != 0 ? checkboxColors.checkedCheckmarkColor : j;
        long j16 = (i & 2) != 0 ? checkboxColors.uncheckedCheckmarkColor : j2;
        long j17 = (i & 4) != 0 ? checkboxColors.checkedBoxColor : j3;
        long j18 = (i & 8) != 0 ? checkboxColors.uncheckedBoxColor : j4;
        long j19 = (i & 16) != 0 ? checkboxColors.disabledCheckedBoxColor : j5;
        long j20 = (i & 32) != 0 ? checkboxColors.disabledUncheckedBoxColor : j6;
        long j21 = (i & 64) != 0 ? checkboxColors.disabledIndeterminateBoxColor : j7;
        long j22 = j15;
        long j23 = (i & 128) != 0 ? checkboxColors.checkedBorderColor : j8;
        long j24 = (i & 256) != 0 ? checkboxColors.uncheckedBorderColor : j9;
        long j25 = (i & 512) != 0 ? checkboxColors.disabledBorderColor : j10;
        long j26 = (i & 1024) != 0 ? checkboxColors.disabledUncheckedBorderColor : j11;
        if ((i & 2048) != 0) {
            j14 = j26;
            j13 = checkboxColors.disabledIndeterminateBorderColor;
        } else {
            j13 = j12;
            j14 = j26;
        }
        return checkboxColors.m3163copy2qZNXz8(j22, j16, j17, j18, j19, j20, j21, j23, j24, j25, j14, j13);
    }

    public final State<Color> borderColor$material3(boolean z, ToggleableState toggleableState, Composer composer, int i) {
        long j;
        State<Color> stateRememberUpdatedState;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1009643462, i, -1, "androidx.compose.material3.CheckboxColors.borderColor (Checkbox.kt:657)");
        }
        if (z) {
            int i2 = WhenMappings.$EnumSwitchMapping$0[toggleableState.ordinal()];
            if (i2 == 1 || i2 == 2) {
                j = this.checkedBorderColor;
            } else {
                if (i2 != 3) {
                    me0.e();
                    return null;
                }
                j = this.uncheckedBorderColor;
            }
        } else {
            int i3 = WhenMappings.$EnumSwitchMapping$0[toggleableState.ordinal()];
            if (i3 == 1) {
                j = this.disabledBorderColor;
            } else if (i3 == 2) {
                j = this.disabledIndeterminateBorderColor;
            } else {
                if (i3 != 3) {
                    me0.e();
                    return null;
                }
                j = this.disabledUncheckedBorderColor;
            }
        }
        if (z) {
            composer.startReplaceGroup(633231558);
            stateRememberUpdatedState = SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(j, colorAnimationSpecForState(toggleableState, composer, (i >> 3) & 126), null, null, composer, 0, 12);
            composer.endReplaceGroup();
        } else {
            composer.startReplaceGroup(633321768);
            stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m6222boximpl(j), composer, 0);
            composer.endReplaceGroup();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return stateRememberUpdatedState;
    }

    public final State<Color> boxColor$material3(boolean z, ToggleableState toggleableState, Composer composer, int i) {
        long j;
        State<Color> stateRememberUpdatedState;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(360729865, i, -1, "androidx.compose.material3.CheckboxColors.boxColor (Checkbox.kt:625)");
        }
        if (z) {
            int i2 = WhenMappings.$EnumSwitchMapping$0[toggleableState.ordinal()];
            if (i2 == 1 || i2 == 2) {
                j = this.checkedBoxColor;
            } else {
                if (i2 != 3) {
                    me0.e();
                    return null;
                }
                j = this.uncheckedBoxColor;
            }
        } else {
            int i3 = WhenMappings.$EnumSwitchMapping$0[toggleableState.ordinal()];
            if (i3 == 1) {
                j = this.disabledCheckedBoxColor;
            } else if (i3 == 2) {
                j = this.disabledIndeterminateBoxColor;
            } else {
                if (i3 != 3) {
                    me0.e();
                    return null;
                }
                j = this.disabledUncheckedBoxColor;
            }
        }
        if (z) {
            composer.startReplaceGroup(496051715);
            stateRememberUpdatedState = SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(j, colorAnimationSpecForState(toggleableState, composer, (i >> 3) & 126), null, null, composer, 0, 12);
            composer.endReplaceGroup();
        } else {
            composer.startReplaceGroup(496141925);
            stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m6222boximpl(j), composer, 0);
            composer.endReplaceGroup();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return stateRememberUpdatedState;
    }

    public final State<Color> checkmarkColor$material3(ToggleableState toggleableState, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-507585681, i, -1, "androidx.compose.material3.CheckboxColors.checkmarkColor (Checkbox.kt:606)");
        }
        State<Color> stateM1161animateColorAsStateeuL9pac = SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(toggleableState == ToggleableState.Off ? this.uncheckedCheckmarkColor : this.checkedCheckmarkColor, colorAnimationSpecForState(toggleableState, composer, i & 126), null, null, composer, 0, 12);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return stateM1161animateColorAsStateeuL9pac;
    }

    /* JADX INFO: renamed from: copy-2qZNXz8, reason: not valid java name */
    public final CheckboxColors m3163copy2qZNXz8(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12) {
        return new CheckboxColors(j != 16 ? j : this.checkedCheckmarkColor, j2 != 16 ? j2 : this.uncheckedCheckmarkColor, j3 != 16 ? j3 : this.checkedBoxColor, j4 != 16 ? j4 : this.uncheckedBoxColor, j5 != 16 ? j5 : this.disabledCheckedBoxColor, j6 != 16 ? j6 : this.disabledUncheckedBoxColor, j7 != 16 ? j7 : this.disabledIndeterminateBoxColor, j8 != 16 ? j8 : this.checkedBorderColor, j9 != 16 ? j9 : this.uncheckedBorderColor, j10 != 16 ? j10 : this.disabledBorderColor, j11 != 16 ? j11 : this.disabledUncheckedBorderColor, j12 != 16 ? j12 : this.disabledIndeterminateBorderColor, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof CheckboxColors)) {
            return false;
        }
        CheckboxColors checkboxColors = (CheckboxColors) obj;
        return Color.m6233equalsimpl0(this.checkedCheckmarkColor, checkboxColors.checkedCheckmarkColor) && Color.m6233equalsimpl0(this.uncheckedCheckmarkColor, checkboxColors.uncheckedCheckmarkColor) && Color.m6233equalsimpl0(this.checkedBoxColor, checkboxColors.checkedBoxColor) && Color.m6233equalsimpl0(this.uncheckedBoxColor, checkboxColors.uncheckedBoxColor) && Color.m6233equalsimpl0(this.disabledCheckedBoxColor, checkboxColors.disabledCheckedBoxColor) && Color.m6233equalsimpl0(this.disabledUncheckedBoxColor, checkboxColors.disabledUncheckedBoxColor) && Color.m6233equalsimpl0(this.disabledIndeterminateBoxColor, checkboxColors.disabledIndeterminateBoxColor) && Color.m6233equalsimpl0(this.checkedBorderColor, checkboxColors.checkedBorderColor) && Color.m6233equalsimpl0(this.uncheckedBorderColor, checkboxColors.uncheckedBorderColor) && Color.m6233equalsimpl0(this.disabledBorderColor, checkboxColors.disabledBorderColor) && Color.m6233equalsimpl0(this.disabledUncheckedBorderColor, checkboxColors.disabledUncheckedBorderColor) && Color.m6233equalsimpl0(this.disabledIndeterminateBorderColor, checkboxColors.disabledIndeterminateBorderColor);
    }

    /* JADX INFO: renamed from: getCheckedBorderColor-0d7_KjU, reason: not valid java name */
    public final long m3164getCheckedBorderColor0d7_KjU() {
        return this.checkedBorderColor;
    }

    /* JADX INFO: renamed from: getCheckedBoxColor-0d7_KjU, reason: not valid java name */
    public final long m3165getCheckedBoxColor0d7_KjU() {
        return this.checkedBoxColor;
    }

    /* JADX INFO: renamed from: getCheckedCheckmarkColor-0d7_KjU, reason: not valid java name */
    public final long m3166getCheckedCheckmarkColor0d7_KjU() {
        return this.checkedCheckmarkColor;
    }

    /* JADX INFO: renamed from: getDisabledBorderColor-0d7_KjU, reason: not valid java name */
    public final long m3167getDisabledBorderColor0d7_KjU() {
        return this.disabledBorderColor;
    }

    /* JADX INFO: renamed from: getDisabledCheckedBoxColor-0d7_KjU, reason: not valid java name */
    public final long m3168getDisabledCheckedBoxColor0d7_KjU() {
        return this.disabledCheckedBoxColor;
    }

    /* JADX INFO: renamed from: getDisabledIndeterminateBorderColor-0d7_KjU, reason: not valid java name */
    public final long m3169getDisabledIndeterminateBorderColor0d7_KjU() {
        return this.disabledIndeterminateBorderColor;
    }

    /* JADX INFO: renamed from: getDisabledIndeterminateBoxColor-0d7_KjU, reason: not valid java name */
    public final long m3170getDisabledIndeterminateBoxColor0d7_KjU() {
        return this.disabledIndeterminateBoxColor;
    }

    /* JADX INFO: renamed from: getDisabledUncheckedBorderColor-0d7_KjU, reason: not valid java name */
    public final long m3171getDisabledUncheckedBorderColor0d7_KjU() {
        return this.disabledUncheckedBorderColor;
    }

    /* JADX INFO: renamed from: getDisabledUncheckedBoxColor-0d7_KjU, reason: not valid java name */
    public final long m3172getDisabledUncheckedBoxColor0d7_KjU() {
        return this.disabledUncheckedBoxColor;
    }

    /* JADX INFO: renamed from: getUncheckedBorderColor-0d7_KjU, reason: not valid java name */
    public final long m3173getUncheckedBorderColor0d7_KjU() {
        return this.uncheckedBorderColor;
    }

    /* JADX INFO: renamed from: getUncheckedBoxColor-0d7_KjU, reason: not valid java name */
    public final long m3174getUncheckedBoxColor0d7_KjU() {
        return this.uncheckedBoxColor;
    }

    /* JADX INFO: renamed from: getUncheckedCheckmarkColor-0d7_KjU, reason: not valid java name */
    public final long m3175getUncheckedCheckmarkColor0d7_KjU() {
        return this.uncheckedCheckmarkColor;
    }

    public int hashCode() {
        return Color.m6239hashCodeimpl(this.disabledIndeterminateBorderColor) + r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(Color.m6239hashCodeimpl(this.checkedCheckmarkColor) * 31, 31, this.uncheckedCheckmarkColor), 31, this.checkedBoxColor), 31, this.uncheckedBoxColor), 31, this.disabledCheckedBoxColor), 31, this.disabledUncheckedBoxColor), 31, this.disabledIndeterminateBoxColor), 31, this.checkedBorderColor), 31, this.uncheckedBorderColor), 31, this.disabledBorderColor), 31, this.disabledUncheckedBorderColor);
    }

    public /* synthetic */ CheckboxColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, jh2 jh2Var) {
        this(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12);
    }
}
