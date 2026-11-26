package androidx.compose.material3;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.HoverableKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.SliderDefaults;
import androidx.compose.material3.SliderState;
import androidx.compose.material3.tokens.SliderTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ScaleKt;
import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PointMode;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.util.MathHelpersKt;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.muxer.MuxerUtil;
import androidx.profileinstaller.ProfileVerifier;
import androidx.window.core.layout.WindowSizeClass;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.i8;
import defpackage.j59;
import defpackage.lq;
import defpackage.nl3;
import defpackage.ul2;
import defpackage.v28;
import defpackage.y22;
import defpackage.yr;
import defpackage.yz1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class SliderDefaults {
    public static final int $stable = 0;
    public static final SliderDefaults INSTANCE = new SliderDefaults();
    private static final float TickSize;
    private static final float TrackStopIndicatorSize;
    private static final Path trackPath;

    static {
        SliderTokens sliderTokens = SliderTokens.INSTANCE;
        TrackStopIndicatorSize = sliderTokens.m5103getStopIndicatorSizeD9Ej5fM();
        TickSize = sliderTokens.m5103getStopIndicatorSizeD9Ej5fM();
        trackPath = AndroidPath_androidKt.Path();
    }

    private SliderDefaults() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CenteredTrack_7LSsfP0$lambda$23$lambda$22(SliderColors sliderColors, boolean z, DrawScope drawScope, Offset offset) {
        SliderDefaults sliderDefaults = INSTANCE;
        long jM3883trackColorWaAFU9c$material3 = sliderColors.m3883trackColorWaAFU9c$material3(z, true);
        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, offset.m5997unboximpl(), TrackStopIndicatorSize, jM3883trackColorWaAFU9c$material3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CenteredTrack_7LSsfP0$lambda$25(SliderDefaults sliderDefaults, SliderState sliderState, Modifier modifier, boolean z, SliderColors sliderColors, bm3 bm3Var, dm3 dm3Var, float f, float f2, float f3, int i, int i2, Composer composer, int i3) {
        sliderDefaults.m3889CenteredTrack7LSsfP0$material3(sliderState, modifier, z, sliderColors, bm3Var, dm3Var, f, f2, f3, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Thumb_9LiSoMs$lambda$3(SliderDefaults sliderDefaults, MutableInteractionSource mutableInteractionSource, Modifier modifier, SliderColors sliderColors, boolean z, long j, int i, int i2, Composer composer, int i3) {
        sliderDefaults.m3890Thumb9LiSoMs(mutableInteractionSource, modifier, sliderColors, z, j, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Thumb_HwbPF3A$lambda$6(SliderDefaults sliderDefaults, MutableInteractionSource mutableInteractionSource, SliderState sliderState, Modifier modifier, SliderColors sliderColors, boolean z, long j, int i, int i2, Composer composer, int i3) {
        sliderDefaults.m3891ThumbHwbPF3A$material3(mutableInteractionSource, sliderState, modifier, sliderColors, z, j, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Track$lambda$11$lambda$10(long j, SliderPositions sliderPositions, long j2, long j3, long j4, DrawScope drawScope) {
        boolean z = drawScope.getLayoutDirection() == LayoutDirection.Rtl;
        long jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(0.0f)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope.mo6805getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        long jM5979constructorimpl2 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope.mo6805getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() >> 32)))) << 32));
        long j5 = jM5979constructorimpl;
        long j6 = z ? jM5979constructorimpl2 : j5;
        if (!z) {
            j5 = jM5979constructorimpl2;
        }
        float fMo1434toPx0680j_4 = drawScope.mo1434toPx0680j_4(TickSize);
        float fMo1434toPx0680j_5 = drawScope.mo1434toPx0680j_4(SliderKt.getTrackHeight());
        StrokeCap.Companion companion = StrokeCap.Companion;
        DrawScope.m6792drawLineNGM6Ib0$default(drawScope, j, j6, j5, fMo1434toPx0680j_5, companion.m6607getRoundKaPHkGw(), null, 0.0f, null, 0, WindowSizeClass.HEIGHT_DP_MEDIUM_LOWER_BOUND, null);
        int i = (int) (j6 >> 32);
        int i2 = (int) (j5 >> 32);
        long j7 = j6;
        long j8 = j5;
        DrawScope.m6792drawLineNGM6Ib0$default(drawScope, j2, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope.mo6805getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits((sliderPositions.getActiveRange().getStart().floatValue() * (Float.intBitsToFloat(i2) - Float.intBitsToFloat(i))) + Float.intBitsToFloat(i))) << 32)), Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((sliderPositions.getActiveRange().getEndInclusive().floatValue() * (Float.intBitsToFloat(i2) - Float.intBitsToFloat(i))) + Float.intBitsToFloat(i))) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope.mo6805getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), fMo1434toPx0680j_5, companion.m6607getRoundKaPHkGw(), null, 0.0f, null, 0, WindowSizeClass.HEIGHT_DP_MEDIUM_LOWER_BOUND, null);
        float[] tickFractions = sliderPositions.getTickFractions();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int length = tickFractions.length;
        for (int i3 = 0; i3 < length; i3++) {
            float f = tickFractions[i3];
            Boolean boolValueOf = Boolean.valueOf(f > sliderPositions.getActiveRange().getEndInclusive().floatValue() || f < sliderPositions.getActiveRange().getStart().floatValue());
            Object arrayList = linkedHashMap.get(boolValueOf);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(boolValueOf, arrayList);
            }
            ((List) arrayList).add(Float.valueOf(f));
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            boolean zBooleanValue = ((Boolean) entry.getKey()).booleanValue();
            List list = (List) entry.getValue();
            boolean z2 = zBooleanValue;
            ArrayList arrayList2 = new ArrayList(list.size());
            int i4 = 0;
            for (int size = list.size(); i4 < size; size = size) {
                arrayList2.add(Offset.m5976boximpl(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope.mo6805getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (OffsetKt.m6010lerpWko1d7g(j7, j8, ((Number) list.get(i4)).floatValue()) >> 32)))) << 32))));
                i4++;
                z2 = z2;
            }
            j7 = j7;
            j8 = j8;
            DrawScope.m6797drawPointsF8ZwMP8$default(drawScope, arrayList2, PointMode.Companion.m6552getPointsr_lszbg(), z2 ? j3 : j4, fMo1434toPx0680j_4, StrokeCap.Companion.m6607getRoundKaPHkGw(), null, 0.0f, null, 0, WindowSizeClass.HEIGHT_DP_MEDIUM_LOWER_BOUND, null);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Track$lambda$12(SliderDefaults sliderDefaults, SliderPositions sliderPositions, Modifier modifier, SliderColors sliderColors, boolean z, int i, int i2, Composer composer, int i3) {
        sliderDefaults.Track(sliderPositions, modifier, sliderColors, z, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Track$lambda$13(SliderDefaults sliderDefaults, SliderState sliderState, Modifier modifier, SliderColors sliderColors, boolean z, int i, int i2, Composer composer, int i3) {
        sliderDefaults.Track(sliderState, modifier, sliderColors, z, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Track$lambda$33(SliderDefaults sliderDefaults, RangeSliderState rangeSliderState, Modifier modifier, SliderColors sliderColors, boolean z, int i, int i2, Composer composer, int i3) {
        sliderDefaults.Track(rangeSliderState, modifier, sliderColors, z, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: renamed from: TrackImpl-VvwgllI, reason: not valid java name */
    private final void m3884TrackImplVvwgllI(final SliderState sliderState, final float f, final Modifier modifier, final boolean z, final SliderColors sliderColors, final bm3<? super DrawScope, ? super Offset, j59> bm3Var, final dm3<? super DrawScope, ? super Offset, ? super Color, j59> dm3Var, final float f2, final float f3, final boolean z2, final boolean z3, Composer composer, final int i, final int i2) {
        int i3;
        int i4;
        Composer composer2;
        Modifier modifierM2085height3ABfNKs;
        Modifier modifier2;
        Composer composerStartRestartGroup = composer.startRestartGroup(133396521);
        if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changedInstance(sliderState) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changed(f) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= composerStartRestartGroup.changed(modifier) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i3 |= composerStartRestartGroup.changed(z) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i3 |= composerStartRestartGroup.changed(sliderColors) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(bm3Var) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(dm3Var) ? 1048576 : 524288;
        }
        if ((i & 12582912) == 0) {
            i3 |= composerStartRestartGroup.changed(f2) ? 8388608 : 4194304;
        }
        if ((i & 100663296) == 0) {
            i3 |= composerStartRestartGroup.changed(f3) ? 67108864 : GroupFlagsKt.HasAuxSlotFlag;
        }
        if ((i & 805306368) == 0) {
            i3 |= composerStartRestartGroup.changed(z2) ? 536870912 : 268435456;
        }
        if ((i2 & 6) == 0) {
            i4 = i2 | (composerStartRestartGroup.changed(z3) ? 4 : 2);
        } else {
            i4 = i2;
        }
        if (composerStartRestartGroup.shouldExecute(((i3 & 306783379) == 306783378 && (i4 & 3) == 2) ? false : true, i3 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(133396521, i3, i4, "androidx.compose.material3.SliderDefaults.TrackImpl (Slider.kt:1587)");
            }
            int i5 = i3;
            final long jM3883trackColorWaAFU9c$material3 = sliderColors.m3883trackColorWaAFU9c$material3(z, false);
            final long jM3883trackColorWaAFU9c$material4 = sliderColors.m3883trackColorWaAFU9c$material3(z, true);
            final long jM3882tickColorWaAFU9c$material3 = sliderColors.m3882tickColorWaAFU9c$material3(z, false);
            int i6 = i4;
            final long jM3882tickColorWaAFU9c$material4 = sliderColors.m3882tickColorWaAFU9c$material3(z, true);
            if (sliderState.getOrientation$material3() == Orientation.Vertical) {
                modifierM2085height3ABfNKs = SizeKt.fillMaxHeight$default(SizeKt.m2104width3ABfNKs(modifier, SliderKt.getTrackHeight()), 0.0f, 1, null);
                if (sliderState.getReverseVerticalDirection$material3()) {
                    modifierM2085height3ABfNKs = ScaleKt.scale(modifierM2085height3ABfNKs, 1.0f, -1.0f);
                }
            } else {
                modifierM2085height3ABfNKs = SizeKt.m2085height3ABfNKs(SizeKt.fillMaxWidth$default(modifier, 0.0f, 1, null), SliderKt.getTrackHeight());
            }
            Modifier.Companion companion = Modifier.Companion;
            int i7 = i5 & 112;
            boolean zChangedInstance = (i7 == 32) | composerStartRestartGroup.changedInstance(sliderState);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new dm3() { // from class: l28
                    @Override // defpackage.dm3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return SliderDefaults.TrackImpl_VvwgllI$lambda$29$lambda$28(f, sliderState, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            Modifier modifierThen = modifierM2085height3ABfNKs.then(LayoutModifierKt.layout(companion, (dm3) objRememberedValue));
            boolean zChangedInstance2 = (i7 == 32) | composerStartRestartGroup.changedInstance(sliderState) | composerStartRestartGroup.changed(jM3883trackColorWaAFU9c$material3) | composerStartRestartGroup.changed(jM3883trackColorWaAFU9c$material4) | composerStartRestartGroup.changed(jM3882tickColorWaAFU9c$material3) | composerStartRestartGroup.changed(jM3882tickColorWaAFU9c$material4) | ((i5 & 29360128) == 8388608) | ((i5 & 234881024) == 67108864) | ((i5 & 458752) == 131072) | ((i5 & 3670016) == 1048576) | ((i5 & 1879048192) == 536870912) | ((i6 & 14) == 4);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                modifier2 = modifierThen;
                nl3 nl3Var = new nl3() { // from class: n28
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return SliderDefaults.TrackImpl_VvwgllI$lambda$31$lambda$30(f, sliderState, jM3883trackColorWaAFU9c$material3, jM3883trackColorWaAFU9c$material4, jM3882tickColorWaAFU9c$material3, jM3882tickColorWaAFU9c$material4, f2, f3, bm3Var, dm3Var, z2, z3, (DrawScope) obj);
                    }
                };
                composer2 = composerStartRestartGroup;
                composer2.updateRememberedValue(nl3Var);
                objRememberedValue2 = nl3Var;
            } else {
                modifier2 = modifierThen;
                composer2 = composerStartRestartGroup;
            }
            CanvasKt.Canvas(modifier2, (nl3) objRememberedValue2, composer2, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: o28
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return SliderDefaults.TrackImpl_VvwgllI$lambda$32(this.b, sliderState, f, modifier, z, sliderColors, bm3Var, dm3Var, f2, f3, z2, z3, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: renamed from: TrackImpl-xlyIBlM, reason: not valid java name */
    private final void m3885TrackImplxlyIBlM(final RangeSliderState rangeSliderState, final float f, final Modifier modifier, final boolean z, final SliderColors sliderColors, final bm3<? super DrawScope, ? super Offset, j59> bm3Var, final dm3<? super DrawScope, ? super Offset, ? super Color, j59> dm3Var, final float f2, final float f3, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Composer composer3;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1719396904);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(rangeSliderState) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(f) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changed(modifier) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changed(z) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= composerStartRestartGroup.changed(sliderColors) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(dm3Var) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            i2 |= composerStartRestartGroup.changed(f2) ? 8388608 : 4194304;
        }
        if ((i & 100663296) == 0) {
            i2 |= composerStartRestartGroup.changed(f3) ? 67108864 : GroupFlagsKt.HasAuxSlotFlag;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 38347923) != 38347922, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1719396904, i2, -1, "androidx.compose.material3.SliderDefaults.TrackImpl (Slider.kt:1811)");
            }
            final long jM3883trackColorWaAFU9c$material3 = sliderColors.m3883trackColorWaAFU9c$material3(z, false);
            int i3 = i2;
            final long jM3883trackColorWaAFU9c$material4 = sliderColors.m3883trackColorWaAFU9c$material3(z, true);
            final long jM3882tickColorWaAFU9c$material3 = sliderColors.m3882tickColorWaAFU9c$material3(z, false);
            final long jM3882tickColorWaAFU9c$material4 = sliderColors.m3882tickColorWaAFU9c$material3(z, true);
            Modifier modifierM2085height3ABfNKs = SizeKt.m2085height3ABfNKs(SizeKt.fillMaxWidth$default(modifier, 0.0f, 1, null), SliderKt.getTrackHeight());
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = new v28();
                composer3 = composerStartRestartGroup;
                composer3.updateRememberedValue(objRememberedValue);
            } else {
                composer3 = composerStartRestartGroup;
            }
            Modifier modifierLayout = LayoutModifierKt.layout(modifierM2085height3ABfNKs, (dm3) objRememberedValue);
            boolean zChangedInstance = ((i3 & 112) == 32) | composer3.changedInstance(rangeSliderState) | composer3.changed(jM3883trackColorWaAFU9c$material3) | composer3.changed(jM3883trackColorWaAFU9c$material4) | composer3.changed(jM3882tickColorWaAFU9c$material3) | composer3.changed(jM3882tickColorWaAFU9c$material4) | ((i3 & 29360128) == 8388608) | ((i3 & 234881024) == 67108864) | ((i3 & 458752) == 131072) | ((i3 & 3670016) == 1048576);
            Object objRememberedValue2 = composer3.rememberedValue();
            if (zChangedInstance || objRememberedValue2 == companion.getEmpty()) {
                composer2 = composer3;
                nl3 nl3Var = new nl3() { // from class: w28
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return SliderDefaults.TrackImpl_xlyIBlM$lambda$46$lambda$45(f, rangeSliderState, jM3883trackColorWaAFU9c$material3, jM3883trackColorWaAFU9c$material4, jM3882tickColorWaAFU9c$material3, jM3882tickColorWaAFU9c$material4, f2, f3, bm3Var, dm3Var, (DrawScope) obj);
                    }
                };
                composer2.updateRememberedValue(nl3Var);
                objRememberedValue2 = nl3Var;
            } else {
                composer2 = composer3;
            }
            CanvasKt.Canvas(modifierLayout, (nl3) objRememberedValue2, composer2, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x28
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return SliderDefaults.TrackImpl_xlyIBlM$lambda$47(this.b, rangeSliderState, f, modifier, z, sliderColors, bm3Var, dm3Var, f2, f3, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult TrackImpl_VvwgllI$lambda$29$lambda$28(float f, SliderState sliderState, MeasureScope measureScope, Measurable measurable, Constraints constraints) {
        int iMo1428roundToPx0680j_4;
        Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(constraints.m9001unboximpl());
        if (Dp.m9047equalsimpl0(f, Dp.Companion.m9062getUnspecifiedD9Ej5fM())) {
            iMo1428roundToPx0680j_4 = sliderState.getOrientation$material3() == Orientation.Vertical ? placeableMo7702measureBRTryo0.getWidth() / 2 : placeableMo7702measureBRTryo0.getHeight() / 2;
        } else {
            iMo1428roundToPx0680j_4 = measureScope.mo1428roundToPx0680j_4(f);
        }
        int width = placeableMo7702measureBRTryo0.getWidth();
        int height = placeableMo7702measureBRTryo0.getHeight();
        Map<AlignmentLine, Integer> mapSingletonMap = Collections.singletonMap(SliderKt.getCornerSizeAlignmentLine(), Integer.valueOf(iMo1428roundToPx0680j_4));
        mapSingletonMap.getClass();
        return measureScope.layout(width, height, mapSingletonMap, new yz1(placeableMo7702measureBRTryo0, 3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TrackImpl_VvwgllI$lambda$29$lambda$28$lambda$27(Placeable placeable, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.place$default(placementScope, placeable, 0, 0, 0.0f, 4, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TrackImpl_VvwgllI$lambda$31$lambda$30(float f, SliderState sliderState, long j, long j2, long j3, long j4, float f2, float f3, bm3 bm3Var, dm3 dm3Var, boolean z, boolean z2, DrawScope drawScope) {
        float fMo1434toPx0680j_4;
        if (Dp.m9047equalsimpl0(f, Dp.Companion.m9062getUnspecifiedD9Ej5fM())) {
            fMo1434toPx0680j_4 = (sliderState.getOrientation$material3() == Orientation.Vertical ? Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() >> 32)) : Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) / 2.0f;
        } else {
            fMo1434toPx0680j_4 = drawScope.mo1434toPx0680j_4(f);
        }
        INSTANCE.m3886drawTrackGVD57ws(drawScope, sliderState.getTickFractions$material3(), 0.0f, sliderState.getCoercedValueAsFraction(), j, j2, j3, j4, drawScope.mo1431toDpu2uoSUM(0), drawScope.mo1431toDpu2uoSUM(0), drawScope.mo1431toDpu2uoSUM(sliderState.getThumbWidth$material3()), drawScope.mo1431toDpu2uoSUM(sliderState.getThumbHeight$material3()), f2, f3, drawScope.mo1430toDpu2uoSUM(fMo1434toPx0680j_4), bm3Var, dm3Var, false, z, sliderState.getOrientation$material3(), z2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TrackImpl_VvwgllI$lambda$32(SliderDefaults sliderDefaults, SliderState sliderState, float f, Modifier modifier, boolean z, SliderColors sliderColors, bm3 bm3Var, dm3 dm3Var, float f2, float f3, boolean z2, boolean z3, int i, int i2, Composer composer, int i3) {
        sliderDefaults.m3884TrackImplVvwgllI(sliderState, f, modifier, z, sliderColors, bm3Var, dm3Var, f2, f3, z2, z3, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), RecomposeScopeImplKt.updateChangedFlags(i2));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult TrackImpl_xlyIBlM$lambda$44$lambda$43(MeasureScope measureScope, Measurable measurable, Constraints constraints) {
        Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(constraints.m9001unboximpl());
        int height = placeableMo7702measureBRTryo0.getHeight() / 2;
        int width = placeableMo7702measureBRTryo0.getWidth();
        int height2 = placeableMo7702measureBRTryo0.getHeight();
        Map<AlignmentLine, Integer> mapSingletonMap = Collections.singletonMap(SliderKt.getCornerSizeAlignmentLine(), Integer.valueOf(height));
        mapSingletonMap.getClass();
        return measureScope.layout(width, height2, mapSingletonMap, new lq(placeableMo7702measureBRTryo0, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TrackImpl_xlyIBlM$lambda$44$lambda$43$lambda$42(Placeable placeable, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.place$default(placementScope, placeable, 0, 0, 0.0f, 4, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TrackImpl_xlyIBlM$lambda$46$lambda$45(float f, RangeSliderState rangeSliderState, long j, long j2, long j3, long j4, float f2, float f3, bm3 bm3Var, dm3 dm3Var, DrawScope drawScope) {
        m3887drawTrackGVD57ws$default(INSTANCE, drawScope, rangeSliderState.getTickFractions$material3(), rangeSliderState.getCoercedActiveRangeStartAsFraction$material3(), rangeSliderState.getCoercedActiveRangeEndAsFraction$material3(), j, j2, j3, j4, drawScope.mo1430toDpu2uoSUM(rangeSliderState.getStartThumbWidth$material3()), drawScope.mo1430toDpu2uoSUM(rangeSliderState.getStartThumbHeight$material3()), drawScope.mo1430toDpu2uoSUM(rangeSliderState.getEndThumbWidth$material3()), drawScope.mo1430toDpu2uoSUM(rangeSliderState.getEndThumbHeight$material3()), f2, f3, drawScope.mo1430toDpu2uoSUM(Dp.m9047equalsimpl0(f, Dp.Companion.m9062getUnspecifiedD9Ej5fM()) ? Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) / 2.0f : drawScope.mo1434toPx0680j_4(f)), bm3Var, dm3Var, true, false, null, false, 917504, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TrackImpl_xlyIBlM$lambda$47(SliderDefaults sliderDefaults, RangeSliderState rangeSliderState, float f, Modifier modifier, boolean z, SliderColors sliderColors, bm3 bm3Var, dm3 dm3Var, float f2, float f3, int i, Composer composer, int i2) {
        sliderDefaults.m3885TrackImplxlyIBlM(rangeSliderState, f, modifier, z, sliderColors, bm3Var, dm3Var, f2, f3, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Track_4EFweAY$lambda$15$lambda$14(SliderColors sliderColors, boolean z, DrawScope drawScope, Offset offset) {
        SliderDefaults sliderDefaults = INSTANCE;
        long jM3883trackColorWaAFU9c$material3 = sliderColors.m3883trackColorWaAFU9c$material3(z, true);
        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, offset.m5997unboximpl(), TrackStopIndicatorSize, jM3883trackColorWaAFU9c$material3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Track_4EFweAY$lambda$17(SliderDefaults sliderDefaults, SliderState sliderState, Modifier modifier, boolean z, SliderColors sliderColors, bm3 bm3Var, dm3 dm3Var, float f, float f2, int i, int i2, Composer composer, int i3) {
        sliderDefaults.m3893Track4EFweAY(sliderState, modifier, z, sliderColors, (bm3<? super DrawScope, ? super Offset, j59>) bm3Var, (dm3<? super DrawScope, ? super Offset, ? super Color, j59>) dm3Var, f, f2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Track_4EFweAY$lambda$35$lambda$34(SliderColors sliderColors, boolean z, DrawScope drawScope, Offset offset) {
        SliderDefaults sliderDefaults = INSTANCE;
        long jM3883trackColorWaAFU9c$material3 = sliderColors.m3883trackColorWaAFU9c$material3(z, true);
        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, offset.m5997unboximpl(), TrackStopIndicatorSize, jM3883trackColorWaAFU9c$material3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Track_4EFweAY$lambda$37(SliderDefaults sliderDefaults, RangeSliderState rangeSliderState, Modifier modifier, boolean z, SliderColors sliderColors, bm3 bm3Var, dm3 dm3Var, float f, float f2, int i, int i2, Composer composer, int i3) {
        sliderDefaults.m3892Track4EFweAY(rangeSliderState, modifier, z, sliderColors, (bm3<? super DrawScope, ? super Offset, j59>) bm3Var, (dm3<? super DrawScope, ? super Offset, ? super Color, j59>) dm3Var, f, f2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Track_mnvyFg4$lambda$19$lambda$18(SliderColors sliderColors, boolean z, DrawScope drawScope, Offset offset) {
        SliderDefaults sliderDefaults = INSTANCE;
        long jM3883trackColorWaAFU9c$material3 = sliderColors.m3883trackColorWaAFU9c$material3(z, true);
        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, offset.m5997unboximpl(), TrackStopIndicatorSize, jM3883trackColorWaAFU9c$material3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Track_mnvyFg4$lambda$21(SliderDefaults sliderDefaults, SliderState sliderState, float f, Modifier modifier, boolean z, SliderColors sliderColors, bm3 bm3Var, dm3 dm3Var, float f2, float f3, int i, int i2, Composer composer, int i3) {
        sliderDefaults.m3895TrackmnvyFg4$material3(sliderState, f, modifier, z, sliderColors, (bm3<? super DrawScope, ? super Offset, j59>) bm3Var, (dm3<? super DrawScope, ? super Offset, ? super Color, j59>) dm3Var, f2, f3, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Track_mnvyFg4$lambda$39$lambda$38(SliderColors sliderColors, boolean z, DrawScope drawScope, Offset offset) {
        SliderDefaults sliderDefaults = INSTANCE;
        long jM3883trackColorWaAFU9c$material3 = sliderColors.m3883trackColorWaAFU9c$material3(z, true);
        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, offset.m5997unboximpl(), TrackStopIndicatorSize, jM3883trackColorWaAFU9c$material3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Track_mnvyFg4$lambda$41(SliderDefaults sliderDefaults, RangeSliderState rangeSliderState, float f, Modifier modifier, boolean z, SliderColors sliderColors, bm3 bm3Var, dm3 dm3Var, float f2, float f3, int i, int i2, Composer composer, int i3) {
        sliderDefaults.m3894TrackmnvyFg4$material3(rangeSliderState, f, modifier, z, sliderColors, (bm3<? super DrawScope, ? super Offset, j59>) bm3Var, (dm3<? super DrawScope, ? super Offset, ? super Color, j59>) dm3Var, f2, f3, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:112:0x026c  */
    /* JADX WARN: Code duplicated, block: B:156:0x03d0  */
    /* JADX WARN: Code duplicated, block: B:158:0x03d4  */
    /* JADX WARN: Code duplicated, block: B:159:0x03d7  */
    /* JADX WARN: Code duplicated, block: B:161:0x03dc  */
    /* JADX WARN: Code duplicated, block: B:167:0x03e8  */
    /* JADX WARN: Code duplicated, block: B:172:0x03f3  */
    /* JADX WARN: Code duplicated, block: B:177:0x03fe  */
    /* JADX WARN: Code duplicated, block: B:179:0x0402  */
    /* JADX WARN: Code duplicated, block: B:181:0x0405  */
    /* JADX WARN: Code duplicated, block: B:182:0x0408  */
    /* JADX WARN: Code duplicated, block: B:185:0x040c  */
    /* JADX WARN: Code duplicated, block: B:186:0x040f  */
    /* JADX WARN: Code duplicated, block: B:189:0x0414 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:190:0x0416  */
    /* JADX WARN: Code duplicated, block: B:192:0x042b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:193:0x042d  */
    /* JADX WARN: Code duplicated, block: B:194:0x044e  */
    /* JADX WARN: Code duplicated, block: B:196:0x0464  */
    /* JADX WARN: Code duplicated, block: B:198:0x0489  */
    /* JADX WARN: Code duplicated, block: B:202:0x04ae  */
    /* JADX WARN: Code duplicated, block: B:206:0x04e5  */
    /* JADX WARN: Code duplicated, block: B:208:0x04eb  */
    /* JADX WARN: Code duplicated, block: B:216:0x04fd A[PHI: r30
      0x04fd: PHI (r30v4 float) = (r30v2 float), (r30v2 float), (r30v2 float), (r30v5 float), (r30v6 float) binds: [B:241:0x0537, B:234:0x0529, B:226:0x0519, B:213:0x04f5, B:215:0x04fb] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:217:0x0505  */
    /* JADX WARN: Code duplicated, block: B:220:0x050d  */
    /* JADX WARN: Code duplicated, block: B:225:0x0518  */
    /* JADX WARN: Code duplicated, block: B:227:0x051b  */
    /* JADX WARN: Code duplicated, block: B:228:0x051d  */
    /* JADX WARN: Code duplicated, block: B:230:0x0521  */
    /* JADX WARN: Code duplicated, block: B:233:0x0528  */
    /* JADX WARN: Code duplicated, block: B:235:0x052b  */
    /* JADX WARN: Code duplicated, block: B:237:0x052f  */
    /* JADX WARN: Code duplicated, block: B:240:0x0536  */
    /* JADX WARN: Code duplicated, block: B:243:0x053a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:244:0x053c  */
    /* JADX WARN: Code duplicated, block: B:245:0x0562  */
    /* JADX WARN: Code duplicated, block: B:247:0x0568  */
    /* JADX WARN: Code duplicated, block: B:248:0x059a  */
    /* JADX WARN: Code duplicated, block: B:251:0x05c5  */
    /* JADX WARN: Code duplicated, block: B:254:0x05cc  */
    /* JADX WARN: Code duplicated, block: B:256:0x05cf  */
    /* JADX WARN: Code duplicated, block: B:257:0x05d2  */
    /* JADX WARN: Code duplicated, block: B:72:0x011a  */
    /* JADX INFO: renamed from: drawTrack-GVD57ws, reason: not valid java name */
    private final void m3886drawTrackGVD57ws(DrawScope drawScope, float[] fArr, float f, float f2, long j, long j2, long j3, long j4, float f3, float f4, float f5, float f6, float f7, float f8, float f9, bm3<? super DrawScope, ? super Offset, j59> bm3Var, dm3<? super DrawScope, ? super Offset, ? super Color, j59> dm3Var, boolean z, boolean z2, Orientation orientation, boolean z3) {
        float f10;
        float f11;
        float f12;
        boolean z4;
        long jM5979constructorimpl;
        long jM6047constructorimpl;
        float f13;
        float f14;
        float f15;
        long jM5979constructorimpl2;
        float f16;
        float f17;
        float f18;
        float f19;
        float f20;
        float f21;
        float f22;
        float f23;
        float f24;
        float f25;
        float f26;
        float f27;
        float f28;
        int length;
        int i;
        int i2;
        float f29;
        float fLerp;
        boolean z5;
        float f30;
        float f31;
        long jM5979constructorimpl3;
        boolean z6;
        long j5;
        boolean z7;
        boolean z8;
        long jM5979constructorimpl4;
        long jM6047constructorimpl2;
        boolean z9;
        float f32;
        long jM5979constructorimpl5;
        long jM6047constructorimpl3;
        long jM5979constructorimpl6;
        float fMo1434toPx0680j_4;
        float fMo1434toPx0680j_5;
        float fMo1434toPx0680j_6;
        DrawScope drawScope2 = drawScope;
        boolean z10 = orientation == Orientation.Vertical;
        boolean z11 = drawScope2.getLayoutDirection() == LayoutDirection.Rtl;
        boolean z12 = z11 && !z10;
        float fMo1434toPx0680j_7 = drawScope2.mo1434toPx0680j_4(f9);
        long jMo6806getSizeNHjbRc = drawScope2.mo6806getSizeNHjbRc();
        float fIntBitsToFloat = Float.intBitsToFloat((int) (z10 ? jMo6806getSizeNHjbRc & MuxerUtil.UNSIGNED_INT_MAX_VALUE : jMo6806getSizeNHjbRc >> 32));
        boolean z13 = aa4.a(f, yr.J(fArr)) || aa4.a(f, yr.U(fArr));
        float fB = ((fArr.length == 0) || (aa4.a(f2, yr.J(fArr)) || aa4.a(f2, yr.U(fArr)))) ? i8.b(fIntBitsToFloat, 0.0f, f2, 0.0f) : (((fIntBitsToFloat - 0.0f) - (fMo1434toPx0680j_7 * 2.0f)) * f2) + 0.0f + fMo1434toPx0680j_7;
        float fB2 = ((fArr.length == 0) || z13) ? i8.b(fIntBitsToFloat, 0.0f, f, 0.0f) : (((fIntBitsToFloat - 0.0f) - (fMo1434toPx0680j_7 * 2.0f)) * f) + 0.0f + fMo1434toPx0680j_7;
        float fMo1434toPx0680j_8 = drawScope2.mo1434toPx0680j_4(f8);
        if (Dp.m9041compareTo0680j_4(f7, Dp.m9042constructorimpl(0.0f)) > 0) {
            if (z10) {
                fMo1434toPx0680j_4 = drawScope2.mo1434toPx0680j_4(f7) + (drawScope2.mo1434toPx0680j_4(f4) / 2.0f);
                fMo1434toPx0680j_5 = drawScope2.mo1434toPx0680j_4(f6) / 2.0f;
                fMo1434toPx0680j_6 = drawScope2.mo1434toPx0680j_4(f7);
            } else {
                fMo1434toPx0680j_4 = drawScope2.mo1434toPx0680j_4(f7) + (drawScope2.mo1434toPx0680j_4(f3) / 2.0f);
                fMo1434toPx0680j_5 = drawScope2.mo1434toPx0680j_4(f5) / 2.0f;
                fMo1434toPx0680j_6 = drawScope2.mo1434toPx0680j_4(f7);
            }
            f10 = fMo1434toPx0680j_6 + fMo1434toPx0680j_5;
            f11 = fMo1434toPx0680j_4;
        } else {
            f10 = 0.0f;
            f11 = 0.0f;
        }
        long jMo6805getCenterF1C5BW0 = drawScope2.mo6805getCenterF1C5BW0();
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (z10 ? jMo6805getCenterF1C5BW0 & MuxerUtil.UNSIGNED_INT_MAX_VALUE : jMo6805getCenterF1C5BW0 >> 32));
        float f33 = f11 + 0.0f;
        if (z2) {
            if (!(fArr.length == 0)) {
                f33 += fMo1434toPx0680j_7;
            }
        } else {
            f33 += fMo1434toPx0680j_7;
        }
        float fMin = z3 ? Math.min(fB, fIntBitsToFloat2) : fB2;
        if ((z3 || z) && fMin > f33) {
            float f34 = z12 ? fMo1434toPx0680j_8 : fMo1434toPx0680j_7;
            float f35 = z12 ? fMo1434toPx0680j_7 : fMo1434toPx0680j_8;
            float f36 = fMin - f11;
            if (z12) {
                f12 = 0.0f;
                z4 = true;
                jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6806getSizeNHjbRc() >> 32)) - f36)) << 32) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            } else {
                f12 = 0.0f;
                z4 = true;
                jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(0.0f)) << 32) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            }
            if (z10) {
                jM6047constructorimpl = Size.m6047constructorimpl((((long) Float.floatToRawIntBits(f36 - f12)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6806getSizeNHjbRc() >> 32)))) << 32));
            } else {
                jM6047constructorimpl = Size.m6047constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(f36 - f12)) << 32));
            }
            f13 = fIntBitsToFloat2;
            f14 = fB;
            f15 = fIntBitsToFloat;
            drawScope2 = drawScope;
            m3888drawTrackPathzXTsYAs(drawScope2, orientation, jM5979constructorimpl, jM6047constructorimpl, j, f34, f35);
            if (z10) {
                jM5979constructorimpl2 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() >> 32)))) << 32) | (((long) Float.floatToRawIntBits(fMo1434toPx0680j_7 + f12)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            } else if (z11) {
                jM5979constructorimpl2 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((Float.intBitsToFloat((int) (drawScope2.mo6806getSizeNHjbRc() >> 32)) - f12) - fMo1434toPx0680j_7)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            } else {
                jM5979constructorimpl2 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fMo1434toPx0680j_7 + f12)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            }
            if (bm3Var != null) {
                bm3Var.invoke(drawScope2, Offset.m5976boximpl(jM5979constructorimpl2));
                j59 j59Var = j59.a;
            }
        } else {
            f13 = fIntBitsToFloat2;
            f14 = fB;
            f15 = fIntBitsToFloat;
            f12 = 0.0f;
            z4 = true;
        }
        float f37 = f15 - f10;
        if (z2) {
            if (!(fArr.length == 0 ? z4 : false)) {
                f37 -= fMo1434toPx0680j_7;
            }
        } else {
            f37 -= fMo1434toPx0680j_7;
        }
        float fMax = z3 ? Math.max(f14, f13) : f14;
        if (fMax < f37) {
            float f38 = z12 ? fMo1434toPx0680j_7 : fMo1434toPx0680j_8;
            float f39 = z12 ? fMo1434toPx0680j_8 : fMo1434toPx0680j_7;
            float f40 = fMax + f10;
            float f41 = f15 - f40;
            if (z10) {
                jM5979constructorimpl5 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f12)) << 32) | (((long) Float.floatToRawIntBits(f40)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            } else if (z11) {
                jM5979constructorimpl5 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f12)) << 32) | (((long) Float.floatToRawIntBits(f12)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            } else {
                jM5979constructorimpl5 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f40)) << 32) | (((long) Float.floatToRawIntBits(f12)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            }
            if (z10) {
                jM6047constructorimpl3 = Size.m6047constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6806getSizeNHjbRc() >> 32)))) << 32) | (((long) Float.floatToRawIntBits(f41)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            } else if (!z11 || z) {
                jM6047constructorimpl3 = Size.m6047constructorimpl((((long) Float.floatToRawIntBits(f41)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            } else {
                jM6047constructorimpl3 = Size.m6047constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6806getSizeNHjbRc() >> 32)) - f40)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            }
            m3888drawTrackPathzXTsYAs(drawScope2, orientation, jM5979constructorimpl5, jM6047constructorimpl3, j, f38, f39);
            if (z10) {
                jM5979constructorimpl6 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() >> 32)))) << 32) | (((long) Float.floatToRawIntBits(f15 - fMo1434toPx0680j_7)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            } else if (z11) {
                jM5979constructorimpl6 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fMo1434toPx0680j_7)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            } else {
                jM5979constructorimpl6 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f15 - fMo1434toPx0680j_7)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            }
            if (bm3Var != null) {
                bm3Var.invoke(drawScope2, Offset.m5976boximpl(jM5979constructorimpl6));
                j59 j59Var2 = j59.a;
            }
        }
        if (!z3) {
            if (z) {
                f17 = fB2 + f11;
            } else {
                f16 = f12;
            }
            if (z3) {
                if (fMax > f13) {
                    f32 = f10;
                } else {
                    f32 = f12;
                }
                f18 = fMax - f32;
            } else {
                f18 = f14 - f10;
            }
            if (!z12 || z3 || z) {
                f19 = fMo1434toPx0680j_8;
            } else {
                f19 = fMo1434toPx0680j_7;
            }
            if (z12 || z3 || z) {
                f20 = fMo1434toPx0680j_8;
            } else {
                f20 = fMo1434toPx0680j_7;
            }
            if (z12 || z3 || z) {
                f21 = f18 - f16;
            } else {
                f21 = f18;
            }
            if (z2) {
                if (fArr.length == 0) {
                    z9 = z4;
                } else {
                    z9 = false;
                }
                if (z9) {
                    f22 = f12;
                } else {
                    f22 = f19;
                }
            } else {
                f22 = f19;
            }
            if (f21 > f22) {
                if (z10) {
                    jM5979constructorimpl4 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f12)) << 32) | (((long) Float.floatToRawIntBits(f16)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                } else if (z11) {
                    jM5979constructorimpl4 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6806getSizeNHjbRc() >> 32)) - f18)) << 32) | (((long) Float.floatToRawIntBits(f12)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                } else {
                    jM5979constructorimpl4 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f16)) << 32) | (((long) Float.floatToRawIntBits(f12)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                }
                long j6 = jM5979constructorimpl4;
                if (z10) {
                    jM6047constructorimpl2 = Size.m6047constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6806getSizeNHjbRc() >> 32)))) << 32) | (((long) Float.floatToRawIntBits(f21)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                } else if (z11 || z3 || z) {
                    jM6047constructorimpl2 = Size.m6047constructorimpl((((long) Float.floatToRawIntBits(f21)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                } else {
                    jM6047constructorimpl2 = Size.m6047constructorimpl((((long) Float.floatToRawIntBits(f18)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                }
                m3888drawTrackPathzXTsYAs(drawScope2, orientation, j6, jM6047constructorimpl2, j2, f19, f20);
            }
            f23 = f12 + fMo1434toPx0680j_7;
            f24 = f15 - fMo1434toPx0680j_7;
            f25 = f13 - f10;
            f26 = f13 + f10;
            f27 = fB2 - f11;
            float f42 = fB2 + f11;
            f28 = f14 - f10;
            float f43 = f14 + f10;
            length = fArr.length;
            i = 0;
            i2 = 0;
            while (i < length) {
                float f44 = fArr[i];
                int i3 = i2 + 1;
                if (bm3Var != null) {
                    if ((z3 && !z) || i2 != 0) {
                        f29 = f25;
                        if (i2 == fArr.length - 1) {
                        }
                        i++;
                        f25 = f29;
                        f26 = f30;
                        f27 = f31;
                        i2 = i3;
                    }
                    f30 = f26;
                    f31 = f27;
                    i++;
                    f25 = f29;
                    f26 = f30;
                    f27 = f31;
                    i2 = i3;
                } else {
                    f29 = f25;
                }
                fLerp = MathHelpersKt.lerp(f23, f24, f44);
                if (!z3) {
                    if (fLerp >= f29 || fLerp > f26) {
                        z8 = false;
                    } else {
                        z8 = z4;
                    }
                    if (!z8) {
                        f30 = f26;
                        f31 = f27;
                    } else if (z) {
                        if (fLerp >= f27) {
                            z7 = false;
                        } else {
                            z7 = false;
                        }
                        if (z7) {
                            f30 = f26;
                            f31 = f27;
                        } else {
                            if (fLerp >= f28) {
                                z5 = false;
                            } else {
                                z5 = false;
                            }
                            if (z5) {
                                f30 = f26;
                                f31 = f27;
                            } else {
                                if (z10) {
                                    f30 = f26;
                                    f31 = f27;
                                    jM5979constructorimpl3 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() >> 32)))) << 32) | (((long) Float.floatToRawIntBits(fLerp)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                                } else {
                                    f30 = f26;
                                    f31 = f27;
                                    if (z11) {
                                        jM5979constructorimpl3 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6806getSizeNHjbRc() >> 32)) - fLerp)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                                    } else {
                                        jM5979constructorimpl3 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fLerp)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                                    }
                                }
                                Offset offsetM5976boximpl = Offset.m5976boximpl(jM5979constructorimpl3);
                                if (fLerp >= f16) {
                                    z6 = false;
                                } else {
                                    z6 = false;
                                }
                                if (z6) {
                                    j5 = j4;
                                } else {
                                    j5 = j3;
                                }
                                dm3Var.invoke(drawScope2, offsetM5976boximpl, Color.m6222boximpl(j5));
                            }
                        }
                    } else {
                        if (fLerp >= f28) {
                            z5 = false;
                        } else {
                            z5 = false;
                        }
                        if (z5) {
                            f30 = f26;
                            f31 = f27;
                        } else {
                            if (z10) {
                                f30 = f26;
                                f31 = f27;
                                jM5979constructorimpl3 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() >> 32)))) << 32) | (((long) Float.floatToRawIntBits(fLerp)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                            } else {
                                f30 = f26;
                                f31 = f27;
                                if (z11) {
                                    jM5979constructorimpl3 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6806getSizeNHjbRc() >> 32)) - fLerp)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                                } else {
                                    jM5979constructorimpl3 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fLerp)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                                }
                            }
                            Offset offsetM5976boximpl2 = Offset.m5976boximpl(jM5979constructorimpl3);
                            if (fLerp >= f16) {
                                z6 = false;
                            } else {
                                z6 = false;
                            }
                            if (z6) {
                                j5 = j4;
                            } else {
                                j5 = j3;
                            }
                            dm3Var.invoke(drawScope2, offsetM5976boximpl2, Color.m6222boximpl(j5));
                        }
                    }
                } else if (z) {
                    if (fLerp >= f28 || fLerp > f43) {
                        z5 = false;
                    } else {
                        z5 = z4;
                    }
                    if (z5) {
                        f30 = f26;
                        f31 = f27;
                    } else {
                        if (z10) {
                            f30 = f26;
                            f31 = f27;
                            jM5979constructorimpl3 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() >> 32)))) << 32) | (((long) Float.floatToRawIntBits(fLerp)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                        } else {
                            f30 = f26;
                            f31 = f27;
                            if (z11) {
                                jM5979constructorimpl3 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6806getSizeNHjbRc() >> 32)) - fLerp)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                            } else {
                                jM5979constructorimpl3 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fLerp)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                            }
                        }
                        Offset offsetM5976boximpl3 = Offset.m5976boximpl(jM5979constructorimpl3);
                        if (fLerp >= f16 || fLerp > f18) {
                            z6 = false;
                        } else {
                            z6 = z4;
                        }
                        if (z6) {
                            j5 = j4;
                        } else {
                            j5 = j3;
                        }
                        dm3Var.invoke(drawScope2, offsetM5976boximpl3, Color.m6222boximpl(j5));
                    }
                } else {
                    if (fLerp >= f27 || fLerp > f42) {
                        z7 = false;
                    } else {
                        z7 = z4;
                    }
                    if (z7) {
                        if (fLerp >= f28) {
                            z5 = false;
                        } else {
                            z5 = false;
                        }
                        if (z5) {
                            f30 = f26;
                            f31 = f27;
                        } else {
                            if (z10) {
                                f30 = f26;
                                f31 = f27;
                                jM5979constructorimpl3 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() >> 32)))) << 32) | (((long) Float.floatToRawIntBits(fLerp)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                            } else {
                                f30 = f26;
                                f31 = f27;
                                if (z11) {
                                    jM5979constructorimpl3 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6806getSizeNHjbRc() >> 32)) - fLerp)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                                } else {
                                    jM5979constructorimpl3 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fLerp)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                                }
                            }
                            Offset offsetM5976boximpl4 = Offset.m5976boximpl(jM5979constructorimpl3);
                            if (fLerp >= f16) {
                                z6 = false;
                            } else {
                                z6 = false;
                            }
                            if (z6) {
                                j5 = j4;
                            } else {
                                j5 = j3;
                            }
                            dm3Var.invoke(drawScope2, offsetM5976boximpl4, Color.m6222boximpl(j5));
                        }
                    } else {
                        f30 = f26;
                        f31 = f27;
                    }
                }
                i++;
                f25 = f29;
                f26 = f30;
                f27 = f31;
                i2 = i3;
            }
        }
        f17 = fMin + (fMin < f13 ? f11 : f12);
        f16 = f17;
        if (z3) {
            if (fMax > f13) {
                f32 = f10;
            } else {
                f32 = f12;
            }
            f18 = fMax - f32;
        } else {
            f18 = f14 - f10;
        }
        if (z12) {
            f19 = fMo1434toPx0680j_8;
        } else {
            f19 = fMo1434toPx0680j_8;
        }
        if (z12) {
            f20 = fMo1434toPx0680j_8;
        } else {
            f20 = fMo1434toPx0680j_8;
        }
        if (z12) {
            f21 = f18 - f16;
        } else {
            f21 = f18 - f16;
        }
        if (z2) {
            f22 = f19;
        } else {
            if (fArr.length == 0) {
                z9 = z4;
            } else {
                z9 = false;
            }
            if (z9) {
                f22 = f19;
            } else {
                f22 = f12;
            }
        }
        if (f21 > f22) {
            if (z10) {
                jM5979constructorimpl4 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f12)) << 32) | (((long) Float.floatToRawIntBits(f16)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            } else if (z11) {
                jM5979constructorimpl4 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6806getSizeNHjbRc() >> 32)) - f18)) << 32) | (((long) Float.floatToRawIntBits(f12)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            } else {
                jM5979constructorimpl4 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f16)) << 32) | (((long) Float.floatToRawIntBits(f12)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            }
            long j7 = jM5979constructorimpl4;
            if (z10) {
                jM6047constructorimpl2 = Size.m6047constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6806getSizeNHjbRc() >> 32)))) << 32) | (((long) Float.floatToRawIntBits(f21)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            } else if (z11) {
                jM6047constructorimpl2 = Size.m6047constructorimpl((((long) Float.floatToRawIntBits(f21)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            } else {
                jM6047constructorimpl2 = Size.m6047constructorimpl((((long) Float.floatToRawIntBits(f21)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            }
            m3888drawTrackPathzXTsYAs(drawScope2, orientation, j7, jM6047constructorimpl2, j2, f19, f20);
        }
        f23 = f12 + fMo1434toPx0680j_7;
        f24 = f15 - fMo1434toPx0680j_7;
        f25 = f13 - f10;
        f26 = f13 + f10;
        f27 = fB2 - f11;
        float f45 = fB2 + f11;
        f28 = f14 - f10;
        float f46 = f14 + f10;
        length = fArr.length;
        i = 0;
        i2 = 0;
        while (i < length) {
            float f47 = fArr[i];
            int i4 = i2 + 1;
            if (bm3Var != null) {
                f29 = z3 ? f25 : f25;
                f30 = f26;
                f31 = f27;
                i++;
                f25 = f29;
                f26 = f30;
                f27 = f31;
                i2 = i4;
            } else {
                f29 = f25;
            }
            fLerp = MathHelpersKt.lerp(f23, f24, f47);
            if (!z3) {
                if (fLerp >= f29) {
                    z8 = false;
                } else {
                    z8 = false;
                }
                if (!z8) {
                    f30 = f26;
                    f31 = f27;
                } else if (z) {
                    if (fLerp >= f28) {
                        z5 = false;
                    } else {
                        z5 = false;
                    }
                    if (z5) {
                        f30 = f26;
                        f31 = f27;
                    } else {
                        if (z10) {
                            f30 = f26;
                            f31 = f27;
                            jM5979constructorimpl3 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() >> 32)))) << 32) | (((long) Float.floatToRawIntBits(fLerp)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                        } else {
                            f30 = f26;
                            f31 = f27;
                            if (z11) {
                                jM5979constructorimpl3 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6806getSizeNHjbRc() >> 32)) - fLerp)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                            } else {
                                jM5979constructorimpl3 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fLerp)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                            }
                        }
                        Offset offsetM5976boximpl5 = Offset.m5976boximpl(jM5979constructorimpl3);
                        if (fLerp >= f16) {
                            z6 = false;
                        } else {
                            z6 = false;
                        }
                        if (z6) {
                            j5 = j4;
                        } else {
                            j5 = j3;
                        }
                        dm3Var.invoke(drawScope2, offsetM5976boximpl5, Color.m6222boximpl(j5));
                    }
                } else {
                    if (fLerp >= f27) {
                        z7 = false;
                    } else {
                        z7 = false;
                    }
                    if (z7) {
                        if (fLerp >= f28) {
                            z5 = false;
                        } else {
                            z5 = false;
                        }
                        if (z5) {
                            f30 = f26;
                            f31 = f27;
                        } else {
                            if (z10) {
                                f30 = f26;
                                f31 = f27;
                                jM5979constructorimpl3 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() >> 32)))) << 32) | (((long) Float.floatToRawIntBits(fLerp)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                            } else {
                                f30 = f26;
                                f31 = f27;
                                if (z11) {
                                    jM5979constructorimpl3 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6806getSizeNHjbRc() >> 32)) - fLerp)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                                } else {
                                    jM5979constructorimpl3 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fLerp)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                                }
                            }
                            Offset offsetM5976boximpl6 = Offset.m5976boximpl(jM5979constructorimpl3);
                            if (fLerp >= f16) {
                                z6 = false;
                            } else {
                                z6 = false;
                            }
                            if (z6) {
                                j5 = j4;
                            } else {
                                j5 = j3;
                            }
                            dm3Var.invoke(drawScope2, offsetM5976boximpl6, Color.m6222boximpl(j5));
                        }
                    } else {
                        f30 = f26;
                        f31 = f27;
                    }
                }
            } else if (z) {
                if (fLerp >= f28) {
                    z5 = false;
                } else {
                    z5 = false;
                }
                if (z5) {
                    f30 = f26;
                    f31 = f27;
                } else {
                    if (z10) {
                        f30 = f26;
                        f31 = f27;
                        jM5979constructorimpl3 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() >> 32)))) << 32) | (((long) Float.floatToRawIntBits(fLerp)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                    } else {
                        f30 = f26;
                        f31 = f27;
                        if (z11) {
                            jM5979constructorimpl3 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6806getSizeNHjbRc() >> 32)) - fLerp)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                        } else {
                            jM5979constructorimpl3 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fLerp)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                        }
                    }
                    Offset offsetM5976boximpl7 = Offset.m5976boximpl(jM5979constructorimpl3);
                    if (fLerp >= f16) {
                        z6 = false;
                    } else {
                        z6 = false;
                    }
                    if (z6) {
                        j5 = j4;
                    } else {
                        j5 = j3;
                    }
                    dm3Var.invoke(drawScope2, offsetM5976boximpl7, Color.m6222boximpl(j5));
                }
            } else {
                if (fLerp >= f27) {
                    z7 = false;
                } else {
                    z7 = false;
                }
                if (z7) {
                    if (fLerp >= f28) {
                        z5 = false;
                    } else {
                        z5 = false;
                    }
                    if (z5) {
                        f30 = f26;
                        f31 = f27;
                    } else {
                        if (z10) {
                            f30 = f26;
                            f31 = f27;
                            jM5979constructorimpl3 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() >> 32)))) << 32) | (((long) Float.floatToRawIntBits(fLerp)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                        } else {
                            f30 = f26;
                            f31 = f27;
                            if (z11) {
                                jM5979constructorimpl3 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6806getSizeNHjbRc() >> 32)) - fLerp)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                            } else {
                                jM5979constructorimpl3 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fLerp)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.mo6805getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                            }
                        }
                        Offset offsetM5976boximpl8 = Offset.m5976boximpl(jM5979constructorimpl3);
                        if (fLerp >= f16) {
                            z6 = false;
                        } else {
                            z6 = false;
                        }
                        if (z6) {
                            j5 = j4;
                        } else {
                            j5 = j3;
                        }
                        dm3Var.invoke(drawScope2, offsetM5976boximpl8, Color.m6222boximpl(j5));
                    }
                } else {
                    f30 = f26;
                    f31 = f27;
                }
            }
            i++;
            f25 = f29;
            f26 = f30;
            f27 = f31;
            i2 = i4;
        }
    }

    /* JADX INFO: renamed from: drawTrack-GVD57ws$default, reason: not valid java name */
    public static /* synthetic */ void m3887drawTrackGVD57ws$default(SliderDefaults sliderDefaults, DrawScope drawScope, float[] fArr, float f, float f2, long j, long j2, long j3, long j4, float f3, float f4, float f5, float f6, float f7, float f8, float f9, bm3 bm3Var, dm3 dm3Var, boolean z, boolean z2, Orientation orientation, boolean z3, int i, Object obj) {
        sliderDefaults.m3886drawTrackGVD57ws(drawScope, fArr, f, f2, j, j2, j3, j4, f3, f4, f5, f6, f7, f8, f9, bm3Var, dm3Var, z, (i & 131072) != 0 ? false : z2, (i & 262144) != 0 ? Orientation.Horizontal : orientation, (i & 524288) != 0 ? false : z3);
    }

    /* JADX INFO: renamed from: drawTrackPath-zXTsYAs, reason: not valid java name */
    private final void m3888drawTrackPathzXTsYAs(DrawScope drawScope, Orientation orientation, long j, long j2, long j3, float f, float f2) {
        RoundRect roundRectM6039RoundRectZAM2FJo;
        long jM5941constructorimpl = CornerRadius.m5941constructorimpl((((long) Float.floatToRawIntBits(f)) << 32) | (((long) Float.floatToRawIntBits(f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        long jM5941constructorimpl2 = CornerRadius.m5941constructorimpl((((long) Float.floatToRawIntBits(f2)) << 32) | (((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        if (orientation == Orientation.Vertical) {
            float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32));
            roundRectM6039RoundRectZAM2FJo = RoundRectKt.m6039RoundRectZAM2FJo(RectKt.m6027Recttz77jQw(j, Size.m6047constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32))), jM5941constructorimpl, jM5941constructorimpl, jM5941constructorimpl2, jM5941constructorimpl2);
        } else {
            float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j2 >> 32));
            roundRectM6039RoundRectZAM2FJo = RoundRectKt.m6039RoundRectZAM2FJo(RectKt.m6027Recttz77jQw(j, Size.m6047constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fIntBitsToFloat2) << 32))), jM5941constructorimpl, jM5941constructorimpl2, jM5941constructorimpl2, jM5941constructorimpl);
        }
        Path path = trackPath;
        Path.addRoundRect$default(path, roundRectM6039RoundRectZAM2FJo, null, 2, null);
        DrawScope.m6796drawPathLG529CI$default(drawScope, path, j3, 0.0f, null, null, 0, 60, null);
        path.rewind();
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0118  */
    /* JADX WARN: Code duplicated, block: B:101:0x011b  */
    /* JADX WARN: Code duplicated, block: B:103:0x011f  */
    /* JADX WARN: Code duplicated, block: B:105:0x0125  */
    /* JADX WARN: Code duplicated, block: B:106:0x0128  */
    /* JADX WARN: Code duplicated, block: B:110:0x0138  */
    /* JADX WARN: Code duplicated, block: B:111:0x013b  */
    /* JADX WARN: Code duplicated, block: B:114:0x0145  */
    /* JADX WARN: Code duplicated, block: B:116:0x014f  */
    /* JADX WARN: Code duplicated, block: B:127:0x0172 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:128:0x0174  */
    /* JADX WARN: Code duplicated, block: B:130:0x0179  */
    /* JADX WARN: Code duplicated, block: B:133:0x017f  */
    /* JADX WARN: Code duplicated, block: B:136:0x018e  */
    /* JADX WARN: Code duplicated, block: B:138:0x0196  */
    /* JADX WARN: Code duplicated, block: B:140:0x019c  */
    /* JADX WARN: Code duplicated, block: B:146:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:149:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:151:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:154:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:156:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:158:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:160:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:162:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:163:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:165:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:166:0x0205  */
    /* JADX WARN: Code duplicated, block: B:169:0x0218  */
    /* JADX WARN: Code duplicated, block: B:172:0x025d  */
    /* JADX WARN: Code duplicated, block: B:174:0x0268  */
    /* JADX WARN: Code duplicated, block: B:177:0x027c  */
    /* JADX WARN: Code duplicated, block: B:179:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0049  */
    /* JADX WARN: Code duplicated, block: B:28:0x004e  */
    /* JADX WARN: Code duplicated, block: B:30:0x0052  */
    /* JADX WARN: Code duplicated, block: B:32:0x005a  */
    /* JADX WARN: Code duplicated, block: B:33:0x005d  */
    /* JADX WARN: Code duplicated, block: B:37:0x0064  */
    /* JADX WARN: Code duplicated, block: B:39:0x0068  */
    /* JADX WARN: Code duplicated, block: B:41:0x0070  */
    /* JADX WARN: Code duplicated, block: B:42:0x0073  */
    /* JADX WARN: Code duplicated, block: B:45:0x0079  */
    /* JADX WARN: Code duplicated, block: B:48:0x007f  */
    /* JADX WARN: Code duplicated, block: B:50:0x0083  */
    /* JADX WARN: Code duplicated, block: B:52:0x008b  */
    /* JADX WARN: Code duplicated, block: B:53:0x008e  */
    /* JADX WARN: Code duplicated, block: B:56:0x0094  */
    /* JADX WARN: Code duplicated, block: B:59:0x009c  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:69:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:70:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:74:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:75:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:79:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:80:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:84:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:85:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:91:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:93:0x0101  */
    /* JADX WARN: Code duplicated, block: B:95:0x010b  */
    /* JADX WARN: Code duplicated, block: B:96:0x010e  */
    /* JADX INFO: renamed from: CenteredTrack-7LSsfP0$material3, reason: not valid java name */
    public final void m3889CenteredTrack7LSsfP0$material3(final SliderState sliderState, Modifier modifier, boolean z, SliderColors sliderColors, bm3<? super DrawScope, ? super Offset, j59> bm3Var, dm3<? super DrawScope, ? super Offset, ? super Color, j59> dm3Var, float f, float f2, float f3, Composer composer, final int i, final int i2) {
        int i3;
        Modifier modifier2;
        int i4;
        final boolean z2;
        int i5;
        final SliderColors sliderColors2;
        bm3<? super DrawScope, ? super Offset, j59> bm3Var2;
        int i6;
        int i7;
        int i8;
        float f4;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        boolean z3;
        final float f5;
        final float f6;
        final Modifier modifier3;
        final float f7;
        final bm3<? super DrawScope, ? super Offset, j59> bm3Var3;
        final boolean z4;
        final dm3<? super DrawScope, ? super Offset, ? super Color, j59> dm3Var2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        dm3<? super DrawScope, ? super Offset, ? super Color, j59> dm3Var3;
        float f8;
        float f9;
        Modifier modifier4;
        boolean z5;
        SliderColors sliderColors3;
        int i15;
        float f10;
        float fM9062getUnspecifiedD9Ej5fM;
        Object objRememberedValue;
        boolean z6;
        Object objRememberedValue2;
        Composer composerStartRestartGroup = composer.startRestartGroup(1199441071);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changedInstance(sliderState) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i16 = i2 & 2;
        if (i16 == 0) {
            if ((i & 48) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            i4 = i2 & 4;
            if (i4 != 0) {
                if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i5 = 256;
                    } else {
                        i5 = 128;
                    }
                    i3 |= i5;
                }
                if ((i & 3072) == 0) {
                    if ((i2 & 8) == 0) {
                        sliderColors2 = sliderColors;
                        int i17 = composerStartRestartGroup.changed(sliderColors2) ? 2048 : 1024;
                        i3 |= i17;
                    } else {
                        sliderColors2 = sliderColors;
                    }
                    i3 |= i17;
                } else {
                    sliderColors2 = sliderColors;
                }
                if ((i & 24576) == 0) {
                    if ((i2 & 16) == 0) {
                        bm3Var2 = bm3Var;
                        int i18 = composerStartRestartGroup.changedInstance(bm3Var2) ? 16384 : 8192;
                        i3 |= i18;
                    } else {
                        bm3Var2 = bm3Var;
                    }
                    i3 |= i18;
                } else {
                    bm3Var2 = bm3Var;
                }
                i6 = i2 & 32;
                if (i6 != 0) {
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 64;
                if (i8 != 0) {
                    i3 |= 1572864;
                    f4 = f;
                } else {
                    f4 = f;
                    if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changed(f4)) {
                            i9 = 1048576;
                        } else {
                            i9 = 524288;
                        }
                        i3 |= i9;
                    }
                }
                i10 = i2 & 128;
                if (i10 != 0) {
                    i3 |= 12582912;
                } else if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(f2)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i3 |= i11;
                }
                i12 = i2 & 256;
                if (i12 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(f3)) {
                            i13 = 67108864;
                        } else {
                            i13 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i13;
                    }
                    if ((i2 & 512) != 0) {
                        i3 |= 805306368;
                    } else if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changed(this)) {
                            i14 = 536870912;
                        } else {
                            i14 = 268435456;
                        }
                        i3 |= i14;
                    }
                    if ((306783379 & i3) != 306783378) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 8) != 0) {
                                SliderColors sliderColorsColors = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                                i3 &= -7169;
                                sliderColors2 = sliderColorsColors;
                            }
                            if ((i2 & 16) != 0) {
                                z6 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (z6 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                                    objRememberedValue2 = new bm3() { // from class: p28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                bm3Var2 = (bm3) objRememberedValue2;
                                i3 = (-57345) & i3;
                            }
                            if (i6 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$CenteredTrack$2$1
                                        @Override // defpackage.dm3
                                        public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                            m3900invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                            return j59.a;
                                        }

                                        /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                        public final void m3900invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                            SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                            sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                dm3Var3 = (dm3) objRememberedValue;
                            } else {
                                dm3Var3 = dm3Var;
                            }
                            if (i8 != 0) {
                                f4 = SliderKt.ThumbTrackGapSize;
                            }
                            if (i10 != 0) {
                                f8 = SliderKt.TrackInsideCornerSize;
                            } else {
                                f8 = f2;
                            }
                            if (i12 != 0) {
                                boolean z7 = z2;
                                dm3Var2 = dm3Var3;
                                i15 = i3;
                                fM9062getUnspecifiedD9Ej5fM = Dp.Companion.m9062getUnspecifiedD9Ej5fM();
                                modifier4 = modifier2;
                                z5 = z7;
                                f9 = f8;
                                sliderColors3 = sliderColors2;
                            } else {
                                f9 = f8;
                                modifier4 = modifier2;
                                z5 = z2;
                                sliderColors3 = sliderColors2;
                                dm3Var2 = dm3Var3;
                                i15 = i3;
                                f10 = f4;
                                bm3Var3 = bm3Var2;
                                fM9062getUnspecifiedD9Ej5fM = f3;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1199441071, i15, -1, "androidx.compose.material3.SliderDefaults.CenteredTrack (Slider.kt:1557)");
                            }
                            int i19 = i15 << 3;
                            m3884TrackImplVvwgllI(sliderState, fM9062getUnspecifiedD9Ej5fM, modifier4, z5, sliderColors3, bm3Var3, dm3Var2, f10, f9, true, true, composerStartRestartGroup, (i15 & 14) | 805306368 | ((i15 >> 21) & 112) | (i19 & 896) | (i19 & 7168) | (57344 & i19) | (458752 & i19) | (3670016 & i19) | (29360128 & i19) | (i19 & 234881024), ((i15 >> 24) & 112) | 6);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier4;
                            f7 = f10;
                            f6 = fM9062getUnspecifiedD9Ej5fM;
                            z4 = z5;
                            sliderColors2 = sliderColors3;
                            f5 = f9;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            if ((i2 & 8) != 0) {
                                i3 &= -7169;
                            }
                            if ((i2 & 16) != 0) {
                                i3 &= -57345;
                            }
                            f9 = f2;
                            i15 = i3;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors3 = sliderColors2;
                            dm3Var2 = dm3Var;
                            fM9062getUnspecifiedD9Ej5fM = f3;
                        }
                        f10 = f4;
                        bm3Var3 = bm3Var2;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1199441071, i15, -1, "androidx.compose.material3.SliderDefaults.CenteredTrack (Slider.kt:1557)");
                        }
                        int i110 = i15 << 3;
                        m3884TrackImplVvwgllI(sliderState, fM9062getUnspecifiedD9Ej5fM, modifier4, z5, sliderColors3, bm3Var3, dm3Var2, f10, f9, true, true, composerStartRestartGroup, (i15 & 14) | 805306368 | ((i15 >> 21) & 112) | (i110 & 896) | (i110 & 7168) | (57344 & i110) | (458752 & i110) | (3670016 & i110) | (29360128 & i110) | (i110 & 234881024), ((i15 >> 24) & 112) | 6);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        f7 = f10;
                        f6 = fM9062getUnspecifiedD9Ej5fM;
                        z4 = z5;
                        sliderColors2 = sliderColors3;
                        f5 = f9;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        f5 = f2;
                        f6 = f3;
                        modifier3 = modifier2;
                        f7 = f4;
                        bm3Var3 = bm3Var2;
                        z4 = z2;
                        dm3Var2 = dm3Var;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: q28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                SliderDefaults sliderDefaults = this;
                                SliderState sliderState2 = sliderState;
                                float f11 = f7;
                                return SliderDefaults.CenteredTrack_7LSsfP0$lambda$25(sliderDefaults, sliderState2, modifier3, z4, sliderColors2, bm3Var3, dm3Var2, f11, f5, f6, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                if ((i2 & 512) != 0) {
                    i3 |= 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i14 = 536870912;
                    } else {
                        i14 = 268435456;
                    }
                    i3 |= i14;
                }
                if ((306783379 & i3) != 306783378) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 8) != 0) {
                            SliderColors sliderColorsColors2 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -7169;
                            sliderColors2 = sliderColorsColors2;
                        }
                        if ((i2 & 16) != 0) {
                            z6 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z6) {
                                objRememberedValue2 = new bm3() { // from class: p28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: p28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            bm3Var2 = (bm3) objRememberedValue2;
                            i3 = (-57345) & i3;
                        }
                        if (i6 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$CenteredTrack$2$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3900invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3900invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i8 != 0) {
                            f4 = SliderKt.ThumbTrackGapSize;
                        }
                        if (i10 != 0) {
                            f8 = SliderKt.TrackInsideCornerSize;
                        } else {
                            f8 = f2;
                        }
                        if (i12 != 0) {
                            boolean z8 = z2;
                            dm3Var2 = dm3Var3;
                            i15 = i3;
                            fM9062getUnspecifiedD9Ej5fM = Dp.Companion.m9062getUnspecifiedD9Ej5fM();
                            modifier4 = modifier2;
                            z5 = z8;
                            f9 = f8;
                            sliderColors3 = sliderColors2;
                            f10 = f4;
                            bm3Var3 = bm3Var2;
                        } else {
                            f9 = f8;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors3 = sliderColors2;
                            dm3Var2 = dm3Var3;
                            i15 = i3;
                            f10 = f4;
                            bm3Var3 = bm3Var2;
                            fM9062getUnspecifiedD9Ej5fM = f3;
                        }
                    } else {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 8) != 0) {
                            SliderColors sliderColorsColors3 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -7169;
                            sliderColors2 = sliderColorsColors3;
                        }
                        if ((i2 & 16) != 0) {
                            z6 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z6) {
                                objRememberedValue2 = new bm3() { // from class: p28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: p28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            bm3Var2 = (bm3) objRememberedValue2;
                            i3 = (-57345) & i3;
                        }
                        if (i6 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$CenteredTrack$2$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3900invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3900invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i8 != 0) {
                            f4 = SliderKt.ThumbTrackGapSize;
                        }
                        if (i10 != 0) {
                            f8 = SliderKt.TrackInsideCornerSize;
                        } else {
                            f8 = f2;
                        }
                        if (i12 != 0) {
                            boolean z9 = z2;
                            dm3Var2 = dm3Var3;
                            i15 = i3;
                            fM9062getUnspecifiedD9Ej5fM = Dp.Companion.m9062getUnspecifiedD9Ej5fM();
                            modifier4 = modifier2;
                            z5 = z9;
                            f9 = f8;
                            sliderColors3 = sliderColors2;
                            f10 = f4;
                            bm3Var3 = bm3Var2;
                        } else {
                            f9 = f8;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors3 = sliderColors2;
                            dm3Var2 = dm3Var3;
                            i15 = i3;
                            f10 = f4;
                            bm3Var3 = bm3Var2;
                            fM9062getUnspecifiedD9Ej5fM = f3;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1199441071, i15, -1, "androidx.compose.material3.SliderDefaults.CenteredTrack (Slider.kt:1557)");
                    }
                    int i111 = i15 << 3;
                    m3884TrackImplVvwgllI(sliderState, fM9062getUnspecifiedD9Ej5fM, modifier4, z5, sliderColors3, bm3Var3, dm3Var2, f10, f9, true, true, composerStartRestartGroup, (i15 & 14) | 805306368 | ((i15 >> 21) & 112) | (i111 & 896) | (i111 & 7168) | (57344 & i111) | (458752 & i111) | (3670016 & i111) | (29360128 & i111) | (i111 & 234881024), ((i15 >> 24) & 112) | 6);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    f7 = f10;
                    f6 = fM9062getUnspecifiedD9Ej5fM;
                    z4 = z5;
                    sliderColors2 = sliderColors3;
                    f5 = f9;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    f5 = f2;
                    f6 = f3;
                    modifier3 = modifier2;
                    f7 = f4;
                    bm3Var3 = bm3Var2;
                    z4 = z2;
                    dm3Var2 = dm3Var;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: q28
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            SliderDefaults sliderDefaults = this;
                            SliderState sliderState2 = sliderState;
                            float f11 = f7;
                            return SliderDefaults.CenteredTrack_7LSsfP0$lambda$25(sliderDefaults, sliderState2, modifier3, z4, sliderColors2, bm3Var3, dm3Var2, f11, f5, f6, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            z2 = z;
            if ((i & 3072) == 0) {
                if ((i2 & 8) == 0) {
                    sliderColors2 = sliderColors;
                    if (composerStartRestartGroup.changed(sliderColors2)) {
                    }
                    i3 |= i17;
                } else {
                    sliderColors2 = sliderColors;
                }
                i3 |= i17;
            } else {
                sliderColors2 = sliderColors;
            }
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    bm3Var2 = bm3Var;
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    }
                    i3 |= i18;
                } else {
                    bm3Var2 = bm3Var;
                }
                i3 |= i18;
            } else {
                bm3Var2 = bm3Var;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i3 |= i7;
            }
            i8 = i2 & 64;
            if (i8 != 0) {
                i3 |= 1572864;
                f4 = f;
            } else {
                f4 = f;
                if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(f4)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
            }
            i10 = i2 & 128;
            if (i10 != 0) {
                i3 |= 12582912;
            } else if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(f2)) {
                    i11 = 8388608;
                } else {
                    i11 = 4194304;
                }
                i3 |= i11;
            }
            i12 = i2 & 256;
            if (i12 != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(f3)) {
                        i13 = 67108864;
                    } else {
                        i13 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i13;
                }
                if ((i2 & 512) != 0) {
                    i3 |= 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i14 = 536870912;
                    } else {
                        i14 = 268435456;
                    }
                    i3 |= i14;
                }
                if ((306783379 & i3) != 306783378) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 8) != 0) {
                            SliderColors sliderColorsColors4 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -7169;
                            sliderColors2 = sliderColorsColors4;
                        }
                        if ((i2 & 16) != 0) {
                            z6 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z6) {
                                objRememberedValue2 = new bm3() { // from class: p28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: p28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            bm3Var2 = (bm3) objRememberedValue2;
                            i3 = (-57345) & i3;
                        }
                        if (i6 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$CenteredTrack$2$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3900invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3900invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i8 != 0) {
                            f4 = SliderKt.ThumbTrackGapSize;
                        }
                        if (i10 != 0) {
                            f8 = SliderKt.TrackInsideCornerSize;
                        } else {
                            f8 = f2;
                        }
                        if (i12 != 0) {
                            boolean z10 = z2;
                            dm3Var2 = dm3Var3;
                            i15 = i3;
                            fM9062getUnspecifiedD9Ej5fM = Dp.Companion.m9062getUnspecifiedD9Ej5fM();
                            modifier4 = modifier2;
                            z5 = z10;
                            f9 = f8;
                            sliderColors3 = sliderColors2;
                            f10 = f4;
                            bm3Var3 = bm3Var2;
                        } else {
                            f9 = f8;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors3 = sliderColors2;
                            dm3Var2 = dm3Var3;
                            i15 = i3;
                            f10 = f4;
                            bm3Var3 = bm3Var2;
                            fM9062getUnspecifiedD9Ej5fM = f3;
                        }
                    } else {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 8) != 0) {
                            SliderColors sliderColorsColors5 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -7169;
                            sliderColors2 = sliderColorsColors5;
                        }
                        if ((i2 & 16) != 0) {
                            z6 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z6) {
                                objRememberedValue2 = new bm3() { // from class: p28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: p28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            bm3Var2 = (bm3) objRememberedValue2;
                            i3 = (-57345) & i3;
                        }
                        if (i6 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$CenteredTrack$2$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3900invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3900invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i8 != 0) {
                            f4 = SliderKt.ThumbTrackGapSize;
                        }
                        if (i10 != 0) {
                            f8 = SliderKt.TrackInsideCornerSize;
                        } else {
                            f8 = f2;
                        }
                        if (i12 != 0) {
                            boolean z11 = z2;
                            dm3Var2 = dm3Var3;
                            i15 = i3;
                            fM9062getUnspecifiedD9Ej5fM = Dp.Companion.m9062getUnspecifiedD9Ej5fM();
                            modifier4 = modifier2;
                            z5 = z11;
                            f9 = f8;
                            sliderColors3 = sliderColors2;
                            f10 = f4;
                            bm3Var3 = bm3Var2;
                        } else {
                            f9 = f8;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors3 = sliderColors2;
                            dm3Var2 = dm3Var3;
                            i15 = i3;
                            f10 = f4;
                            bm3Var3 = bm3Var2;
                            fM9062getUnspecifiedD9Ej5fM = f3;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1199441071, i15, -1, "androidx.compose.material3.SliderDefaults.CenteredTrack (Slider.kt:1557)");
                    }
                    int i112 = i15 << 3;
                    m3884TrackImplVvwgllI(sliderState, fM9062getUnspecifiedD9Ej5fM, modifier4, z5, sliderColors3, bm3Var3, dm3Var2, f10, f9, true, true, composerStartRestartGroup, (i15 & 14) | 805306368 | ((i15 >> 21) & 112) | (i112 & 896) | (i112 & 7168) | (57344 & i112) | (458752 & i112) | (3670016 & i112) | (29360128 & i112) | (i112 & 234881024), ((i15 >> 24) & 112) | 6);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    f7 = f10;
                    f6 = fM9062getUnspecifiedD9Ej5fM;
                    z4 = z5;
                    sliderColors2 = sliderColors3;
                    f5 = f9;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    f5 = f2;
                    f6 = f3;
                    modifier3 = modifier2;
                    f7 = f4;
                    bm3Var3 = bm3Var2;
                    z4 = z2;
                    dm3Var2 = dm3Var;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: q28
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            SliderDefaults sliderDefaults = this;
                            SliderState sliderState2 = sliderState;
                            float f11 = f7;
                            return SliderDefaults.CenteredTrack_7LSsfP0$lambda$25(sliderDefaults, sliderState2, modifier3, z4, sliderColors2, bm3Var3, dm3Var2, f11, f5, f6, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            if ((i2 & 512) != 0) {
                i3 |= 805306368;
            } else if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i14 = 536870912;
                } else {
                    i14 = 268435456;
                }
                i3 |= i14;
            }
            if ((306783379 & i3) != 306783378) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i16 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 8) != 0) {
                        SliderColors sliderColorsColors6 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                        i3 &= -7169;
                        sliderColors2 = sliderColorsColors6;
                    }
                    if ((i2 & 16) != 0) {
                        z6 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z6) {
                            objRememberedValue2 = new bm3() { // from class: p28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: p28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        bm3Var2 = (bm3) objRememberedValue2;
                        i3 = (-57345) & i3;
                    }
                    if (i6 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$CenteredTrack$2$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3900invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3900invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i8 != 0) {
                        f4 = SliderKt.ThumbTrackGapSize;
                    }
                    if (i10 != 0) {
                        f8 = SliderKt.TrackInsideCornerSize;
                    } else {
                        f8 = f2;
                    }
                    if (i12 != 0) {
                        boolean z12 = z2;
                        dm3Var2 = dm3Var3;
                        i15 = i3;
                        fM9062getUnspecifiedD9Ej5fM = Dp.Companion.m9062getUnspecifiedD9Ej5fM();
                        modifier4 = modifier2;
                        z5 = z12;
                        f9 = f8;
                        sliderColors3 = sliderColors2;
                        f10 = f4;
                        bm3Var3 = bm3Var2;
                    } else {
                        f9 = f8;
                        modifier4 = modifier2;
                        z5 = z2;
                        sliderColors3 = sliderColors2;
                        dm3Var2 = dm3Var3;
                        i15 = i3;
                        f10 = f4;
                        bm3Var3 = bm3Var2;
                        fM9062getUnspecifiedD9Ej5fM = f3;
                    }
                } else {
                    if (i16 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 8) != 0) {
                        SliderColors sliderColorsColors7 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                        i3 &= -7169;
                        sliderColors2 = sliderColorsColors7;
                    }
                    if ((i2 & 16) != 0) {
                        z6 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z6) {
                            objRememberedValue2 = new bm3() { // from class: p28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: p28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        bm3Var2 = (bm3) objRememberedValue2;
                        i3 = (-57345) & i3;
                    }
                    if (i6 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$CenteredTrack$2$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3900invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3900invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i8 != 0) {
                        f4 = SliderKt.ThumbTrackGapSize;
                    }
                    if (i10 != 0) {
                        f8 = SliderKt.TrackInsideCornerSize;
                    } else {
                        f8 = f2;
                    }
                    if (i12 != 0) {
                        boolean z13 = z2;
                        dm3Var2 = dm3Var3;
                        i15 = i3;
                        fM9062getUnspecifiedD9Ej5fM = Dp.Companion.m9062getUnspecifiedD9Ej5fM();
                        modifier4 = modifier2;
                        z5 = z13;
                        f9 = f8;
                        sliderColors3 = sliderColors2;
                        f10 = f4;
                        bm3Var3 = bm3Var2;
                    } else {
                        f9 = f8;
                        modifier4 = modifier2;
                        z5 = z2;
                        sliderColors3 = sliderColors2;
                        dm3Var2 = dm3Var3;
                        i15 = i3;
                        f10 = f4;
                        bm3Var3 = bm3Var2;
                        fM9062getUnspecifiedD9Ej5fM = f3;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1199441071, i15, -1, "androidx.compose.material3.SliderDefaults.CenteredTrack (Slider.kt:1557)");
                }
                int i113 = i15 << 3;
                m3884TrackImplVvwgllI(sliderState, fM9062getUnspecifiedD9Ej5fM, modifier4, z5, sliderColors3, bm3Var3, dm3Var2, f10, f9, true, true, composerStartRestartGroup, (i15 & 14) | 805306368 | ((i15 >> 21) & 112) | (i113 & 896) | (i113 & 7168) | (57344 & i113) | (458752 & i113) | (3670016 & i113) | (29360128 & i113) | (i113 & 234881024), ((i15 >> 24) & 112) | 6);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                f7 = f10;
                f6 = fM9062getUnspecifiedD9Ej5fM;
                z4 = z5;
                sliderColors2 = sliderColors3;
                f5 = f9;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                f5 = f2;
                f6 = f3;
                modifier3 = modifier2;
                f7 = f4;
                bm3Var3 = bm3Var2;
                z4 = z2;
                dm3Var2 = dm3Var;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: q28
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        SliderDefaults sliderDefaults = this;
                        SliderState sliderState2 = sliderState;
                        float f11 = f7;
                        return SliderDefaults.CenteredTrack_7LSsfP0$lambda$25(sliderDefaults, sliderState2, modifier3, z4, sliderColors2, bm3Var3, dm3Var2, f11, f5, f6, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        modifier2 = modifier;
        i4 = i2 & 4;
        if (i4 != 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                z2 = z;
                if (composerStartRestartGroup.changed(z2)) {
                    i5 = 256;
                } else {
                    i5 = 128;
                }
                i3 |= i5;
            }
            if ((i & 3072) == 0) {
                if ((i2 & 8) == 0) {
                    sliderColors2 = sliderColors;
                    if (composerStartRestartGroup.changed(sliderColors2)) {
                    }
                    i3 |= i17;
                } else {
                    sliderColors2 = sliderColors;
                }
                i3 |= i17;
            } else {
                sliderColors2 = sliderColors;
            }
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    bm3Var2 = bm3Var;
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    }
                    i3 |= i18;
                } else {
                    bm3Var2 = bm3Var;
                }
                i3 |= i18;
            } else {
                bm3Var2 = bm3Var;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i3 |= i7;
            }
            i8 = i2 & 64;
            if (i8 != 0) {
                i3 |= 1572864;
                f4 = f;
            } else {
                f4 = f;
                if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(f4)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
            }
            i10 = i2 & 128;
            if (i10 != 0) {
                i3 |= 12582912;
            } else if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(f2)) {
                    i11 = 8388608;
                } else {
                    i11 = 4194304;
                }
                i3 |= i11;
            }
            i12 = i2 & 256;
            if (i12 != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(f3)) {
                        i13 = 67108864;
                    } else {
                        i13 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i13;
                }
                if ((i2 & 512) != 0) {
                    i3 |= 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i14 = 536870912;
                    } else {
                        i14 = 268435456;
                    }
                    i3 |= i14;
                }
                if ((306783379 & i3) != 306783378) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 8) != 0) {
                            SliderColors sliderColorsColors8 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -7169;
                            sliderColors2 = sliderColorsColors8;
                        }
                        if ((i2 & 16) != 0) {
                            z6 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z6) {
                                objRememberedValue2 = new bm3() { // from class: p28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: p28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            bm3Var2 = (bm3) objRememberedValue2;
                            i3 = (-57345) & i3;
                        }
                        if (i6 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$CenteredTrack$2$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3900invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3900invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i8 != 0) {
                            f4 = SliderKt.ThumbTrackGapSize;
                        }
                        if (i10 != 0) {
                            f8 = SliderKt.TrackInsideCornerSize;
                        } else {
                            f8 = f2;
                        }
                        if (i12 != 0) {
                            boolean z14 = z2;
                            dm3Var2 = dm3Var3;
                            i15 = i3;
                            fM9062getUnspecifiedD9Ej5fM = Dp.Companion.m9062getUnspecifiedD9Ej5fM();
                            modifier4 = modifier2;
                            z5 = z14;
                            f9 = f8;
                            sliderColors3 = sliderColors2;
                            f10 = f4;
                            bm3Var3 = bm3Var2;
                        } else {
                            f9 = f8;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors3 = sliderColors2;
                            dm3Var2 = dm3Var3;
                            i15 = i3;
                            f10 = f4;
                            bm3Var3 = bm3Var2;
                            fM9062getUnspecifiedD9Ej5fM = f3;
                        }
                    } else {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 8) != 0) {
                            SliderColors sliderColorsColors9 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -7169;
                            sliderColors2 = sliderColorsColors9;
                        }
                        if ((i2 & 16) != 0) {
                            z6 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z6) {
                                objRememberedValue2 = new bm3() { // from class: p28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: p28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            bm3Var2 = (bm3) objRememberedValue2;
                            i3 = (-57345) & i3;
                        }
                        if (i6 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$CenteredTrack$2$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3900invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3900invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i8 != 0) {
                            f4 = SliderKt.ThumbTrackGapSize;
                        }
                        if (i10 != 0) {
                            f8 = SliderKt.TrackInsideCornerSize;
                        } else {
                            f8 = f2;
                        }
                        if (i12 != 0) {
                            boolean z15 = z2;
                            dm3Var2 = dm3Var3;
                            i15 = i3;
                            fM9062getUnspecifiedD9Ej5fM = Dp.Companion.m9062getUnspecifiedD9Ej5fM();
                            modifier4 = modifier2;
                            z5 = z15;
                            f9 = f8;
                            sliderColors3 = sliderColors2;
                            f10 = f4;
                            bm3Var3 = bm3Var2;
                        } else {
                            f9 = f8;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors3 = sliderColors2;
                            dm3Var2 = dm3Var3;
                            i15 = i3;
                            f10 = f4;
                            bm3Var3 = bm3Var2;
                            fM9062getUnspecifiedD9Ej5fM = f3;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1199441071, i15, -1, "androidx.compose.material3.SliderDefaults.CenteredTrack (Slider.kt:1557)");
                    }
                    int i114 = i15 << 3;
                    m3884TrackImplVvwgllI(sliderState, fM9062getUnspecifiedD9Ej5fM, modifier4, z5, sliderColors3, bm3Var3, dm3Var2, f10, f9, true, true, composerStartRestartGroup, (i15 & 14) | 805306368 | ((i15 >> 21) & 112) | (i114 & 896) | (i114 & 7168) | (57344 & i114) | (458752 & i114) | (3670016 & i114) | (29360128 & i114) | (i114 & 234881024), ((i15 >> 24) & 112) | 6);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    f7 = f10;
                    f6 = fM9062getUnspecifiedD9Ej5fM;
                    z4 = z5;
                    sliderColors2 = sliderColors3;
                    f5 = f9;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    f5 = f2;
                    f6 = f3;
                    modifier3 = modifier2;
                    f7 = f4;
                    bm3Var3 = bm3Var2;
                    z4 = z2;
                    dm3Var2 = dm3Var;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: q28
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            SliderDefaults sliderDefaults = this;
                            SliderState sliderState2 = sliderState;
                            float f11 = f7;
                            return SliderDefaults.CenteredTrack_7LSsfP0$lambda$25(sliderDefaults, sliderState2, modifier3, z4, sliderColors2, bm3Var3, dm3Var2, f11, f5, f6, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            if ((i2 & 512) != 0) {
                i3 |= 805306368;
            } else if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i14 = 536870912;
                } else {
                    i14 = 268435456;
                }
                i3 |= i14;
            }
            if ((306783379 & i3) != 306783378) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i16 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 8) != 0) {
                        SliderColors sliderColorsColors10 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                        i3 &= -7169;
                        sliderColors2 = sliderColorsColors10;
                    }
                    if ((i2 & 16) != 0) {
                        z6 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z6) {
                            objRememberedValue2 = new bm3() { // from class: p28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: p28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        bm3Var2 = (bm3) objRememberedValue2;
                        i3 = (-57345) & i3;
                    }
                    if (i6 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$CenteredTrack$2$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3900invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3900invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i8 != 0) {
                        f4 = SliderKt.ThumbTrackGapSize;
                    }
                    if (i10 != 0) {
                        f8 = SliderKt.TrackInsideCornerSize;
                    } else {
                        f8 = f2;
                    }
                    if (i12 != 0) {
                        boolean z16 = z2;
                        dm3Var2 = dm3Var3;
                        i15 = i3;
                        fM9062getUnspecifiedD9Ej5fM = Dp.Companion.m9062getUnspecifiedD9Ej5fM();
                        modifier4 = modifier2;
                        z5 = z16;
                        f9 = f8;
                        sliderColors3 = sliderColors2;
                        f10 = f4;
                        bm3Var3 = bm3Var2;
                    } else {
                        f9 = f8;
                        modifier4 = modifier2;
                        z5 = z2;
                        sliderColors3 = sliderColors2;
                        dm3Var2 = dm3Var3;
                        i15 = i3;
                        f10 = f4;
                        bm3Var3 = bm3Var2;
                        fM9062getUnspecifiedD9Ej5fM = f3;
                    }
                } else {
                    if (i16 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 8) != 0) {
                        SliderColors sliderColorsColors11 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                        i3 &= -7169;
                        sliderColors2 = sliderColorsColors11;
                    }
                    if ((i2 & 16) != 0) {
                        z6 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z6) {
                            objRememberedValue2 = new bm3() { // from class: p28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: p28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        bm3Var2 = (bm3) objRememberedValue2;
                        i3 = (-57345) & i3;
                    }
                    if (i6 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$CenteredTrack$2$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3900invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3900invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i8 != 0) {
                        f4 = SliderKt.ThumbTrackGapSize;
                    }
                    if (i10 != 0) {
                        f8 = SliderKt.TrackInsideCornerSize;
                    } else {
                        f8 = f2;
                    }
                    if (i12 != 0) {
                        boolean z17 = z2;
                        dm3Var2 = dm3Var3;
                        i15 = i3;
                        fM9062getUnspecifiedD9Ej5fM = Dp.Companion.m9062getUnspecifiedD9Ej5fM();
                        modifier4 = modifier2;
                        z5 = z17;
                        f9 = f8;
                        sliderColors3 = sliderColors2;
                        f10 = f4;
                        bm3Var3 = bm3Var2;
                    } else {
                        f9 = f8;
                        modifier4 = modifier2;
                        z5 = z2;
                        sliderColors3 = sliderColors2;
                        dm3Var2 = dm3Var3;
                        i15 = i3;
                        f10 = f4;
                        bm3Var3 = bm3Var2;
                        fM9062getUnspecifiedD9Ej5fM = f3;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1199441071, i15, -1, "androidx.compose.material3.SliderDefaults.CenteredTrack (Slider.kt:1557)");
                }
                int i115 = i15 << 3;
                m3884TrackImplVvwgllI(sliderState, fM9062getUnspecifiedD9Ej5fM, modifier4, z5, sliderColors3, bm3Var3, dm3Var2, f10, f9, true, true, composerStartRestartGroup, (i15 & 14) | 805306368 | ((i15 >> 21) & 112) | (i115 & 896) | (i115 & 7168) | (57344 & i115) | (458752 & i115) | (3670016 & i115) | (29360128 & i115) | (i115 & 234881024), ((i15 >> 24) & 112) | 6);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                f7 = f10;
                f6 = fM9062getUnspecifiedD9Ej5fM;
                z4 = z5;
                sliderColors2 = sliderColors3;
                f5 = f9;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                f5 = f2;
                f6 = f3;
                modifier3 = modifier2;
                f7 = f4;
                bm3Var3 = bm3Var2;
                z4 = z2;
                dm3Var2 = dm3Var;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: q28
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        SliderDefaults sliderDefaults = this;
                        SliderState sliderState2 = sliderState;
                        float f11 = f7;
                        return SliderDefaults.CenteredTrack_7LSsfP0$lambda$25(sliderDefaults, sliderState2, modifier3, z4, sliderColors2, bm3Var3, dm3Var2, f11, f5, f6, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        z2 = z;
        if ((i & 3072) == 0) {
            if ((i2 & 8) == 0) {
                sliderColors2 = sliderColors;
                if (composerStartRestartGroup.changed(sliderColors2)) {
                }
                i3 |= i17;
            } else {
                sliderColors2 = sliderColors;
            }
            i3 |= i17;
        } else {
            sliderColors2 = sliderColors;
        }
        if ((i & 24576) == 0) {
            if ((i2 & 16) == 0) {
                bm3Var2 = bm3Var;
                if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                }
                i3 |= i18;
            } else {
                bm3Var2 = bm3Var;
            }
            i3 |= i18;
        } else {
            bm3Var2 = bm3Var;
        }
        i6 = i2 & 32;
        if (i6 != 0) {
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                i7 = 131072;
            } else {
                i7 = 65536;
            }
            i3 |= i7;
        }
        i8 = i2 & 64;
        if (i8 != 0) {
            i3 |= 1572864;
            f4 = f;
        } else {
            f4 = f;
            if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changed(f4)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i3 |= i9;
            }
        }
        i10 = i2 & 128;
        if (i10 != 0) {
            i3 |= 12582912;
        } else if ((i & 12582912) == 0) {
            if (composerStartRestartGroup.changed(f2)) {
                i11 = 8388608;
            } else {
                i11 = 4194304;
            }
            i3 |= i11;
        }
        i12 = i2 & 256;
        if (i12 != 0) {
            if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(f3)) {
                    i13 = 67108864;
                } else {
                    i13 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i13;
            }
            if ((i2 & 512) != 0) {
                i3 |= 805306368;
            } else if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i14 = 536870912;
                } else {
                    i14 = 268435456;
                }
                i3 |= i14;
            }
            if ((306783379 & i3) != 306783378) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i16 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 8) != 0) {
                        SliderColors sliderColorsColors12 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                        i3 &= -7169;
                        sliderColors2 = sliderColorsColors12;
                    }
                    if ((i2 & 16) != 0) {
                        z6 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z6) {
                            objRememberedValue2 = new bm3() { // from class: p28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: p28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        bm3Var2 = (bm3) objRememberedValue2;
                        i3 = (-57345) & i3;
                    }
                    if (i6 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$CenteredTrack$2$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3900invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3900invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i8 != 0) {
                        f4 = SliderKt.ThumbTrackGapSize;
                    }
                    if (i10 != 0) {
                        f8 = SliderKt.TrackInsideCornerSize;
                    } else {
                        f8 = f2;
                    }
                    if (i12 != 0) {
                        boolean z18 = z2;
                        dm3Var2 = dm3Var3;
                        i15 = i3;
                        fM9062getUnspecifiedD9Ej5fM = Dp.Companion.m9062getUnspecifiedD9Ej5fM();
                        modifier4 = modifier2;
                        z5 = z18;
                        f9 = f8;
                        sliderColors3 = sliderColors2;
                        f10 = f4;
                        bm3Var3 = bm3Var2;
                    } else {
                        f9 = f8;
                        modifier4 = modifier2;
                        z5 = z2;
                        sliderColors3 = sliderColors2;
                        dm3Var2 = dm3Var3;
                        i15 = i3;
                        f10 = f4;
                        bm3Var3 = bm3Var2;
                        fM9062getUnspecifiedD9Ej5fM = f3;
                    }
                } else {
                    if (i16 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 8) != 0) {
                        SliderColors sliderColorsColors13 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                        i3 &= -7169;
                        sliderColors2 = sliderColorsColors13;
                    }
                    if ((i2 & 16) != 0) {
                        z6 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z6) {
                            objRememberedValue2 = new bm3() { // from class: p28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: p28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        bm3Var2 = (bm3) objRememberedValue2;
                        i3 = (-57345) & i3;
                    }
                    if (i6 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$CenteredTrack$2$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3900invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3900invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i8 != 0) {
                        f4 = SliderKt.ThumbTrackGapSize;
                    }
                    if (i10 != 0) {
                        f8 = SliderKt.TrackInsideCornerSize;
                    } else {
                        f8 = f2;
                    }
                    if (i12 != 0) {
                        boolean z19 = z2;
                        dm3Var2 = dm3Var3;
                        i15 = i3;
                        fM9062getUnspecifiedD9Ej5fM = Dp.Companion.m9062getUnspecifiedD9Ej5fM();
                        modifier4 = modifier2;
                        z5 = z19;
                        f9 = f8;
                        sliderColors3 = sliderColors2;
                        f10 = f4;
                        bm3Var3 = bm3Var2;
                    } else {
                        f9 = f8;
                        modifier4 = modifier2;
                        z5 = z2;
                        sliderColors3 = sliderColors2;
                        dm3Var2 = dm3Var3;
                        i15 = i3;
                        f10 = f4;
                        bm3Var3 = bm3Var2;
                        fM9062getUnspecifiedD9Ej5fM = f3;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1199441071, i15, -1, "androidx.compose.material3.SliderDefaults.CenteredTrack (Slider.kt:1557)");
                }
                int i116 = i15 << 3;
                m3884TrackImplVvwgllI(sliderState, fM9062getUnspecifiedD9Ej5fM, modifier4, z5, sliderColors3, bm3Var3, dm3Var2, f10, f9, true, true, composerStartRestartGroup, (i15 & 14) | 805306368 | ((i15 >> 21) & 112) | (i116 & 896) | (i116 & 7168) | (57344 & i116) | (458752 & i116) | (3670016 & i116) | (29360128 & i116) | (i116 & 234881024), ((i15 >> 24) & 112) | 6);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                f7 = f10;
                f6 = fM9062getUnspecifiedD9Ej5fM;
                z4 = z5;
                sliderColors2 = sliderColors3;
                f5 = f9;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                f5 = f2;
                f6 = f3;
                modifier3 = modifier2;
                f7 = f4;
                bm3Var3 = bm3Var2;
                z4 = z2;
                dm3Var2 = dm3Var;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: q28
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        SliderDefaults sliderDefaults = this;
                        SliderState sliderState2 = sliderState;
                        float f11 = f7;
                        return SliderDefaults.CenteredTrack_7LSsfP0$lambda$25(sliderDefaults, sliderState2, modifier3, z4, sliderColors2, bm3Var3, dm3Var2, f11, f5, f6, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 100663296;
        if ((i2 & 512) != 0) {
            i3 |= 805306368;
        } else if ((i & 805306368) == 0) {
            if (composerStartRestartGroup.changed(this)) {
                i14 = 536870912;
            } else {
                i14 = 268435456;
            }
            i3 |= i14;
        }
        if ((306783379 & i3) != 306783378) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i16 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i4 != 0) {
                    z2 = true;
                }
                if ((i2 & 8) != 0) {
                    SliderColors sliderColorsColors14 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                    i3 &= -7169;
                    sliderColors2 = sliderColorsColors14;
                }
                if ((i2 & 16) != 0) {
                    z6 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z6) {
                        objRememberedValue2 = new bm3() { // from class: p28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new bm3() { // from class: p28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    bm3Var2 = (bm3) objRememberedValue2;
                    i3 = (-57345) & i3;
                }
                if (i6 != 0) {
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$CenteredTrack$2$1
                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                m3900invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                return j59.a;
                            }

                            /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                            public final void m3900invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    dm3Var3 = (dm3) objRememberedValue;
                } else {
                    dm3Var3 = dm3Var;
                }
                if (i8 != 0) {
                    f4 = SliderKt.ThumbTrackGapSize;
                }
                if (i10 != 0) {
                    f8 = SliderKt.TrackInsideCornerSize;
                } else {
                    f8 = f2;
                }
                if (i12 != 0) {
                    boolean z110 = z2;
                    dm3Var2 = dm3Var3;
                    i15 = i3;
                    fM9062getUnspecifiedD9Ej5fM = Dp.Companion.m9062getUnspecifiedD9Ej5fM();
                    modifier4 = modifier2;
                    z5 = z110;
                    f9 = f8;
                    sliderColors3 = sliderColors2;
                    f10 = f4;
                    bm3Var3 = bm3Var2;
                } else {
                    f9 = f8;
                    modifier4 = modifier2;
                    z5 = z2;
                    sliderColors3 = sliderColors2;
                    dm3Var2 = dm3Var3;
                    i15 = i3;
                    f10 = f4;
                    bm3Var3 = bm3Var2;
                    fM9062getUnspecifiedD9Ej5fM = f3;
                }
            } else {
                if (i16 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i4 != 0) {
                    z2 = true;
                }
                if ((i2 & 8) != 0) {
                    SliderColors sliderColorsColors15 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                    i3 &= -7169;
                    sliderColors2 = sliderColorsColors15;
                }
                if ((i2 & 16) != 0) {
                    z6 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z6) {
                        objRememberedValue2 = new bm3() { // from class: p28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new bm3() { // from class: p28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SliderDefaults.CenteredTrack_7LSsfP0$lambda$23$lambda$22(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    bm3Var2 = (bm3) objRememberedValue2;
                    i3 = (-57345) & i3;
                }
                if (i6 != 0) {
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$CenteredTrack$2$1
                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                m3900invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                return j59.a;
                            }

                            /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                            public final void m3900invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    dm3Var3 = (dm3) objRememberedValue;
                } else {
                    dm3Var3 = dm3Var;
                }
                if (i8 != 0) {
                    f4 = SliderKt.ThumbTrackGapSize;
                }
                if (i10 != 0) {
                    f8 = SliderKt.TrackInsideCornerSize;
                } else {
                    f8 = f2;
                }
                if (i12 != 0) {
                    boolean z111 = z2;
                    dm3Var2 = dm3Var3;
                    i15 = i3;
                    fM9062getUnspecifiedD9Ej5fM = Dp.Companion.m9062getUnspecifiedD9Ej5fM();
                    modifier4 = modifier2;
                    z5 = z111;
                    f9 = f8;
                    sliderColors3 = sliderColors2;
                    f10 = f4;
                    bm3Var3 = bm3Var2;
                } else {
                    f9 = f8;
                    modifier4 = modifier2;
                    z5 = z2;
                    sliderColors3 = sliderColors2;
                    dm3Var2 = dm3Var3;
                    i15 = i3;
                    f10 = f4;
                    bm3Var3 = bm3Var2;
                    fM9062getUnspecifiedD9Ej5fM = f3;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1199441071, i15, -1, "androidx.compose.material3.SliderDefaults.CenteredTrack (Slider.kt:1557)");
            }
            int i117 = i15 << 3;
            m3884TrackImplVvwgllI(sliderState, fM9062getUnspecifiedD9Ej5fM, modifier4, z5, sliderColors3, bm3Var3, dm3Var2, f10, f9, true, true, composerStartRestartGroup, (i15 & 14) | 805306368 | ((i15 >> 21) & 112) | (i117 & 896) | (i117 & 7168) | (57344 & i117) | (458752 & i117) | (3670016 & i117) | (29360128 & i117) | (i117 & 234881024), ((i15 >> 24) & 112) | 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier4;
            f7 = f10;
            f6 = fM9062getUnspecifiedD9Ej5fM;
            z4 = z5;
            sliderColors2 = sliderColors3;
            f5 = f9;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            f5 = f2;
            f6 = f3;
            modifier3 = modifier2;
            f7 = f4;
            bm3Var3 = bm3Var2;
            z4 = z2;
            dm3Var2 = dm3Var;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: q28
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    SliderDefaults sliderDefaults = this;
                    SliderState sliderState2 = sliderState;
                    float f11 = f7;
                    return SliderDefaults.CenteredTrack_7LSsfP0$lambda$25(sliderDefaults, sliderState2, modifier3, z4, sliderColors2, bm3Var3, dm3Var2, f11, f5, f6, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x012d  */
    /* JADX WARN: Code duplicated, block: B:103:0x0136  */
    /* JADX WARN: Code duplicated, block: B:105:0x013c  */
    /* JADX WARN: Code duplicated, block: B:108:0x014f  */
    /* JADX WARN: Code duplicated, block: B:109:0x0165  */
    /* JADX WARN: Code duplicated, block: B:112:0x018c  */
    /* JADX WARN: Code duplicated, block: B:115:0x0194  */
    /* JADX WARN: Code duplicated, block: B:118:0x019f  */
    /* JADX WARN: Code duplicated, block: B:120:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0045  */
    /* JADX WARN: Code duplicated, block: B:28:0x0049  */
    /* JADX WARN: Code duplicated, block: B:30:0x0051  */
    /* JADX WARN: Code duplicated, block: B:31:0x0054  */
    /* JADX WARN: Code duplicated, block: B:34:0x005a  */
    /* JADX WARN: Code duplicated, block: B:37:0x0060  */
    /* JADX WARN: Code duplicated, block: B:39:0x0065  */
    /* JADX WARN: Code duplicated, block: B:41:0x0069  */
    /* JADX WARN: Code duplicated, block: B:43:0x0071  */
    /* JADX WARN: Code duplicated, block: B:44:0x0074  */
    /* JADX WARN: Code duplicated, block: B:48:0x007b  */
    /* JADX WARN: Code duplicated, block: B:50:0x0080  */
    /* JADX WARN: Code duplicated, block: B:52:0x0084  */
    /* JADX WARN: Code duplicated, block: B:54:0x008c  */
    /* JADX WARN: Code duplicated, block: B:55:0x008f  */
    /* JADX WARN: Code duplicated, block: B:59:0x0099  */
    /* JADX WARN: Code duplicated, block: B:60:0x009c  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:64:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:65:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:69:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:70:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:75:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:81:0x00dd A[PHI: r4 r9 r10 r12
      0x00dd: PHI (r4v32 int) = (r4v19 int), (r4v17 int), (r4v33 int) binds: [B:89:0x00f8, B:79:0x00d9, B:80:0x00db] A[DONT_GENERATE, DONT_INLINE]
      0x00dd: PHI (r9v8 androidx.compose.ui.Modifier) = (r9v5 androidx.compose.ui.Modifier), (r9v2 androidx.compose.ui.Modifier), (r9v2 androidx.compose.ui.Modifier) binds: [B:89:0x00f8, B:79:0x00d9, B:80:0x00db] A[DONT_GENERATE, DONT_INLINE]
      0x00dd: PHI (r10v12 androidx.compose.material3.SliderColors) = 
      (r10v9 androidx.compose.material3.SliderColors)
      (r10v6 androidx.compose.material3.SliderColors)
      (r10v6 androidx.compose.material3.SliderColors)
     binds: [B:89:0x00f8, B:79:0x00d9, B:80:0x00db] A[DONT_GENERATE, DONT_INLINE]
      0x00dd: PHI (r12v7 boolean) = (r12v4 boolean), (r12v2 boolean), (r12v2 boolean) binds: [B:89:0x00f8, B:79:0x00d9, B:80:0x00db] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:82:0x00e0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:83:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:86:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:88:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:90:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:93:0x0109  */
    /* JADX WARN: Code duplicated, block: B:96:0x011e  */
    /* JADX INFO: renamed from: Thumb-9LiSoMs, reason: not valid java name */
    public final void m3890Thumb9LiSoMs(final MutableInteractionSource mutableInteractionSource, Modifier modifier, SliderColors sliderColors, boolean z, long j, Composer composer, final int i, final int i2) {
        int i3;
        Modifier modifier2;
        SliderColors sliderColors2;
        int i4;
        boolean z2;
        int i5;
        int i6;
        long j2;
        int i7;
        int i8;
        boolean z3;
        final long j3;
        final SliderColors sliderColors3;
        final boolean z4;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        long j4;
        Object objRememberedValue;
        Composer.Companion companion;
        SnapshotStateList snapshotStateList;
        boolean z5;
        Object objRememberedValue2;
        long jM9133copyDwJknco$default;
        Composer composerStartRestartGroup = composer.startRestartGroup(-290277409);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(mutableInteractionSource) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i9 = i2 & 2;
        if (i9 == 0) {
            if ((i & 48) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if ((i2 & 4) == 0) {
                    sliderColors2 = sliderColors;
                    int i10 = composerStartRestartGroup.changed(sliderColors2) ? 256 : 128;
                    i3 |= i10;
                } else {
                    sliderColors2 = sliderColors;
                }
                i3 |= i10;
            } else {
                sliderColors2 = sliderColors;
            }
            i4 = i2 & 8;
            if (i4 != 0) {
                if ((i & 3072) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i5 = 2048;
                    } else {
                        i5 = 1024;
                    }
                    i3 |= i5;
                }
                i6 = i2 & 16;
                if (i6 != 0) {
                    if ((i & 24576) == 0) {
                        j2 = j;
                        if (composerStartRestartGroup.changed(j2)) {
                            i7 = 16384;
                        } else {
                            i7 = 8192;
                        }
                        i3 |= i7;
                    }
                    if ((i2 & 32) != 0) {
                        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(this)) {
                            i8 = 131072;
                        } else {
                            i8 = 65536;
                        }
                        i3 |= i8;
                    }
                    if ((i3 & 74899) != 74898) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                            if (i9 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                SliderColors sliderColorsColors = colors(composerStartRestartGroup, (i3 >> 15) & 14);
                                i3 &= -897;
                                sliderColors2 = sliderColorsColors;
                            }
                            if (i4 != 0) {
                                z2 = true;
                            }
                            if (i6 != 0) {
                                j4 = SliderKt.ThumbSize;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-290277409, i3, -1, "androidx.compose.material3.SliderDefaults.Thumb (Slider.kt:1212)");
                            }
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            companion = Composer.Companion;
                            if (objRememberedValue == companion.getEmpty()) {
                                objRememberedValue = SnapshotStateKt.mutableStateListOf();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            snapshotStateList = (SnapshotStateList) objRememberedValue;
                            int i11 = i3 & 14;
                            z5 = i11 == 4;
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z5 || objRememberedValue2 == companion.getEmpty()) {
                                objRememberedValue2 = new SliderDefaults$Thumb$1$1(mutableInteractionSource, snapshotStateList, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            EffectsKt.LaunchedEffect(mutableInteractionSource, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue2, composerStartRestartGroup, i11);
                            if (snapshotStateList.isEmpty()) {
                                jM9133copyDwJknco$default = j4;
                            } else {
                                jM9133copyDwJknco$default = DpSize.m9133copyDwJknco$default(j4, Dp.m9042constructorimpl(DpSize.m9140getWidthD9Ej5fM(j4) / 2.0f), 0.0f, 2, null);
                            }
                            SpacerKt.Spacer(BackgroundKt.m1288backgroundbw27NRU(HoverableKt.hoverable$default(SizeKt.m2100size6HolHcs(modifier2, jM9133copyDwJknco$default), mutableInteractionSource, false, 2, null), sliderColors2.m3881thumbColorvNxB06k$material3(z2), ShapesKt.getValue(SliderTokens.INSTANCE.getHandleShape(), composerStartRestartGroup, 6)), composerStartRestartGroup, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            j3 = j4;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                            }
                        }
                        j4 = j2;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-290277409, i3, -1, "androidx.compose.material3.SliderDefaults.Thumb (Slider.kt:1212)");
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = SnapshotStateKt.mutableStateListOf();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        snapshotStateList = (SnapshotStateList) objRememberedValue;
                        int i12 = i3 & 14;
                        if (i12 == 4) {
                        }
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z5) {
                            objRememberedValue2 = new SliderDefaults$Thumb$1$1(mutableInteractionSource, snapshotStateList, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new SliderDefaults$Thumb$1$1(mutableInteractionSource, snapshotStateList, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        EffectsKt.LaunchedEffect(mutableInteractionSource, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue2, composerStartRestartGroup, i12);
                        if (snapshotStateList.isEmpty()) {
                            jM9133copyDwJknco$default = DpSize.m9133copyDwJknco$default(j4, Dp.m9042constructorimpl(DpSize.m9140getWidthD9Ej5fM(j4) / 2.0f), 0.0f, 2, null);
                        } else {
                            jM9133copyDwJknco$default = j4;
                        }
                        SpacerKt.Spacer(BackgroundKt.m1288backgroundbw27NRU(HoverableKt.hoverable$default(SizeKt.m2100size6HolHcs(modifier2, jM9133copyDwJknco$default), mutableInteractionSource, false, 2, null), sliderColors2.m3881thumbColorvNxB06k$material3(z2), ShapesKt.getValue(SliderTokens.INSTANCE.getHandleShape(), composerStartRestartGroup, 6)), composerStartRestartGroup, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        j3 = j4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        j3 = j2;
                    }
                    sliderColors3 = sliderColors2;
                    z4 = z2;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        final Modifier modifier3 = modifier2;
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: g28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return SliderDefaults.Thumb_9LiSoMs$lambda$3(this.b, mutableInteractionSource, modifier3, sliderColors3, z4, j3, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 24576;
                j2 = j;
                if ((i2 & 32) != 0) {
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i3 |= i8;
                }
                if ((i3 & 74899) != 74898) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i9 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            SliderColors sliderColorsColors2 = colors(composerStartRestartGroup, (i3 >> 15) & 14);
                            i3 &= -897;
                            sliderColors2 = sliderColorsColors2;
                        }
                        if (i4 != 0) {
                            z2 = true;
                        }
                        if (i6 != 0) {
                            j4 = SliderKt.ThumbSize;
                        } else {
                            j4 = j2;
                        }
                    } else {
                        if (i9 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            SliderColors sliderColorsColors3 = colors(composerStartRestartGroup, (i3 >> 15) & 14);
                            i3 &= -897;
                            sliderColors2 = sliderColorsColors3;
                        }
                        if (i4 != 0) {
                            z2 = true;
                        }
                        if (i6 != 0) {
                            j4 = SliderKt.ThumbSize;
                        } else {
                            j4 = j2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-290277409, i3, -1, "androidx.compose.material3.SliderDefaults.Thumb (Slider.kt:1212)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = SnapshotStateKt.mutableStateListOf();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    snapshotStateList = (SnapshotStateList) objRememberedValue;
                    int i13 = i3 & 14;
                    if (i13 == 4) {
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        objRememberedValue2 = new SliderDefaults$Thumb$1$1(mutableInteractionSource, snapshotStateList, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new SliderDefaults$Thumb$1$1(mutableInteractionSource, snapshotStateList, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    EffectsKt.LaunchedEffect(mutableInteractionSource, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue2, composerStartRestartGroup, i13);
                    if (snapshotStateList.isEmpty()) {
                        jM9133copyDwJknco$default = DpSize.m9133copyDwJknco$default(j4, Dp.m9042constructorimpl(DpSize.m9140getWidthD9Ej5fM(j4) / 2.0f), 0.0f, 2, null);
                    } else {
                        jM9133copyDwJknco$default = j4;
                    }
                    SpacerKt.Spacer(BackgroundKt.m1288backgroundbw27NRU(HoverableKt.hoverable$default(SizeKt.m2100size6HolHcs(modifier2, jM9133copyDwJknco$default), mutableInteractionSource, false, 2, null), sliderColors2.m3881thumbColorvNxB06k$material3(z2), ShapesKt.getValue(SliderTokens.INSTANCE.getHandleShape(), composerStartRestartGroup, 6)), composerStartRestartGroup, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j3 = j4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    j3 = j2;
                }
                sliderColors3 = sliderColors2;
                z4 = z2;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final Modifier modifier4 = modifier2;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: g28
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SliderDefaults.Thumb_9LiSoMs$lambda$3(this.b, mutableInteractionSource, modifier4, sliderColors3, z4, j3, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            z2 = z;
            i6 = i2 & 16;
            if (i6 != 0) {
                if ((i & 24576) == 0) {
                    j2 = j;
                    if (composerStartRestartGroup.changed(j2)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i3 |= i7;
                }
                if ((i2 & 32) != 0) {
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i3 |= i8;
                }
                if ((i3 & 74899) != 74898) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i9 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            SliderColors sliderColorsColors4 = colors(composerStartRestartGroup, (i3 >> 15) & 14);
                            i3 &= -897;
                            sliderColors2 = sliderColorsColors4;
                        }
                        if (i4 != 0) {
                            z2 = true;
                        }
                        if (i6 != 0) {
                            j4 = SliderKt.ThumbSize;
                        } else {
                            j4 = j2;
                        }
                    } else {
                        if (i9 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            SliderColors sliderColorsColors5 = colors(composerStartRestartGroup, (i3 >> 15) & 14);
                            i3 &= -897;
                            sliderColors2 = sliderColorsColors5;
                        }
                        if (i4 != 0) {
                            z2 = true;
                        }
                        if (i6 != 0) {
                            j4 = SliderKt.ThumbSize;
                        } else {
                            j4 = j2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-290277409, i3, -1, "androidx.compose.material3.SliderDefaults.Thumb (Slider.kt:1212)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = SnapshotStateKt.mutableStateListOf();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    snapshotStateList = (SnapshotStateList) objRememberedValue;
                    int i14 = i3 & 14;
                    if (i14 == 4) {
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        objRememberedValue2 = new SliderDefaults$Thumb$1$1(mutableInteractionSource, snapshotStateList, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new SliderDefaults$Thumb$1$1(mutableInteractionSource, snapshotStateList, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    EffectsKt.LaunchedEffect(mutableInteractionSource, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue2, composerStartRestartGroup, i14);
                    if (snapshotStateList.isEmpty()) {
                        jM9133copyDwJknco$default = DpSize.m9133copyDwJknco$default(j4, Dp.m9042constructorimpl(DpSize.m9140getWidthD9Ej5fM(j4) / 2.0f), 0.0f, 2, null);
                    } else {
                        jM9133copyDwJknco$default = j4;
                    }
                    SpacerKt.Spacer(BackgroundKt.m1288backgroundbw27NRU(HoverableKt.hoverable$default(SizeKt.m2100size6HolHcs(modifier2, jM9133copyDwJknco$default), mutableInteractionSource, false, 2, null), sliderColors2.m3881thumbColorvNxB06k$material3(z2), ShapesKt.getValue(SliderTokens.INSTANCE.getHandleShape(), composerStartRestartGroup, 6)), composerStartRestartGroup, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j3 = j4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    j3 = j2;
                }
                sliderColors3 = sliderColors2;
                z4 = z2;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final Modifier modifier5 = modifier2;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: g28
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SliderDefaults.Thumb_9LiSoMs$lambda$3(this.b, mutableInteractionSource, modifier5, sliderColors3, z4, j3, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            j2 = j;
            if ((i2 & 32) != 0) {
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i8 = 131072;
                } else {
                    i8 = 65536;
                }
                i3 |= i8;
            }
            if ((i3 & 74899) != 74898) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i9 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        SliderColors sliderColorsColors6 = colors(composerStartRestartGroup, (i3 >> 15) & 14);
                        i3 &= -897;
                        sliderColors2 = sliderColorsColors6;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if (i6 != 0) {
                        j4 = SliderKt.ThumbSize;
                    } else {
                        j4 = j2;
                    }
                } else {
                    if (i9 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        SliderColors sliderColorsColors7 = colors(composerStartRestartGroup, (i3 >> 15) & 14);
                        i3 &= -897;
                        sliderColors2 = sliderColorsColors7;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if (i6 != 0) {
                        j4 = SliderKt.ThumbSize;
                    } else {
                        j4 = j2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-290277409, i3, -1, "androidx.compose.material3.SliderDefaults.Thumb (Slider.kt:1212)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = SnapshotStateKt.mutableStateListOf();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                snapshotStateList = (SnapshotStateList) objRememberedValue;
                int i15 = i3 & 14;
                if (i15 == 4) {
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z5) {
                    objRememberedValue2 = new SliderDefaults$Thumb$1$1(mutableInteractionSource, snapshotStateList, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = new SliderDefaults$Thumb$1$1(mutableInteractionSource, snapshotStateList, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                EffectsKt.LaunchedEffect(mutableInteractionSource, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue2, composerStartRestartGroup, i15);
                if (snapshotStateList.isEmpty()) {
                    jM9133copyDwJknco$default = DpSize.m9133copyDwJknco$default(j4, Dp.m9042constructorimpl(DpSize.m9140getWidthD9Ej5fM(j4) / 2.0f), 0.0f, 2, null);
                } else {
                    jM9133copyDwJknco$default = j4;
                }
                SpacerKt.Spacer(BackgroundKt.m1288backgroundbw27NRU(HoverableKt.hoverable$default(SizeKt.m2100size6HolHcs(modifier2, jM9133copyDwJknco$default), mutableInteractionSource, false, 2, null), sliderColors2.m3881thumbColorvNxB06k$material3(z2), ShapesKt.getValue(SliderTokens.INSTANCE.getHandleShape(), composerStartRestartGroup, 6)), composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j3 = j4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                j3 = j2;
            }
            sliderColors3 = sliderColors2;
            z4 = z2;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final Modifier modifier6 = modifier2;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: g28
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SliderDefaults.Thumb_9LiSoMs$lambda$3(this.b, mutableInteractionSource, modifier6, sliderColors3, z4, j3, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        modifier2 = modifier;
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i2 & 4) == 0) {
                sliderColors2 = sliderColors;
                if (composerStartRestartGroup.changed(sliderColors2)) {
                }
                i3 |= i10;
            } else {
                sliderColors2 = sliderColors;
            }
            i3 |= i10;
        } else {
            sliderColors2 = sliderColors;
        }
        i4 = i2 & 8;
        if (i4 != 0) {
            if ((i & 3072) == 0) {
                z2 = z;
                if (composerStartRestartGroup.changed(z2)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i3 |= i5;
            }
            i6 = i2 & 16;
            if (i6 != 0) {
                if ((i & 24576) == 0) {
                    j2 = j;
                    if (composerStartRestartGroup.changed(j2)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i3 |= i7;
                }
                if ((i2 & 32) != 0) {
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i3 |= i8;
                }
                if ((i3 & 74899) != 74898) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i9 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            SliderColors sliderColorsColors8 = colors(composerStartRestartGroup, (i3 >> 15) & 14);
                            i3 &= -897;
                            sliderColors2 = sliderColorsColors8;
                        }
                        if (i4 != 0) {
                            z2 = true;
                        }
                        if (i6 != 0) {
                            j4 = SliderKt.ThumbSize;
                        } else {
                            j4 = j2;
                        }
                    } else {
                        if (i9 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            SliderColors sliderColorsColors9 = colors(composerStartRestartGroup, (i3 >> 15) & 14);
                            i3 &= -897;
                            sliderColors2 = sliderColorsColors9;
                        }
                        if (i4 != 0) {
                            z2 = true;
                        }
                        if (i6 != 0) {
                            j4 = SliderKt.ThumbSize;
                        } else {
                            j4 = j2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-290277409, i3, -1, "androidx.compose.material3.SliderDefaults.Thumb (Slider.kt:1212)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = SnapshotStateKt.mutableStateListOf();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    snapshotStateList = (SnapshotStateList) objRememberedValue;
                    int i16 = i3 & 14;
                    if (i16 == 4) {
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        objRememberedValue2 = new SliderDefaults$Thumb$1$1(mutableInteractionSource, snapshotStateList, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new SliderDefaults$Thumb$1$1(mutableInteractionSource, snapshotStateList, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    EffectsKt.LaunchedEffect(mutableInteractionSource, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue2, composerStartRestartGroup, i16);
                    if (snapshotStateList.isEmpty()) {
                        jM9133copyDwJknco$default = DpSize.m9133copyDwJknco$default(j4, Dp.m9042constructorimpl(DpSize.m9140getWidthD9Ej5fM(j4) / 2.0f), 0.0f, 2, null);
                    } else {
                        jM9133copyDwJknco$default = j4;
                    }
                    SpacerKt.Spacer(BackgroundKt.m1288backgroundbw27NRU(HoverableKt.hoverable$default(SizeKt.m2100size6HolHcs(modifier2, jM9133copyDwJknco$default), mutableInteractionSource, false, 2, null), sliderColors2.m3881thumbColorvNxB06k$material3(z2), ShapesKt.getValue(SliderTokens.INSTANCE.getHandleShape(), composerStartRestartGroup, 6)), composerStartRestartGroup, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j3 = j4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    j3 = j2;
                }
                sliderColors3 = sliderColors2;
                z4 = z2;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final Modifier modifier7 = modifier2;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: g28
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SliderDefaults.Thumb_9LiSoMs$lambda$3(this.b, mutableInteractionSource, modifier7, sliderColors3, z4, j3, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            j2 = j;
            if ((i2 & 32) != 0) {
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i8 = 131072;
                } else {
                    i8 = 65536;
                }
                i3 |= i8;
            }
            if ((i3 & 74899) != 74898) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i9 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        SliderColors sliderColorsColors10 = colors(composerStartRestartGroup, (i3 >> 15) & 14);
                        i3 &= -897;
                        sliderColors2 = sliderColorsColors10;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if (i6 != 0) {
                        j4 = SliderKt.ThumbSize;
                    } else {
                        j4 = j2;
                    }
                } else {
                    if (i9 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        SliderColors sliderColorsColors11 = colors(composerStartRestartGroup, (i3 >> 15) & 14);
                        i3 &= -897;
                        sliderColors2 = sliderColorsColors11;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if (i6 != 0) {
                        j4 = SliderKt.ThumbSize;
                    } else {
                        j4 = j2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-290277409, i3, -1, "androidx.compose.material3.SliderDefaults.Thumb (Slider.kt:1212)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = SnapshotStateKt.mutableStateListOf();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                snapshotStateList = (SnapshotStateList) objRememberedValue;
                int i17 = i3 & 14;
                if (i17 == 4) {
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z5) {
                    objRememberedValue2 = new SliderDefaults$Thumb$1$1(mutableInteractionSource, snapshotStateList, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = new SliderDefaults$Thumb$1$1(mutableInteractionSource, snapshotStateList, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                EffectsKt.LaunchedEffect(mutableInteractionSource, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue2, composerStartRestartGroup, i17);
                if (snapshotStateList.isEmpty()) {
                    jM9133copyDwJknco$default = DpSize.m9133copyDwJknco$default(j4, Dp.m9042constructorimpl(DpSize.m9140getWidthD9Ej5fM(j4) / 2.0f), 0.0f, 2, null);
                } else {
                    jM9133copyDwJknco$default = j4;
                }
                SpacerKt.Spacer(BackgroundKt.m1288backgroundbw27NRU(HoverableKt.hoverable$default(SizeKt.m2100size6HolHcs(modifier2, jM9133copyDwJknco$default), mutableInteractionSource, false, 2, null), sliderColors2.m3881thumbColorvNxB06k$material3(z2), ShapesKt.getValue(SliderTokens.INSTANCE.getHandleShape(), composerStartRestartGroup, 6)), composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j3 = j4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                j3 = j2;
            }
            sliderColors3 = sliderColors2;
            z4 = z2;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final Modifier modifier8 = modifier2;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: g28
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SliderDefaults.Thumb_9LiSoMs$lambda$3(this.b, mutableInteractionSource, modifier8, sliderColors3, z4, j3, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        z2 = z;
        i6 = i2 & 16;
        if (i6 != 0) {
            if ((i & 24576) == 0) {
                j2 = j;
                if (composerStartRestartGroup.changed(j2)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i3 |= i7;
            }
            if ((i2 & 32) != 0) {
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i8 = 131072;
                } else {
                    i8 = 65536;
                }
                i3 |= i8;
            }
            if ((i3 & 74899) != 74898) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i9 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        SliderColors sliderColorsColors12 = colors(composerStartRestartGroup, (i3 >> 15) & 14);
                        i3 &= -897;
                        sliderColors2 = sliderColorsColors12;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if (i6 != 0) {
                        j4 = SliderKt.ThumbSize;
                    } else {
                        j4 = j2;
                    }
                } else {
                    if (i9 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        SliderColors sliderColorsColors13 = colors(composerStartRestartGroup, (i3 >> 15) & 14);
                        i3 &= -897;
                        sliderColors2 = sliderColorsColors13;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if (i6 != 0) {
                        j4 = SliderKt.ThumbSize;
                    } else {
                        j4 = j2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-290277409, i3, -1, "androidx.compose.material3.SliderDefaults.Thumb (Slider.kt:1212)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = SnapshotStateKt.mutableStateListOf();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                snapshotStateList = (SnapshotStateList) objRememberedValue;
                int i18 = i3 & 14;
                if (i18 == 4) {
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z5) {
                    objRememberedValue2 = new SliderDefaults$Thumb$1$1(mutableInteractionSource, snapshotStateList, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = new SliderDefaults$Thumb$1$1(mutableInteractionSource, snapshotStateList, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                EffectsKt.LaunchedEffect(mutableInteractionSource, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue2, composerStartRestartGroup, i18);
                if (snapshotStateList.isEmpty()) {
                    jM9133copyDwJknco$default = DpSize.m9133copyDwJknco$default(j4, Dp.m9042constructorimpl(DpSize.m9140getWidthD9Ej5fM(j4) / 2.0f), 0.0f, 2, null);
                } else {
                    jM9133copyDwJknco$default = j4;
                }
                SpacerKt.Spacer(BackgroundKt.m1288backgroundbw27NRU(HoverableKt.hoverable$default(SizeKt.m2100size6HolHcs(modifier2, jM9133copyDwJknco$default), mutableInteractionSource, false, 2, null), sliderColors2.m3881thumbColorvNxB06k$material3(z2), ShapesKt.getValue(SliderTokens.INSTANCE.getHandleShape(), composerStartRestartGroup, 6)), composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j3 = j4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                j3 = j2;
            }
            sliderColors3 = sliderColors2;
            z4 = z2;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final Modifier modifier9 = modifier2;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: g28
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SliderDefaults.Thumb_9LiSoMs$lambda$3(this.b, mutableInteractionSource, modifier9, sliderColors3, z4, j3, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        j2 = j;
        if ((i2 & 32) != 0) {
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            if (composerStartRestartGroup.changed(this)) {
                i8 = 131072;
            } else {
                i8 = 65536;
            }
            i3 |= i8;
        }
        if ((i3 & 74899) != 74898) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i9 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if ((i2 & 4) != 0) {
                    SliderColors sliderColorsColors14 = colors(composerStartRestartGroup, (i3 >> 15) & 14);
                    i3 &= -897;
                    sliderColors2 = sliderColorsColors14;
                }
                if (i4 != 0) {
                    z2 = true;
                }
                if (i6 != 0) {
                    j4 = SliderKt.ThumbSize;
                } else {
                    j4 = j2;
                }
            } else {
                if (i9 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if ((i2 & 4) != 0) {
                    SliderColors sliderColorsColors15 = colors(composerStartRestartGroup, (i3 >> 15) & 14);
                    i3 &= -897;
                    sliderColors2 = sliderColorsColors15;
                }
                if (i4 != 0) {
                    z2 = true;
                }
                if (i6 != 0) {
                    j4 = SliderKt.ThumbSize;
                } else {
                    j4 = j2;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-290277409, i3, -1, "androidx.compose.material3.SliderDefaults.Thumb (Slider.kt:1212)");
            }
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = SnapshotStateKt.mutableStateListOf();
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            snapshotStateList = (SnapshotStateList) objRememberedValue;
            int i19 = i3 & 14;
            if (i19 == 4) {
            }
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (z5) {
                objRememberedValue2 = new SliderDefaults$Thumb$1$1(mutableInteractionSource, snapshotStateList, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            } else {
                objRememberedValue2 = new SliderDefaults$Thumb$1$1(mutableInteractionSource, snapshotStateList, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            EffectsKt.LaunchedEffect(mutableInteractionSource, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue2, composerStartRestartGroup, i19);
            if (snapshotStateList.isEmpty()) {
                jM9133copyDwJknco$default = DpSize.m9133copyDwJknco$default(j4, Dp.m9042constructorimpl(DpSize.m9140getWidthD9Ej5fM(j4) / 2.0f), 0.0f, 2, null);
            } else {
                jM9133copyDwJknco$default = j4;
            }
            SpacerKt.Spacer(BackgroundKt.m1288backgroundbw27NRU(HoverableKt.hoverable$default(SizeKt.m2100size6HolHcs(modifier2, jM9133copyDwJknco$default), mutableInteractionSource, false, 2, null), sliderColors2.m3881thumbColorvNxB06k$material3(z2), ShapesKt.getValue(SliderTokens.INSTANCE.getHandleShape(), composerStartRestartGroup, 6)), composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            j3 = j4;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            j3 = j2;
        }
        sliderColors3 = sliderColors2;
        z4 = z2;
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier10 = modifier2;
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: g28
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return SliderDefaults.Thumb_9LiSoMs$lambda$3(this.b, mutableInteractionSource, modifier10, sliderColors3, z4, j3, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0112  */
    /* JADX WARN: Code duplicated, block: B:103:0x0121  */
    /* JADX WARN: Code duplicated, block: B:106:0x0136  */
    /* JADX WARN: Code duplicated, block: B:110:0x0145  */
    /* JADX WARN: Code duplicated, block: B:113:0x014d  */
    /* JADX WARN: Code duplicated, block: B:115:0x0153  */
    /* JADX WARN: Code duplicated, block: B:118:0x0166  */
    /* JADX WARN: Code duplicated, block: B:120:0x0170  */
    /* JADX WARN: Code duplicated, block: B:122:0x0185  */
    /* JADX WARN: Code duplicated, block: B:123:0x0199  */
    /* JADX WARN: Code duplicated, block: B:126:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:129:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:132:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:134:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0045  */
    /* JADX WARN: Code duplicated, block: B:28:0x004a  */
    /* JADX WARN: Code duplicated, block: B:30:0x004e  */
    /* JADX WARN: Code duplicated, block: B:32:0x0056  */
    /* JADX WARN: Code duplicated, block: B:33:0x0059  */
    /* JADX WARN: Code duplicated, block: B:37:0x0060  */
    /* JADX WARN: Code duplicated, block: B:39:0x0064  */
    /* JADX WARN: Code duplicated, block: B:41:0x006c  */
    /* JADX WARN: Code duplicated, block: B:42:0x006f  */
    /* JADX WARN: Code duplicated, block: B:45:0x0075  */
    /* JADX WARN: Code duplicated, block: B:48:0x007b  */
    /* JADX WARN: Code duplicated, block: B:50:0x0080  */
    /* JADX WARN: Code duplicated, block: B:52:0x0084  */
    /* JADX WARN: Code duplicated, block: B:54:0x008c  */
    /* JADX WARN: Code duplicated, block: B:55:0x008f  */
    /* JADX WARN: Code duplicated, block: B:59:0x0098  */
    /* JADX WARN: Code duplicated, block: B:60:0x009c  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:64:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:65:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:70:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:72:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:79:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:80:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:83:0x00df  */
    /* JADX WARN: Code duplicated, block: B:85:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:91:0x00f6 A[PHI: r4 r10 r11 r13
      0x00f6: PHI (r4v27 int) = (r4v21 int), (r4v19 int), (r4v28 int) binds: [B:99:0x0110, B:89:0x00f2, B:90:0x00f4] A[DONT_GENERATE, DONT_INLINE]
      0x00f6: PHI (r10v8 androidx.compose.ui.Modifier) = (r10v5 androidx.compose.ui.Modifier), (r10v2 androidx.compose.ui.Modifier), (r10v2 androidx.compose.ui.Modifier) binds: [B:99:0x0110, B:89:0x00f2, B:90:0x00f4] A[DONT_GENERATE, DONT_INLINE]
      0x00f6: PHI (r11v12 androidx.compose.material3.SliderColors) = 
      (r11v9 androidx.compose.material3.SliderColors)
      (r11v6 androidx.compose.material3.SliderColors)
      (r11v6 androidx.compose.material3.SliderColors)
     binds: [B:99:0x0110, B:89:0x00f2, B:90:0x00f4] A[DONT_GENERATE, DONT_INLINE]
      0x00f6: PHI (r13v7 boolean) = (r13v4 boolean), (r13v2 boolean), (r13v2 boolean) binds: [B:99:0x0110, B:89:0x00f2, B:90:0x00f4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:92:0x00f9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:93:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:96:0x0102  */
    /* JADX WARN: Code duplicated, block: B:98:0x010f  */
    /* JADX INFO: renamed from: Thumb-HwbPF3A$material3, reason: not valid java name */
    public final void m3891ThumbHwbPF3A$material3(final MutableInteractionSource mutableInteractionSource, final SliderState sliderState, Modifier modifier, SliderColors sliderColors, boolean z, long j, Composer composer, final int i, final int i2) {
        int i3;
        SliderState sliderState2;
        int i4;
        Modifier modifier2;
        int i5;
        SliderColors sliderColors2;
        int i6;
        boolean z2;
        int i7;
        int i8;
        int i9;
        int i10;
        boolean z3;
        final long j2;
        final Modifier modifier3;
        final SliderColors sliderColors3;
        final boolean z4;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        long j3;
        Object objRememberedValue;
        Composer.Companion companion;
        SnapshotStateList snapshotStateList;
        boolean z5;
        Object objRememberedValue2;
        long j4;
        long jM9133copyDwJknco$default;
        Composer composerStartRestartGroup = composer.startRestartGroup(-889714565);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(mutableInteractionSource) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i2 & 2) == 0) {
            if ((i & 48) == 0) {
                sliderState2 = sliderState;
                i3 |= composerStartRestartGroup.changedInstance(sliderState2) ? 32 : 16;
            }
            i4 = i2 & 4;
            if (i4 != 0) {
                if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    modifier2 = modifier;
                    if (composerStartRestartGroup.changed(modifier2)) {
                        i5 = 256;
                    } else {
                        i5 = 128;
                    }
                    i3 |= i5;
                }
                if ((i & 3072) == 0) {
                    if ((i2 & 8) == 0) {
                        sliderColors2 = sliderColors;
                        int i11 = composerStartRestartGroup.changed(sliderColors2) ? 2048 : 1024;
                        i3 |= i11;
                    } else {
                        sliderColors2 = sliderColors;
                    }
                    i3 |= i11;
                } else {
                    sliderColors2 = sliderColors;
                }
                i6 = i2 & 16;
                if (i6 != 0) {
                    if ((i & 24576) == 0) {
                        z2 = z;
                        if (composerStartRestartGroup.changed(z2)) {
                            i7 = 16384;
                        } else {
                            i7 = 8192;
                        }
                        i3 |= i7;
                    }
                    i8 = i2 & 32;
                    if (i8 != 0) {
                        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((196608 & i) == 0) {
                        if (composerStartRestartGroup.changed(j)) {
                            i9 = 131072;
                        } else {
                            i9 = 65536;
                        }
                        i3 |= i9;
                    }
                    if ((i2 & 64) != 0) {
                        i3 |= 1572864;
                    } else if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changed(this)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i3 |= i10;
                    }
                    if ((i3 & 599187) != 599186) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 8) != 0) {
                                SliderColors sliderColorsColors = colors(composerStartRestartGroup, (i3 >> 18) & 14);
                                i3 &= -7169;
                                sliderColors2 = sliderColorsColors;
                            }
                            if (i6 != 0) {
                                z2 = true;
                            }
                            if (i8 != 0) {
                                j3 = SliderKt.ThumbSize;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-889714565, i3, -1, "androidx.compose.material3.SliderDefaults.Thumb (Slider.kt:1265)");
                            }
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            companion = Composer.Companion;
                            if (objRememberedValue == companion.getEmpty()) {
                                objRememberedValue = SnapshotStateKt.mutableStateListOf();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            snapshotStateList = (SnapshotStateList) objRememberedValue;
                            int i12 = i3 & 14;
                            z5 = i12 == 4;
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z5 || objRememberedValue2 == companion.getEmpty()) {
                                objRememberedValue2 = new SliderDefaults$Thumb$3$1(mutableInteractionSource, snapshotStateList, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            EffectsKt.LaunchedEffect(mutableInteractionSource, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue2, composerStartRestartGroup, i12);
                            if (snapshotStateList.isEmpty()) {
                                j4 = j3;
                            } else {
                                if (sliderState2.getOrientation$material3() == Orientation.Vertical) {
                                    jM9133copyDwJknco$default = DpSize.m9133copyDwJknco$default(j3, 0.0f, Dp.m9042constructorimpl(DpSize.m9138getHeightD9Ej5fM(j3) / 2.0f), 1, null);
                                } else {
                                    jM9133copyDwJknco$default = DpSize.m9133copyDwJknco$default(j3, Dp.m9042constructorimpl(DpSize.m9140getWidthD9Ej5fM(j3) / 2.0f), 0.0f, 2, null);
                                }
                                j4 = jM9133copyDwJknco$default;
                            }
                            SpacerKt.Spacer(BackgroundKt.m1288backgroundbw27NRU(HoverableKt.hoverable$default(SizeKt.m2100size6HolHcs(modifier2, j4), mutableInteractionSource, false, 2, null), sliderColors2.m3881thumbColorvNxB06k$material3(z2), ShapesKt.getValue(SliderTokens.INSTANCE.getHandleShape(), composerStartRestartGroup, 6)), composerStartRestartGroup, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            j2 = j3;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            if ((i2 & 8) != 0) {
                                i3 &= -7169;
                            }
                        }
                        j3 = j;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-889714565, i3, -1, "androidx.compose.material3.SliderDefaults.Thumb (Slider.kt:1265)");
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = SnapshotStateKt.mutableStateListOf();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        snapshotStateList = (SnapshotStateList) objRememberedValue;
                        int i13 = i3 & 14;
                        if (i13 == 4) {
                        }
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z5) {
                            objRememberedValue2 = new SliderDefaults$Thumb$3$1(mutableInteractionSource, snapshotStateList, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new SliderDefaults$Thumb$3$1(mutableInteractionSource, snapshotStateList, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        EffectsKt.LaunchedEffect(mutableInteractionSource, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue2, composerStartRestartGroup, i13);
                        if (snapshotStateList.isEmpty()) {
                            if (sliderState2.getOrientation$material3() == Orientation.Vertical) {
                                jM9133copyDwJknco$default = DpSize.m9133copyDwJknco$default(j3, 0.0f, Dp.m9042constructorimpl(DpSize.m9138getHeightD9Ej5fM(j3) / 2.0f), 1, null);
                            } else {
                                jM9133copyDwJknco$default = DpSize.m9133copyDwJknco$default(j3, Dp.m9042constructorimpl(DpSize.m9140getWidthD9Ej5fM(j3) / 2.0f), 0.0f, 2, null);
                            }
                            j4 = jM9133copyDwJknco$default;
                        } else {
                            j4 = j3;
                        }
                        SpacerKt.Spacer(BackgroundKt.m1288backgroundbw27NRU(HoverableKt.hoverable$default(SizeKt.m2100size6HolHcs(modifier2, j4), mutableInteractionSource, false, 2, null), sliderColors2.m3881thumbColorvNxB06k$material3(z2), ShapesKt.getValue(SliderTokens.INSTANCE.getHandleShape(), composerStartRestartGroup, 6)), composerStartRestartGroup, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        j2 = j3;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        j2 = j;
                    }
                    modifier3 = modifier2;
                    sliderColors3 = sliderColors2;
                    z4 = z2;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: f28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return SliderDefaults.Thumb_HwbPF3A$lambda$6(this.b, mutableInteractionSource, sliderState, modifier3, sliderColors3, z4, j2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 24576;
                z2 = z;
                i8 = i2 & 32;
                if (i8 != 0) {
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((196608 & i) == 0) {
                    if (composerStartRestartGroup.changed(j)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i3 |= i9;
                }
                if ((i2 & 64) != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i3 |= i10;
                }
                if ((i3 & 599187) != 599186) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 8) != 0) {
                            SliderColors sliderColorsColors2 = colors(composerStartRestartGroup, (i3 >> 18) & 14);
                            i3 &= -7169;
                            sliderColors2 = sliderColorsColors2;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if (i8 != 0) {
                            j3 = SliderKt.ThumbSize;
                        } else {
                            j3 = j;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 8) != 0) {
                            SliderColors sliderColorsColors3 = colors(composerStartRestartGroup, (i3 >> 18) & 14);
                            i3 &= -7169;
                            sliderColors2 = sliderColorsColors3;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if (i8 != 0) {
                            j3 = SliderKt.ThumbSize;
                        } else {
                            j3 = j;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-889714565, i3, -1, "androidx.compose.material3.SliderDefaults.Thumb (Slider.kt:1265)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = SnapshotStateKt.mutableStateListOf();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    snapshotStateList = (SnapshotStateList) objRememberedValue;
                    int i14 = i3 & 14;
                    if (i14 == 4) {
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        objRememberedValue2 = new SliderDefaults$Thumb$3$1(mutableInteractionSource, snapshotStateList, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new SliderDefaults$Thumb$3$1(mutableInteractionSource, snapshotStateList, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    EffectsKt.LaunchedEffect(mutableInteractionSource, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue2, composerStartRestartGroup, i14);
                    if (snapshotStateList.isEmpty()) {
                        if (sliderState2.getOrientation$material3() == Orientation.Vertical) {
                            jM9133copyDwJknco$default = DpSize.m9133copyDwJknco$default(j3, 0.0f, Dp.m9042constructorimpl(DpSize.m9138getHeightD9Ej5fM(j3) / 2.0f), 1, null);
                        } else {
                            jM9133copyDwJknco$default = DpSize.m9133copyDwJknco$default(j3, Dp.m9042constructorimpl(DpSize.m9140getWidthD9Ej5fM(j3) / 2.0f), 0.0f, 2, null);
                        }
                        j4 = jM9133copyDwJknco$default;
                    } else {
                        j4 = j3;
                    }
                    SpacerKt.Spacer(BackgroundKt.m1288backgroundbw27NRU(HoverableKt.hoverable$default(SizeKt.m2100size6HolHcs(modifier2, j4), mutableInteractionSource, false, 2, null), sliderColors2.m3881thumbColorvNxB06k$material3(z2), ShapesKt.getValue(SliderTokens.INSTANCE.getHandleShape(), composerStartRestartGroup, 6)), composerStartRestartGroup, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j2 = j3;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    j2 = j;
                }
                modifier3 = modifier2;
                sliderColors3 = sliderColors2;
                z4 = z2;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: f28
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SliderDefaults.Thumb_HwbPF3A$lambda$6(this.b, mutableInteractionSource, sliderState, modifier3, sliderColors3, z4, j2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
            if ((i & 3072) == 0) {
                if ((i2 & 8) == 0) {
                    sliderColors2 = sliderColors;
                    if (composerStartRestartGroup.changed(sliderColors2)) {
                    }
                    i3 |= i11;
                } else {
                    sliderColors2 = sliderColors;
                }
                i3 |= i11;
            } else {
                sliderColors2 = sliderColors;
            }
            i6 = i2 & 16;
            if (i6 != 0) {
                if ((i & 24576) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 32;
                if (i8 != 0) {
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((196608 & i) == 0) {
                    if (composerStartRestartGroup.changed(j)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i3 |= i9;
                }
                if ((i2 & 64) != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i3 |= i10;
                }
                if ((i3 & 599187) != 599186) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 8) != 0) {
                            SliderColors sliderColorsColors4 = colors(composerStartRestartGroup, (i3 >> 18) & 14);
                            i3 &= -7169;
                            sliderColors2 = sliderColorsColors4;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if (i8 != 0) {
                            j3 = SliderKt.ThumbSize;
                        } else {
                            j3 = j;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 8) != 0) {
                            SliderColors sliderColorsColors5 = colors(composerStartRestartGroup, (i3 >> 18) & 14);
                            i3 &= -7169;
                            sliderColors2 = sliderColorsColors5;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if (i8 != 0) {
                            j3 = SliderKt.ThumbSize;
                        } else {
                            j3 = j;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-889714565, i3, -1, "androidx.compose.material3.SliderDefaults.Thumb (Slider.kt:1265)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = SnapshotStateKt.mutableStateListOf();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    snapshotStateList = (SnapshotStateList) objRememberedValue;
                    int i15 = i3 & 14;
                    if (i15 == 4) {
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        objRememberedValue2 = new SliderDefaults$Thumb$3$1(mutableInteractionSource, snapshotStateList, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new SliderDefaults$Thumb$3$1(mutableInteractionSource, snapshotStateList, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    EffectsKt.LaunchedEffect(mutableInteractionSource, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue2, composerStartRestartGroup, i15);
                    if (snapshotStateList.isEmpty()) {
                        if (sliderState2.getOrientation$material3() == Orientation.Vertical) {
                            jM9133copyDwJknco$default = DpSize.m9133copyDwJknco$default(j3, 0.0f, Dp.m9042constructorimpl(DpSize.m9138getHeightD9Ej5fM(j3) / 2.0f), 1, null);
                        } else {
                            jM9133copyDwJknco$default = DpSize.m9133copyDwJknco$default(j3, Dp.m9042constructorimpl(DpSize.m9140getWidthD9Ej5fM(j3) / 2.0f), 0.0f, 2, null);
                        }
                        j4 = jM9133copyDwJknco$default;
                    } else {
                        j4 = j3;
                    }
                    SpacerKt.Spacer(BackgroundKt.m1288backgroundbw27NRU(HoverableKt.hoverable$default(SizeKt.m2100size6HolHcs(modifier2, j4), mutableInteractionSource, false, 2, null), sliderColors2.m3881thumbColorvNxB06k$material3(z2), ShapesKt.getValue(SliderTokens.INSTANCE.getHandleShape(), composerStartRestartGroup, 6)), composerStartRestartGroup, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j2 = j3;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    j2 = j;
                }
                modifier3 = modifier2;
                sliderColors3 = sliderColors2;
                z4 = z2;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: f28
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SliderDefaults.Thumb_HwbPF3A$lambda$6(this.b, mutableInteractionSource, sliderState, modifier3, sliderColors3, z4, j2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            z2 = z;
            i8 = i2 & 32;
            if (i8 != 0) {
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((196608 & i) == 0) {
                if (composerStartRestartGroup.changed(j)) {
                    i9 = 131072;
                } else {
                    i9 = 65536;
                }
                i3 |= i9;
            }
            if ((i2 & 64) != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i10 = 1048576;
                } else {
                    i10 = 524288;
                }
                i3 |= i10;
            }
            if ((i3 & 599187) != 599186) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 8) != 0) {
                        SliderColors sliderColorsColors6 = colors(composerStartRestartGroup, (i3 >> 18) & 14);
                        i3 &= -7169;
                        sliderColors2 = sliderColorsColors6;
                    }
                    if (i6 != 0) {
                        z2 = true;
                    }
                    if (i8 != 0) {
                        j3 = SliderKt.ThumbSize;
                    } else {
                        j3 = j;
                    }
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 8) != 0) {
                        SliderColors sliderColorsColors7 = colors(composerStartRestartGroup, (i3 >> 18) & 14);
                        i3 &= -7169;
                        sliderColors2 = sliderColorsColors7;
                    }
                    if (i6 != 0) {
                        z2 = true;
                    }
                    if (i8 != 0) {
                        j3 = SliderKt.ThumbSize;
                    } else {
                        j3 = j;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-889714565, i3, -1, "androidx.compose.material3.SliderDefaults.Thumb (Slider.kt:1265)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = SnapshotStateKt.mutableStateListOf();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                snapshotStateList = (SnapshotStateList) objRememberedValue;
                int i16 = i3 & 14;
                if (i16 == 4) {
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z5) {
                    objRememberedValue2 = new SliderDefaults$Thumb$3$1(mutableInteractionSource, snapshotStateList, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = new SliderDefaults$Thumb$3$1(mutableInteractionSource, snapshotStateList, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                EffectsKt.LaunchedEffect(mutableInteractionSource, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue2, composerStartRestartGroup, i16);
                if (snapshotStateList.isEmpty()) {
                    if (sliderState2.getOrientation$material3() == Orientation.Vertical) {
                        jM9133copyDwJknco$default = DpSize.m9133copyDwJknco$default(j3, 0.0f, Dp.m9042constructorimpl(DpSize.m9138getHeightD9Ej5fM(j3) / 2.0f), 1, null);
                    } else {
                        jM9133copyDwJknco$default = DpSize.m9133copyDwJknco$default(j3, Dp.m9042constructorimpl(DpSize.m9140getWidthD9Ej5fM(j3) / 2.0f), 0.0f, 2, null);
                    }
                    j4 = jM9133copyDwJknco$default;
                } else {
                    j4 = j3;
                }
                SpacerKt.Spacer(BackgroundKt.m1288backgroundbw27NRU(HoverableKt.hoverable$default(SizeKt.m2100size6HolHcs(modifier2, j4), mutableInteractionSource, false, 2, null), sliderColors2.m3881thumbColorvNxB06k$material3(z2), ShapesKt.getValue(SliderTokens.INSTANCE.getHandleShape(), composerStartRestartGroup, 6)), composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j2 = j3;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                j2 = j;
            }
            modifier3 = modifier2;
            sliderColors3 = sliderColors2;
            z4 = z2;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: f28
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SliderDefaults.Thumb_HwbPF3A$lambda$6(this.b, mutableInteractionSource, sliderState, modifier3, sliderColors3, z4, j2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        sliderState2 = sliderState;
        i4 = i2 & 4;
        if (i4 != 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                modifier2 = modifier;
                if (composerStartRestartGroup.changed(modifier2)) {
                    i5 = 256;
                } else {
                    i5 = 128;
                }
                i3 |= i5;
            }
            if ((i & 3072) == 0) {
                if ((i2 & 8) == 0) {
                    sliderColors2 = sliderColors;
                    if (composerStartRestartGroup.changed(sliderColors2)) {
                    }
                    i3 |= i11;
                } else {
                    sliderColors2 = sliderColors;
                }
                i3 |= i11;
            } else {
                sliderColors2 = sliderColors;
            }
            i6 = i2 & 16;
            if (i6 != 0) {
                if ((i & 24576) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 32;
                if (i8 != 0) {
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((196608 & i) == 0) {
                    if (composerStartRestartGroup.changed(j)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i3 |= i9;
                }
                if ((i2 & 64) != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i3 |= i10;
                }
                if ((i3 & 599187) != 599186) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 8) != 0) {
                            SliderColors sliderColorsColors8 = colors(composerStartRestartGroup, (i3 >> 18) & 14);
                            i3 &= -7169;
                            sliderColors2 = sliderColorsColors8;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if (i8 != 0) {
                            j3 = SliderKt.ThumbSize;
                        } else {
                            j3 = j;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 8) != 0) {
                            SliderColors sliderColorsColors9 = colors(composerStartRestartGroup, (i3 >> 18) & 14);
                            i3 &= -7169;
                            sliderColors2 = sliderColorsColors9;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if (i8 != 0) {
                            j3 = SliderKt.ThumbSize;
                        } else {
                            j3 = j;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-889714565, i3, -1, "androidx.compose.material3.SliderDefaults.Thumb (Slider.kt:1265)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = SnapshotStateKt.mutableStateListOf();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    snapshotStateList = (SnapshotStateList) objRememberedValue;
                    int i17 = i3 & 14;
                    if (i17 == 4) {
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        objRememberedValue2 = new SliderDefaults$Thumb$3$1(mutableInteractionSource, snapshotStateList, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new SliderDefaults$Thumb$3$1(mutableInteractionSource, snapshotStateList, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    EffectsKt.LaunchedEffect(mutableInteractionSource, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue2, composerStartRestartGroup, i17);
                    if (snapshotStateList.isEmpty()) {
                        if (sliderState2.getOrientation$material3() == Orientation.Vertical) {
                            jM9133copyDwJknco$default = DpSize.m9133copyDwJknco$default(j3, 0.0f, Dp.m9042constructorimpl(DpSize.m9138getHeightD9Ej5fM(j3) / 2.0f), 1, null);
                        } else {
                            jM9133copyDwJknco$default = DpSize.m9133copyDwJknco$default(j3, Dp.m9042constructorimpl(DpSize.m9140getWidthD9Ej5fM(j3) / 2.0f), 0.0f, 2, null);
                        }
                        j4 = jM9133copyDwJknco$default;
                    } else {
                        j4 = j3;
                    }
                    SpacerKt.Spacer(BackgroundKt.m1288backgroundbw27NRU(HoverableKt.hoverable$default(SizeKt.m2100size6HolHcs(modifier2, j4), mutableInteractionSource, false, 2, null), sliderColors2.m3881thumbColorvNxB06k$material3(z2), ShapesKt.getValue(SliderTokens.INSTANCE.getHandleShape(), composerStartRestartGroup, 6)), composerStartRestartGroup, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j2 = j3;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    j2 = j;
                }
                modifier3 = modifier2;
                sliderColors3 = sliderColors2;
                z4 = z2;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: f28
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SliderDefaults.Thumb_HwbPF3A$lambda$6(this.b, mutableInteractionSource, sliderState, modifier3, sliderColors3, z4, j2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            z2 = z;
            i8 = i2 & 32;
            if (i8 != 0) {
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((196608 & i) == 0) {
                if (composerStartRestartGroup.changed(j)) {
                    i9 = 131072;
                } else {
                    i9 = 65536;
                }
                i3 |= i9;
            }
            if ((i2 & 64) != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i10 = 1048576;
                } else {
                    i10 = 524288;
                }
                i3 |= i10;
            }
            if ((i3 & 599187) != 599186) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 8) != 0) {
                        SliderColors sliderColorsColors10 = colors(composerStartRestartGroup, (i3 >> 18) & 14);
                        i3 &= -7169;
                        sliderColors2 = sliderColorsColors10;
                    }
                    if (i6 != 0) {
                        z2 = true;
                    }
                    if (i8 != 0) {
                        j3 = SliderKt.ThumbSize;
                    } else {
                        j3 = j;
                    }
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 8) != 0) {
                        SliderColors sliderColorsColors11 = colors(composerStartRestartGroup, (i3 >> 18) & 14);
                        i3 &= -7169;
                        sliderColors2 = sliderColorsColors11;
                    }
                    if (i6 != 0) {
                        z2 = true;
                    }
                    if (i8 != 0) {
                        j3 = SliderKt.ThumbSize;
                    } else {
                        j3 = j;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-889714565, i3, -1, "androidx.compose.material3.SliderDefaults.Thumb (Slider.kt:1265)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = SnapshotStateKt.mutableStateListOf();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                snapshotStateList = (SnapshotStateList) objRememberedValue;
                int i18 = i3 & 14;
                if (i18 == 4) {
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z5) {
                    objRememberedValue2 = new SliderDefaults$Thumb$3$1(mutableInteractionSource, snapshotStateList, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = new SliderDefaults$Thumb$3$1(mutableInteractionSource, snapshotStateList, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                EffectsKt.LaunchedEffect(mutableInteractionSource, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue2, composerStartRestartGroup, i18);
                if (snapshotStateList.isEmpty()) {
                    if (sliderState2.getOrientation$material3() == Orientation.Vertical) {
                        jM9133copyDwJknco$default = DpSize.m9133copyDwJknco$default(j3, 0.0f, Dp.m9042constructorimpl(DpSize.m9138getHeightD9Ej5fM(j3) / 2.0f), 1, null);
                    } else {
                        jM9133copyDwJknco$default = DpSize.m9133copyDwJknco$default(j3, Dp.m9042constructorimpl(DpSize.m9140getWidthD9Ej5fM(j3) / 2.0f), 0.0f, 2, null);
                    }
                    j4 = jM9133copyDwJknco$default;
                } else {
                    j4 = j3;
                }
                SpacerKt.Spacer(BackgroundKt.m1288backgroundbw27NRU(HoverableKt.hoverable$default(SizeKt.m2100size6HolHcs(modifier2, j4), mutableInteractionSource, false, 2, null), sliderColors2.m3881thumbColorvNxB06k$material3(z2), ShapesKt.getValue(SliderTokens.INSTANCE.getHandleShape(), composerStartRestartGroup, 6)), composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j2 = j3;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                j2 = j;
            }
            modifier3 = modifier2;
            sliderColors3 = sliderColors2;
            z4 = z2;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: f28
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SliderDefaults.Thumb_HwbPF3A$lambda$6(this.b, mutableInteractionSource, sliderState, modifier3, sliderColors3, z4, j2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        modifier2 = modifier;
        if ((i & 3072) == 0) {
            if ((i2 & 8) == 0) {
                sliderColors2 = sliderColors;
                if (composerStartRestartGroup.changed(sliderColors2)) {
                }
                i3 |= i11;
            } else {
                sliderColors2 = sliderColors;
            }
            i3 |= i11;
        } else {
            sliderColors2 = sliderColors;
        }
        i6 = i2 & 16;
        if (i6 != 0) {
            if ((i & 24576) == 0) {
                z2 = z;
                if (composerStartRestartGroup.changed(z2)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i3 |= i7;
            }
            i8 = i2 & 32;
            if (i8 != 0) {
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((196608 & i) == 0) {
                if (composerStartRestartGroup.changed(j)) {
                    i9 = 131072;
                } else {
                    i9 = 65536;
                }
                i3 |= i9;
            }
            if ((i2 & 64) != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i10 = 1048576;
                } else {
                    i10 = 524288;
                }
                i3 |= i10;
            }
            if ((i3 & 599187) != 599186) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 8) != 0) {
                        SliderColors sliderColorsColors12 = colors(composerStartRestartGroup, (i3 >> 18) & 14);
                        i3 &= -7169;
                        sliderColors2 = sliderColorsColors12;
                    }
                    if (i6 != 0) {
                        z2 = true;
                    }
                    if (i8 != 0) {
                        j3 = SliderKt.ThumbSize;
                    } else {
                        j3 = j;
                    }
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 8) != 0) {
                        SliderColors sliderColorsColors13 = colors(composerStartRestartGroup, (i3 >> 18) & 14);
                        i3 &= -7169;
                        sliderColors2 = sliderColorsColors13;
                    }
                    if (i6 != 0) {
                        z2 = true;
                    }
                    if (i8 != 0) {
                        j3 = SliderKt.ThumbSize;
                    } else {
                        j3 = j;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-889714565, i3, -1, "androidx.compose.material3.SliderDefaults.Thumb (Slider.kt:1265)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = SnapshotStateKt.mutableStateListOf();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                snapshotStateList = (SnapshotStateList) objRememberedValue;
                int i19 = i3 & 14;
                if (i19 == 4) {
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z5) {
                    objRememberedValue2 = new SliderDefaults$Thumb$3$1(mutableInteractionSource, snapshotStateList, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = new SliderDefaults$Thumb$3$1(mutableInteractionSource, snapshotStateList, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                EffectsKt.LaunchedEffect(mutableInteractionSource, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue2, composerStartRestartGroup, i19);
                if (snapshotStateList.isEmpty()) {
                    if (sliderState2.getOrientation$material3() == Orientation.Vertical) {
                        jM9133copyDwJknco$default = DpSize.m9133copyDwJknco$default(j3, 0.0f, Dp.m9042constructorimpl(DpSize.m9138getHeightD9Ej5fM(j3) / 2.0f), 1, null);
                    } else {
                        jM9133copyDwJknco$default = DpSize.m9133copyDwJknco$default(j3, Dp.m9042constructorimpl(DpSize.m9140getWidthD9Ej5fM(j3) / 2.0f), 0.0f, 2, null);
                    }
                    j4 = jM9133copyDwJknco$default;
                } else {
                    j4 = j3;
                }
                SpacerKt.Spacer(BackgroundKt.m1288backgroundbw27NRU(HoverableKt.hoverable$default(SizeKt.m2100size6HolHcs(modifier2, j4), mutableInteractionSource, false, 2, null), sliderColors2.m3881thumbColorvNxB06k$material3(z2), ShapesKt.getValue(SliderTokens.INSTANCE.getHandleShape(), composerStartRestartGroup, 6)), composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j2 = j3;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                j2 = j;
            }
            modifier3 = modifier2;
            sliderColors3 = sliderColors2;
            z4 = z2;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: f28
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SliderDefaults.Thumb_HwbPF3A$lambda$6(this.b, mutableInteractionSource, sliderState, modifier3, sliderColors3, z4, j2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        z2 = z;
        i8 = i2 & 32;
        if (i8 != 0) {
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((196608 & i) == 0) {
            if (composerStartRestartGroup.changed(j)) {
                i9 = 131072;
            } else {
                i9 = 65536;
            }
            i3 |= i9;
        }
        if ((i2 & 64) != 0) {
            i3 |= 1572864;
        } else if ((i & 1572864) == 0) {
            if (composerStartRestartGroup.changed(this)) {
                i10 = 1048576;
            } else {
                i10 = 524288;
            }
            i3 |= i10;
        }
        if ((i3 & 599187) != 599186) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i4 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if ((i2 & 8) != 0) {
                    SliderColors sliderColorsColors14 = colors(composerStartRestartGroup, (i3 >> 18) & 14);
                    i3 &= -7169;
                    sliderColors2 = sliderColorsColors14;
                }
                if (i6 != 0) {
                    z2 = true;
                }
                if (i8 != 0) {
                    j3 = SliderKt.ThumbSize;
                } else {
                    j3 = j;
                }
            } else {
                if (i4 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if ((i2 & 8) != 0) {
                    SliderColors sliderColorsColors15 = colors(composerStartRestartGroup, (i3 >> 18) & 14);
                    i3 &= -7169;
                    sliderColors2 = sliderColorsColors15;
                }
                if (i6 != 0) {
                    z2 = true;
                }
                if (i8 != 0) {
                    j3 = SliderKt.ThumbSize;
                } else {
                    j3 = j;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-889714565, i3, -1, "androidx.compose.material3.SliderDefaults.Thumb (Slider.kt:1265)");
            }
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = SnapshotStateKt.mutableStateListOf();
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            snapshotStateList = (SnapshotStateList) objRememberedValue;
            int i110 = i3 & 14;
            if (i110 == 4) {
            }
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (z5) {
                objRememberedValue2 = new SliderDefaults$Thumb$3$1(mutableInteractionSource, snapshotStateList, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            } else {
                objRememberedValue2 = new SliderDefaults$Thumb$3$1(mutableInteractionSource, snapshotStateList, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            EffectsKt.LaunchedEffect(mutableInteractionSource, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue2, composerStartRestartGroup, i110);
            if (snapshotStateList.isEmpty()) {
                if (sliderState2.getOrientation$material3() == Orientation.Vertical) {
                    jM9133copyDwJknco$default = DpSize.m9133copyDwJknco$default(j3, 0.0f, Dp.m9042constructorimpl(DpSize.m9138getHeightD9Ej5fM(j3) / 2.0f), 1, null);
                } else {
                    jM9133copyDwJknco$default = DpSize.m9133copyDwJknco$default(j3, Dp.m9042constructorimpl(DpSize.m9140getWidthD9Ej5fM(j3) / 2.0f), 0.0f, 2, null);
                }
                j4 = jM9133copyDwJknco$default;
            } else {
                j4 = j3;
            }
            SpacerKt.Spacer(BackgroundKt.m1288backgroundbw27NRU(HoverableKt.hoverable$default(SizeKt.m2100size6HolHcs(modifier2, j4), mutableInteractionSource, false, 2, null), sliderColors2.m3881thumbColorvNxB06k$material3(z2), ShapesKt.getValue(SliderTokens.INSTANCE.getHandleShape(), composerStartRestartGroup, 6)), composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            j2 = j3;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            j2 = j;
        }
        modifier3 = modifier2;
        sliderColors3 = sliderColors2;
        z4 = z2;
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: f28
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return SliderDefaults.Thumb_HwbPF3A$lambda$6(this.b, mutableInteractionSource, sliderState, modifier3, sliderColors3, z4, j2, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x016e  */
    /* JADX WARN: Code duplicated, block: B:104:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0047  */
    /* JADX WARN: Code duplicated, block: B:28:0x004b  */
    /* JADX WARN: Code duplicated, block: B:30:0x0053  */
    /* JADX WARN: Code duplicated, block: B:31:0x0056  */
    /* JADX WARN: Code duplicated, block: B:34:0x005c  */
    /* JADX WARN: Code duplicated, block: B:37:0x0062  */
    /* JADX WARN: Code duplicated, block: B:39:0x0067  */
    /* JADX WARN: Code duplicated, block: B:41:0x006b  */
    /* JADX WARN: Code duplicated, block: B:43:0x0073  */
    /* JADX WARN: Code duplicated, block: B:44:0x0076  */
    /* JADX WARN: Code duplicated, block: B:48:0x007d  */
    /* JADX WARN: Code duplicated, block: B:49:0x0080  */
    /* JADX WARN: Code duplicated, block: B:51:0x0084  */
    /* JADX WARN: Code duplicated, block: B:53:0x008a  */
    /* JADX WARN: Code duplicated, block: B:54:0x008d  */
    /* JADX WARN: Code duplicated, block: B:58:0x0098  */
    /* JADX WARN: Code duplicated, block: B:59:0x009a  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:64:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:71:0x00be A[PHI: r3 r5 r8
      0x00be: PHI (r3v23 androidx.compose.material3.SliderColors) = (r3v19 androidx.compose.material3.SliderColors), (r3v25 androidx.compose.material3.SliderColors) binds: [B:79:0x00d8, B:70:0x00ba] A[DONT_GENERATE, DONT_INLINE]
      0x00be: PHI (r5v8 androidx.compose.ui.Modifier) = (r5v4 androidx.compose.ui.Modifier), (r5v11 androidx.compose.ui.Modifier) binds: [B:79:0x00d8, B:70:0x00ba] A[DONT_GENERATE, DONT_INLINE]
      0x00be: PHI (r8v13 int) = (r8v9 int), (r8v14 int) binds: [B:79:0x00d8, B:70:0x00ba] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:72:0x00c0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:77:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:80:0x00da  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:86:0x011d  */
    /* JADX WARN: Code duplicated, block: B:87:0x011f  */
    /* JADX WARN: Code duplicated, block: B:90:0x0137  */
    /* JADX WARN: Code duplicated, block: B:92:0x013f  */
    /* JADX WARN: Code duplicated, block: B:97:0x015b  */
    /* JADX WARN: Code duplicated, block: B:99:0x0162  */
    @ul2
    public final void Track(final SliderPositions sliderPositions, Modifier modifier, SliderColors sliderColors, boolean z, Composer composer, final int i, final int i2) {
        final SliderPositions sliderPositions2;
        int i3;
        Modifier modifier2;
        SliderColors sliderColors2;
        int i4;
        boolean z2;
        int i5;
        int i6;
        boolean z3;
        final Modifier modifier3;
        final SliderColors sliderColors3;
        final boolean z4;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        int i7;
        SliderColors sliderColors4;
        boolean z5;
        int i8;
        final long jM3883trackColorWaAFU9c$material3;
        final long jM3883trackColorWaAFU9c$material4;
        final long jM3882tickColorWaAFU9c$material3;
        final long jM3882tickColorWaAFU9c$material4;
        boolean z6;
        boolean zChanged;
        Object objRememberedValue;
        boolean z7;
        int i9;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1546713545);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
            sliderPositions2 = sliderPositions;
        } else {
            sliderPositions2 = sliderPositions;
            if ((i & 6) == 0) {
                i3 = (composerStartRestartGroup.changed(sliderPositions2) ? 4 : 2) | i;
            } else {
                i3 = i;
            }
        }
        int i10 = i2 & 2;
        if (i10 == 0) {
            if ((i & 48) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if ((i2 & 4) == 0) {
                    sliderColors2 = sliderColors;
                    int i11 = composerStartRestartGroup.changed(sliderColors2) ? 256 : 128;
                    i3 |= i11;
                } else {
                    sliderColors2 = sliderColors;
                }
                i3 |= i11;
            } else {
                sliderColors2 = sliderColors;
            }
            i4 = i2 & 8;
            if (i4 != 0) {
                if ((i & 3072) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i5 = 2048;
                    } else {
                        i5 = 1024;
                    }
                    i3 |= i5;
                }
                if ((i2 & 16) != 0) {
                    i3 |= 24576;
                } else if ((i & 24576) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i6 = 16384;
                    } else {
                        i6 = 8192;
                    }
                    i3 |= i6;
                }
                if ((i3 & 9363) != 9362) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                        if (i10 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i2 & 4) != 0) {
                            SliderColors sliderColorsColors = colors(composerStartRestartGroup, (i3 >> 12) & 14);
                            i3 &= -897;
                            sliderColors2 = sliderColorsColors;
                        }
                        SliderColors sliderColors5 = sliderColors2;
                        i7 = i3;
                        sliderColors4 = sliderColors5;
                        if (i4 != 0) {
                            z5 = true;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1546713545, i7, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1318)");
                        }
                        i8 = i7;
                        jM3883trackColorWaAFU9c$material3 = sliderColors4.m3883trackColorWaAFU9c$material3(z5, false);
                        jM3883trackColorWaAFU9c$material4 = sliderColors4.m3883trackColorWaAFU9c$material3(z5, true);
                        jM3882tickColorWaAFU9c$material3 = sliderColors4.m3882tickColorWaAFU9c$material3(z5, false);
                        jM3882tickColorWaAFU9c$material4 = sliderColors4.m3882tickColorWaAFU9c$material3(z5, true);
                        SliderColors sliderColors6 = sliderColors4;
                        modifier3 = modifier4;
                        Modifier modifierM2085height3ABfNKs = SizeKt.m2085height3ABfNKs(SizeKt.fillMaxWidth$default(modifier3, 0.0f, 1, null), SliderKt.getTrackHeight());
                        boolean zChanged2 = composerStartRestartGroup.changed(jM3883trackColorWaAFU9c$material3);
                        if ((i8 & 14) == 4) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        zChanged = zChanged2 | z6 | composerStartRestartGroup.changed(jM3883trackColorWaAFU9c$material4) | composerStartRestartGroup.changed(jM3882tickColorWaAFU9c$material3) | composerStartRestartGroup.changed(jM3882tickColorWaAFU9c$material4);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (!zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                            z7 = z5;
                            i9 = 0;
                            nl3 nl3Var = new nl3() { // from class: y28
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return SliderDefaults.Track$lambda$11$lambda$10(jM3883trackColorWaAFU9c$material3, sliderPositions2, jM3883trackColorWaAFU9c$material4, jM3882tickColorWaAFU9c$material3, jM3882tickColorWaAFU9c$material4, (DrawScope) obj);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(nl3Var);
                            objRememberedValue = nl3Var;
                        } else {
                            z7 = z5;
                            i9 = 0;
                        }
                        CanvasKt.Canvas(modifierM2085height3ABfNKs, (nl3) objRememberedValue, composerStartRestartGroup, i9);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        sliderColors3 = sliderColors6;
                        z4 = z7;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                        }
                        SliderColors sliderColors7 = sliderColors2;
                        i7 = i3;
                        sliderColors4 = sliderColors7;
                        modifier4 = modifier2;
                    }
                    z5 = z2;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1546713545, i7, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1318)");
                    }
                    i8 = i7;
                    jM3883trackColorWaAFU9c$material3 = sliderColors4.m3883trackColorWaAFU9c$material3(z5, false);
                    jM3883trackColorWaAFU9c$material4 = sliderColors4.m3883trackColorWaAFU9c$material3(z5, true);
                    jM3882tickColorWaAFU9c$material3 = sliderColors4.m3882tickColorWaAFU9c$material3(z5, false);
                    jM3882tickColorWaAFU9c$material4 = sliderColors4.m3882tickColorWaAFU9c$material3(z5, true);
                    SliderColors sliderColors8 = sliderColors4;
                    modifier3 = modifier4;
                    Modifier modifierM2085height3ABfNKs2 = SizeKt.m2085height3ABfNKs(SizeKt.fillMaxWidth$default(modifier3, 0.0f, 1, null), SliderKt.getTrackHeight());
                    boolean zChanged3 = composerStartRestartGroup.changed(jM3883trackColorWaAFU9c$material3);
                    if ((i8 & 14) == 4) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    zChanged = zChanged3 | z6 | composerStartRestartGroup.changed(jM3883trackColorWaAFU9c$material4) | composerStartRestartGroup.changed(jM3882tickColorWaAFU9c$material3) | composerStartRestartGroup.changed(jM3882tickColorWaAFU9c$material4);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        z7 = z5;
                        i9 = 0;
                        nl3 nl3Var2 = new nl3() { // from class: y28
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return SliderDefaults.Track$lambda$11$lambda$10(jM3883trackColorWaAFU9c$material3, sliderPositions2, jM3883trackColorWaAFU9c$material4, jM3882tickColorWaAFU9c$material3, jM3882tickColorWaAFU9c$material4, (DrawScope) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(nl3Var2);
                        objRememberedValue = nl3Var2;
                    } else {
                        z7 = z5;
                        i9 = 0;
                        nl3 nl3Var3 = new nl3() { // from class: y28
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return SliderDefaults.Track$lambda$11$lambda$10(jM3883trackColorWaAFU9c$material3, sliderPositions2, jM3883trackColorWaAFU9c$material4, jM3882tickColorWaAFU9c$material3, jM3882tickColorWaAFU9c$material4, (DrawScope) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(nl3Var3);
                        objRememberedValue = nl3Var3;
                    }
                    CanvasKt.Canvas(modifierM2085height3ABfNKs2, (nl3) objRememberedValue, composerStartRestartGroup, i9);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    sliderColors3 = sliderColors8;
                    z4 = z7;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    sliderColors3 = sliderColors2;
                    z4 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: e28
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SliderDefaults.Track$lambda$12(this.b, sliderPositions, modifier3, sliderColors3, z4, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            z2 = z;
            if ((i2 & 16) != 0) {
                i3 |= 24576;
            } else if ((i & 24576) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i3 |= i6;
            }
            if ((i3 & 9363) != 9362) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i10 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 4) != 0) {
                        SliderColors sliderColorsColors2 = colors(composerStartRestartGroup, (i3 >> 12) & 14);
                        i3 &= -897;
                        sliderColors2 = sliderColorsColors2;
                    }
                    SliderColors sliderColors9 = sliderColors2;
                    i7 = i3;
                    sliderColors4 = sliderColors9;
                    if (i4 != 0) {
                        z5 = true;
                    } else {
                        z5 = z2;
                    }
                } else {
                    if (i10 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 4) != 0) {
                        SliderColors sliderColorsColors3 = colors(composerStartRestartGroup, (i3 >> 12) & 14);
                        i3 &= -897;
                        sliderColors2 = sliderColorsColors3;
                    }
                    SliderColors sliderColors10 = sliderColors2;
                    i7 = i3;
                    sliderColors4 = sliderColors10;
                    if (i4 != 0) {
                        z5 = true;
                    } else {
                        z5 = z2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1546713545, i7, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1318)");
                }
                i8 = i7;
                jM3883trackColorWaAFU9c$material3 = sliderColors4.m3883trackColorWaAFU9c$material3(z5, false);
                jM3883trackColorWaAFU9c$material4 = sliderColors4.m3883trackColorWaAFU9c$material3(z5, true);
                jM3882tickColorWaAFU9c$material3 = sliderColors4.m3882tickColorWaAFU9c$material3(z5, false);
                jM3882tickColorWaAFU9c$material4 = sliderColors4.m3882tickColorWaAFU9c$material3(z5, true);
                SliderColors sliderColors11 = sliderColors4;
                modifier3 = modifier4;
                Modifier modifierM2085height3ABfNKs3 = SizeKt.m2085height3ABfNKs(SizeKt.fillMaxWidth$default(modifier3, 0.0f, 1, null), SliderKt.getTrackHeight());
                boolean zChanged4 = composerStartRestartGroup.changed(jM3883trackColorWaAFU9c$material3);
                if ((i8 & 14) == 4) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                zChanged = zChanged4 | z6 | composerStartRestartGroup.changed(jM3883trackColorWaAFU9c$material4) | composerStartRestartGroup.changed(jM3882tickColorWaAFU9c$material3) | composerStartRestartGroup.changed(jM3882tickColorWaAFU9c$material4);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    z7 = z5;
                    i9 = 0;
                    nl3 nl3Var4 = new nl3() { // from class: y28
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return SliderDefaults.Track$lambda$11$lambda$10(jM3883trackColorWaAFU9c$material3, sliderPositions2, jM3883trackColorWaAFU9c$material4, jM3882tickColorWaAFU9c$material3, jM3882tickColorWaAFU9c$material4, (DrawScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(nl3Var4);
                    objRememberedValue = nl3Var4;
                } else {
                    z7 = z5;
                    i9 = 0;
                    nl3 nl3Var5 = new nl3() { // from class: y28
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return SliderDefaults.Track$lambda$11$lambda$10(jM3883trackColorWaAFU9c$material3, sliderPositions2, jM3883trackColorWaAFU9c$material4, jM3882tickColorWaAFU9c$material3, jM3882tickColorWaAFU9c$material4, (DrawScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(nl3Var5);
                    objRememberedValue = nl3Var5;
                }
                CanvasKt.Canvas(modifierM2085height3ABfNKs3, (nl3) objRememberedValue, composerStartRestartGroup, i9);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                sliderColors3 = sliderColors11;
                z4 = z7;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                sliderColors3 = sliderColors2;
                z4 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: e28
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SliderDefaults.Track$lambda$12(this.b, sliderPositions, modifier3, sliderColors3, z4, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        modifier2 = modifier;
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i2 & 4) == 0) {
                sliderColors2 = sliderColors;
                if (composerStartRestartGroup.changed(sliderColors2)) {
                }
                i3 |= i11;
            } else {
                sliderColors2 = sliderColors;
            }
            i3 |= i11;
        } else {
            sliderColors2 = sliderColors;
        }
        i4 = i2 & 8;
        if (i4 != 0) {
            if ((i & 3072) == 0) {
                z2 = z;
                if (composerStartRestartGroup.changed(z2)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i3 |= i5;
            }
            if ((i2 & 16) != 0) {
                i3 |= 24576;
            } else if ((i & 24576) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i3 |= i6;
            }
            if ((i3 & 9363) != 9362) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i10 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 4) != 0) {
                        SliderColors sliderColorsColors4 = colors(composerStartRestartGroup, (i3 >> 12) & 14);
                        i3 &= -897;
                        sliderColors2 = sliderColorsColors4;
                    }
                    SliderColors sliderColors12 = sliderColors2;
                    i7 = i3;
                    sliderColors4 = sliderColors12;
                    if (i4 != 0) {
                        z5 = true;
                    } else {
                        z5 = z2;
                    }
                } else {
                    if (i10 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 4) != 0) {
                        SliderColors sliderColorsColors5 = colors(composerStartRestartGroup, (i3 >> 12) & 14);
                        i3 &= -897;
                        sliderColors2 = sliderColorsColors5;
                    }
                    SliderColors sliderColors13 = sliderColors2;
                    i7 = i3;
                    sliderColors4 = sliderColors13;
                    if (i4 != 0) {
                        z5 = true;
                    } else {
                        z5 = z2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1546713545, i7, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1318)");
                }
                i8 = i7;
                jM3883trackColorWaAFU9c$material3 = sliderColors4.m3883trackColorWaAFU9c$material3(z5, false);
                jM3883trackColorWaAFU9c$material4 = sliderColors4.m3883trackColorWaAFU9c$material3(z5, true);
                jM3882tickColorWaAFU9c$material3 = sliderColors4.m3882tickColorWaAFU9c$material3(z5, false);
                jM3882tickColorWaAFU9c$material4 = sliderColors4.m3882tickColorWaAFU9c$material3(z5, true);
                SliderColors sliderColors14 = sliderColors4;
                modifier3 = modifier4;
                Modifier modifierM2085height3ABfNKs4 = SizeKt.m2085height3ABfNKs(SizeKt.fillMaxWidth$default(modifier3, 0.0f, 1, null), SliderKt.getTrackHeight());
                boolean zChanged5 = composerStartRestartGroup.changed(jM3883trackColorWaAFU9c$material3);
                if ((i8 & 14) == 4) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                zChanged = zChanged5 | z6 | composerStartRestartGroup.changed(jM3883trackColorWaAFU9c$material4) | composerStartRestartGroup.changed(jM3882tickColorWaAFU9c$material3) | composerStartRestartGroup.changed(jM3882tickColorWaAFU9c$material4);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    z7 = z5;
                    i9 = 0;
                    nl3 nl3Var6 = new nl3() { // from class: y28
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return SliderDefaults.Track$lambda$11$lambda$10(jM3883trackColorWaAFU9c$material3, sliderPositions2, jM3883trackColorWaAFU9c$material4, jM3882tickColorWaAFU9c$material3, jM3882tickColorWaAFU9c$material4, (DrawScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(nl3Var6);
                    objRememberedValue = nl3Var6;
                } else {
                    z7 = z5;
                    i9 = 0;
                    nl3 nl3Var7 = new nl3() { // from class: y28
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return SliderDefaults.Track$lambda$11$lambda$10(jM3883trackColorWaAFU9c$material3, sliderPositions2, jM3883trackColorWaAFU9c$material4, jM3882tickColorWaAFU9c$material3, jM3882tickColorWaAFU9c$material4, (DrawScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(nl3Var7);
                    objRememberedValue = nl3Var7;
                }
                CanvasKt.Canvas(modifierM2085height3ABfNKs4, (nl3) objRememberedValue, composerStartRestartGroup, i9);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                sliderColors3 = sliderColors14;
                z4 = z7;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                sliderColors3 = sliderColors2;
                z4 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: e28
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SliderDefaults.Track$lambda$12(this.b, sliderPositions, modifier3, sliderColors3, z4, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        z2 = z;
        if ((i2 & 16) != 0) {
            i3 |= 24576;
        } else if ((i & 24576) == 0) {
            if (composerStartRestartGroup.changed(this)) {
                i6 = 16384;
            } else {
                i6 = 8192;
            }
            i3 |= i6;
        }
        if ((i3 & 9363) != 9362) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i10 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i2 & 4) != 0) {
                    SliderColors sliderColorsColors6 = colors(composerStartRestartGroup, (i3 >> 12) & 14);
                    i3 &= -897;
                    sliderColors2 = sliderColorsColors6;
                }
                SliderColors sliderColors15 = sliderColors2;
                i7 = i3;
                sliderColors4 = sliderColors15;
                if (i4 != 0) {
                    z5 = true;
                } else {
                    z5 = z2;
                }
            } else {
                if (i10 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i2 & 4) != 0) {
                    SliderColors sliderColorsColors7 = colors(composerStartRestartGroup, (i3 >> 12) & 14);
                    i3 &= -897;
                    sliderColors2 = sliderColorsColors7;
                }
                SliderColors sliderColors16 = sliderColors2;
                i7 = i3;
                sliderColors4 = sliderColors16;
                if (i4 != 0) {
                    z5 = true;
                } else {
                    z5 = z2;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1546713545, i7, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1318)");
            }
            i8 = i7;
            jM3883trackColorWaAFU9c$material3 = sliderColors4.m3883trackColorWaAFU9c$material3(z5, false);
            jM3883trackColorWaAFU9c$material4 = sliderColors4.m3883trackColorWaAFU9c$material3(z5, true);
            jM3882tickColorWaAFU9c$material3 = sliderColors4.m3882tickColorWaAFU9c$material3(z5, false);
            jM3882tickColorWaAFU9c$material4 = sliderColors4.m3882tickColorWaAFU9c$material3(z5, true);
            SliderColors sliderColors17 = sliderColors4;
            modifier3 = modifier4;
            Modifier modifierM2085height3ABfNKs5 = SizeKt.m2085height3ABfNKs(SizeKt.fillMaxWidth$default(modifier3, 0.0f, 1, null), SliderKt.getTrackHeight());
            boolean zChanged6 = composerStartRestartGroup.changed(jM3883trackColorWaAFU9c$material3);
            if ((i8 & 14) == 4) {
                z6 = true;
            } else {
                z6 = false;
            }
            zChanged = zChanged6 | z6 | composerStartRestartGroup.changed(jM3883trackColorWaAFU9c$material4) | composerStartRestartGroup.changed(jM3882tickColorWaAFU9c$material3) | composerStartRestartGroup.changed(jM3882tickColorWaAFU9c$material4);
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged) {
                z7 = z5;
                i9 = 0;
                nl3 nl3Var8 = new nl3() { // from class: y28
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return SliderDefaults.Track$lambda$11$lambda$10(jM3883trackColorWaAFU9c$material3, sliderPositions2, jM3883trackColorWaAFU9c$material4, jM3882tickColorWaAFU9c$material3, jM3882tickColorWaAFU9c$material4, (DrawScope) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(nl3Var8);
                objRememberedValue = nl3Var8;
            } else {
                z7 = z5;
                i9 = 0;
                nl3 nl3Var9 = new nl3() { // from class: y28
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return SliderDefaults.Track$lambda$11$lambda$10(jM3883trackColorWaAFU9c$material3, sliderPositions2, jM3883trackColorWaAFU9c$material4, jM3882tickColorWaAFU9c$material3, jM3882tickColorWaAFU9c$material4, (DrawScope) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(nl3Var9);
                objRememberedValue = nl3Var9;
            }
            CanvasKt.Canvas(modifierM2085height3ABfNKs5, (nl3) objRememberedValue, composerStartRestartGroup, i9);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            sliderColors3 = sliderColors17;
            z4 = z7;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            sliderColors3 = sliderColors2;
            z4 = z2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: e28
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return SliderDefaults.Track$lambda$12(this.b, sliderPositions, modifier3, sliderColors3, z4, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x011c  */
    /* JADX WARN: Code duplicated, block: B:103:0x0126  */
    /* JADX WARN: Code duplicated, block: B:105:0x0130  */
    /* JADX WARN: Code duplicated, block: B:115:0x0151 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:116:0x0153  */
    /* JADX WARN: Code duplicated, block: B:118:0x0158  */
    /* JADX WARN: Code duplicated, block: B:121:0x015e  */
    /* JADX WARN: Code duplicated, block: B:124:0x016d  */
    /* JADX WARN: Code duplicated, block: B:126:0x0175  */
    /* JADX WARN: Code duplicated, block: B:128:0x017b  */
    /* JADX WARN: Code duplicated, block: B:134:0x018a  */
    /* JADX WARN: Code duplicated, block: B:137:0x0194  */
    /* JADX WARN: Code duplicated, block: B:139:0x019c  */
    /* JADX WARN: Code duplicated, block: B:142:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:144:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:146:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:148:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:150:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:151:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:154:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:157:0x0229  */
    /* JADX WARN: Code duplicated, block: B:158:0x022d  */
    /* JADX WARN: Code duplicated, block: B:161:0x023f  */
    /* JADX WARN: Code duplicated, block: B:163:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x004c  */
    /* JADX WARN: Code duplicated, block: B:28:0x0051  */
    /* JADX WARN: Code duplicated, block: B:30:0x0055  */
    /* JADX WARN: Code duplicated, block: B:32:0x005d  */
    /* JADX WARN: Code duplicated, block: B:33:0x0060  */
    /* JADX WARN: Code duplicated, block: B:37:0x0067  */
    /* JADX WARN: Code duplicated, block: B:39:0x006b  */
    /* JADX WARN: Code duplicated, block: B:41:0x0073  */
    /* JADX WARN: Code duplicated, block: B:42:0x0076  */
    /* JADX WARN: Code duplicated, block: B:45:0x007c  */
    /* JADX WARN: Code duplicated, block: B:48:0x0082  */
    /* JADX WARN: Code duplicated, block: B:50:0x0086  */
    /* JADX WARN: Code duplicated, block: B:52:0x008e  */
    /* JADX WARN: Code duplicated, block: B:53:0x0091  */
    /* JADX WARN: Code duplicated, block: B:56:0x0097  */
    /* JADX WARN: Code duplicated, block: B:59:0x009f  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:62:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:69:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:74:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:79:0x00db  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:84:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:85:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:90:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:92:0x0100  */
    /* JADX WARN: Code duplicated, block: B:94:0x0106  */
    /* JADX WARN: Code duplicated, block: B:95:0x0109  */
    /* JADX WARN: Code duplicated, block: B:99:0x0119  */
    /* JADX INFO: renamed from: Track-4EFweAY, reason: not valid java name */
    public final void m3892Track4EFweAY(final RangeSliderState rangeSliderState, Modifier modifier, boolean z, SliderColors sliderColors, bm3<? super DrawScope, ? super Offset, j59> bm3Var, dm3<? super DrawScope, ? super Offset, ? super Color, j59> dm3Var, float f, float f2, Composer composer, final int i, final int i2) {
        int i3;
        Modifier modifier2;
        int i4;
        final boolean z2;
        int i5;
        final SliderColors sliderColors2;
        bm3<? super DrawScope, ? super Offset, j59> bm3Var2;
        int i6;
        int i7;
        int i8;
        float f3;
        int i9;
        int i10;
        int i11;
        int i12;
        boolean z3;
        final Modifier modifier3;
        final boolean z4;
        final SliderColors sliderColors3;
        final bm3<? super DrawScope, ? super Offset, j59> bm3Var3;
        final float f4;
        final float f5;
        final dm3<? super DrawScope, ? super Offset, ? super Color, j59> dm3Var2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        dm3<? super DrawScope, ? super Offset, ? super Color, j59> dm3Var3;
        int i13;
        Object objRememberedValue;
        boolean z5;
        Object objRememberedValue2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-541824132);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changedInstance(rangeSliderState) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i14 = i2 & 2;
        if (i14 == 0) {
            if ((i & 48) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            i4 = i2 & 4;
            if (i4 != 0) {
                if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i5 = 256;
                    } else {
                        i5 = 128;
                    }
                    i3 |= i5;
                }
                if ((i & 3072) == 0) {
                    if ((i2 & 8) == 0) {
                        sliderColors2 = sliderColors;
                        int i15 = composerStartRestartGroup.changed(sliderColors2) ? 2048 : 1024;
                        i3 |= i15;
                    } else {
                        sliderColors2 = sliderColors;
                    }
                    i3 |= i15;
                } else {
                    sliderColors2 = sliderColors;
                }
                if ((i & 24576) == 0) {
                    if ((i2 & 16) == 0) {
                        bm3Var2 = bm3Var;
                        int i16 = composerStartRestartGroup.changedInstance(bm3Var2) ? 16384 : 8192;
                        i3 |= i16;
                    } else {
                        bm3Var2 = bm3Var;
                    }
                    i3 |= i16;
                } else {
                    bm3Var2 = bm3Var;
                }
                i6 = i2 & 32;
                if (i6 != 0) {
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 64;
                if (i8 != 0) {
                    i3 |= 1572864;
                    f3 = f;
                } else {
                    f3 = f;
                    if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changed(f3)) {
                            i9 = 1048576;
                        } else {
                            i9 = 524288;
                        }
                        i3 |= i9;
                    }
                }
                i10 = i2 & 128;
                if (i10 != 0) {
                    i3 |= 12582912;
                } else if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(f2)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i3 |= i11;
                }
                if ((i2 & 256) != 0) {
                    i3 |= 100663296;
                } else if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i12 = 67108864;
                    } else {
                        i12 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i12;
                }
                if ((38347923 & i3) != 38347922) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 8) != 0) {
                            SliderColors sliderColorsColors = colors(composerStartRestartGroup, (i3 >> 24) & 14);
                            i3 &= -7169;
                            sliderColors2 = sliderColorsColors;
                        }
                        if ((i2 & 16) != 0) {
                            z5 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z5 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                                objRememberedValue2 = new bm3() { // from class: j28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_4EFweAY$lambda$35$lambda$34(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            bm3Var2 = (bm3) objRememberedValue2;
                            i3 = (-57345) & i3;
                        }
                        if (i6 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$12$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3901invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3901invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i8 != 0) {
                            f3 = SliderKt.ThumbTrackGapSize;
                        }
                        if (i10 != 0) {
                            z4 = z2;
                            bm3Var3 = bm3Var2;
                            f5 = f3;
                            dm3Var2 = dm3Var3;
                            i13 = i3;
                            modifier3 = modifier2;
                            sliderColors3 = sliderColors2;
                            f4 = SliderKt.TrackInsideCornerSize;
                        } else {
                            z4 = z2;
                            bm3Var3 = bm3Var2;
                            f5 = f3;
                            dm3Var2 = dm3Var3;
                            i13 = i3;
                            modifier3 = modifier2;
                            sliderColors3 = sliderColors2;
                            f4 = f2;
                        }
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        if ((i2 & 8) != 0) {
                            i3 &= -7169;
                        }
                        if ((i2 & 16) != 0) {
                            i3 &= -57345;
                        }
                        i13 = i3;
                        modifier3 = modifier2;
                        z4 = z2;
                        sliderColors3 = sliderColors2;
                        bm3Var3 = bm3Var2;
                        f4 = f2;
                        f5 = f3;
                        dm3Var2 = dm3Var;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-541824132, i13, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1734)");
                    }
                    int i17 = (i13 & 14) | 48;
                    int i18 = i13 << 3;
                    m3885TrackImplxlyIBlM(rangeSliderState, Dp.Companion.m9062getUnspecifiedD9Ej5fM(), modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f5, f4, composerStartRestartGroup, i17 | (i18 & 896) | (i18 & 7168) | (57344 & i18) | (458752 & i18) | (3670016 & i18) | (29360128 & i18) | (234881024 & i18) | (i18 & 1879048192));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    z4 = z2;
                    sliderColors3 = sliderColors2;
                    bm3Var3 = bm3Var2;
                    f4 = f2;
                    f5 = f3;
                    dm3Var2 = dm3Var;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: k28
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SliderDefaults.Track_4EFweAY$lambda$37(this.b, rangeSliderState, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f5, f4, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            z2 = z;
            if ((i & 3072) == 0) {
                if ((i2 & 8) == 0) {
                    sliderColors2 = sliderColors;
                    if (composerStartRestartGroup.changed(sliderColors2)) {
                    }
                    i3 |= i15;
                } else {
                    sliderColors2 = sliderColors;
                }
                i3 |= i15;
            } else {
                sliderColors2 = sliderColors;
            }
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    bm3Var2 = bm3Var;
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    }
                    i3 |= i16;
                } else {
                    bm3Var2 = bm3Var;
                }
                i3 |= i16;
            } else {
                bm3Var2 = bm3Var;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i3 |= i7;
            }
            i8 = i2 & 64;
            if (i8 != 0) {
                i3 |= 1572864;
                f3 = f;
            } else {
                f3 = f;
                if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(f3)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
            }
            i10 = i2 & 128;
            if (i10 != 0) {
                i3 |= 12582912;
            } else if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(f2)) {
                    i11 = 8388608;
                } else {
                    i11 = 4194304;
                }
                i3 |= i11;
            }
            if ((i2 & 256) != 0) {
                i3 |= 100663296;
            } else if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i12 = 67108864;
                } else {
                    i12 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i12;
            }
            if ((38347923 & i3) != 38347922) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 8) != 0) {
                        SliderColors sliderColorsColors2 = colors(composerStartRestartGroup, (i3 >> 24) & 14);
                        i3 &= -7169;
                        sliderColors2 = sliderColorsColors2;
                    }
                    if ((i2 & 16) != 0) {
                        z5 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z5) {
                            objRememberedValue2 = new bm3() { // from class: j28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_4EFweAY$lambda$35$lambda$34(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: j28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_4EFweAY$lambda$35$lambda$34(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        bm3Var2 = (bm3) objRememberedValue2;
                        i3 = (-57345) & i3;
                    }
                    if (i6 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$12$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3901invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3901invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i8 != 0) {
                        f3 = SliderKt.ThumbTrackGapSize;
                    }
                    if (i10 != 0) {
                        z4 = z2;
                        bm3Var3 = bm3Var2;
                        f5 = f3;
                        dm3Var2 = dm3Var3;
                        i13 = i3;
                        modifier3 = modifier2;
                        sliderColors3 = sliderColors2;
                        f4 = SliderKt.TrackInsideCornerSize;
                    } else {
                        z4 = z2;
                        bm3Var3 = bm3Var2;
                        f5 = f3;
                        dm3Var2 = dm3Var3;
                        i13 = i3;
                        modifier3 = modifier2;
                        sliderColors3 = sliderColors2;
                        f4 = f2;
                    }
                } else {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 8) != 0) {
                        SliderColors sliderColorsColors3 = colors(composerStartRestartGroup, (i3 >> 24) & 14);
                        i3 &= -7169;
                        sliderColors2 = sliderColorsColors3;
                    }
                    if ((i2 & 16) != 0) {
                        z5 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z5) {
                            objRememberedValue2 = new bm3() { // from class: j28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_4EFweAY$lambda$35$lambda$34(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: j28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_4EFweAY$lambda$35$lambda$34(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        bm3Var2 = (bm3) objRememberedValue2;
                        i3 = (-57345) & i3;
                    }
                    if (i6 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$12$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3901invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3901invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i8 != 0) {
                        f3 = SliderKt.ThumbTrackGapSize;
                    }
                    if (i10 != 0) {
                        z4 = z2;
                        bm3Var3 = bm3Var2;
                        f5 = f3;
                        dm3Var2 = dm3Var3;
                        i13 = i3;
                        modifier3 = modifier2;
                        sliderColors3 = sliderColors2;
                        f4 = SliderKt.TrackInsideCornerSize;
                    } else {
                        z4 = z2;
                        bm3Var3 = bm3Var2;
                        f5 = f3;
                        dm3Var2 = dm3Var3;
                        i13 = i3;
                        modifier3 = modifier2;
                        sliderColors3 = sliderColors2;
                        f4 = f2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-541824132, i13, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1734)");
                }
                int i19 = (i13 & 14) | 48;
                int i110 = i13 << 3;
                m3885TrackImplxlyIBlM(rangeSliderState, Dp.Companion.m9062getUnspecifiedD9Ej5fM(), modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f5, f4, composerStartRestartGroup, i19 | (i110 & 896) | (i110 & 7168) | (57344 & i110) | (458752 & i110) | (3670016 & i110) | (29360128 & i110) | (234881024 & i110) | (i110 & 1879048192));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                z4 = z2;
                sliderColors3 = sliderColors2;
                bm3Var3 = bm3Var2;
                f4 = f2;
                f5 = f3;
                dm3Var2 = dm3Var;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: k28
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SliderDefaults.Track_4EFweAY$lambda$37(this.b, rangeSliderState, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f5, f4, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        modifier2 = modifier;
        i4 = i2 & 4;
        if (i4 != 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                z2 = z;
                if (composerStartRestartGroup.changed(z2)) {
                    i5 = 256;
                } else {
                    i5 = 128;
                }
                i3 |= i5;
            }
            if ((i & 3072) == 0) {
                if ((i2 & 8) == 0) {
                    sliderColors2 = sliderColors;
                    if (composerStartRestartGroup.changed(sliderColors2)) {
                    }
                    i3 |= i15;
                } else {
                    sliderColors2 = sliderColors;
                }
                i3 |= i15;
            } else {
                sliderColors2 = sliderColors;
            }
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    bm3Var2 = bm3Var;
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    }
                    i3 |= i16;
                } else {
                    bm3Var2 = bm3Var;
                }
                i3 |= i16;
            } else {
                bm3Var2 = bm3Var;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i3 |= i7;
            }
            i8 = i2 & 64;
            if (i8 != 0) {
                i3 |= 1572864;
                f3 = f;
            } else {
                f3 = f;
                if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(f3)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
            }
            i10 = i2 & 128;
            if (i10 != 0) {
                i3 |= 12582912;
            } else if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(f2)) {
                    i11 = 8388608;
                } else {
                    i11 = 4194304;
                }
                i3 |= i11;
            }
            if ((i2 & 256) != 0) {
                i3 |= 100663296;
            } else if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i12 = 67108864;
                } else {
                    i12 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i12;
            }
            if ((38347923 & i3) != 38347922) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 8) != 0) {
                        SliderColors sliderColorsColors4 = colors(composerStartRestartGroup, (i3 >> 24) & 14);
                        i3 &= -7169;
                        sliderColors2 = sliderColorsColors4;
                    }
                    if ((i2 & 16) != 0) {
                        z5 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z5) {
                            objRememberedValue2 = new bm3() { // from class: j28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_4EFweAY$lambda$35$lambda$34(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: j28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_4EFweAY$lambda$35$lambda$34(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        bm3Var2 = (bm3) objRememberedValue2;
                        i3 = (-57345) & i3;
                    }
                    if (i6 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$12$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3901invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3901invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i8 != 0) {
                        f3 = SliderKt.ThumbTrackGapSize;
                    }
                    if (i10 != 0) {
                        z4 = z2;
                        bm3Var3 = bm3Var2;
                        f5 = f3;
                        dm3Var2 = dm3Var3;
                        i13 = i3;
                        modifier3 = modifier2;
                        sliderColors3 = sliderColors2;
                        f4 = SliderKt.TrackInsideCornerSize;
                    } else {
                        z4 = z2;
                        bm3Var3 = bm3Var2;
                        f5 = f3;
                        dm3Var2 = dm3Var3;
                        i13 = i3;
                        modifier3 = modifier2;
                        sliderColors3 = sliderColors2;
                        f4 = f2;
                    }
                } else {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 8) != 0) {
                        SliderColors sliderColorsColors5 = colors(composerStartRestartGroup, (i3 >> 24) & 14);
                        i3 &= -7169;
                        sliderColors2 = sliderColorsColors5;
                    }
                    if ((i2 & 16) != 0) {
                        z5 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z5) {
                            objRememberedValue2 = new bm3() { // from class: j28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_4EFweAY$lambda$35$lambda$34(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: j28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_4EFweAY$lambda$35$lambda$34(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        bm3Var2 = (bm3) objRememberedValue2;
                        i3 = (-57345) & i3;
                    }
                    if (i6 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$12$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3901invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3901invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i8 != 0) {
                        f3 = SliderKt.ThumbTrackGapSize;
                    }
                    if (i10 != 0) {
                        z4 = z2;
                        bm3Var3 = bm3Var2;
                        f5 = f3;
                        dm3Var2 = dm3Var3;
                        i13 = i3;
                        modifier3 = modifier2;
                        sliderColors3 = sliderColors2;
                        f4 = SliderKt.TrackInsideCornerSize;
                    } else {
                        z4 = z2;
                        bm3Var3 = bm3Var2;
                        f5 = f3;
                        dm3Var2 = dm3Var3;
                        i13 = i3;
                        modifier3 = modifier2;
                        sliderColors3 = sliderColors2;
                        f4 = f2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-541824132, i13, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1734)");
                }
                int i111 = (i13 & 14) | 48;
                int i112 = i13 << 3;
                m3885TrackImplxlyIBlM(rangeSliderState, Dp.Companion.m9062getUnspecifiedD9Ej5fM(), modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f5, f4, composerStartRestartGroup, i111 | (i112 & 896) | (i112 & 7168) | (57344 & i112) | (458752 & i112) | (3670016 & i112) | (29360128 & i112) | (234881024 & i112) | (i112 & 1879048192));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                z4 = z2;
                sliderColors3 = sliderColors2;
                bm3Var3 = bm3Var2;
                f4 = f2;
                f5 = f3;
                dm3Var2 = dm3Var;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: k28
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SliderDefaults.Track_4EFweAY$lambda$37(this.b, rangeSliderState, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f5, f4, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        z2 = z;
        if ((i & 3072) == 0) {
            if ((i2 & 8) == 0) {
                sliderColors2 = sliderColors;
                if (composerStartRestartGroup.changed(sliderColors2)) {
                }
                i3 |= i15;
            } else {
                sliderColors2 = sliderColors;
            }
            i3 |= i15;
        } else {
            sliderColors2 = sliderColors;
        }
        if ((i & 24576) == 0) {
            if ((i2 & 16) == 0) {
                bm3Var2 = bm3Var;
                if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                }
                i3 |= i16;
            } else {
                bm3Var2 = bm3Var;
            }
            i3 |= i16;
        } else {
            bm3Var2 = bm3Var;
        }
        i6 = i2 & 32;
        if (i6 != 0) {
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                i7 = 131072;
            } else {
                i7 = 65536;
            }
            i3 |= i7;
        }
        i8 = i2 & 64;
        if (i8 != 0) {
            i3 |= 1572864;
            f3 = f;
        } else {
            f3 = f;
            if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changed(f3)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i3 |= i9;
            }
        }
        i10 = i2 & 128;
        if (i10 != 0) {
            i3 |= 12582912;
        } else if ((i & 12582912) == 0) {
            if (composerStartRestartGroup.changed(f2)) {
                i11 = 8388608;
            } else {
                i11 = 4194304;
            }
            i3 |= i11;
        }
        if ((i2 & 256) != 0) {
            i3 |= 100663296;
        } else if ((i & 100663296) == 0) {
            if (composerStartRestartGroup.changed(this)) {
                i12 = 67108864;
            } else {
                i12 = GroupFlagsKt.HasAuxSlotFlag;
            }
            i3 |= i12;
        }
        if ((38347923 & i3) != 38347922) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i14 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i4 != 0) {
                    z2 = true;
                }
                if ((i2 & 8) != 0) {
                    SliderColors sliderColorsColors6 = colors(composerStartRestartGroup, (i3 >> 24) & 14);
                    i3 &= -7169;
                    sliderColors2 = sliderColorsColors6;
                }
                if ((i2 & 16) != 0) {
                    z5 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        objRememberedValue2 = new bm3() { // from class: j28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SliderDefaults.Track_4EFweAY$lambda$35$lambda$34(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new bm3() { // from class: j28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SliderDefaults.Track_4EFweAY$lambda$35$lambda$34(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    bm3Var2 = (bm3) objRememberedValue2;
                    i3 = (-57345) & i3;
                }
                if (i6 != 0) {
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$12$1
                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                m3901invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                return j59.a;
                            }

                            /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                            public final void m3901invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    dm3Var3 = (dm3) objRememberedValue;
                } else {
                    dm3Var3 = dm3Var;
                }
                if (i8 != 0) {
                    f3 = SliderKt.ThumbTrackGapSize;
                }
                if (i10 != 0) {
                    z4 = z2;
                    bm3Var3 = bm3Var2;
                    f5 = f3;
                    dm3Var2 = dm3Var3;
                    i13 = i3;
                    modifier3 = modifier2;
                    sliderColors3 = sliderColors2;
                    f4 = SliderKt.TrackInsideCornerSize;
                } else {
                    z4 = z2;
                    bm3Var3 = bm3Var2;
                    f5 = f3;
                    dm3Var2 = dm3Var3;
                    i13 = i3;
                    modifier3 = modifier2;
                    sliderColors3 = sliderColors2;
                    f4 = f2;
                }
            } else {
                if (i14 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i4 != 0) {
                    z2 = true;
                }
                if ((i2 & 8) != 0) {
                    SliderColors sliderColorsColors7 = colors(composerStartRestartGroup, (i3 >> 24) & 14);
                    i3 &= -7169;
                    sliderColors2 = sliderColorsColors7;
                }
                if ((i2 & 16) != 0) {
                    z5 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        objRememberedValue2 = new bm3() { // from class: j28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SliderDefaults.Track_4EFweAY$lambda$35$lambda$34(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new bm3() { // from class: j28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SliderDefaults.Track_4EFweAY$lambda$35$lambda$34(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    bm3Var2 = (bm3) objRememberedValue2;
                    i3 = (-57345) & i3;
                }
                if (i6 != 0) {
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$12$1
                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                m3901invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                return j59.a;
                            }

                            /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                            public final void m3901invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    dm3Var3 = (dm3) objRememberedValue;
                } else {
                    dm3Var3 = dm3Var;
                }
                if (i8 != 0) {
                    f3 = SliderKt.ThumbTrackGapSize;
                }
                if (i10 != 0) {
                    z4 = z2;
                    bm3Var3 = bm3Var2;
                    f5 = f3;
                    dm3Var2 = dm3Var3;
                    i13 = i3;
                    modifier3 = modifier2;
                    sliderColors3 = sliderColors2;
                    f4 = SliderKt.TrackInsideCornerSize;
                } else {
                    z4 = z2;
                    bm3Var3 = bm3Var2;
                    f5 = f3;
                    dm3Var2 = dm3Var3;
                    i13 = i3;
                    modifier3 = modifier2;
                    sliderColors3 = sliderColors2;
                    f4 = f2;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-541824132, i13, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1734)");
            }
            int i113 = (i13 & 14) | 48;
            int i114 = i13 << 3;
            m3885TrackImplxlyIBlM(rangeSliderState, Dp.Companion.m9062getUnspecifiedD9Ej5fM(), modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f5, f4, composerStartRestartGroup, i113 | (i114 & 896) | (i114 & 7168) | (57344 & i114) | (458752 & i114) | (3670016 & i114) | (29360128 & i114) | (234881024 & i114) | (i114 & 1879048192));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            z4 = z2;
            sliderColors3 = sliderColors2;
            bm3Var3 = bm3Var2;
            f4 = f2;
            f5 = f3;
            dm3Var2 = dm3Var;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: k28
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return SliderDefaults.Track_4EFweAY$lambda$37(this.b, rangeSliderState, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f5, f4, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0117  */
    /* JADX WARN: Code duplicated, block: B:102:0x011a  */
    /* JADX WARN: Code duplicated, block: B:104:0x011e  */
    /* JADX WARN: Code duplicated, block: B:106:0x0124  */
    /* JADX WARN: Code duplicated, block: B:107:0x0127  */
    /* JADX WARN: Code duplicated, block: B:111:0x0137  */
    /* JADX WARN: Code duplicated, block: B:112:0x013a  */
    /* JADX WARN: Code duplicated, block: B:115:0x0144  */
    /* JADX WARN: Code duplicated, block: B:117:0x0154  */
    /* JADX WARN: Code duplicated, block: B:128:0x0173 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:129:0x0175  */
    /* JADX WARN: Code duplicated, block: B:131:0x017a  */
    /* JADX WARN: Code duplicated, block: B:134:0x0180  */
    /* JADX WARN: Code duplicated, block: B:137:0x018f  */
    /* JADX WARN: Code duplicated, block: B:139:0x0197  */
    /* JADX WARN: Code duplicated, block: B:141:0x019d  */
    /* JADX WARN: Code duplicated, block: B:147:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:150:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:152:0x01be  */
    /* JADX WARN: Code duplicated, block: B:155:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:157:0x01da  */
    /* JADX WARN: Code duplicated, block: B:159:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:161:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:162:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:164:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:165:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:168:0x020a  */
    /* JADX WARN: Code duplicated, block: B:171:0x024c  */
    /* JADX WARN: Code duplicated, block: B:173:0x0256  */
    /* JADX WARN: Code duplicated, block: B:176:0x0269  */
    /* JADX WARN: Code duplicated, block: B:178:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0049  */
    /* JADX WARN: Code duplicated, block: B:28:0x004e  */
    /* JADX WARN: Code duplicated, block: B:30:0x0052  */
    /* JADX WARN: Code duplicated, block: B:32:0x005a  */
    /* JADX WARN: Code duplicated, block: B:33:0x005d  */
    /* JADX WARN: Code duplicated, block: B:37:0x0064  */
    /* JADX WARN: Code duplicated, block: B:39:0x0069  */
    /* JADX WARN: Code duplicated, block: B:41:0x006d  */
    /* JADX WARN: Code duplicated, block: B:43:0x0075  */
    /* JADX WARN: Code duplicated, block: B:44:0x0078  */
    /* JADX WARN: Code duplicated, block: B:48:0x007f  */
    /* JADX WARN: Code duplicated, block: B:50:0x0083  */
    /* JADX WARN: Code duplicated, block: B:52:0x008b  */
    /* JADX WARN: Code duplicated, block: B:53:0x008e  */
    /* JADX WARN: Code duplicated, block: B:56:0x0094  */
    /* JADX WARN: Code duplicated, block: B:59:0x009b  */
    /* JADX WARN: Code duplicated, block: B:61:0x009f  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:70:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:71:0x00be  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:75:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:76:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:80:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:81:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:85:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:86:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:90:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:92:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:94:0x0100  */
    /* JADX WARN: Code duplicated, block: B:96:0x010a  */
    /* JADX WARN: Code duplicated, block: B:97:0x010d  */
    /* JADX INFO: renamed from: Track-mnvyFg4$material3, reason: not valid java name */
    public final void m3895TrackmnvyFg4$material3(final SliderState sliderState, final float f, Modifier modifier, boolean z, SliderColors sliderColors, bm3<? super DrawScope, ? super Offset, j59> bm3Var, dm3<? super DrawScope, ? super Offset, ? super Color, j59> dm3Var, float f2, float f3, Composer composer, final int i, final int i2) {
        int i3;
        int i4;
        Modifier modifier2;
        int i5;
        int i6;
        final boolean z2;
        int i7;
        final SliderColors sliderColors2;
        bm3<? super DrawScope, ? super Offset, j59> bm3Var2;
        int i8;
        int i9;
        int i10;
        float f4;
        int i11;
        int i12;
        int i13;
        int i14;
        boolean z3;
        final dm3<? super DrawScope, ? super Offset, ? super Color, j59> dm3Var2;
        final float f5;
        final float f6;
        final bm3<? super DrawScope, ? super Offset, j59> bm3Var3;
        final boolean z4;
        final SliderColors sliderColors3;
        final Modifier modifier3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        dm3<? super DrawScope, ? super Offset, ? super Color, j59> dm3Var3;
        float f7;
        float f8;
        boolean z5;
        float f9;
        Object objRememberedValue;
        boolean z6;
        Object objRememberedValue2;
        Composer composerStartRestartGroup = composer.startRestartGroup(1691224881);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changedInstance(sliderState) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i2 & 2) == 0) {
            if ((i & 48) == 0) {
                i3 |= composerStartRestartGroup.changed(f) ? 32 : 16;
            }
            i4 = i2 & 4;
            if (i4 != 0) {
                if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    modifier2 = modifier;
                    if (composerStartRestartGroup.changed(modifier2)) {
                        i5 = 256;
                    } else {
                        i5 = 128;
                    }
                    i3 |= i5;
                }
                i6 = i2 & 8;
                if (i6 != 0) {
                    if ((i & 3072) == 0) {
                        z2 = z;
                        if (composerStartRestartGroup.changed(z2)) {
                            i7 = 2048;
                        } else {
                            i7 = 1024;
                        }
                        i3 |= i7;
                    }
                    if ((i & 24576) == 0) {
                        if ((i2 & 16) == 0) {
                            sliderColors2 = sliderColors;
                            int i15 = composerStartRestartGroup.changed(sliderColors2) ? 16384 : 8192;
                            i3 |= i15;
                        } else {
                            sliderColors2 = sliderColors;
                        }
                        i3 |= i15;
                    } else {
                        sliderColors2 = sliderColors;
                    }
                    if ((196608 & i) == 0) {
                        if ((i2 & 32) == 0) {
                            bm3Var2 = bm3Var;
                            int i16 = composerStartRestartGroup.changedInstance(bm3Var2) ? 131072 : 65536;
                            i3 |= i16;
                        } else {
                            bm3Var2 = bm3Var;
                        }
                        i3 |= i16;
                    } else {
                        bm3Var2 = bm3Var;
                    }
                    i8 = i2 & 64;
                    if (i8 != 0) {
                        i3 |= 1572864;
                    } else if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i9 = 1048576;
                        } else {
                            i9 = 524288;
                        }
                        i3 |= i9;
                    }
                    i10 = i2 & 128;
                    if (i10 != 0) {
                        i3 |= 12582912;
                        f4 = f2;
                    } else {
                        f4 = f2;
                        if ((i & 12582912) == 0) {
                            if (composerStartRestartGroup.changed(f4)) {
                                i11 = 8388608;
                            } else {
                                i11 = 4194304;
                            }
                            i3 |= i11;
                        }
                    }
                    i12 = i2 & 256;
                    if (i12 != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(f3)) {
                                i13 = 67108864;
                            } else {
                                i13 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i13;
                        }
                        if ((i2 & 512) != 0) {
                            i3 |= 805306368;
                        } else if ((i & 805306368) == 0) {
                            if (composerStartRestartGroup.changed(this)) {
                                i14 = 536870912;
                            } else {
                                i14 = 268435456;
                            }
                            i3 |= i14;
                        }
                        if ((306783379 & i3) != 306783378) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 16) != 0) {
                                    SliderColors sliderColorsColors = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                                    i3 &= -57345;
                                    sliderColors2 = sliderColorsColors;
                                }
                                if ((i2 & 32) != 0) {
                                    z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                    if (z6 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                                        objRememberedValue2 = new bm3() { // from class: h28
                                            @Override // defpackage.bm3
                                            public final Object invoke(Object obj, Object obj2) {
                                                return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                            }
                                        };
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                    }
                                    i3 &= -458753;
                                    bm3Var2 = (bm3) objRememberedValue2;
                                }
                                if (i8 != 0) {
                                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                                        objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                            @Override // defpackage.dm3
                                            public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                                m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                                return j59.a;
                                            }

                                            /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                            public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                                SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                                sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                            }
                                        };
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                    }
                                    dm3Var3 = (dm3) objRememberedValue;
                                } else {
                                    dm3Var3 = dm3Var;
                                }
                                if (i10 != 0) {
                                    f7 = SliderKt.ThumbTrackGapSize;
                                } else {
                                    f7 = f4;
                                }
                                if (i12 != 0) {
                                    boolean z7 = z2;
                                    f8 = f7;
                                    z5 = z7;
                                    dm3Var2 = dm3Var3;
                                    f9 = SliderKt.TrackInsideCornerSize;
                                } else {
                                    boolean z8 = z2;
                                    f8 = f7;
                                    z5 = z8;
                                    f9 = f3;
                                    dm3Var2 = dm3Var3;
                                }
                            } else {
                                composerStartRestartGroup.skipToGroupEnd();
                                if ((i2 & 16) != 0) {
                                    i3 &= -57345;
                                }
                                if ((i2 & 32) != 0) {
                                    i3 &= -458753;
                                }
                                dm3Var2 = dm3Var;
                                f9 = f3;
                                z5 = z2;
                                f8 = f4;
                            }
                            bm3Var3 = bm3Var2;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1691224881, i3, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1502)");
                            }
                            Modifier modifier4 = modifier2;
                            SliderColors sliderColors4 = sliderColors2;
                            m3884TrackImplVvwgllI(sliderState, f, modifier4, z5, sliderColors4, bm3Var3, dm3Var2, f8, f9, true, false, composerStartRestartGroup, (i3 & 14) | 805306368 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | (29360128 & i3) | (234881024 & i3), ((i3 >> 24) & 112) | 6);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier4;
                            f6 = f8;
                            f5 = f9;
                            z4 = z5;
                            sliderColors3 = sliderColors4;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            dm3Var2 = dm3Var;
                            f5 = f3;
                            f6 = f4;
                            bm3Var3 = bm3Var2;
                            z4 = z2;
                            sliderColors3 = sliderColors2;
                            modifier3 = modifier2;
                        }
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: i28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return SliderDefaults.Track_mnvyFg4$lambda$21(this, sliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f6, f5, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    if ((i2 & 512) != 0) {
                        i3 |= 805306368;
                    } else if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changed(this)) {
                            i14 = 536870912;
                        } else {
                            i14 = 268435456;
                        }
                        i3 |= i14;
                    }
                    if ((306783379 & i3) != 306783378) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 16) != 0) {
                                SliderColors sliderColorsColors2 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                                i3 &= -57345;
                                sliderColors2 = sliderColorsColors2;
                            }
                            if ((i2 & 32) != 0) {
                                z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (z6) {
                                    objRememberedValue2 = new bm3() { // from class: h28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                } else {
                                    objRememberedValue2 = new bm3() { // from class: h28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                i3 &= -458753;
                                bm3Var2 = (bm3) objRememberedValue2;
                            }
                            if (i8 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                        @Override // defpackage.dm3
                                        public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                            m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                            return j59.a;
                                        }

                                        /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                        public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                            SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                            sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                dm3Var3 = (dm3) objRememberedValue;
                            } else {
                                dm3Var3 = dm3Var;
                            }
                            if (i10 != 0) {
                                f7 = SliderKt.ThumbTrackGapSize;
                            } else {
                                f7 = f4;
                            }
                            if (i12 != 0) {
                                boolean z9 = z2;
                                f8 = f7;
                                z5 = z9;
                                dm3Var2 = dm3Var3;
                                f9 = SliderKt.TrackInsideCornerSize;
                            } else {
                                boolean z10 = z2;
                                f8 = f7;
                                z5 = z10;
                                f9 = f3;
                                dm3Var2 = dm3Var3;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 16) != 0) {
                                SliderColors sliderColorsColors3 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                                i3 &= -57345;
                                sliderColors2 = sliderColorsColors3;
                            }
                            if ((i2 & 32) != 0) {
                                z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (z6) {
                                    objRememberedValue2 = new bm3() { // from class: h28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                } else {
                                    objRememberedValue2 = new bm3() { // from class: h28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                i3 &= -458753;
                                bm3Var2 = (bm3) objRememberedValue2;
                            }
                            if (i8 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                        @Override // defpackage.dm3
                                        public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                            m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                            return j59.a;
                                        }

                                        /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                        public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                            SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                            sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                dm3Var3 = (dm3) objRememberedValue;
                            } else {
                                dm3Var3 = dm3Var;
                            }
                            if (i10 != 0) {
                                f7 = SliderKt.ThumbTrackGapSize;
                            } else {
                                f7 = f4;
                            }
                            if (i12 != 0) {
                                boolean z11 = z2;
                                f8 = f7;
                                z5 = z11;
                                dm3Var2 = dm3Var3;
                                f9 = SliderKt.TrackInsideCornerSize;
                            } else {
                                boolean z12 = z2;
                                f8 = f7;
                                z5 = z12;
                                f9 = f3;
                                dm3Var2 = dm3Var3;
                            }
                        }
                        bm3Var3 = bm3Var2;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1691224881, i3, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1502)");
                        }
                        Modifier modifier5 = modifier2;
                        SliderColors sliderColors5 = sliderColors2;
                        m3884TrackImplVvwgllI(sliderState, f, modifier5, z5, sliderColors5, bm3Var3, dm3Var2, f8, f9, true, false, composerStartRestartGroup, (i3 & 14) | 805306368 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | (29360128 & i3) | (234881024 & i3), ((i3 >> 24) & 112) | 6);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier5;
                        f6 = f8;
                        f5 = f9;
                        z4 = z5;
                        sliderColors3 = sliderColors5;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        dm3Var2 = dm3Var;
                        f5 = f3;
                        f6 = f4;
                        bm3Var3 = bm3Var2;
                        z4 = z2;
                        sliderColors3 = sliderColors2;
                        modifier3 = modifier2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: i28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return SliderDefaults.Track_mnvyFg4$lambda$21(this, sliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f6, f5, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 3072;
                z2 = z;
                if ((i & 24576) == 0) {
                    if ((i2 & 16) == 0) {
                        sliderColors2 = sliderColors;
                        if (composerStartRestartGroup.changed(sliderColors2)) {
                        }
                        i3 |= i15;
                    } else {
                        sliderColors2 = sliderColors;
                    }
                    i3 |= i15;
                } else {
                    sliderColors2 = sliderColors;
                }
                if ((196608 & i) == 0) {
                    if ((i2 & 32) == 0) {
                        bm3Var2 = bm3Var;
                        if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        }
                        i3 |= i16;
                    } else {
                        bm3Var2 = bm3Var;
                    }
                    i3 |= i16;
                } else {
                    bm3Var2 = bm3Var;
                }
                i8 = i2 & 64;
                if (i8 != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
                i10 = i2 & 128;
                if (i10 != 0) {
                    i3 |= 12582912;
                    f4 = f2;
                } else {
                    f4 = f2;
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(f4)) {
                            i11 = 8388608;
                        } else {
                            i11 = 4194304;
                        }
                        i3 |= i11;
                    }
                }
                i12 = i2 & 256;
                if (i12 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(f3)) {
                            i13 = 67108864;
                        } else {
                            i13 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i13;
                    }
                    if ((i2 & 512) != 0) {
                        i3 |= 805306368;
                    } else if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changed(this)) {
                            i14 = 536870912;
                        } else {
                            i14 = 268435456;
                        }
                        i3 |= i14;
                    }
                    if ((306783379 & i3) != 306783378) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 16) != 0) {
                                SliderColors sliderColorsColors4 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                                i3 &= -57345;
                                sliderColors2 = sliderColorsColors4;
                            }
                            if ((i2 & 32) != 0) {
                                z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (z6) {
                                    objRememberedValue2 = new bm3() { // from class: h28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                } else {
                                    objRememberedValue2 = new bm3() { // from class: h28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                i3 &= -458753;
                                bm3Var2 = (bm3) objRememberedValue2;
                            }
                            if (i8 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                        @Override // defpackage.dm3
                                        public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                            m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                            return j59.a;
                                        }

                                        /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                        public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                            SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                            sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                dm3Var3 = (dm3) objRememberedValue;
                            } else {
                                dm3Var3 = dm3Var;
                            }
                            if (i10 != 0) {
                                f7 = SliderKt.ThumbTrackGapSize;
                            } else {
                                f7 = f4;
                            }
                            if (i12 != 0) {
                                boolean z13 = z2;
                                f8 = f7;
                                z5 = z13;
                                dm3Var2 = dm3Var3;
                                f9 = SliderKt.TrackInsideCornerSize;
                            } else {
                                boolean z14 = z2;
                                f8 = f7;
                                z5 = z14;
                                f9 = f3;
                                dm3Var2 = dm3Var3;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 16) != 0) {
                                SliderColors sliderColorsColors5 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                                i3 &= -57345;
                                sliderColors2 = sliderColorsColors5;
                            }
                            if ((i2 & 32) != 0) {
                                z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (z6) {
                                    objRememberedValue2 = new bm3() { // from class: h28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                } else {
                                    objRememberedValue2 = new bm3() { // from class: h28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                i3 &= -458753;
                                bm3Var2 = (bm3) objRememberedValue2;
                            }
                            if (i8 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                        @Override // defpackage.dm3
                                        public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                            m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                            return j59.a;
                                        }

                                        /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                        public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                            SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                            sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                dm3Var3 = (dm3) objRememberedValue;
                            } else {
                                dm3Var3 = dm3Var;
                            }
                            if (i10 != 0) {
                                f7 = SliderKt.ThumbTrackGapSize;
                            } else {
                                f7 = f4;
                            }
                            if (i12 != 0) {
                                boolean z15 = z2;
                                f8 = f7;
                                z5 = z15;
                                dm3Var2 = dm3Var3;
                                f9 = SliderKt.TrackInsideCornerSize;
                            } else {
                                boolean z16 = z2;
                                f8 = f7;
                                z5 = z16;
                                f9 = f3;
                                dm3Var2 = dm3Var3;
                            }
                        }
                        bm3Var3 = bm3Var2;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1691224881, i3, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1502)");
                        }
                        Modifier modifier6 = modifier2;
                        SliderColors sliderColors6 = sliderColors2;
                        m3884TrackImplVvwgllI(sliderState, f, modifier6, z5, sliderColors6, bm3Var3, dm3Var2, f8, f9, true, false, composerStartRestartGroup, (i3 & 14) | 805306368 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | (29360128 & i3) | (234881024 & i3), ((i3 >> 24) & 112) | 6);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier6;
                        f6 = f8;
                        f5 = f9;
                        z4 = z5;
                        sliderColors3 = sliderColors6;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        dm3Var2 = dm3Var;
                        f5 = f3;
                        f6 = f4;
                        bm3Var3 = bm3Var2;
                        z4 = z2;
                        sliderColors3 = sliderColors2;
                        modifier3 = modifier2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: i28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return SliderDefaults.Track_mnvyFg4$lambda$21(this, sliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f6, f5, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                if ((i2 & 512) != 0) {
                    i3 |= 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i14 = 536870912;
                    } else {
                        i14 = 268435456;
                    }
                    i3 |= i14;
                }
                if ((306783379 & i3) != 306783378) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 16) != 0) {
                            SliderColors sliderColorsColors6 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -57345;
                            sliderColors2 = sliderColorsColors6;
                        }
                        if ((i2 & 32) != 0) {
                            z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z6) {
                                objRememberedValue2 = new bm3() { // from class: h28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: h28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            i3 &= -458753;
                            bm3Var2 = (bm3) objRememberedValue2;
                        }
                        if (i8 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i10 != 0) {
                            f7 = SliderKt.ThumbTrackGapSize;
                        } else {
                            f7 = f4;
                        }
                        if (i12 != 0) {
                            boolean z17 = z2;
                            f8 = f7;
                            z5 = z17;
                            dm3Var2 = dm3Var3;
                            f9 = SliderKt.TrackInsideCornerSize;
                        } else {
                            boolean z18 = z2;
                            f8 = f7;
                            z5 = z18;
                            f9 = f3;
                            dm3Var2 = dm3Var3;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 16) != 0) {
                            SliderColors sliderColorsColors7 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -57345;
                            sliderColors2 = sliderColorsColors7;
                        }
                        if ((i2 & 32) != 0) {
                            z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z6) {
                                objRememberedValue2 = new bm3() { // from class: h28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: h28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            i3 &= -458753;
                            bm3Var2 = (bm3) objRememberedValue2;
                        }
                        if (i8 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i10 != 0) {
                            f7 = SliderKt.ThumbTrackGapSize;
                        } else {
                            f7 = f4;
                        }
                        if (i12 != 0) {
                            boolean z19 = z2;
                            f8 = f7;
                            z5 = z19;
                            dm3Var2 = dm3Var3;
                            f9 = SliderKt.TrackInsideCornerSize;
                        } else {
                            boolean z110 = z2;
                            f8 = f7;
                            z5 = z110;
                            f9 = f3;
                            dm3Var2 = dm3Var3;
                        }
                    }
                    bm3Var3 = bm3Var2;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1691224881, i3, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1502)");
                    }
                    Modifier modifier7 = modifier2;
                    SliderColors sliderColors7 = sliderColors2;
                    m3884TrackImplVvwgllI(sliderState, f, modifier7, z5, sliderColors7, bm3Var3, dm3Var2, f8, f9, true, false, composerStartRestartGroup, (i3 & 14) | 805306368 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | (29360128 & i3) | (234881024 & i3), ((i3 >> 24) & 112) | 6);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier7;
                    f6 = f8;
                    f5 = f9;
                    z4 = z5;
                    sliderColors3 = sliderColors7;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    dm3Var2 = dm3Var;
                    f5 = f3;
                    f6 = f4;
                    bm3Var3 = bm3Var2;
                    z4 = z2;
                    sliderColors3 = sliderColors2;
                    modifier3 = modifier2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: i28
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SliderDefaults.Track_mnvyFg4$lambda$21(this, sliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f6, f5, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
            i6 = i2 & 8;
            if (i6 != 0) {
                if ((i & 3072) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                if ((i & 24576) == 0) {
                    if ((i2 & 16) == 0) {
                        sliderColors2 = sliderColors;
                        if (composerStartRestartGroup.changed(sliderColors2)) {
                        }
                        i3 |= i15;
                    } else {
                        sliderColors2 = sliderColors;
                    }
                    i3 |= i15;
                } else {
                    sliderColors2 = sliderColors;
                }
                if ((196608 & i) == 0) {
                    if ((i2 & 32) == 0) {
                        bm3Var2 = bm3Var;
                        if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        }
                        i3 |= i16;
                    } else {
                        bm3Var2 = bm3Var;
                    }
                    i3 |= i16;
                } else {
                    bm3Var2 = bm3Var;
                }
                i8 = i2 & 64;
                if (i8 != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
                i10 = i2 & 128;
                if (i10 != 0) {
                    i3 |= 12582912;
                    f4 = f2;
                } else {
                    f4 = f2;
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(f4)) {
                            i11 = 8388608;
                        } else {
                            i11 = 4194304;
                        }
                        i3 |= i11;
                    }
                }
                i12 = i2 & 256;
                if (i12 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(f3)) {
                            i13 = 67108864;
                        } else {
                            i13 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i13;
                    }
                    if ((i2 & 512) != 0) {
                        i3 |= 805306368;
                    } else if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changed(this)) {
                            i14 = 536870912;
                        } else {
                            i14 = 268435456;
                        }
                        i3 |= i14;
                    }
                    if ((306783379 & i3) != 306783378) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 16) != 0) {
                                SliderColors sliderColorsColors8 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                                i3 &= -57345;
                                sliderColors2 = sliderColorsColors8;
                            }
                            if ((i2 & 32) != 0) {
                                z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (z6) {
                                    objRememberedValue2 = new bm3() { // from class: h28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                } else {
                                    objRememberedValue2 = new bm3() { // from class: h28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                i3 &= -458753;
                                bm3Var2 = (bm3) objRememberedValue2;
                            }
                            if (i8 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                        @Override // defpackage.dm3
                                        public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                            m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                            return j59.a;
                                        }

                                        /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                        public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                            SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                            sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                dm3Var3 = (dm3) objRememberedValue;
                            } else {
                                dm3Var3 = dm3Var;
                            }
                            if (i10 != 0) {
                                f7 = SliderKt.ThumbTrackGapSize;
                            } else {
                                f7 = f4;
                            }
                            if (i12 != 0) {
                                boolean z111 = z2;
                                f8 = f7;
                                z5 = z111;
                                dm3Var2 = dm3Var3;
                                f9 = SliderKt.TrackInsideCornerSize;
                            } else {
                                boolean z112 = z2;
                                f8 = f7;
                                z5 = z112;
                                f9 = f3;
                                dm3Var2 = dm3Var3;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 16) != 0) {
                                SliderColors sliderColorsColors9 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                                i3 &= -57345;
                                sliderColors2 = sliderColorsColors9;
                            }
                            if ((i2 & 32) != 0) {
                                z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (z6) {
                                    objRememberedValue2 = new bm3() { // from class: h28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                } else {
                                    objRememberedValue2 = new bm3() { // from class: h28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                i3 &= -458753;
                                bm3Var2 = (bm3) objRememberedValue2;
                            }
                            if (i8 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                        @Override // defpackage.dm3
                                        public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                            m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                            return j59.a;
                                        }

                                        /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                        public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                            SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                            sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                dm3Var3 = (dm3) objRememberedValue;
                            } else {
                                dm3Var3 = dm3Var;
                            }
                            if (i10 != 0) {
                                f7 = SliderKt.ThumbTrackGapSize;
                            } else {
                                f7 = f4;
                            }
                            if (i12 != 0) {
                                boolean z113 = z2;
                                f8 = f7;
                                z5 = z113;
                                dm3Var2 = dm3Var3;
                                f9 = SliderKt.TrackInsideCornerSize;
                            } else {
                                boolean z114 = z2;
                                f8 = f7;
                                z5 = z114;
                                f9 = f3;
                                dm3Var2 = dm3Var3;
                            }
                        }
                        bm3Var3 = bm3Var2;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1691224881, i3, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1502)");
                        }
                        Modifier modifier8 = modifier2;
                        SliderColors sliderColors8 = sliderColors2;
                        m3884TrackImplVvwgllI(sliderState, f, modifier8, z5, sliderColors8, bm3Var3, dm3Var2, f8, f9, true, false, composerStartRestartGroup, (i3 & 14) | 805306368 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | (29360128 & i3) | (234881024 & i3), ((i3 >> 24) & 112) | 6);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier8;
                        f6 = f8;
                        f5 = f9;
                        z4 = z5;
                        sliderColors3 = sliderColors8;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        dm3Var2 = dm3Var;
                        f5 = f3;
                        f6 = f4;
                        bm3Var3 = bm3Var2;
                        z4 = z2;
                        sliderColors3 = sliderColors2;
                        modifier3 = modifier2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: i28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return SliderDefaults.Track_mnvyFg4$lambda$21(this, sliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f6, f5, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                if ((i2 & 512) != 0) {
                    i3 |= 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i14 = 536870912;
                    } else {
                        i14 = 268435456;
                    }
                    i3 |= i14;
                }
                if ((306783379 & i3) != 306783378) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 16) != 0) {
                            SliderColors sliderColorsColors10 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -57345;
                            sliderColors2 = sliderColorsColors10;
                        }
                        if ((i2 & 32) != 0) {
                            z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z6) {
                                objRememberedValue2 = new bm3() { // from class: h28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: h28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            i3 &= -458753;
                            bm3Var2 = (bm3) objRememberedValue2;
                        }
                        if (i8 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i10 != 0) {
                            f7 = SliderKt.ThumbTrackGapSize;
                        } else {
                            f7 = f4;
                        }
                        if (i12 != 0) {
                            boolean z115 = z2;
                            f8 = f7;
                            z5 = z115;
                            dm3Var2 = dm3Var3;
                            f9 = SliderKt.TrackInsideCornerSize;
                        } else {
                            boolean z116 = z2;
                            f8 = f7;
                            z5 = z116;
                            f9 = f3;
                            dm3Var2 = dm3Var3;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 16) != 0) {
                            SliderColors sliderColorsColors11 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -57345;
                            sliderColors2 = sliderColorsColors11;
                        }
                        if ((i2 & 32) != 0) {
                            z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z6) {
                                objRememberedValue2 = new bm3() { // from class: h28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: h28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            i3 &= -458753;
                            bm3Var2 = (bm3) objRememberedValue2;
                        }
                        if (i8 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i10 != 0) {
                            f7 = SliderKt.ThumbTrackGapSize;
                        } else {
                            f7 = f4;
                        }
                        if (i12 != 0) {
                            boolean z117 = z2;
                            f8 = f7;
                            z5 = z117;
                            dm3Var2 = dm3Var3;
                            f9 = SliderKt.TrackInsideCornerSize;
                        } else {
                            boolean z118 = z2;
                            f8 = f7;
                            z5 = z118;
                            f9 = f3;
                            dm3Var2 = dm3Var3;
                        }
                    }
                    bm3Var3 = bm3Var2;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1691224881, i3, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1502)");
                    }
                    Modifier modifier9 = modifier2;
                    SliderColors sliderColors9 = sliderColors2;
                    m3884TrackImplVvwgllI(sliderState, f, modifier9, z5, sliderColors9, bm3Var3, dm3Var2, f8, f9, true, false, composerStartRestartGroup, (i3 & 14) | 805306368 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | (29360128 & i3) | (234881024 & i3), ((i3 >> 24) & 112) | 6);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier9;
                    f6 = f8;
                    f5 = f9;
                    z4 = z5;
                    sliderColors3 = sliderColors9;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    dm3Var2 = dm3Var;
                    f5 = f3;
                    f6 = f4;
                    bm3Var3 = bm3Var2;
                    z4 = z2;
                    sliderColors3 = sliderColors2;
                    modifier3 = modifier2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: i28
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SliderDefaults.Track_mnvyFg4$lambda$21(this, sliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f6, f5, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            z2 = z;
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    sliderColors2 = sliderColors;
                    if (composerStartRestartGroup.changed(sliderColors2)) {
                    }
                    i3 |= i15;
                } else {
                    sliderColors2 = sliderColors;
                }
                i3 |= i15;
            } else {
                sliderColors2 = sliderColors;
            }
            if ((196608 & i) == 0) {
                if ((i2 & 32) == 0) {
                    bm3Var2 = bm3Var;
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    }
                    i3 |= i16;
                } else {
                    bm3Var2 = bm3Var;
                }
                i3 |= i16;
            } else {
                bm3Var2 = bm3Var;
            }
            i8 = i2 & 64;
            if (i8 != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i3 |= i9;
            }
            i10 = i2 & 128;
            if (i10 != 0) {
                i3 |= 12582912;
                f4 = f2;
            } else {
                f4 = f2;
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(f4)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i3 |= i11;
                }
            }
            i12 = i2 & 256;
            if (i12 != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(f3)) {
                        i13 = 67108864;
                    } else {
                        i13 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i13;
                }
                if ((i2 & 512) != 0) {
                    i3 |= 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i14 = 536870912;
                    } else {
                        i14 = 268435456;
                    }
                    i3 |= i14;
                }
                if ((306783379 & i3) != 306783378) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 16) != 0) {
                            SliderColors sliderColorsColors12 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -57345;
                            sliderColors2 = sliderColorsColors12;
                        }
                        if ((i2 & 32) != 0) {
                            z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z6) {
                                objRememberedValue2 = new bm3() { // from class: h28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: h28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            i3 &= -458753;
                            bm3Var2 = (bm3) objRememberedValue2;
                        }
                        if (i8 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i10 != 0) {
                            f7 = SliderKt.ThumbTrackGapSize;
                        } else {
                            f7 = f4;
                        }
                        if (i12 != 0) {
                            boolean z119 = z2;
                            f8 = f7;
                            z5 = z119;
                            dm3Var2 = dm3Var3;
                            f9 = SliderKt.TrackInsideCornerSize;
                        } else {
                            boolean z1110 = z2;
                            f8 = f7;
                            z5 = z1110;
                            f9 = f3;
                            dm3Var2 = dm3Var3;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 16) != 0) {
                            SliderColors sliderColorsColors13 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -57345;
                            sliderColors2 = sliderColorsColors13;
                        }
                        if ((i2 & 32) != 0) {
                            z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z6) {
                                objRememberedValue2 = new bm3() { // from class: h28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: h28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            i3 &= -458753;
                            bm3Var2 = (bm3) objRememberedValue2;
                        }
                        if (i8 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i10 != 0) {
                            f7 = SliderKt.ThumbTrackGapSize;
                        } else {
                            f7 = f4;
                        }
                        if (i12 != 0) {
                            boolean z1111 = z2;
                            f8 = f7;
                            z5 = z1111;
                            dm3Var2 = dm3Var3;
                            f9 = SliderKt.TrackInsideCornerSize;
                        } else {
                            boolean z1112 = z2;
                            f8 = f7;
                            z5 = z1112;
                            f9 = f3;
                            dm3Var2 = dm3Var3;
                        }
                    }
                    bm3Var3 = bm3Var2;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1691224881, i3, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1502)");
                    }
                    Modifier modifier10 = modifier2;
                    SliderColors sliderColors10 = sliderColors2;
                    m3884TrackImplVvwgllI(sliderState, f, modifier10, z5, sliderColors10, bm3Var3, dm3Var2, f8, f9, true, false, composerStartRestartGroup, (i3 & 14) | 805306368 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | (29360128 & i3) | (234881024 & i3), ((i3 >> 24) & 112) | 6);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier10;
                    f6 = f8;
                    f5 = f9;
                    z4 = z5;
                    sliderColors3 = sliderColors10;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    dm3Var2 = dm3Var;
                    f5 = f3;
                    f6 = f4;
                    bm3Var3 = bm3Var2;
                    z4 = z2;
                    sliderColors3 = sliderColors2;
                    modifier3 = modifier2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: i28
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SliderDefaults.Track_mnvyFg4$lambda$21(this, sliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f6, f5, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            if ((i2 & 512) != 0) {
                i3 |= 805306368;
            } else if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i14 = 536870912;
                } else {
                    i14 = 268435456;
                }
                i3 |= i14;
            }
            if ((306783379 & i3) != 306783378) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 16) != 0) {
                        SliderColors sliderColorsColors14 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                        i3 &= -57345;
                        sliderColors2 = sliderColorsColors14;
                    }
                    if ((i2 & 32) != 0) {
                        z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z6) {
                            objRememberedValue2 = new bm3() { // from class: h28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: h28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        i3 &= -458753;
                        bm3Var2 = (bm3) objRememberedValue2;
                    }
                    if (i8 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i10 != 0) {
                        f7 = SliderKt.ThumbTrackGapSize;
                    } else {
                        f7 = f4;
                    }
                    if (i12 != 0) {
                        boolean z1113 = z2;
                        f8 = f7;
                        z5 = z1113;
                        dm3Var2 = dm3Var3;
                        f9 = SliderKt.TrackInsideCornerSize;
                    } else {
                        boolean z1114 = z2;
                        f8 = f7;
                        z5 = z1114;
                        f9 = f3;
                        dm3Var2 = dm3Var3;
                    }
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 16) != 0) {
                        SliderColors sliderColorsColors15 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                        i3 &= -57345;
                        sliderColors2 = sliderColorsColors15;
                    }
                    if ((i2 & 32) != 0) {
                        z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z6) {
                            objRememberedValue2 = new bm3() { // from class: h28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: h28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        i3 &= -458753;
                        bm3Var2 = (bm3) objRememberedValue2;
                    }
                    if (i8 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i10 != 0) {
                        f7 = SliderKt.ThumbTrackGapSize;
                    } else {
                        f7 = f4;
                    }
                    if (i12 != 0) {
                        boolean z1115 = z2;
                        f8 = f7;
                        z5 = z1115;
                        dm3Var2 = dm3Var3;
                        f9 = SliderKt.TrackInsideCornerSize;
                    } else {
                        boolean z1116 = z2;
                        f8 = f7;
                        z5 = z1116;
                        f9 = f3;
                        dm3Var2 = dm3Var3;
                    }
                }
                bm3Var3 = bm3Var2;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1691224881, i3, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1502)");
                }
                Modifier modifier11 = modifier2;
                SliderColors sliderColors11 = sliderColors2;
                m3884TrackImplVvwgllI(sliderState, f, modifier11, z5, sliderColors11, bm3Var3, dm3Var2, f8, f9, true, false, composerStartRestartGroup, (i3 & 14) | 805306368 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | (29360128 & i3) | (234881024 & i3), ((i3 >> 24) & 112) | 6);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier11;
                f6 = f8;
                f5 = f9;
                z4 = z5;
                sliderColors3 = sliderColors11;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                dm3Var2 = dm3Var;
                f5 = f3;
                f6 = f4;
                bm3Var3 = bm3Var2;
                z4 = z2;
                sliderColors3 = sliderColors2;
                modifier3 = modifier2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: i28
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SliderDefaults.Track_mnvyFg4$lambda$21(this, sliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f6, f5, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        i4 = i2 & 4;
        if (i4 != 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                modifier2 = modifier;
                if (composerStartRestartGroup.changed(modifier2)) {
                    i5 = 256;
                } else {
                    i5 = 128;
                }
                i3 |= i5;
            }
            i6 = i2 & 8;
            if (i6 != 0) {
                if ((i & 3072) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                if ((i & 24576) == 0) {
                    if ((i2 & 16) == 0) {
                        sliderColors2 = sliderColors;
                        if (composerStartRestartGroup.changed(sliderColors2)) {
                        }
                        i3 |= i15;
                    } else {
                        sliderColors2 = sliderColors;
                    }
                    i3 |= i15;
                } else {
                    sliderColors2 = sliderColors;
                }
                if ((196608 & i) == 0) {
                    if ((i2 & 32) == 0) {
                        bm3Var2 = bm3Var;
                        if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        }
                        i3 |= i16;
                    } else {
                        bm3Var2 = bm3Var;
                    }
                    i3 |= i16;
                } else {
                    bm3Var2 = bm3Var;
                }
                i8 = i2 & 64;
                if (i8 != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
                i10 = i2 & 128;
                if (i10 != 0) {
                    i3 |= 12582912;
                    f4 = f2;
                } else {
                    f4 = f2;
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(f4)) {
                            i11 = 8388608;
                        } else {
                            i11 = 4194304;
                        }
                        i3 |= i11;
                    }
                }
                i12 = i2 & 256;
                if (i12 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(f3)) {
                            i13 = 67108864;
                        } else {
                            i13 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i13;
                    }
                    if ((i2 & 512) != 0) {
                        i3 |= 805306368;
                    } else if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changed(this)) {
                            i14 = 536870912;
                        } else {
                            i14 = 268435456;
                        }
                        i3 |= i14;
                    }
                    if ((306783379 & i3) != 306783378) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 16) != 0) {
                                SliderColors sliderColorsColors16 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                                i3 &= -57345;
                                sliderColors2 = sliderColorsColors16;
                            }
                            if ((i2 & 32) != 0) {
                                z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (z6) {
                                    objRememberedValue2 = new bm3() { // from class: h28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                } else {
                                    objRememberedValue2 = new bm3() { // from class: h28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                i3 &= -458753;
                                bm3Var2 = (bm3) objRememberedValue2;
                            }
                            if (i8 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                        @Override // defpackage.dm3
                                        public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                            m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                            return j59.a;
                                        }

                                        /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                        public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                            SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                            sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                dm3Var3 = (dm3) objRememberedValue;
                            } else {
                                dm3Var3 = dm3Var;
                            }
                            if (i10 != 0) {
                                f7 = SliderKt.ThumbTrackGapSize;
                            } else {
                                f7 = f4;
                            }
                            if (i12 != 0) {
                                boolean z1117 = z2;
                                f8 = f7;
                                z5 = z1117;
                                dm3Var2 = dm3Var3;
                                f9 = SliderKt.TrackInsideCornerSize;
                            } else {
                                boolean z1118 = z2;
                                f8 = f7;
                                z5 = z1118;
                                f9 = f3;
                                dm3Var2 = dm3Var3;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 16) != 0) {
                                SliderColors sliderColorsColors17 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                                i3 &= -57345;
                                sliderColors2 = sliderColorsColors17;
                            }
                            if ((i2 & 32) != 0) {
                                z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (z6) {
                                    objRememberedValue2 = new bm3() { // from class: h28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                } else {
                                    objRememberedValue2 = new bm3() { // from class: h28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                i3 &= -458753;
                                bm3Var2 = (bm3) objRememberedValue2;
                            }
                            if (i8 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                        @Override // defpackage.dm3
                                        public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                            m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                            return j59.a;
                                        }

                                        /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                        public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                            SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                            sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                dm3Var3 = (dm3) objRememberedValue;
                            } else {
                                dm3Var3 = dm3Var;
                            }
                            if (i10 != 0) {
                                f7 = SliderKt.ThumbTrackGapSize;
                            } else {
                                f7 = f4;
                            }
                            if (i12 != 0) {
                                boolean z1119 = z2;
                                f8 = f7;
                                z5 = z1119;
                                dm3Var2 = dm3Var3;
                                f9 = SliderKt.TrackInsideCornerSize;
                            } else {
                                boolean z11110 = z2;
                                f8 = f7;
                                z5 = z11110;
                                f9 = f3;
                                dm3Var2 = dm3Var3;
                            }
                        }
                        bm3Var3 = bm3Var2;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1691224881, i3, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1502)");
                        }
                        Modifier modifier12 = modifier2;
                        SliderColors sliderColors12 = sliderColors2;
                        m3884TrackImplVvwgllI(sliderState, f, modifier12, z5, sliderColors12, bm3Var3, dm3Var2, f8, f9, true, false, composerStartRestartGroup, (i3 & 14) | 805306368 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | (29360128 & i3) | (234881024 & i3), ((i3 >> 24) & 112) | 6);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier12;
                        f6 = f8;
                        f5 = f9;
                        z4 = z5;
                        sliderColors3 = sliderColors12;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        dm3Var2 = dm3Var;
                        f5 = f3;
                        f6 = f4;
                        bm3Var3 = bm3Var2;
                        z4 = z2;
                        sliderColors3 = sliderColors2;
                        modifier3 = modifier2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: i28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return SliderDefaults.Track_mnvyFg4$lambda$21(this, sliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f6, f5, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                if ((i2 & 512) != 0) {
                    i3 |= 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i14 = 536870912;
                    } else {
                        i14 = 268435456;
                    }
                    i3 |= i14;
                }
                if ((306783379 & i3) != 306783378) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 16) != 0) {
                            SliderColors sliderColorsColors18 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -57345;
                            sliderColors2 = sliderColorsColors18;
                        }
                        if ((i2 & 32) != 0) {
                            z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z6) {
                                objRememberedValue2 = new bm3() { // from class: h28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: h28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            i3 &= -458753;
                            bm3Var2 = (bm3) objRememberedValue2;
                        }
                        if (i8 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i10 != 0) {
                            f7 = SliderKt.ThumbTrackGapSize;
                        } else {
                            f7 = f4;
                        }
                        if (i12 != 0) {
                            boolean z11111 = z2;
                            f8 = f7;
                            z5 = z11111;
                            dm3Var2 = dm3Var3;
                            f9 = SliderKt.TrackInsideCornerSize;
                        } else {
                            boolean z11112 = z2;
                            f8 = f7;
                            z5 = z11112;
                            f9 = f3;
                            dm3Var2 = dm3Var3;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 16) != 0) {
                            SliderColors sliderColorsColors19 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -57345;
                            sliderColors2 = sliderColorsColors19;
                        }
                        if ((i2 & 32) != 0) {
                            z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z6) {
                                objRememberedValue2 = new bm3() { // from class: h28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: h28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            i3 &= -458753;
                            bm3Var2 = (bm3) objRememberedValue2;
                        }
                        if (i8 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i10 != 0) {
                            f7 = SliderKt.ThumbTrackGapSize;
                        } else {
                            f7 = f4;
                        }
                        if (i12 != 0) {
                            boolean z11113 = z2;
                            f8 = f7;
                            z5 = z11113;
                            dm3Var2 = dm3Var3;
                            f9 = SliderKt.TrackInsideCornerSize;
                        } else {
                            boolean z11114 = z2;
                            f8 = f7;
                            z5 = z11114;
                            f9 = f3;
                            dm3Var2 = dm3Var3;
                        }
                    }
                    bm3Var3 = bm3Var2;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1691224881, i3, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1502)");
                    }
                    Modifier modifier13 = modifier2;
                    SliderColors sliderColors13 = sliderColors2;
                    m3884TrackImplVvwgllI(sliderState, f, modifier13, z5, sliderColors13, bm3Var3, dm3Var2, f8, f9, true, false, composerStartRestartGroup, (i3 & 14) | 805306368 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | (29360128 & i3) | (234881024 & i3), ((i3 >> 24) & 112) | 6);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier13;
                    f6 = f8;
                    f5 = f9;
                    z4 = z5;
                    sliderColors3 = sliderColors13;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    dm3Var2 = dm3Var;
                    f5 = f3;
                    f6 = f4;
                    bm3Var3 = bm3Var2;
                    z4 = z2;
                    sliderColors3 = sliderColors2;
                    modifier3 = modifier2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: i28
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SliderDefaults.Track_mnvyFg4$lambda$21(this, sliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f6, f5, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            z2 = z;
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    sliderColors2 = sliderColors;
                    if (composerStartRestartGroup.changed(sliderColors2)) {
                    }
                    i3 |= i15;
                } else {
                    sliderColors2 = sliderColors;
                }
                i3 |= i15;
            } else {
                sliderColors2 = sliderColors;
            }
            if ((196608 & i) == 0) {
                if ((i2 & 32) == 0) {
                    bm3Var2 = bm3Var;
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    }
                    i3 |= i16;
                } else {
                    bm3Var2 = bm3Var;
                }
                i3 |= i16;
            } else {
                bm3Var2 = bm3Var;
            }
            i8 = i2 & 64;
            if (i8 != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i3 |= i9;
            }
            i10 = i2 & 128;
            if (i10 != 0) {
                i3 |= 12582912;
                f4 = f2;
            } else {
                f4 = f2;
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(f4)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i3 |= i11;
                }
            }
            i12 = i2 & 256;
            if (i12 != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(f3)) {
                        i13 = 67108864;
                    } else {
                        i13 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i13;
                }
                if ((i2 & 512) != 0) {
                    i3 |= 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i14 = 536870912;
                    } else {
                        i14 = 268435456;
                    }
                    i3 |= i14;
                }
                if ((306783379 & i3) != 306783378) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 16) != 0) {
                            SliderColors sliderColorsColors110 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -57345;
                            sliderColors2 = sliderColorsColors110;
                        }
                        if ((i2 & 32) != 0) {
                            z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z6) {
                                objRememberedValue2 = new bm3() { // from class: h28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: h28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            i3 &= -458753;
                            bm3Var2 = (bm3) objRememberedValue2;
                        }
                        if (i8 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i10 != 0) {
                            f7 = SliderKt.ThumbTrackGapSize;
                        } else {
                            f7 = f4;
                        }
                        if (i12 != 0) {
                            boolean z11115 = z2;
                            f8 = f7;
                            z5 = z11115;
                            dm3Var2 = dm3Var3;
                            f9 = SliderKt.TrackInsideCornerSize;
                        } else {
                            boolean z11116 = z2;
                            f8 = f7;
                            z5 = z11116;
                            f9 = f3;
                            dm3Var2 = dm3Var3;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 16) != 0) {
                            SliderColors sliderColorsColors111 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -57345;
                            sliderColors2 = sliderColorsColors111;
                        }
                        if ((i2 & 32) != 0) {
                            z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z6) {
                                objRememberedValue2 = new bm3() { // from class: h28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: h28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            i3 &= -458753;
                            bm3Var2 = (bm3) objRememberedValue2;
                        }
                        if (i8 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i10 != 0) {
                            f7 = SliderKt.ThumbTrackGapSize;
                        } else {
                            f7 = f4;
                        }
                        if (i12 != 0) {
                            boolean z11117 = z2;
                            f8 = f7;
                            z5 = z11117;
                            dm3Var2 = dm3Var3;
                            f9 = SliderKt.TrackInsideCornerSize;
                        } else {
                            boolean z11118 = z2;
                            f8 = f7;
                            z5 = z11118;
                            f9 = f3;
                            dm3Var2 = dm3Var3;
                        }
                    }
                    bm3Var3 = bm3Var2;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1691224881, i3, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1502)");
                    }
                    Modifier modifier14 = modifier2;
                    SliderColors sliderColors14 = sliderColors2;
                    m3884TrackImplVvwgllI(sliderState, f, modifier14, z5, sliderColors14, bm3Var3, dm3Var2, f8, f9, true, false, composerStartRestartGroup, (i3 & 14) | 805306368 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | (29360128 & i3) | (234881024 & i3), ((i3 >> 24) & 112) | 6);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier14;
                    f6 = f8;
                    f5 = f9;
                    z4 = z5;
                    sliderColors3 = sliderColors14;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    dm3Var2 = dm3Var;
                    f5 = f3;
                    f6 = f4;
                    bm3Var3 = bm3Var2;
                    z4 = z2;
                    sliderColors3 = sliderColors2;
                    modifier3 = modifier2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: i28
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SliderDefaults.Track_mnvyFg4$lambda$21(this, sliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f6, f5, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            if ((i2 & 512) != 0) {
                i3 |= 805306368;
            } else if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i14 = 536870912;
                } else {
                    i14 = 268435456;
                }
                i3 |= i14;
            }
            if ((306783379 & i3) != 306783378) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 16) != 0) {
                        SliderColors sliderColorsColors112 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                        i3 &= -57345;
                        sliderColors2 = sliderColorsColors112;
                    }
                    if ((i2 & 32) != 0) {
                        z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z6) {
                            objRememberedValue2 = new bm3() { // from class: h28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: h28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        i3 &= -458753;
                        bm3Var2 = (bm3) objRememberedValue2;
                    }
                    if (i8 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i10 != 0) {
                        f7 = SliderKt.ThumbTrackGapSize;
                    } else {
                        f7 = f4;
                    }
                    if (i12 != 0) {
                        boolean z11119 = z2;
                        f8 = f7;
                        z5 = z11119;
                        dm3Var2 = dm3Var3;
                        f9 = SliderKt.TrackInsideCornerSize;
                    } else {
                        boolean z111110 = z2;
                        f8 = f7;
                        z5 = z111110;
                        f9 = f3;
                        dm3Var2 = dm3Var3;
                    }
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 16) != 0) {
                        SliderColors sliderColorsColors113 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                        i3 &= -57345;
                        sliderColors2 = sliderColorsColors113;
                    }
                    if ((i2 & 32) != 0) {
                        z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z6) {
                            objRememberedValue2 = new bm3() { // from class: h28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: h28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        i3 &= -458753;
                        bm3Var2 = (bm3) objRememberedValue2;
                    }
                    if (i8 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i10 != 0) {
                        f7 = SliderKt.ThumbTrackGapSize;
                    } else {
                        f7 = f4;
                    }
                    if (i12 != 0) {
                        boolean z111111 = z2;
                        f8 = f7;
                        z5 = z111111;
                        dm3Var2 = dm3Var3;
                        f9 = SliderKt.TrackInsideCornerSize;
                    } else {
                        boolean z111112 = z2;
                        f8 = f7;
                        z5 = z111112;
                        f9 = f3;
                        dm3Var2 = dm3Var3;
                    }
                }
                bm3Var3 = bm3Var2;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1691224881, i3, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1502)");
                }
                Modifier modifier15 = modifier2;
                SliderColors sliderColors15 = sliderColors2;
                m3884TrackImplVvwgllI(sliderState, f, modifier15, z5, sliderColors15, bm3Var3, dm3Var2, f8, f9, true, false, composerStartRestartGroup, (i3 & 14) | 805306368 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | (29360128 & i3) | (234881024 & i3), ((i3 >> 24) & 112) | 6);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier15;
                f6 = f8;
                f5 = f9;
                z4 = z5;
                sliderColors3 = sliderColors15;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                dm3Var2 = dm3Var;
                f5 = f3;
                f6 = f4;
                bm3Var3 = bm3Var2;
                z4 = z2;
                sliderColors3 = sliderColors2;
                modifier3 = modifier2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: i28
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SliderDefaults.Track_mnvyFg4$lambda$21(this, sliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f6, f5, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        modifier2 = modifier;
        i6 = i2 & 8;
        if (i6 != 0) {
            if ((i & 3072) == 0) {
                z2 = z;
                if (composerStartRestartGroup.changed(z2)) {
                    i7 = 2048;
                } else {
                    i7 = 1024;
                }
                i3 |= i7;
            }
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    sliderColors2 = sliderColors;
                    if (composerStartRestartGroup.changed(sliderColors2)) {
                    }
                    i3 |= i15;
                } else {
                    sliderColors2 = sliderColors;
                }
                i3 |= i15;
            } else {
                sliderColors2 = sliderColors;
            }
            if ((196608 & i) == 0) {
                if ((i2 & 32) == 0) {
                    bm3Var2 = bm3Var;
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    }
                    i3 |= i16;
                } else {
                    bm3Var2 = bm3Var;
                }
                i3 |= i16;
            } else {
                bm3Var2 = bm3Var;
            }
            i8 = i2 & 64;
            if (i8 != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i3 |= i9;
            }
            i10 = i2 & 128;
            if (i10 != 0) {
                i3 |= 12582912;
                f4 = f2;
            } else {
                f4 = f2;
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(f4)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i3 |= i11;
                }
            }
            i12 = i2 & 256;
            if (i12 != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(f3)) {
                        i13 = 67108864;
                    } else {
                        i13 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i13;
                }
                if ((i2 & 512) != 0) {
                    i3 |= 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i14 = 536870912;
                    } else {
                        i14 = 268435456;
                    }
                    i3 |= i14;
                }
                if ((306783379 & i3) != 306783378) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 16) != 0) {
                            SliderColors sliderColorsColors114 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -57345;
                            sliderColors2 = sliderColorsColors114;
                        }
                        if ((i2 & 32) != 0) {
                            z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z6) {
                                objRememberedValue2 = new bm3() { // from class: h28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: h28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            i3 &= -458753;
                            bm3Var2 = (bm3) objRememberedValue2;
                        }
                        if (i8 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i10 != 0) {
                            f7 = SliderKt.ThumbTrackGapSize;
                        } else {
                            f7 = f4;
                        }
                        if (i12 != 0) {
                            boolean z111113 = z2;
                            f8 = f7;
                            z5 = z111113;
                            dm3Var2 = dm3Var3;
                            f9 = SliderKt.TrackInsideCornerSize;
                        } else {
                            boolean z111114 = z2;
                            f8 = f7;
                            z5 = z111114;
                            f9 = f3;
                            dm3Var2 = dm3Var3;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 16) != 0) {
                            SliderColors sliderColorsColors115 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -57345;
                            sliderColors2 = sliderColorsColors115;
                        }
                        if ((i2 & 32) != 0) {
                            z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z6) {
                                objRememberedValue2 = new bm3() { // from class: h28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: h28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            i3 &= -458753;
                            bm3Var2 = (bm3) objRememberedValue2;
                        }
                        if (i8 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i10 != 0) {
                            f7 = SliderKt.ThumbTrackGapSize;
                        } else {
                            f7 = f4;
                        }
                        if (i12 != 0) {
                            boolean z111115 = z2;
                            f8 = f7;
                            z5 = z111115;
                            dm3Var2 = dm3Var3;
                            f9 = SliderKt.TrackInsideCornerSize;
                        } else {
                            boolean z111116 = z2;
                            f8 = f7;
                            z5 = z111116;
                            f9 = f3;
                            dm3Var2 = dm3Var3;
                        }
                    }
                    bm3Var3 = bm3Var2;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1691224881, i3, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1502)");
                    }
                    Modifier modifier16 = modifier2;
                    SliderColors sliderColors16 = sliderColors2;
                    m3884TrackImplVvwgllI(sliderState, f, modifier16, z5, sliderColors16, bm3Var3, dm3Var2, f8, f9, true, false, composerStartRestartGroup, (i3 & 14) | 805306368 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | (29360128 & i3) | (234881024 & i3), ((i3 >> 24) & 112) | 6);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier16;
                    f6 = f8;
                    f5 = f9;
                    z4 = z5;
                    sliderColors3 = sliderColors16;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    dm3Var2 = dm3Var;
                    f5 = f3;
                    f6 = f4;
                    bm3Var3 = bm3Var2;
                    z4 = z2;
                    sliderColors3 = sliderColors2;
                    modifier3 = modifier2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: i28
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SliderDefaults.Track_mnvyFg4$lambda$21(this, sliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f6, f5, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            if ((i2 & 512) != 0) {
                i3 |= 805306368;
            } else if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i14 = 536870912;
                } else {
                    i14 = 268435456;
                }
                i3 |= i14;
            }
            if ((306783379 & i3) != 306783378) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 16) != 0) {
                        SliderColors sliderColorsColors116 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                        i3 &= -57345;
                        sliderColors2 = sliderColorsColors116;
                    }
                    if ((i2 & 32) != 0) {
                        z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z6) {
                            objRememberedValue2 = new bm3() { // from class: h28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: h28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        i3 &= -458753;
                        bm3Var2 = (bm3) objRememberedValue2;
                    }
                    if (i8 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i10 != 0) {
                        f7 = SliderKt.ThumbTrackGapSize;
                    } else {
                        f7 = f4;
                    }
                    if (i12 != 0) {
                        boolean z111117 = z2;
                        f8 = f7;
                        z5 = z111117;
                        dm3Var2 = dm3Var3;
                        f9 = SliderKt.TrackInsideCornerSize;
                    } else {
                        boolean z111118 = z2;
                        f8 = f7;
                        z5 = z111118;
                        f9 = f3;
                        dm3Var2 = dm3Var3;
                    }
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 16) != 0) {
                        SliderColors sliderColorsColors117 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                        i3 &= -57345;
                        sliderColors2 = sliderColorsColors117;
                    }
                    if ((i2 & 32) != 0) {
                        z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z6) {
                            objRememberedValue2 = new bm3() { // from class: h28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: h28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        i3 &= -458753;
                        bm3Var2 = (bm3) objRememberedValue2;
                    }
                    if (i8 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i10 != 0) {
                        f7 = SliderKt.ThumbTrackGapSize;
                    } else {
                        f7 = f4;
                    }
                    if (i12 != 0) {
                        boolean z111119 = z2;
                        f8 = f7;
                        z5 = z111119;
                        dm3Var2 = dm3Var3;
                        f9 = SliderKt.TrackInsideCornerSize;
                    } else {
                        boolean z1111110 = z2;
                        f8 = f7;
                        z5 = z1111110;
                        f9 = f3;
                        dm3Var2 = dm3Var3;
                    }
                }
                bm3Var3 = bm3Var2;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1691224881, i3, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1502)");
                }
                Modifier modifier17 = modifier2;
                SliderColors sliderColors17 = sliderColors2;
                m3884TrackImplVvwgllI(sliderState, f, modifier17, z5, sliderColors17, bm3Var3, dm3Var2, f8, f9, true, false, composerStartRestartGroup, (i3 & 14) | 805306368 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | (29360128 & i3) | (234881024 & i3), ((i3 >> 24) & 112) | 6);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier17;
                f6 = f8;
                f5 = f9;
                z4 = z5;
                sliderColors3 = sliderColors17;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                dm3Var2 = dm3Var;
                f5 = f3;
                f6 = f4;
                bm3Var3 = bm3Var2;
                z4 = z2;
                sliderColors3 = sliderColors2;
                modifier3 = modifier2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: i28
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SliderDefaults.Track_mnvyFg4$lambda$21(this, sliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f6, f5, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        z2 = z;
        if ((i & 24576) == 0) {
            if ((i2 & 16) == 0) {
                sliderColors2 = sliderColors;
                if (composerStartRestartGroup.changed(sliderColors2)) {
                }
                i3 |= i15;
            } else {
                sliderColors2 = sliderColors;
            }
            i3 |= i15;
        } else {
            sliderColors2 = sliderColors;
        }
        if ((196608 & i) == 0) {
            if ((i2 & 32) == 0) {
                bm3Var2 = bm3Var;
                if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                }
                i3 |= i16;
            } else {
                bm3Var2 = bm3Var;
            }
            i3 |= i16;
        } else {
            bm3Var2 = bm3Var;
        }
        i8 = i2 & 64;
        if (i8 != 0) {
            i3 |= 1572864;
        } else if ((i & 1572864) == 0) {
            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                i9 = 1048576;
            } else {
                i9 = 524288;
            }
            i3 |= i9;
        }
        i10 = i2 & 128;
        if (i10 != 0) {
            i3 |= 12582912;
            f4 = f2;
        } else {
            f4 = f2;
            if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(f4)) {
                    i11 = 8388608;
                } else {
                    i11 = 4194304;
                }
                i3 |= i11;
            }
        }
        i12 = i2 & 256;
        if (i12 != 0) {
            if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(f3)) {
                    i13 = 67108864;
                } else {
                    i13 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i13;
            }
            if ((i2 & 512) != 0) {
                i3 |= 805306368;
            } else if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i14 = 536870912;
                } else {
                    i14 = 268435456;
                }
                i3 |= i14;
            }
            if ((306783379 & i3) != 306783378) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 16) != 0) {
                        SliderColors sliderColorsColors118 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                        i3 &= -57345;
                        sliderColors2 = sliderColorsColors118;
                    }
                    if ((i2 & 32) != 0) {
                        z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z6) {
                            objRememberedValue2 = new bm3() { // from class: h28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: h28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        i3 &= -458753;
                        bm3Var2 = (bm3) objRememberedValue2;
                    }
                    if (i8 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i10 != 0) {
                        f7 = SliderKt.ThumbTrackGapSize;
                    } else {
                        f7 = f4;
                    }
                    if (i12 != 0) {
                        boolean z1111111 = z2;
                        f8 = f7;
                        z5 = z1111111;
                        dm3Var2 = dm3Var3;
                        f9 = SliderKt.TrackInsideCornerSize;
                    } else {
                        boolean z1111112 = z2;
                        f8 = f7;
                        z5 = z1111112;
                        f9 = f3;
                        dm3Var2 = dm3Var3;
                    }
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 16) != 0) {
                        SliderColors sliderColorsColors119 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                        i3 &= -57345;
                        sliderColors2 = sliderColorsColors119;
                    }
                    if ((i2 & 32) != 0) {
                        z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z6) {
                            objRememberedValue2 = new bm3() { // from class: h28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: h28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        i3 &= -458753;
                        bm3Var2 = (bm3) objRememberedValue2;
                    }
                    if (i8 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i10 != 0) {
                        f7 = SliderKt.ThumbTrackGapSize;
                    } else {
                        f7 = f4;
                    }
                    if (i12 != 0) {
                        boolean z1111113 = z2;
                        f8 = f7;
                        z5 = z1111113;
                        dm3Var2 = dm3Var3;
                        f9 = SliderKt.TrackInsideCornerSize;
                    } else {
                        boolean z1111114 = z2;
                        f8 = f7;
                        z5 = z1111114;
                        f9 = f3;
                        dm3Var2 = dm3Var3;
                    }
                }
                bm3Var3 = bm3Var2;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1691224881, i3, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1502)");
                }
                Modifier modifier18 = modifier2;
                SliderColors sliderColors18 = sliderColors2;
                m3884TrackImplVvwgllI(sliderState, f, modifier18, z5, sliderColors18, bm3Var3, dm3Var2, f8, f9, true, false, composerStartRestartGroup, (i3 & 14) | 805306368 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | (29360128 & i3) | (234881024 & i3), ((i3 >> 24) & 112) | 6);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier18;
                f6 = f8;
                f5 = f9;
                z4 = z5;
                sliderColors3 = sliderColors18;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                dm3Var2 = dm3Var;
                f5 = f3;
                f6 = f4;
                bm3Var3 = bm3Var2;
                z4 = z2;
                sliderColors3 = sliderColors2;
                modifier3 = modifier2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: i28
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SliderDefaults.Track_mnvyFg4$lambda$21(this, sliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f6, f5, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 100663296;
        if ((i2 & 512) != 0) {
            i3 |= 805306368;
        } else if ((i & 805306368) == 0) {
            if (composerStartRestartGroup.changed(this)) {
                i14 = 536870912;
            } else {
                i14 = 268435456;
            }
            i3 |= i14;
        }
        if ((306783379 & i3) != 306783378) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i4 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i6 != 0) {
                    z2 = true;
                }
                if ((i2 & 16) != 0) {
                    SliderColors sliderColorsColors1110 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                    i3 &= -57345;
                    sliderColors2 = sliderColorsColors1110;
                }
                if ((i2 & 32) != 0) {
                    z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z6) {
                        objRememberedValue2 = new bm3() { // from class: h28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new bm3() { // from class: h28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    i3 &= -458753;
                    bm3Var2 = (bm3) objRememberedValue2;
                }
                if (i8 != 0) {
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                return j59.a;
                            }

                            /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                            public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    dm3Var3 = (dm3) objRememberedValue;
                } else {
                    dm3Var3 = dm3Var;
                }
                if (i10 != 0) {
                    f7 = SliderKt.ThumbTrackGapSize;
                } else {
                    f7 = f4;
                }
                if (i12 != 0) {
                    boolean z1111115 = z2;
                    f8 = f7;
                    z5 = z1111115;
                    dm3Var2 = dm3Var3;
                    f9 = SliderKt.TrackInsideCornerSize;
                } else {
                    boolean z1111116 = z2;
                    f8 = f7;
                    z5 = z1111116;
                    f9 = f3;
                    dm3Var2 = dm3Var3;
                }
            } else {
                if (i4 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i6 != 0) {
                    z2 = true;
                }
                if ((i2 & 16) != 0) {
                    SliderColors sliderColorsColors1111 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                    i3 &= -57345;
                    sliderColors2 = sliderColorsColors1111;
                }
                if ((i2 & 32) != 0) {
                    z6 = ((((i3 & 57344) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z6) {
                        objRememberedValue2 = new bm3() { // from class: h28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new bm3() { // from class: h28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SliderDefaults.Track_mnvyFg4$lambda$19$lambda$18(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    i3 &= -458753;
                    bm3Var2 = (bm3) objRememberedValue2;
                }
                if (i8 != 0) {
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$8$1
                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                m3904invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                return j59.a;
                            }

                            /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                            public final void m3904invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    dm3Var3 = (dm3) objRememberedValue;
                } else {
                    dm3Var3 = dm3Var;
                }
                if (i10 != 0) {
                    f7 = SliderKt.ThumbTrackGapSize;
                } else {
                    f7 = f4;
                }
                if (i12 != 0) {
                    boolean z1111117 = z2;
                    f8 = f7;
                    z5 = z1111117;
                    dm3Var2 = dm3Var3;
                    f9 = SliderKt.TrackInsideCornerSize;
                } else {
                    boolean z1111118 = z2;
                    f8 = f7;
                    z5 = z1111118;
                    f9 = f3;
                    dm3Var2 = dm3Var3;
                }
            }
            bm3Var3 = bm3Var2;
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1691224881, i3, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1502)");
            }
            Modifier modifier19 = modifier2;
            SliderColors sliderColors19 = sliderColors2;
            m3884TrackImplVvwgllI(sliderState, f, modifier19, z5, sliderColors19, bm3Var3, dm3Var2, f8, f9, true, false, composerStartRestartGroup, (i3 & 14) | 805306368 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | (29360128 & i3) | (234881024 & i3), ((i3 >> 24) & 112) | 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier19;
            f6 = f8;
            f5 = f9;
            z4 = z5;
            sliderColors3 = sliderColors19;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            dm3Var2 = dm3Var;
            f5 = f3;
            f6 = f4;
            bm3Var3 = bm3Var2;
            z4 = z2;
            sliderColors3 = sliderColors2;
            modifier3 = modifier2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: i28
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return SliderDefaults.Track_mnvyFg4$lambda$21(this, sliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f6, f5, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    public final SliderColors colors(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1376295968, i, -1, "androidx.compose.material3.SliderDefaults.colors (Slider.kt:1107)");
        }
        SliderColors defaultSliderColors$material3 = getDefaultSliderColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return defaultSliderColors$material3;
    }

    /* JADX INFO: renamed from: colors-q0g_0yA, reason: not valid java name */
    public final SliderColors m3896colorsq0g_0yA(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, Composer composer, int i, int i2, int i3) {
        long jM6268getUnspecified0d7_KjU = (i3 & 1) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j;
        long jM6268getUnspecified0d7_KjU2 = (i3 & 2) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j2;
        long jM6268getUnspecified0d7_KjU3 = (i3 & 4) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j3;
        long jM6268getUnspecified0d7_KjU4 = (i3 & 8) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j4;
        long jM6268getUnspecified0d7_KjU5 = (i3 & 16) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j5;
        long jM6268getUnspecified0d7_KjU6 = (i3 & 32) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j6;
        long jM6268getUnspecified0d7_KjU7 = (i3 & 64) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j7;
        long jM6268getUnspecified0d7_KjU8 = (i3 & 128) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j8;
        long j11 = jM6268getUnspecified0d7_KjU;
        long jM6268getUnspecified0d7_KjU9 = (i3 & 256) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j9;
        long jM6268getUnspecified0d7_KjU10 = (i3 & 512) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j10;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(885588574, i, i2, "androidx.compose.material3.SliderDefaults.colors (Slider.kt:1149)");
        }
        SliderColors sliderColorsM3870copyK518z4 = getDefaultSliderColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6)).m3870copyK518z4(j11, jM6268getUnspecified0d7_KjU2, jM6268getUnspecified0d7_KjU3, jM6268getUnspecified0d7_KjU4, jM6268getUnspecified0d7_KjU5, jM6268getUnspecified0d7_KjU6, jM6268getUnspecified0d7_KjU7, jM6268getUnspecified0d7_KjU8, jM6268getUnspecified0d7_KjU9, jM6268getUnspecified0d7_KjU10);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return sliderColorsM3870copyK518z4;
    }

    /* JADX INFO: renamed from: drawStopIndicator-x3O1jOs, reason: not valid java name */
    public final void m3897drawStopIndicatorx3O1jOs(DrawScope drawScope, long j, float f, long j2) {
        DrawScope.m6787drawCircleVaOC9Bg$default(drawScope, j2, drawScope.mo1434toPx0680j_4(f) / 2.0f, j, 0.0f, null, null, 0, 120, null);
    }

    public final SliderColors getDefaultSliderColors$material3(ColorScheme colorScheme) {
        SliderColors defaultSliderColorsCached$material3 = colorScheme.getDefaultSliderColorsCached$material3();
        if (defaultSliderColorsCached$material3 != null) {
            return defaultSliderColorsCached$material3;
        }
        SliderTokens sliderTokens = SliderTokens.INSTANCE;
        SliderColors sliderColors = new SliderColors(ColorSchemeKt.fromToken(colorScheme, sliderTokens.getHandleColor()), ColorSchemeKt.fromToken(colorScheme, sliderTokens.getActiveTrackColor()), ColorSchemeKt.fromToken(colorScheme, sliderTokens.getInactiveTrackColor()), ColorSchemeKt.fromToken(colorScheme, sliderTokens.getInactiveTrackColor()), ColorSchemeKt.fromToken(colorScheme, sliderTokens.getActiveTrackColor()), ColorKt.m6277compositeOverOWjLjI(Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, sliderTokens.getDisabledHandleColor()), sliderTokens.getDisabledHandleOpacity(), 0.0f, 0.0f, 0.0f, 14, null), colorScheme.m3259getSurface0d7_KjU()), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, sliderTokens.getDisabledActiveTrackColor()), sliderTokens.getDisabledActiveTrackOpacity(), 0.0f, 0.0f, 0.0f, 14, null), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, sliderTokens.getDisabledInactiveTrackColor()), sliderTokens.getDisabledInactiveTrackOpacity(), 0.0f, 0.0f, 0.0f, 14, null), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, sliderTokens.getDisabledInactiveTrackColor()), sliderTokens.getDisabledInactiveTrackOpacity(), 0.0f, 0.0f, 0.0f, 14, null), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, sliderTokens.getDisabledActiveTrackColor()), sliderTokens.getDisabledActiveTrackOpacity(), 0.0f, 0.0f, 0.0f, 14, null), null);
        colorScheme.setDefaultSliderColorsCached$material3(sliderColors);
        return sliderColors;
    }

    /* JADX INFO: renamed from: getTickSize-D9Ej5fM, reason: not valid java name */
    public final float m3898getTickSizeD9Ej5fM() {
        return TickSize;
    }

    /* JADX INFO: renamed from: getTrackStopIndicatorSize-D9Ej5fM, reason: not valid java name */
    public final float m3899getTrackStopIndicatorSizeD9Ej5fM() {
        return TrackStopIndicatorSize;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0042  */
    /* JADX WARN: Code duplicated, block: B:28:0x0046  */
    /* JADX WARN: Code duplicated, block: B:30:0x004e  */
    /* JADX WARN: Code duplicated, block: B:31:0x0051  */
    /* JADX WARN: Code duplicated, block: B:34:0x0057  */
    /* JADX WARN: Code duplicated, block: B:37:0x005d  */
    /* JADX WARN: Code duplicated, block: B:39:0x0062  */
    /* JADX WARN: Code duplicated, block: B:41:0x0066  */
    /* JADX WARN: Code duplicated, block: B:43:0x006e  */
    /* JADX WARN: Code duplicated, block: B:44:0x0071  */
    /* JADX WARN: Code duplicated, block: B:48:0x0078  */
    /* JADX WARN: Code duplicated, block: B:49:0x007b  */
    /* JADX WARN: Code duplicated, block: B:51:0x007f  */
    /* JADX WARN: Code duplicated, block: B:53:0x0085  */
    /* JADX WARN: Code duplicated, block: B:54:0x0088  */
    /* JADX WARN: Code duplicated, block: B:58:0x0092  */
    /* JADX WARN: Code duplicated, block: B:59:0x0094  */
    /* JADX WARN: Code duplicated, block: B:62:0x009d  */
    /* JADX WARN: Code duplicated, block: B:64:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:71:0x00b7 A[PHI: r4 r5 r6
      0x00b7: PHI (r4v8 androidx.compose.ui.Modifier) = (r4v4 androidx.compose.ui.Modifier), (r4v10 androidx.compose.ui.Modifier) binds: [B:80:0x00d0, B:70:0x00b4] A[DONT_GENERATE, DONT_INLINE]
      0x00b7: PHI (r5v14 androidx.compose.material3.SliderColors) = (r5v7 androidx.compose.material3.SliderColors), (r5v15 androidx.compose.material3.SliderColors) binds: [B:80:0x00d0, B:70:0x00b4] A[DONT_GENERATE, DONT_INLINE]
      0x00b7: PHI (r6v13 int) = (r6v8 int), (r6v14 int) binds: [B:80:0x00d0, B:70:0x00b4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:72:0x00b9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:74:0x00be  */
    /* JADX WARN: Code duplicated, block: B:77:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:78:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:81:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:84:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:87:0x0114  */
    /* JADX WARN: Code duplicated, block: B:89:0x011a  */
    /* JADX WARN: Code duplicated, block: B:92:0x0126  */
    /* JADX WARN: Code duplicated, block: B:94:? A[RETURN, SYNTHETIC] */
    @ul2
    public final /* synthetic */ void Track(final SliderState sliderState, Modifier modifier, SliderColors sliderColors, boolean z, Composer composer, final int i, final int i2) {
        int i3;
        Modifier modifier2;
        SliderColors sliderColors2;
        int i4;
        boolean z2;
        int i5;
        int i6;
        boolean z3;
        final Modifier modifier3;
        final SliderColors sliderColors3;
        final boolean z4;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        SliderColors sliderColorsColors;
        int i7;
        boolean z5;
        Composer composerStartRestartGroup = composer.startRestartGroup(593554206);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changedInstance(sliderState) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i8 = i2 & 2;
        if (i8 == 0) {
            if ((i & 48) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if ((i2 & 4) == 0) {
                    sliderColors2 = sliderColors;
                    int i9 = composerStartRestartGroup.changed(sliderColors2) ? 256 : 128;
                    i3 |= i9;
                } else {
                    sliderColors2 = sliderColors;
                }
                i3 |= i9;
            } else {
                sliderColors2 = sliderColors;
            }
            i4 = i2 & 8;
            if (i4 != 0) {
                if ((i & 3072) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i5 = 2048;
                    } else {
                        i5 = 1024;
                    }
                    i3 |= i5;
                }
                if ((i2 & 16) != 0) {
                    i3 |= 24576;
                } else if ((i & 24576) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i6 = 16384;
                    } else {
                        i6 = 8192;
                    }
                    i3 |= i6;
                }
                if ((i3 & 9363) != 9362) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0 && !composerStartRestartGroup.getDefaultsInvalid()) {
                        composerStartRestartGroup.skipToGroupEnd();
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                        }
                        modifier4 = modifier2;
                        sliderColorsColors = sliderColors2;
                        i7 = i3;
                    } else {
                        if (i8 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i2 & 4) != 0) {
                            sliderColorsColors = colors(composerStartRestartGroup, (i3 >> 12) & 14);
                            i3 &= -897;
                        } else {
                            sliderColorsColors = sliderColors2;
                        }
                        i7 = i3;
                        if (i4 != 0) {
                            z5 = true;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(593554206, i7, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1400)");
                        }
                        Modifier modifier5 = modifier4;
                        sliderColors3 = sliderColorsColors;
                        m3893Track4EFweAY(sliderState, modifier5, z5, sliderColors3, (bm3<? super DrawScope, ? super Offset, j59>) null, (dm3<? super DrawScope, ? super Offset, ? super Color, j59>) null, SliderKt.ThumbTrackGapSize, SliderKt.TrackInsideCornerSize, composerStartRestartGroup, (i7 & 14) | 14155776 | (i7 & 112) | ((i7 >> 3) & 896) | ((i7 << 3) & 7168) | ((i7 << 12) & 234881024), 48);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z4 = z5;
                        modifier3 = modifier5;
                    }
                    z5 = z2;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(593554206, i7, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1400)");
                    }
                    Modifier modifier6 = modifier4;
                    sliderColors3 = sliderColorsColors;
                    m3893Track4EFweAY(sliderState, modifier6, z5, sliderColors3, (bm3<? super DrawScope, ? super Offset, j59>) null, (dm3<? super DrawScope, ? super Offset, ? super Color, j59>) null, SliderKt.ThumbTrackGapSize, SliderKt.TrackInsideCornerSize, composerStartRestartGroup, (i7 & 14) | 14155776 | (i7 & 112) | ((i7 >> 3) & 896) | ((i7 << 3) & 7168) | ((i7 << 12) & 234881024), 48);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z4 = z5;
                    modifier3 = modifier6;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    sliderColors3 = sliderColors2;
                    z4 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: d28
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SliderDefaults.Track$lambda$13(this.b, sliderState, modifier3, sliderColors3, z4, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            z2 = z;
            if ((i2 & 16) != 0) {
                i3 |= 24576;
            } else if ((i & 24576) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i3 |= i6;
            }
            if ((i3 & 9363) != 9362) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) == 0) {
                    if (i8 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 4) != 0) {
                        sliderColorsColors = colors(composerStartRestartGroup, (i3 >> 12) & 14);
                        i3 &= -897;
                    } else {
                        sliderColorsColors = sliderColors2;
                    }
                    i7 = i3;
                    if (i4 != 0) {
                        z5 = true;
                    } else {
                        z5 = z2;
                    }
                } else {
                    if (i8 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 4) != 0) {
                        sliderColorsColors = colors(composerStartRestartGroup, (i3 >> 12) & 14);
                        i3 &= -897;
                    } else {
                        sliderColorsColors = sliderColors2;
                    }
                    i7 = i3;
                    if (i4 != 0) {
                        z5 = true;
                    } else {
                        z5 = z2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(593554206, i7, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1400)");
                }
                Modifier modifier7 = modifier4;
                sliderColors3 = sliderColorsColors;
                m3893Track4EFweAY(sliderState, modifier7, z5, sliderColors3, (bm3<? super DrawScope, ? super Offset, j59>) null, (dm3<? super DrawScope, ? super Offset, ? super Color, j59>) null, SliderKt.ThumbTrackGapSize, SliderKt.TrackInsideCornerSize, composerStartRestartGroup, (i7 & 14) | 14155776 | (i7 & 112) | ((i7 >> 3) & 896) | ((i7 << 3) & 7168) | ((i7 << 12) & 234881024), 48);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z4 = z5;
                modifier3 = modifier7;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                sliderColors3 = sliderColors2;
                z4 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: d28
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SliderDefaults.Track$lambda$13(this.b, sliderState, modifier3, sliderColors3, z4, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        modifier2 = modifier;
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i2 & 4) == 0) {
                sliderColors2 = sliderColors;
                if (composerStartRestartGroup.changed(sliderColors2)) {
                }
                i3 |= i9;
            } else {
                sliderColors2 = sliderColors;
            }
            i3 |= i9;
        } else {
            sliderColors2 = sliderColors;
        }
        i4 = i2 & 8;
        if (i4 != 0) {
            if ((i & 3072) == 0) {
                z2 = z;
                if (composerStartRestartGroup.changed(z2)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i3 |= i5;
            }
            if ((i2 & 16) != 0) {
                i3 |= 24576;
            } else if ((i & 24576) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i3 |= i6;
            }
            if ((i3 & 9363) != 9362) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) == 0) {
                    if (i8 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 4) != 0) {
                        sliderColorsColors = colors(composerStartRestartGroup, (i3 >> 12) & 14);
                        i3 &= -897;
                    } else {
                        sliderColorsColors = sliderColors2;
                    }
                    i7 = i3;
                    if (i4 != 0) {
                        z5 = true;
                    } else {
                        z5 = z2;
                    }
                } else {
                    if (i8 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 4) != 0) {
                        sliderColorsColors = colors(composerStartRestartGroup, (i3 >> 12) & 14);
                        i3 &= -897;
                    } else {
                        sliderColorsColors = sliderColors2;
                    }
                    i7 = i3;
                    if (i4 != 0) {
                        z5 = true;
                    } else {
                        z5 = z2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(593554206, i7, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1400)");
                }
                Modifier modifier8 = modifier4;
                sliderColors3 = sliderColorsColors;
                m3893Track4EFweAY(sliderState, modifier8, z5, sliderColors3, (bm3<? super DrawScope, ? super Offset, j59>) null, (dm3<? super DrawScope, ? super Offset, ? super Color, j59>) null, SliderKt.ThumbTrackGapSize, SliderKt.TrackInsideCornerSize, composerStartRestartGroup, (i7 & 14) | 14155776 | (i7 & 112) | ((i7 >> 3) & 896) | ((i7 << 3) & 7168) | ((i7 << 12) & 234881024), 48);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z4 = z5;
                modifier3 = modifier8;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                sliderColors3 = sliderColors2;
                z4 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: d28
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SliderDefaults.Track$lambda$13(this.b, sliderState, modifier3, sliderColors3, z4, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        z2 = z;
        if ((i2 & 16) != 0) {
            i3 |= 24576;
        } else if ((i & 24576) == 0) {
            if (composerStartRestartGroup.changed(this)) {
                i6 = 16384;
            } else {
                i6 = 8192;
            }
            i3 |= i6;
        }
        if ((i3 & 9363) != 9362) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) == 0) {
                if (i8 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i2 & 4) != 0) {
                    sliderColorsColors = colors(composerStartRestartGroup, (i3 >> 12) & 14);
                    i3 &= -897;
                } else {
                    sliderColorsColors = sliderColors2;
                }
                i7 = i3;
                if (i4 != 0) {
                    z5 = true;
                } else {
                    z5 = z2;
                }
            } else {
                if (i8 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i2 & 4) != 0) {
                    sliderColorsColors = colors(composerStartRestartGroup, (i3 >> 12) & 14);
                    i3 &= -897;
                } else {
                    sliderColorsColors = sliderColors2;
                }
                i7 = i3;
                if (i4 != 0) {
                    z5 = true;
                } else {
                    z5 = z2;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(593554206, i7, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1400)");
            }
            Modifier modifier9 = modifier4;
            sliderColors3 = sliderColorsColors;
            m3893Track4EFweAY(sliderState, modifier9, z5, sliderColors3, (bm3<? super DrawScope, ? super Offset, j59>) null, (dm3<? super DrawScope, ? super Offset, ? super Color, j59>) null, SliderKt.ThumbTrackGapSize, SliderKt.TrackInsideCornerSize, composerStartRestartGroup, (i7 & 14) | 14155776 | (i7 & 112) | ((i7 >> 3) & 896) | ((i7 << 3) & 7168) | ((i7 << 12) & 234881024), 48);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            z4 = z5;
            modifier3 = modifier9;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            sliderColors3 = sliderColors2;
            z4 = z2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: d28
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return SliderDefaults.Track$lambda$13(this.b, sliderState, modifier3, sliderColors3, z4, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0042  */
    /* JADX WARN: Code duplicated, block: B:28:0x0046  */
    /* JADX WARN: Code duplicated, block: B:30:0x004e  */
    /* JADX WARN: Code duplicated, block: B:31:0x0051  */
    /* JADX WARN: Code duplicated, block: B:34:0x0057  */
    /* JADX WARN: Code duplicated, block: B:37:0x005d  */
    /* JADX WARN: Code duplicated, block: B:39:0x0062  */
    /* JADX WARN: Code duplicated, block: B:41:0x0066  */
    /* JADX WARN: Code duplicated, block: B:43:0x006e  */
    /* JADX WARN: Code duplicated, block: B:44:0x0071  */
    /* JADX WARN: Code duplicated, block: B:48:0x0078  */
    /* JADX WARN: Code duplicated, block: B:49:0x007b  */
    /* JADX WARN: Code duplicated, block: B:51:0x007f  */
    /* JADX WARN: Code duplicated, block: B:53:0x0085  */
    /* JADX WARN: Code duplicated, block: B:54:0x0088  */
    /* JADX WARN: Code duplicated, block: B:58:0x0092  */
    /* JADX WARN: Code duplicated, block: B:59:0x0094  */
    /* JADX WARN: Code duplicated, block: B:62:0x009d  */
    /* JADX WARN: Code duplicated, block: B:64:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:71:0x00b7 A[PHI: r4 r5 r6
      0x00b7: PHI (r4v8 androidx.compose.ui.Modifier) = (r4v4 androidx.compose.ui.Modifier), (r4v10 androidx.compose.ui.Modifier) binds: [B:80:0x00d0, B:70:0x00b4] A[DONT_GENERATE, DONT_INLINE]
      0x00b7: PHI (r5v14 androidx.compose.material3.SliderColors) = (r5v7 androidx.compose.material3.SliderColors), (r5v15 androidx.compose.material3.SliderColors) binds: [B:80:0x00d0, B:70:0x00b4] A[DONT_GENERATE, DONT_INLINE]
      0x00b7: PHI (r6v13 int) = (r6v8 int), (r6v14 int) binds: [B:80:0x00d0, B:70:0x00b4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:72:0x00b9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:74:0x00be  */
    /* JADX WARN: Code duplicated, block: B:77:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:78:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:81:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:84:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:87:0x0114  */
    /* JADX WARN: Code duplicated, block: B:89:0x011a  */
    /* JADX WARN: Code duplicated, block: B:92:0x0126  */
    /* JADX WARN: Code duplicated, block: B:94:? A[RETURN, SYNTHETIC] */
    @ul2
    public final /* synthetic */ void Track(final RangeSliderState rangeSliderState, Modifier modifier, SliderColors sliderColors, boolean z, Composer composer, final int i, final int i2) {
        int i3;
        Modifier modifier2;
        SliderColors sliderColors2;
        int i4;
        boolean z2;
        int i5;
        int i6;
        boolean z3;
        final Modifier modifier3;
        final SliderColors sliderColors3;
        final boolean z4;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        SliderColors sliderColorsColors;
        int i7;
        boolean z5;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1617869097);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changedInstance(rangeSliderState) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i8 = i2 & 2;
        if (i8 == 0) {
            if ((i & 48) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if ((i2 & 4) == 0) {
                    sliderColors2 = sliderColors;
                    int i9 = composerStartRestartGroup.changed(sliderColors2) ? 256 : 128;
                    i3 |= i9;
                } else {
                    sliderColors2 = sliderColors;
                }
                i3 |= i9;
            } else {
                sliderColors2 = sliderColors;
            }
            i4 = i2 & 8;
            if (i4 != 0) {
                if ((i & 3072) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i5 = 2048;
                    } else {
                        i5 = 1024;
                    }
                    i3 |= i5;
                }
                if ((i2 & 16) != 0) {
                    i3 |= 24576;
                } else if ((i & 24576) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i6 = 16384;
                    } else {
                        i6 = 8192;
                    }
                    i3 |= i6;
                }
                if ((i3 & 9363) != 9362) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0 && !composerStartRestartGroup.getDefaultsInvalid()) {
                        composerStartRestartGroup.skipToGroupEnd();
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                        }
                        modifier4 = modifier2;
                        sliderColorsColors = sliderColors2;
                        i7 = i3;
                    } else {
                        if (i8 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i2 & 4) != 0) {
                            sliderColorsColors = colors(composerStartRestartGroup, (i3 >> 12) & 14);
                            i3 &= -897;
                        } else {
                            sliderColorsColors = sliderColors2;
                        }
                        i7 = i3;
                        if (i4 != 0) {
                            z5 = true;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1617869097, i7, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1688)");
                        }
                        Modifier modifier5 = modifier4;
                        sliderColors3 = sliderColorsColors;
                        m3892Track4EFweAY(rangeSliderState, modifier5, z5, sliderColors3, (bm3<? super DrawScope, ? super Offset, j59>) null, (dm3<? super DrawScope, ? super Offset, ? super Color, j59>) null, SliderKt.ThumbTrackGapSize, SliderKt.TrackInsideCornerSize, composerStartRestartGroup, (i7 & 14) | 14155776 | (i7 & 112) | ((i7 >> 3) & 896) | ((i7 << 3) & 7168) | ((i7 << 12) & 234881024), 48);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z4 = z5;
                        modifier3 = modifier5;
                    }
                    z5 = z2;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1617869097, i7, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1688)");
                    }
                    Modifier modifier6 = modifier4;
                    sliderColors3 = sliderColorsColors;
                    m3892Track4EFweAY(rangeSliderState, modifier6, z5, sliderColors3, (bm3<? super DrawScope, ? super Offset, j59>) null, (dm3<? super DrawScope, ? super Offset, ? super Color, j59>) null, SliderKt.ThumbTrackGapSize, SliderKt.TrackInsideCornerSize, composerStartRestartGroup, (i7 & 14) | 14155776 | (i7 & 112) | ((i7 >> 3) & 896) | ((i7 << 3) & 7168) | ((i7 << 12) & 234881024), 48);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z4 = z5;
                    modifier3 = modifier6;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    sliderColors3 = sliderColors2;
                    z4 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: m28
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SliderDefaults.Track$lambda$33(this.b, rangeSliderState, modifier3, sliderColors3, z4, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            z2 = z;
            if ((i2 & 16) != 0) {
                i3 |= 24576;
            } else if ((i & 24576) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i3 |= i6;
            }
            if ((i3 & 9363) != 9362) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) == 0) {
                    if (i8 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 4) != 0) {
                        sliderColorsColors = colors(composerStartRestartGroup, (i3 >> 12) & 14);
                        i3 &= -897;
                    } else {
                        sliderColorsColors = sliderColors2;
                    }
                    i7 = i3;
                    if (i4 != 0) {
                        z5 = true;
                    } else {
                        z5 = z2;
                    }
                } else {
                    if (i8 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 4) != 0) {
                        sliderColorsColors = colors(composerStartRestartGroup, (i3 >> 12) & 14);
                        i3 &= -897;
                    } else {
                        sliderColorsColors = sliderColors2;
                    }
                    i7 = i3;
                    if (i4 != 0) {
                        z5 = true;
                    } else {
                        z5 = z2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1617869097, i7, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1688)");
                }
                Modifier modifier7 = modifier4;
                sliderColors3 = sliderColorsColors;
                m3892Track4EFweAY(rangeSliderState, modifier7, z5, sliderColors3, (bm3<? super DrawScope, ? super Offset, j59>) null, (dm3<? super DrawScope, ? super Offset, ? super Color, j59>) null, SliderKt.ThumbTrackGapSize, SliderKt.TrackInsideCornerSize, composerStartRestartGroup, (i7 & 14) | 14155776 | (i7 & 112) | ((i7 >> 3) & 896) | ((i7 << 3) & 7168) | ((i7 << 12) & 234881024), 48);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z4 = z5;
                modifier3 = modifier7;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                sliderColors3 = sliderColors2;
                z4 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: m28
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SliderDefaults.Track$lambda$33(this.b, rangeSliderState, modifier3, sliderColors3, z4, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        modifier2 = modifier;
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i2 & 4) == 0) {
                sliderColors2 = sliderColors;
                if (composerStartRestartGroup.changed(sliderColors2)) {
                }
                i3 |= i9;
            } else {
                sliderColors2 = sliderColors;
            }
            i3 |= i9;
        } else {
            sliderColors2 = sliderColors;
        }
        i4 = i2 & 8;
        if (i4 != 0) {
            if ((i & 3072) == 0) {
                z2 = z;
                if (composerStartRestartGroup.changed(z2)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i3 |= i5;
            }
            if ((i2 & 16) != 0) {
                i3 |= 24576;
            } else if ((i & 24576) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i3 |= i6;
            }
            if ((i3 & 9363) != 9362) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) == 0) {
                    if (i8 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 4) != 0) {
                        sliderColorsColors = colors(composerStartRestartGroup, (i3 >> 12) & 14);
                        i3 &= -897;
                    } else {
                        sliderColorsColors = sliderColors2;
                    }
                    i7 = i3;
                    if (i4 != 0) {
                        z5 = true;
                    } else {
                        z5 = z2;
                    }
                } else {
                    if (i8 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 4) != 0) {
                        sliderColorsColors = colors(composerStartRestartGroup, (i3 >> 12) & 14);
                        i3 &= -897;
                    } else {
                        sliderColorsColors = sliderColors2;
                    }
                    i7 = i3;
                    if (i4 != 0) {
                        z5 = true;
                    } else {
                        z5 = z2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1617869097, i7, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1688)");
                }
                Modifier modifier8 = modifier4;
                sliderColors3 = sliderColorsColors;
                m3892Track4EFweAY(rangeSliderState, modifier8, z5, sliderColors3, (bm3<? super DrawScope, ? super Offset, j59>) null, (dm3<? super DrawScope, ? super Offset, ? super Color, j59>) null, SliderKt.ThumbTrackGapSize, SliderKt.TrackInsideCornerSize, composerStartRestartGroup, (i7 & 14) | 14155776 | (i7 & 112) | ((i7 >> 3) & 896) | ((i7 << 3) & 7168) | ((i7 << 12) & 234881024), 48);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z4 = z5;
                modifier3 = modifier8;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                sliderColors3 = sliderColors2;
                z4 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: m28
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SliderDefaults.Track$lambda$33(this.b, rangeSliderState, modifier3, sliderColors3, z4, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        z2 = z;
        if ((i2 & 16) != 0) {
            i3 |= 24576;
        } else if ((i & 24576) == 0) {
            if (composerStartRestartGroup.changed(this)) {
                i6 = 16384;
            } else {
                i6 = 8192;
            }
            i3 |= i6;
        }
        if ((i3 & 9363) != 9362) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) == 0) {
                if (i8 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i2 & 4) != 0) {
                    sliderColorsColors = colors(composerStartRestartGroup, (i3 >> 12) & 14);
                    i3 &= -897;
                } else {
                    sliderColorsColors = sliderColors2;
                }
                i7 = i3;
                if (i4 != 0) {
                    z5 = true;
                } else {
                    z5 = z2;
                }
            } else {
                if (i8 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i2 & 4) != 0) {
                    sliderColorsColors = colors(composerStartRestartGroup, (i3 >> 12) & 14);
                    i3 &= -897;
                } else {
                    sliderColorsColors = sliderColors2;
                }
                i7 = i3;
                if (i4 != 0) {
                    z5 = true;
                } else {
                    z5 = z2;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1617869097, i7, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1688)");
            }
            Modifier modifier9 = modifier4;
            sliderColors3 = sliderColorsColors;
            m3892Track4EFweAY(rangeSliderState, modifier9, z5, sliderColors3, (bm3<? super DrawScope, ? super Offset, j59>) null, (dm3<? super DrawScope, ? super Offset, ? super Color, j59>) null, SliderKt.ThumbTrackGapSize, SliderKt.TrackInsideCornerSize, composerStartRestartGroup, (i7 & 14) | 14155776 | (i7 & 112) | ((i7 >> 3) & 896) | ((i7 << 3) & 7168) | ((i7 << 12) & 234881024), 48);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            z4 = z5;
            modifier3 = modifier9;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            sliderColors3 = sliderColors2;
            z4 = z2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: m28
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return SliderDefaults.Track$lambda$33(this.b, rangeSliderState, modifier3, sliderColors3, z4, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x011c  */
    /* JADX WARN: Code duplicated, block: B:103:0x0126  */
    /* JADX WARN: Code duplicated, block: B:105:0x0130  */
    /* JADX WARN: Code duplicated, block: B:116:0x014e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:117:0x0150  */
    /* JADX WARN: Code duplicated, block: B:119:0x0155  */
    /* JADX WARN: Code duplicated, block: B:122:0x015b  */
    /* JADX WARN: Code duplicated, block: B:125:0x016a  */
    /* JADX WARN: Code duplicated, block: B:127:0x0172  */
    /* JADX WARN: Code duplicated, block: B:129:0x0178  */
    /* JADX WARN: Code duplicated, block: B:135:0x0187  */
    /* JADX WARN: Code duplicated, block: B:138:0x0191  */
    /* JADX WARN: Code duplicated, block: B:140:0x0199  */
    /* JADX WARN: Code duplicated, block: B:143:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:145:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:147:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:149:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:151:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:152:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:155:0x01de  */
    /* JADX WARN: Code duplicated, block: B:158:0x0226  */
    /* JADX WARN: Code duplicated, block: B:159:0x022a  */
    /* JADX WARN: Code duplicated, block: B:162:0x023b  */
    /* JADX WARN: Code duplicated, block: B:164:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x004c  */
    /* JADX WARN: Code duplicated, block: B:28:0x0051  */
    /* JADX WARN: Code duplicated, block: B:30:0x0055  */
    /* JADX WARN: Code duplicated, block: B:32:0x005d  */
    /* JADX WARN: Code duplicated, block: B:33:0x0060  */
    /* JADX WARN: Code duplicated, block: B:37:0x0067  */
    /* JADX WARN: Code duplicated, block: B:39:0x006b  */
    /* JADX WARN: Code duplicated, block: B:41:0x0073  */
    /* JADX WARN: Code duplicated, block: B:42:0x0076  */
    /* JADX WARN: Code duplicated, block: B:45:0x007c  */
    /* JADX WARN: Code duplicated, block: B:48:0x0082  */
    /* JADX WARN: Code duplicated, block: B:50:0x0086  */
    /* JADX WARN: Code duplicated, block: B:52:0x008e  */
    /* JADX WARN: Code duplicated, block: B:53:0x0091  */
    /* JADX WARN: Code duplicated, block: B:56:0x0097  */
    /* JADX WARN: Code duplicated, block: B:59:0x009f  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:62:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:69:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:74:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:79:0x00db  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:84:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:85:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:90:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:92:0x0100  */
    /* JADX WARN: Code duplicated, block: B:94:0x0106  */
    /* JADX WARN: Code duplicated, block: B:95:0x0109  */
    /* JADX WARN: Code duplicated, block: B:99:0x0119  */
    /* JADX INFO: renamed from: Track-4EFweAY, reason: not valid java name */
    public final void m3893Track4EFweAY(final SliderState sliderState, Modifier modifier, boolean z, SliderColors sliderColors, bm3<? super DrawScope, ? super Offset, j59> bm3Var, dm3<? super DrawScope, ? super Offset, ? super Color, j59> dm3Var, float f, float f2, Composer composer, final int i, final int i2) {
        int i3;
        Modifier modifier2;
        int i4;
        final boolean z2;
        int i5;
        final SliderColors sliderColors2;
        bm3<? super DrawScope, ? super Offset, j59> bm3Var2;
        int i6;
        int i7;
        int i8;
        final float f3;
        int i9;
        int i10;
        int i11;
        int i12;
        boolean z3;
        final dm3<? super DrawScope, ? super Offset, ? super Color, j59> dm3Var2;
        final Modifier modifier3;
        final boolean z4;
        final SliderColors sliderColors3;
        final bm3<? super DrawScope, ? super Offset, j59> bm3Var3;
        final float f4;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        dm3<? super DrawScope, ? super Offset, ? super Color, j59> dm3Var3;
        int i13;
        Object objRememberedValue;
        boolean z5;
        Object objRememberedValue2;
        Composer composerStartRestartGroup = composer.startRestartGroup(49984771);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changedInstance(sliderState) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i14 = i2 & 2;
        if (i14 == 0) {
            if ((i & 48) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            i4 = i2 & 4;
            if (i4 != 0) {
                if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i5 = 256;
                    } else {
                        i5 = 128;
                    }
                    i3 |= i5;
                }
                if ((i & 3072) == 0) {
                    if ((i2 & 8) == 0) {
                        sliderColors2 = sliderColors;
                        int i15 = composerStartRestartGroup.changed(sliderColors2) ? 2048 : 1024;
                        i3 |= i15;
                    } else {
                        sliderColors2 = sliderColors;
                    }
                    i3 |= i15;
                } else {
                    sliderColors2 = sliderColors;
                }
                if ((i & 24576) == 0) {
                    if ((i2 & 16) == 0) {
                        bm3Var2 = bm3Var;
                        int i16 = composerStartRestartGroup.changedInstance(bm3Var2) ? 16384 : 8192;
                        i3 |= i16;
                    } else {
                        bm3Var2 = bm3Var;
                    }
                    i3 |= i16;
                } else {
                    bm3Var2 = bm3Var;
                }
                i6 = i2 & 32;
                if (i6 != 0) {
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 64;
                if (i8 != 0) {
                    i3 |= 1572864;
                    f3 = f;
                } else {
                    f3 = f;
                    if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changed(f3)) {
                            i9 = 1048576;
                        } else {
                            i9 = 524288;
                        }
                        i3 |= i9;
                    }
                }
                i10 = i2 & 128;
                if (i10 != 0) {
                    i3 |= 12582912;
                } else if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(f2)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i3 |= i11;
                }
                if ((i2 & 256) != 0) {
                    i3 |= 100663296;
                } else if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i12 = 67108864;
                    } else {
                        i12 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i12;
                }
                if ((38347923 & i3) != 38347922) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0 && !composerStartRestartGroup.getDefaultsInvalid()) {
                        composerStartRestartGroup.skipToGroupEnd();
                        if ((i2 & 8) != 0) {
                            i3 &= -7169;
                        }
                        if ((i2 & 16) != 0) {
                            i3 &= -57345;
                        }
                        dm3Var2 = dm3Var;
                    } else {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 8) != 0) {
                            SliderColors sliderColorsColors = colors(composerStartRestartGroup, (i3 >> 24) & 14);
                            i3 &= -7169;
                            sliderColors2 = sliderColorsColors;
                        }
                        if ((i2 & 16) != 0) {
                            z5 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (!z5 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                                objRememberedValue2 = new bm3() { // from class: r28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_4EFweAY$lambda$15$lambda$14(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            bm3Var2 = (bm3) objRememberedValue2;
                            i3 = (-57345) & i3;
                        }
                        if (i6 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$5$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3903invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3903invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i8 != 0) {
                            f3 = SliderKt.ThumbTrackGapSize;
                        }
                        if (i10 != 0) {
                            dm3Var2 = dm3Var3;
                            i13 = i3;
                            z4 = z2;
                            sliderColors3 = sliderColors2;
                            f4 = SliderKt.TrackInsideCornerSize;
                        } else {
                            dm3Var2 = dm3Var3;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(49984771, i13, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1446)");
                        }
                        int i17 = i13 << 3;
                        modifier3 = modifier2;
                        bm3Var3 = bm3Var2;
                        m3884TrackImplVvwgllI(sliderState, Dp.Companion.m9062getUnspecifiedD9Ej5fM(), modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f3, f4, false, false, composerStartRestartGroup, (i13 & 14) | 805306416 | (i17 & 896) | (i17 & 7168) | (57344 & i17) | (458752 & i17) | (3670016 & i17) | (29360128 & i17) | (i17 & 234881024), ((i13 >> 21) & 112) | 6);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                    i13 = i3;
                    z4 = z2;
                    sliderColors3 = sliderColors2;
                    f4 = f2;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(49984771, i13, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1446)");
                    }
                    int i18 = i13 << 3;
                    modifier3 = modifier2;
                    bm3Var3 = bm3Var2;
                    m3884TrackImplVvwgllI(sliderState, Dp.Companion.m9062getUnspecifiedD9Ej5fM(), modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f3, f4, false, false, composerStartRestartGroup, (i13 & 14) | 805306416 | (i18 & 896) | (i18 & 7168) | (57344 & i18) | (458752 & i18) | (3670016 & i18) | (29360128 & i18) | (i18 & 234881024), ((i13 >> 21) & 112) | 6);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    dm3Var2 = dm3Var;
                    modifier3 = modifier2;
                    z4 = z2;
                    sliderColors3 = sliderColors2;
                    bm3Var3 = bm3Var2;
                    f4 = f2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: s28
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SliderDefaults.Track_4EFweAY$lambda$17(this.b, sliderState, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f3, f4, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            z2 = z;
            if ((i & 3072) == 0) {
                if ((i2 & 8) == 0) {
                    sliderColors2 = sliderColors;
                    if (composerStartRestartGroup.changed(sliderColors2)) {
                    }
                    i3 |= i15;
                } else {
                    sliderColors2 = sliderColors;
                }
                i3 |= i15;
            } else {
                sliderColors2 = sliderColors;
            }
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    bm3Var2 = bm3Var;
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    }
                    i3 |= i16;
                } else {
                    bm3Var2 = bm3Var;
                }
                i3 |= i16;
            } else {
                bm3Var2 = bm3Var;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i3 |= i7;
            }
            i8 = i2 & 64;
            if (i8 != 0) {
                i3 |= 1572864;
                f3 = f;
            } else {
                f3 = f;
                if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(f3)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
            }
            i10 = i2 & 128;
            if (i10 != 0) {
                i3 |= 12582912;
            } else if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(f2)) {
                    i11 = 8388608;
                } else {
                    i11 = 4194304;
                }
                i3 |= i11;
            }
            if ((i2 & 256) != 0) {
                i3 |= 100663296;
            } else if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i12 = 67108864;
                } else {
                    i12 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i12;
            }
            if ((38347923 & i3) != 38347922) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) == 0) {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 8) != 0) {
                        SliderColors sliderColorsColors2 = colors(composerStartRestartGroup, (i3 >> 24) & 14);
                        i3 &= -7169;
                        sliderColors2 = sliderColorsColors2;
                    }
                    if ((i2 & 16) != 0) {
                        z5 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (!z5) {
                            objRememberedValue2 = new bm3() { // from class: r28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_4EFweAY$lambda$15$lambda$14(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: r28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_4EFweAY$lambda$15$lambda$14(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        bm3Var2 = (bm3) objRememberedValue2;
                        i3 = (-57345) & i3;
                    }
                    if (i6 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$5$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3903invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3903invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i8 != 0) {
                        f3 = SliderKt.ThumbTrackGapSize;
                    }
                    if (i10 != 0) {
                        dm3Var2 = dm3Var3;
                        i13 = i3;
                        z4 = z2;
                        sliderColors3 = sliderColors2;
                        f4 = SliderKt.TrackInsideCornerSize;
                    } else {
                        dm3Var2 = dm3Var3;
                        i13 = i3;
                        z4 = z2;
                        sliderColors3 = sliderColors2;
                        f4 = f2;
                    }
                } else {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 8) != 0) {
                        SliderColors sliderColorsColors3 = colors(composerStartRestartGroup, (i3 >> 24) & 14);
                        i3 &= -7169;
                        sliderColors2 = sliderColorsColors3;
                    }
                    if ((i2 & 16) != 0) {
                        z5 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (!z5) {
                            objRememberedValue2 = new bm3() { // from class: r28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_4EFweAY$lambda$15$lambda$14(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: r28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_4EFweAY$lambda$15$lambda$14(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        bm3Var2 = (bm3) objRememberedValue2;
                        i3 = (-57345) & i3;
                    }
                    if (i6 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$5$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3903invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3903invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i8 != 0) {
                        f3 = SliderKt.ThumbTrackGapSize;
                    }
                    if (i10 != 0) {
                        dm3Var2 = dm3Var3;
                        i13 = i3;
                        z4 = z2;
                        sliderColors3 = sliderColors2;
                        f4 = SliderKt.TrackInsideCornerSize;
                    } else {
                        dm3Var2 = dm3Var3;
                        i13 = i3;
                        z4 = z2;
                        sliderColors3 = sliderColors2;
                        f4 = f2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(49984771, i13, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1446)");
                }
                int i19 = i13 << 3;
                modifier3 = modifier2;
                bm3Var3 = bm3Var2;
                m3884TrackImplVvwgllI(sliderState, Dp.Companion.m9062getUnspecifiedD9Ej5fM(), modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f3, f4, false, false, composerStartRestartGroup, (i13 & 14) | 805306416 | (i19 & 896) | (i19 & 7168) | (57344 & i19) | (458752 & i19) | (3670016 & i19) | (29360128 & i19) | (i19 & 234881024), ((i13 >> 21) & 112) | 6);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                dm3Var2 = dm3Var;
                modifier3 = modifier2;
                z4 = z2;
                sliderColors3 = sliderColors2;
                bm3Var3 = bm3Var2;
                f4 = f2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: s28
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SliderDefaults.Track_4EFweAY$lambda$17(this.b, sliderState, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f3, f4, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        modifier2 = modifier;
        i4 = i2 & 4;
        if (i4 != 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                z2 = z;
                if (composerStartRestartGroup.changed(z2)) {
                    i5 = 256;
                } else {
                    i5 = 128;
                }
                i3 |= i5;
            }
            if ((i & 3072) == 0) {
                if ((i2 & 8) == 0) {
                    sliderColors2 = sliderColors;
                    if (composerStartRestartGroup.changed(sliderColors2)) {
                    }
                    i3 |= i15;
                } else {
                    sliderColors2 = sliderColors;
                }
                i3 |= i15;
            } else {
                sliderColors2 = sliderColors;
            }
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    bm3Var2 = bm3Var;
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    }
                    i3 |= i16;
                } else {
                    bm3Var2 = bm3Var;
                }
                i3 |= i16;
            } else {
                bm3Var2 = bm3Var;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i3 |= i7;
            }
            i8 = i2 & 64;
            if (i8 != 0) {
                i3 |= 1572864;
                f3 = f;
            } else {
                f3 = f;
                if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(f3)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
            }
            i10 = i2 & 128;
            if (i10 != 0) {
                i3 |= 12582912;
            } else if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(f2)) {
                    i11 = 8388608;
                } else {
                    i11 = 4194304;
                }
                i3 |= i11;
            }
            if ((i2 & 256) != 0) {
                i3 |= 100663296;
            } else if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i12 = 67108864;
                } else {
                    i12 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i12;
            }
            if ((38347923 & i3) != 38347922) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) == 0) {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 8) != 0) {
                        SliderColors sliderColorsColors4 = colors(composerStartRestartGroup, (i3 >> 24) & 14);
                        i3 &= -7169;
                        sliderColors2 = sliderColorsColors4;
                    }
                    if ((i2 & 16) != 0) {
                        z5 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (!z5) {
                            objRememberedValue2 = new bm3() { // from class: r28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_4EFweAY$lambda$15$lambda$14(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: r28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_4EFweAY$lambda$15$lambda$14(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        bm3Var2 = (bm3) objRememberedValue2;
                        i3 = (-57345) & i3;
                    }
                    if (i6 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$5$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3903invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3903invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i8 != 0) {
                        f3 = SliderKt.ThumbTrackGapSize;
                    }
                    if (i10 != 0) {
                        dm3Var2 = dm3Var3;
                        i13 = i3;
                        z4 = z2;
                        sliderColors3 = sliderColors2;
                        f4 = SliderKt.TrackInsideCornerSize;
                    } else {
                        dm3Var2 = dm3Var3;
                        i13 = i3;
                        z4 = z2;
                        sliderColors3 = sliderColors2;
                        f4 = f2;
                    }
                } else {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 8) != 0) {
                        SliderColors sliderColorsColors5 = colors(composerStartRestartGroup, (i3 >> 24) & 14);
                        i3 &= -7169;
                        sliderColors2 = sliderColorsColors5;
                    }
                    if ((i2 & 16) != 0) {
                        z5 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (!z5) {
                            objRememberedValue2 = new bm3() { // from class: r28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_4EFweAY$lambda$15$lambda$14(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: r28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_4EFweAY$lambda$15$lambda$14(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        bm3Var2 = (bm3) objRememberedValue2;
                        i3 = (-57345) & i3;
                    }
                    if (i6 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$5$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3903invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3903invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i8 != 0) {
                        f3 = SliderKt.ThumbTrackGapSize;
                    }
                    if (i10 != 0) {
                        dm3Var2 = dm3Var3;
                        i13 = i3;
                        z4 = z2;
                        sliderColors3 = sliderColors2;
                        f4 = SliderKt.TrackInsideCornerSize;
                    } else {
                        dm3Var2 = dm3Var3;
                        i13 = i3;
                        z4 = z2;
                        sliderColors3 = sliderColors2;
                        f4 = f2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(49984771, i13, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1446)");
                }
                int i110 = i13 << 3;
                modifier3 = modifier2;
                bm3Var3 = bm3Var2;
                m3884TrackImplVvwgllI(sliderState, Dp.Companion.m9062getUnspecifiedD9Ej5fM(), modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f3, f4, false, false, composerStartRestartGroup, (i13 & 14) | 805306416 | (i110 & 896) | (i110 & 7168) | (57344 & i110) | (458752 & i110) | (3670016 & i110) | (29360128 & i110) | (i110 & 234881024), ((i13 >> 21) & 112) | 6);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                dm3Var2 = dm3Var;
                modifier3 = modifier2;
                z4 = z2;
                sliderColors3 = sliderColors2;
                bm3Var3 = bm3Var2;
                f4 = f2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: s28
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SliderDefaults.Track_4EFweAY$lambda$17(this.b, sliderState, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f3, f4, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        z2 = z;
        if ((i & 3072) == 0) {
            if ((i2 & 8) == 0) {
                sliderColors2 = sliderColors;
                if (composerStartRestartGroup.changed(sliderColors2)) {
                }
                i3 |= i15;
            } else {
                sliderColors2 = sliderColors;
            }
            i3 |= i15;
        } else {
            sliderColors2 = sliderColors;
        }
        if ((i & 24576) == 0) {
            if ((i2 & 16) == 0) {
                bm3Var2 = bm3Var;
                if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                }
                i3 |= i16;
            } else {
                bm3Var2 = bm3Var;
            }
            i3 |= i16;
        } else {
            bm3Var2 = bm3Var;
        }
        i6 = i2 & 32;
        if (i6 != 0) {
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                i7 = 131072;
            } else {
                i7 = 65536;
            }
            i3 |= i7;
        }
        i8 = i2 & 64;
        if (i8 != 0) {
            i3 |= 1572864;
            f3 = f;
        } else {
            f3 = f;
            if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changed(f3)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i3 |= i9;
            }
        }
        i10 = i2 & 128;
        if (i10 != 0) {
            i3 |= 12582912;
        } else if ((i & 12582912) == 0) {
            if (composerStartRestartGroup.changed(f2)) {
                i11 = 8388608;
            } else {
                i11 = 4194304;
            }
            i3 |= i11;
        }
        if ((i2 & 256) != 0) {
            i3 |= 100663296;
        } else if ((i & 100663296) == 0) {
            if (composerStartRestartGroup.changed(this)) {
                i12 = 67108864;
            } else {
                i12 = GroupFlagsKt.HasAuxSlotFlag;
            }
            i3 |= i12;
        }
        if ((38347923 & i3) != 38347922) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) == 0) {
                if (i14 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i4 != 0) {
                    z2 = true;
                }
                if ((i2 & 8) != 0) {
                    SliderColors sliderColorsColors6 = colors(composerStartRestartGroup, (i3 >> 24) & 14);
                    i3 &= -7169;
                    sliderColors2 = sliderColorsColors6;
                }
                if ((i2 & 16) != 0) {
                    z5 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (!z5) {
                        objRememberedValue2 = new bm3() { // from class: r28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SliderDefaults.Track_4EFweAY$lambda$15$lambda$14(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new bm3() { // from class: r28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SliderDefaults.Track_4EFweAY$lambda$15$lambda$14(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    bm3Var2 = (bm3) objRememberedValue2;
                    i3 = (-57345) & i3;
                }
                if (i6 != 0) {
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$5$1
                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                m3903invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                return j59.a;
                            }

                            /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                            public final void m3903invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    dm3Var3 = (dm3) objRememberedValue;
                } else {
                    dm3Var3 = dm3Var;
                }
                if (i8 != 0) {
                    f3 = SliderKt.ThumbTrackGapSize;
                }
                if (i10 != 0) {
                    dm3Var2 = dm3Var3;
                    i13 = i3;
                    z4 = z2;
                    sliderColors3 = sliderColors2;
                    f4 = SliderKt.TrackInsideCornerSize;
                } else {
                    dm3Var2 = dm3Var3;
                    i13 = i3;
                    z4 = z2;
                    sliderColors3 = sliderColors2;
                    f4 = f2;
                }
            } else {
                if (i14 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i4 != 0) {
                    z2 = true;
                }
                if ((i2 & 8) != 0) {
                    SliderColors sliderColorsColors7 = colors(composerStartRestartGroup, (i3 >> 24) & 14);
                    i3 &= -7169;
                    sliderColors2 = sliderColorsColors7;
                }
                if ((i2 & 16) != 0) {
                    z5 = ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 3072) == 2048) | ((i3 & 896) == 256);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (!z5) {
                        objRememberedValue2 = new bm3() { // from class: r28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SliderDefaults.Track_4EFweAY$lambda$15$lambda$14(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new bm3() { // from class: r28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SliderDefaults.Track_4EFweAY$lambda$15$lambda$14(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    bm3Var2 = (bm3) objRememberedValue2;
                    i3 = (-57345) & i3;
                }
                if (i6 != 0) {
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$5$1
                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                m3903invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                return j59.a;
                            }

                            /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                            public final void m3903invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    dm3Var3 = (dm3) objRememberedValue;
                } else {
                    dm3Var3 = dm3Var;
                }
                if (i8 != 0) {
                    f3 = SliderKt.ThumbTrackGapSize;
                }
                if (i10 != 0) {
                    dm3Var2 = dm3Var3;
                    i13 = i3;
                    z4 = z2;
                    sliderColors3 = sliderColors2;
                    f4 = SliderKt.TrackInsideCornerSize;
                } else {
                    dm3Var2 = dm3Var3;
                    i13 = i3;
                    z4 = z2;
                    sliderColors3 = sliderColors2;
                    f4 = f2;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(49984771, i13, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1446)");
            }
            int i111 = i13 << 3;
            modifier3 = modifier2;
            bm3Var3 = bm3Var2;
            m3884TrackImplVvwgllI(sliderState, Dp.Companion.m9062getUnspecifiedD9Ej5fM(), modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f3, f4, false, false, composerStartRestartGroup, (i13 & 14) | 805306416 | (i111 & 896) | (i111 & 7168) | (57344 & i111) | (458752 & i111) | (3670016 & i111) | (29360128 & i111) | (i111 & 234881024), ((i13 >> 21) & 112) | 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            dm3Var2 = dm3Var;
            modifier3 = modifier2;
            z4 = z2;
            sliderColors3 = sliderColors2;
            bm3Var3 = bm3Var2;
            f4 = f2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: s28
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return SliderDefaults.Track_4EFweAY$lambda$17(this.b, sliderState, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f3, f4, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x011a  */
    /* JADX WARN: Code duplicated, block: B:102:0x011d  */
    /* JADX WARN: Code duplicated, block: B:104:0x0121  */
    /* JADX WARN: Code duplicated, block: B:106:0x0127  */
    /* JADX WARN: Code duplicated, block: B:107:0x012a  */
    /* JADX WARN: Code duplicated, block: B:111:0x013a  */
    /* JADX WARN: Code duplicated, block: B:112:0x013d  */
    /* JADX WARN: Code duplicated, block: B:115:0x0147  */
    /* JADX WARN: Code duplicated, block: B:117:0x0154  */
    /* JADX WARN: Code duplicated, block: B:128:0x0175 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:129:0x0177  */
    /* JADX WARN: Code duplicated, block: B:131:0x017c  */
    /* JADX WARN: Code duplicated, block: B:134:0x0182  */
    /* JADX WARN: Code duplicated, block: B:137:0x0191  */
    /* JADX WARN: Code duplicated, block: B:139:0x019b  */
    /* JADX WARN: Code duplicated, block: B:141:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:147:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:150:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:152:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:155:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:157:0x01de  */
    /* JADX WARN: Code duplicated, block: B:159:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:161:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:163:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:164:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:167:0x020a  */
    /* JADX WARN: Code duplicated, block: B:170:0x0225  */
    /* JADX WARN: Code duplicated, block: B:172:0x0231  */
    /* JADX WARN: Code duplicated, block: B:175:0x0244  */
    /* JADX WARN: Code duplicated, block: B:177:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x004c  */
    /* JADX WARN: Code duplicated, block: B:28:0x0051  */
    /* JADX WARN: Code duplicated, block: B:30:0x0055  */
    /* JADX WARN: Code duplicated, block: B:32:0x005d  */
    /* JADX WARN: Code duplicated, block: B:33:0x0060  */
    /* JADX WARN: Code duplicated, block: B:37:0x0067  */
    /* JADX WARN: Code duplicated, block: B:39:0x006c  */
    /* JADX WARN: Code duplicated, block: B:41:0x0070  */
    /* JADX WARN: Code duplicated, block: B:43:0x0078  */
    /* JADX WARN: Code duplicated, block: B:44:0x007b  */
    /* JADX WARN: Code duplicated, block: B:48:0x0082  */
    /* JADX WARN: Code duplicated, block: B:50:0x0086  */
    /* JADX WARN: Code duplicated, block: B:52:0x008e  */
    /* JADX WARN: Code duplicated, block: B:53:0x0091  */
    /* JADX WARN: Code duplicated, block: B:56:0x0097  */
    /* JADX WARN: Code duplicated, block: B:59:0x009e  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:63:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:70:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:75:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:80:0x00da  */
    /* JADX WARN: Code duplicated, block: B:81:0x00df  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:85:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:86:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:90:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:92:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:94:0x0103  */
    /* JADX WARN: Code duplicated, block: B:96:0x010d  */
    /* JADX WARN: Code duplicated, block: B:97:0x0110  */
    /* JADX INFO: renamed from: Track-mnvyFg4$material3, reason: not valid java name */
    public final void m3894TrackmnvyFg4$material3(final RangeSliderState rangeSliderState, final float f, Modifier modifier, boolean z, SliderColors sliderColors, bm3<? super DrawScope, ? super Offset, j59> bm3Var, dm3<? super DrawScope, ? super Offset, ? super Color, j59> dm3Var, float f2, float f3, Composer composer, final int i, final int i2) {
        int i3;
        int i4;
        Modifier modifier2;
        int i5;
        int i6;
        final boolean z2;
        int i7;
        final SliderColors sliderColors2;
        bm3<? super DrawScope, ? super Offset, j59> bm3Var2;
        int i8;
        int i9;
        int i10;
        float f4;
        int i11;
        int i12;
        int i13;
        int i14;
        boolean z3;
        final dm3<? super DrawScope, ? super Offset, ? super Color, j59> dm3Var2;
        final Modifier modifier3;
        final boolean z4;
        final SliderColors sliderColors3;
        final float f5;
        final bm3<? super DrawScope, ? super Offset, j59> bm3Var3;
        final float f6;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        dm3<? super DrawScope, ? super Offset, ? super Color, j59> dm3Var3;
        dm3<? super DrawScope, ? super Offset, ? super Color, j59> dm3Var4;
        int i15;
        Modifier modifier4;
        boolean z5;
        SliderColors sliderColors4;
        float f7;
        bm3<? super DrawScope, ? super Offset, j59> bm3Var4;
        float f8;
        Object objRememberedValue;
        boolean z6;
        Object objRememberedValue2;
        Composer composerStartRestartGroup = composer.startRestartGroup(1952945688);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changedInstance(rangeSliderState) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i2 & 2) == 0) {
            if ((i & 48) == 0) {
                i3 |= composerStartRestartGroup.changed(f) ? 32 : 16;
            }
            i4 = i2 & 4;
            if (i4 != 0) {
                if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    modifier2 = modifier;
                    if (composerStartRestartGroup.changed(modifier2)) {
                        i5 = 256;
                    } else {
                        i5 = 128;
                    }
                    i3 |= i5;
                }
                i6 = i2 & 8;
                if (i6 != 0) {
                    if ((i & 3072) == 0) {
                        z2 = z;
                        if (composerStartRestartGroup.changed(z2)) {
                            i7 = 2048;
                        } else {
                            i7 = 1024;
                        }
                        i3 |= i7;
                    }
                    if ((i & 24576) == 0) {
                        if ((i2 & 16) == 0) {
                            sliderColors2 = sliderColors;
                            int i16 = composerStartRestartGroup.changed(sliderColors2) ? 16384 : 8192;
                            i3 |= i16;
                        } else {
                            sliderColors2 = sliderColors;
                        }
                        i3 |= i16;
                    } else {
                        sliderColors2 = sliderColors;
                    }
                    if ((196608 & i) == 0) {
                        if ((i2 & 32) == 0) {
                            bm3Var2 = bm3Var;
                            int i17 = composerStartRestartGroup.changedInstance(bm3Var2) ? 131072 : 65536;
                            i3 |= i17;
                        } else {
                            bm3Var2 = bm3Var;
                        }
                        i3 |= i17;
                    } else {
                        bm3Var2 = bm3Var;
                    }
                    i8 = i2 & 64;
                    if (i8 != 0) {
                        i3 |= 1572864;
                    } else if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i9 = 1048576;
                        } else {
                            i9 = 524288;
                        }
                        i3 |= i9;
                    }
                    i10 = i2 & 128;
                    if (i10 != 0) {
                        i3 |= 12582912;
                        f4 = f2;
                    } else {
                        f4 = f2;
                        if ((i & 12582912) == 0) {
                            if (composerStartRestartGroup.changed(f4)) {
                                i11 = 8388608;
                            } else {
                                i11 = 4194304;
                            }
                            i3 |= i11;
                        }
                    }
                    i12 = i2 & 256;
                    if (i12 != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(f3)) {
                                i13 = 67108864;
                            } else {
                                i13 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i13;
                        }
                        if ((i2 & 512) != 0) {
                            i3 |= 805306368;
                        } else if ((i & 805306368) == 0) {
                            if (composerStartRestartGroup.changed(this)) {
                                i14 = 536870912;
                            } else {
                                i14 = 268435456;
                            }
                            i3 |= i14;
                        }
                        if ((306783379 & i3) != 306783378) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) == 0 && !composerStartRestartGroup.getDefaultsInvalid()) {
                                composerStartRestartGroup.skipToGroupEnd();
                                if ((i2 & 16) != 0) {
                                    i3 &= -57345;
                                }
                                if ((i2 & 32) != 0) {
                                    i3 &= -458753;
                                }
                                dm3Var4 = dm3Var;
                            } else {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 16) != 0) {
                                    SliderColors sliderColorsColors = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                                    i3 &= -57345;
                                    sliderColors2 = sliderColorsColors;
                                }
                                if ((i2 & 32) != 0) {
                                    z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                    if (!z6 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                                        objRememberedValue2 = new bm3() { // from class: t28
                                            @Override // defpackage.bm3
                                            public final Object invoke(Object obj, Object obj2) {
                                                return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                            }
                                        };
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                    }
                                    bm3Var2 = (bm3) objRememberedValue2;
                                    i3 = (-458753) & i3;
                                }
                                if (i8 != 0) {
                                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                                        objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                            @Override // defpackage.dm3
                                            public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                                m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                                return j59.a;
                                            }

                                            /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                            public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                                SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                                sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                            }
                                        };
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                    }
                                    dm3Var3 = (dm3) objRememberedValue;
                                } else {
                                    dm3Var3 = dm3Var;
                                }
                                if (i10 != 0) {
                                    f4 = SliderKt.ThumbTrackGapSize;
                                }
                                if (i12 != 0) {
                                    dm3Var4 = dm3Var3;
                                    i15 = i3;
                                    modifier4 = modifier2;
                                    z5 = z2;
                                    sliderColors4 = sliderColors2;
                                    f7 = f4;
                                    bm3Var4 = bm3Var2;
                                    f8 = SliderKt.TrackInsideCornerSize;
                                } else {
                                    dm3Var4 = dm3Var3;
                                }
                                composerStartRestartGroup.endDefaults();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1952945688, i15, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1785)");
                                }
                                m3885TrackImplxlyIBlM(rangeSliderState, f, modifier4, z5, sliderColors4, bm3Var4, dm3Var4, f7, f8, composerStartRestartGroup, i15 & 2147483646);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                f6 = f8;
                                f5 = f7;
                                dm3Var2 = dm3Var4;
                                bm3Var3 = bm3Var4;
                                sliderColors3 = sliderColors4;
                                z4 = z5;
                                modifier3 = modifier4;
                            }
                            i15 = i3;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors4 = sliderColors2;
                            f7 = f4;
                            bm3Var4 = bm3Var2;
                            f8 = f3;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1952945688, i15, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1785)");
                            }
                            m3885TrackImplxlyIBlM(rangeSliderState, f, modifier4, z5, sliderColors4, bm3Var4, dm3Var4, f7, f8, composerStartRestartGroup, i15 & 2147483646);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            f6 = f8;
                            f5 = f7;
                            dm3Var2 = dm3Var4;
                            bm3Var3 = bm3Var4;
                            sliderColors3 = sliderColors4;
                            z4 = z5;
                            modifier3 = modifier4;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            dm3Var2 = dm3Var;
                            modifier3 = modifier2;
                            z4 = z2;
                            sliderColors3 = sliderColors2;
                            f5 = f4;
                            bm3Var3 = bm3Var2;
                            f6 = f3;
                        }
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: u28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return SliderDefaults.Track_mnvyFg4$lambda$41(this.b, rangeSliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f5, f6, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    if ((i2 & 512) != 0) {
                        i3 |= 805306368;
                    } else if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changed(this)) {
                            i14 = 536870912;
                        } else {
                            i14 = 268435456;
                        }
                        i3 |= i14;
                    }
                    if ((306783379 & i3) != 306783378) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) == 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 16) != 0) {
                                SliderColors sliderColorsColors2 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                                i3 &= -57345;
                                sliderColors2 = sliderColorsColors2;
                            }
                            if ((i2 & 32) != 0) {
                                z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (!z6) {
                                    objRememberedValue2 = new bm3() { // from class: t28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                } else {
                                    objRememberedValue2 = new bm3() { // from class: t28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                bm3Var2 = (bm3) objRememberedValue2;
                                i3 = (-458753) & i3;
                            }
                            if (i8 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                        @Override // defpackage.dm3
                                        public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                            m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                            return j59.a;
                                        }

                                        /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                        public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                            SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                            sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                dm3Var3 = (dm3) objRememberedValue;
                            } else {
                                dm3Var3 = dm3Var;
                            }
                            if (i10 != 0) {
                                f4 = SliderKt.ThumbTrackGapSize;
                            }
                            if (i12 != 0) {
                                dm3Var4 = dm3Var3;
                                i15 = i3;
                                modifier4 = modifier2;
                                z5 = z2;
                                sliderColors4 = sliderColors2;
                                f7 = f4;
                                bm3Var4 = bm3Var2;
                                f8 = SliderKt.TrackInsideCornerSize;
                            } else {
                                dm3Var4 = dm3Var3;
                                i15 = i3;
                                modifier4 = modifier2;
                                z5 = z2;
                                sliderColors4 = sliderColors2;
                                f7 = f4;
                                bm3Var4 = bm3Var2;
                                f8 = f3;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 16) != 0) {
                                SliderColors sliderColorsColors3 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                                i3 &= -57345;
                                sliderColors2 = sliderColorsColors3;
                            }
                            if ((i2 & 32) != 0) {
                                z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (!z6) {
                                    objRememberedValue2 = new bm3() { // from class: t28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                } else {
                                    objRememberedValue2 = new bm3() { // from class: t28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                bm3Var2 = (bm3) objRememberedValue2;
                                i3 = (-458753) & i3;
                            }
                            if (i8 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                        @Override // defpackage.dm3
                                        public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                            m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                            return j59.a;
                                        }

                                        /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                        public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                            SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                            sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                dm3Var3 = (dm3) objRememberedValue;
                            } else {
                                dm3Var3 = dm3Var;
                            }
                            if (i10 != 0) {
                                f4 = SliderKt.ThumbTrackGapSize;
                            }
                            if (i12 != 0) {
                                dm3Var4 = dm3Var3;
                                i15 = i3;
                                modifier4 = modifier2;
                                z5 = z2;
                                sliderColors4 = sliderColors2;
                                f7 = f4;
                                bm3Var4 = bm3Var2;
                                f8 = SliderKt.TrackInsideCornerSize;
                            } else {
                                dm3Var4 = dm3Var3;
                                i15 = i3;
                                modifier4 = modifier2;
                                z5 = z2;
                                sliderColors4 = sliderColors2;
                                f7 = f4;
                                bm3Var4 = bm3Var2;
                                f8 = f3;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1952945688, i15, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1785)");
                        }
                        m3885TrackImplxlyIBlM(rangeSliderState, f, modifier4, z5, sliderColors4, bm3Var4, dm3Var4, f7, f8, composerStartRestartGroup, i15 & 2147483646);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        f6 = f8;
                        f5 = f7;
                        dm3Var2 = dm3Var4;
                        bm3Var3 = bm3Var4;
                        sliderColors3 = sliderColors4;
                        z4 = z5;
                        modifier3 = modifier4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        dm3Var2 = dm3Var;
                        modifier3 = modifier2;
                        z4 = z2;
                        sliderColors3 = sliderColors2;
                        f5 = f4;
                        bm3Var3 = bm3Var2;
                        f6 = f3;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: u28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return SliderDefaults.Track_mnvyFg4$lambda$41(this.b, rangeSliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f5, f6, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 3072;
                z2 = z;
                if ((i & 24576) == 0) {
                    if ((i2 & 16) == 0) {
                        sliderColors2 = sliderColors;
                        if (composerStartRestartGroup.changed(sliderColors2)) {
                        }
                        i3 |= i16;
                    } else {
                        sliderColors2 = sliderColors;
                    }
                    i3 |= i16;
                } else {
                    sliderColors2 = sliderColors;
                }
                if ((196608 & i) == 0) {
                    if ((i2 & 32) == 0) {
                        bm3Var2 = bm3Var;
                        if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        }
                        i3 |= i17;
                    } else {
                        bm3Var2 = bm3Var;
                    }
                    i3 |= i17;
                } else {
                    bm3Var2 = bm3Var;
                }
                i8 = i2 & 64;
                if (i8 != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
                i10 = i2 & 128;
                if (i10 != 0) {
                    i3 |= 12582912;
                    f4 = f2;
                } else {
                    f4 = f2;
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(f4)) {
                            i11 = 8388608;
                        } else {
                            i11 = 4194304;
                        }
                        i3 |= i11;
                    }
                }
                i12 = i2 & 256;
                if (i12 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(f3)) {
                            i13 = 67108864;
                        } else {
                            i13 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i13;
                    }
                    if ((i2 & 512) != 0) {
                        i3 |= 805306368;
                    } else if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changed(this)) {
                            i14 = 536870912;
                        } else {
                            i14 = 268435456;
                        }
                        i3 |= i14;
                    }
                    if ((306783379 & i3) != 306783378) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) == 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 16) != 0) {
                                SliderColors sliderColorsColors4 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                                i3 &= -57345;
                                sliderColors2 = sliderColorsColors4;
                            }
                            if ((i2 & 32) != 0) {
                                z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (!z6) {
                                    objRememberedValue2 = new bm3() { // from class: t28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                } else {
                                    objRememberedValue2 = new bm3() { // from class: t28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                bm3Var2 = (bm3) objRememberedValue2;
                                i3 = (-458753) & i3;
                            }
                            if (i8 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                        @Override // defpackage.dm3
                                        public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                            m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                            return j59.a;
                                        }

                                        /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                        public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                            SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                            sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                dm3Var3 = (dm3) objRememberedValue;
                            } else {
                                dm3Var3 = dm3Var;
                            }
                            if (i10 != 0) {
                                f4 = SliderKt.ThumbTrackGapSize;
                            }
                            if (i12 != 0) {
                                dm3Var4 = dm3Var3;
                                i15 = i3;
                                modifier4 = modifier2;
                                z5 = z2;
                                sliderColors4 = sliderColors2;
                                f7 = f4;
                                bm3Var4 = bm3Var2;
                                f8 = SliderKt.TrackInsideCornerSize;
                            } else {
                                dm3Var4 = dm3Var3;
                                i15 = i3;
                                modifier4 = modifier2;
                                z5 = z2;
                                sliderColors4 = sliderColors2;
                                f7 = f4;
                                bm3Var4 = bm3Var2;
                                f8 = f3;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 16) != 0) {
                                SliderColors sliderColorsColors5 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                                i3 &= -57345;
                                sliderColors2 = sliderColorsColors5;
                            }
                            if ((i2 & 32) != 0) {
                                z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (!z6) {
                                    objRememberedValue2 = new bm3() { // from class: t28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                } else {
                                    objRememberedValue2 = new bm3() { // from class: t28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                bm3Var2 = (bm3) objRememberedValue2;
                                i3 = (-458753) & i3;
                            }
                            if (i8 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                        @Override // defpackage.dm3
                                        public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                            m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                            return j59.a;
                                        }

                                        /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                        public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                            SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                            sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                dm3Var3 = (dm3) objRememberedValue;
                            } else {
                                dm3Var3 = dm3Var;
                            }
                            if (i10 != 0) {
                                f4 = SliderKt.ThumbTrackGapSize;
                            }
                            if (i12 != 0) {
                                dm3Var4 = dm3Var3;
                                i15 = i3;
                                modifier4 = modifier2;
                                z5 = z2;
                                sliderColors4 = sliderColors2;
                                f7 = f4;
                                bm3Var4 = bm3Var2;
                                f8 = SliderKt.TrackInsideCornerSize;
                            } else {
                                dm3Var4 = dm3Var3;
                                i15 = i3;
                                modifier4 = modifier2;
                                z5 = z2;
                                sliderColors4 = sliderColors2;
                                f7 = f4;
                                bm3Var4 = bm3Var2;
                                f8 = f3;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1952945688, i15, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1785)");
                        }
                        m3885TrackImplxlyIBlM(rangeSliderState, f, modifier4, z5, sliderColors4, bm3Var4, dm3Var4, f7, f8, composerStartRestartGroup, i15 & 2147483646);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        f6 = f8;
                        f5 = f7;
                        dm3Var2 = dm3Var4;
                        bm3Var3 = bm3Var4;
                        sliderColors3 = sliderColors4;
                        z4 = z5;
                        modifier3 = modifier4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        dm3Var2 = dm3Var;
                        modifier3 = modifier2;
                        z4 = z2;
                        sliderColors3 = sliderColors2;
                        f5 = f4;
                        bm3Var3 = bm3Var2;
                        f6 = f3;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: u28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return SliderDefaults.Track_mnvyFg4$lambda$41(this.b, rangeSliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f5, f6, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                if ((i2 & 512) != 0) {
                    i3 |= 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i14 = 536870912;
                    } else {
                        i14 = 268435456;
                    }
                    i3 |= i14;
                }
                if ((306783379 & i3) != 306783378) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 16) != 0) {
                            SliderColors sliderColorsColors6 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -57345;
                            sliderColors2 = sliderColorsColors6;
                        }
                        if ((i2 & 32) != 0) {
                            z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (!z6) {
                                objRememberedValue2 = new bm3() { // from class: t28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: t28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            bm3Var2 = (bm3) objRememberedValue2;
                            i3 = (-458753) & i3;
                        }
                        if (i8 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i10 != 0) {
                            f4 = SliderKt.ThumbTrackGapSize;
                        }
                        if (i12 != 0) {
                            dm3Var4 = dm3Var3;
                            i15 = i3;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors4 = sliderColors2;
                            f7 = f4;
                            bm3Var4 = bm3Var2;
                            f8 = SliderKt.TrackInsideCornerSize;
                        } else {
                            dm3Var4 = dm3Var3;
                            i15 = i3;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors4 = sliderColors2;
                            f7 = f4;
                            bm3Var4 = bm3Var2;
                            f8 = f3;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 16) != 0) {
                            SliderColors sliderColorsColors7 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -57345;
                            sliderColors2 = sliderColorsColors7;
                        }
                        if ((i2 & 32) != 0) {
                            z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (!z6) {
                                objRememberedValue2 = new bm3() { // from class: t28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: t28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            bm3Var2 = (bm3) objRememberedValue2;
                            i3 = (-458753) & i3;
                        }
                        if (i8 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i10 != 0) {
                            f4 = SliderKt.ThumbTrackGapSize;
                        }
                        if (i12 != 0) {
                            dm3Var4 = dm3Var3;
                            i15 = i3;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors4 = sliderColors2;
                            f7 = f4;
                            bm3Var4 = bm3Var2;
                            f8 = SliderKt.TrackInsideCornerSize;
                        } else {
                            dm3Var4 = dm3Var3;
                            i15 = i3;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors4 = sliderColors2;
                            f7 = f4;
                            bm3Var4 = bm3Var2;
                            f8 = f3;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1952945688, i15, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1785)");
                    }
                    m3885TrackImplxlyIBlM(rangeSliderState, f, modifier4, z5, sliderColors4, bm3Var4, dm3Var4, f7, f8, composerStartRestartGroup, i15 & 2147483646);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    f6 = f8;
                    f5 = f7;
                    dm3Var2 = dm3Var4;
                    bm3Var3 = bm3Var4;
                    sliderColors3 = sliderColors4;
                    z4 = z5;
                    modifier3 = modifier4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    dm3Var2 = dm3Var;
                    modifier3 = modifier2;
                    z4 = z2;
                    sliderColors3 = sliderColors2;
                    f5 = f4;
                    bm3Var3 = bm3Var2;
                    f6 = f3;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: u28
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SliderDefaults.Track_mnvyFg4$lambda$41(this.b, rangeSliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f5, f6, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
            i6 = i2 & 8;
            if (i6 != 0) {
                if ((i & 3072) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                if ((i & 24576) == 0) {
                    if ((i2 & 16) == 0) {
                        sliderColors2 = sliderColors;
                        if (composerStartRestartGroup.changed(sliderColors2)) {
                        }
                        i3 |= i16;
                    } else {
                        sliderColors2 = sliderColors;
                    }
                    i3 |= i16;
                } else {
                    sliderColors2 = sliderColors;
                }
                if ((196608 & i) == 0) {
                    if ((i2 & 32) == 0) {
                        bm3Var2 = bm3Var;
                        if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        }
                        i3 |= i17;
                    } else {
                        bm3Var2 = bm3Var;
                    }
                    i3 |= i17;
                } else {
                    bm3Var2 = bm3Var;
                }
                i8 = i2 & 64;
                if (i8 != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
                i10 = i2 & 128;
                if (i10 != 0) {
                    i3 |= 12582912;
                    f4 = f2;
                } else {
                    f4 = f2;
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(f4)) {
                            i11 = 8388608;
                        } else {
                            i11 = 4194304;
                        }
                        i3 |= i11;
                    }
                }
                i12 = i2 & 256;
                if (i12 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(f3)) {
                            i13 = 67108864;
                        } else {
                            i13 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i13;
                    }
                    if ((i2 & 512) != 0) {
                        i3 |= 805306368;
                    } else if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changed(this)) {
                            i14 = 536870912;
                        } else {
                            i14 = 268435456;
                        }
                        i3 |= i14;
                    }
                    if ((306783379 & i3) != 306783378) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) == 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 16) != 0) {
                                SliderColors sliderColorsColors8 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                                i3 &= -57345;
                                sliderColors2 = sliderColorsColors8;
                            }
                            if ((i2 & 32) != 0) {
                                z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (!z6) {
                                    objRememberedValue2 = new bm3() { // from class: t28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                } else {
                                    objRememberedValue2 = new bm3() { // from class: t28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                bm3Var2 = (bm3) objRememberedValue2;
                                i3 = (-458753) & i3;
                            }
                            if (i8 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                        @Override // defpackage.dm3
                                        public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                            m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                            return j59.a;
                                        }

                                        /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                        public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                            SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                            sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                dm3Var3 = (dm3) objRememberedValue;
                            } else {
                                dm3Var3 = dm3Var;
                            }
                            if (i10 != 0) {
                                f4 = SliderKt.ThumbTrackGapSize;
                            }
                            if (i12 != 0) {
                                dm3Var4 = dm3Var3;
                                i15 = i3;
                                modifier4 = modifier2;
                                z5 = z2;
                                sliderColors4 = sliderColors2;
                                f7 = f4;
                                bm3Var4 = bm3Var2;
                                f8 = SliderKt.TrackInsideCornerSize;
                            } else {
                                dm3Var4 = dm3Var3;
                                i15 = i3;
                                modifier4 = modifier2;
                                z5 = z2;
                                sliderColors4 = sliderColors2;
                                f7 = f4;
                                bm3Var4 = bm3Var2;
                                f8 = f3;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 16) != 0) {
                                SliderColors sliderColorsColors9 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                                i3 &= -57345;
                                sliderColors2 = sliderColorsColors9;
                            }
                            if ((i2 & 32) != 0) {
                                z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (!z6) {
                                    objRememberedValue2 = new bm3() { // from class: t28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                } else {
                                    objRememberedValue2 = new bm3() { // from class: t28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                bm3Var2 = (bm3) objRememberedValue2;
                                i3 = (-458753) & i3;
                            }
                            if (i8 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                        @Override // defpackage.dm3
                                        public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                            m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                            return j59.a;
                                        }

                                        /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                        public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                            SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                            sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                dm3Var3 = (dm3) objRememberedValue;
                            } else {
                                dm3Var3 = dm3Var;
                            }
                            if (i10 != 0) {
                                f4 = SliderKt.ThumbTrackGapSize;
                            }
                            if (i12 != 0) {
                                dm3Var4 = dm3Var3;
                                i15 = i3;
                                modifier4 = modifier2;
                                z5 = z2;
                                sliderColors4 = sliderColors2;
                                f7 = f4;
                                bm3Var4 = bm3Var2;
                                f8 = SliderKt.TrackInsideCornerSize;
                            } else {
                                dm3Var4 = dm3Var3;
                                i15 = i3;
                                modifier4 = modifier2;
                                z5 = z2;
                                sliderColors4 = sliderColors2;
                                f7 = f4;
                                bm3Var4 = bm3Var2;
                                f8 = f3;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1952945688, i15, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1785)");
                        }
                        m3885TrackImplxlyIBlM(rangeSliderState, f, modifier4, z5, sliderColors4, bm3Var4, dm3Var4, f7, f8, composerStartRestartGroup, i15 & 2147483646);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        f6 = f8;
                        f5 = f7;
                        dm3Var2 = dm3Var4;
                        bm3Var3 = bm3Var4;
                        sliderColors3 = sliderColors4;
                        z4 = z5;
                        modifier3 = modifier4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        dm3Var2 = dm3Var;
                        modifier3 = modifier2;
                        z4 = z2;
                        sliderColors3 = sliderColors2;
                        f5 = f4;
                        bm3Var3 = bm3Var2;
                        f6 = f3;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: u28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return SliderDefaults.Track_mnvyFg4$lambda$41(this.b, rangeSliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f5, f6, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                if ((i2 & 512) != 0) {
                    i3 |= 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i14 = 536870912;
                    } else {
                        i14 = 268435456;
                    }
                    i3 |= i14;
                }
                if ((306783379 & i3) != 306783378) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 16) != 0) {
                            SliderColors sliderColorsColors10 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -57345;
                            sliderColors2 = sliderColorsColors10;
                        }
                        if ((i2 & 32) != 0) {
                            z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (!z6) {
                                objRememberedValue2 = new bm3() { // from class: t28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: t28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            bm3Var2 = (bm3) objRememberedValue2;
                            i3 = (-458753) & i3;
                        }
                        if (i8 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i10 != 0) {
                            f4 = SliderKt.ThumbTrackGapSize;
                        }
                        if (i12 != 0) {
                            dm3Var4 = dm3Var3;
                            i15 = i3;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors4 = sliderColors2;
                            f7 = f4;
                            bm3Var4 = bm3Var2;
                            f8 = SliderKt.TrackInsideCornerSize;
                        } else {
                            dm3Var4 = dm3Var3;
                            i15 = i3;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors4 = sliderColors2;
                            f7 = f4;
                            bm3Var4 = bm3Var2;
                            f8 = f3;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 16) != 0) {
                            SliderColors sliderColorsColors11 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -57345;
                            sliderColors2 = sliderColorsColors11;
                        }
                        if ((i2 & 32) != 0) {
                            z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (!z6) {
                                objRememberedValue2 = new bm3() { // from class: t28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: t28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            bm3Var2 = (bm3) objRememberedValue2;
                            i3 = (-458753) & i3;
                        }
                        if (i8 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i10 != 0) {
                            f4 = SliderKt.ThumbTrackGapSize;
                        }
                        if (i12 != 0) {
                            dm3Var4 = dm3Var3;
                            i15 = i3;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors4 = sliderColors2;
                            f7 = f4;
                            bm3Var4 = bm3Var2;
                            f8 = SliderKt.TrackInsideCornerSize;
                        } else {
                            dm3Var4 = dm3Var3;
                            i15 = i3;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors4 = sliderColors2;
                            f7 = f4;
                            bm3Var4 = bm3Var2;
                            f8 = f3;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1952945688, i15, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1785)");
                    }
                    m3885TrackImplxlyIBlM(rangeSliderState, f, modifier4, z5, sliderColors4, bm3Var4, dm3Var4, f7, f8, composerStartRestartGroup, i15 & 2147483646);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    f6 = f8;
                    f5 = f7;
                    dm3Var2 = dm3Var4;
                    bm3Var3 = bm3Var4;
                    sliderColors3 = sliderColors4;
                    z4 = z5;
                    modifier3 = modifier4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    dm3Var2 = dm3Var;
                    modifier3 = modifier2;
                    z4 = z2;
                    sliderColors3 = sliderColors2;
                    f5 = f4;
                    bm3Var3 = bm3Var2;
                    f6 = f3;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: u28
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SliderDefaults.Track_mnvyFg4$lambda$41(this.b, rangeSliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f5, f6, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            z2 = z;
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    sliderColors2 = sliderColors;
                    if (composerStartRestartGroup.changed(sliderColors2)) {
                    }
                    i3 |= i16;
                } else {
                    sliderColors2 = sliderColors;
                }
                i3 |= i16;
            } else {
                sliderColors2 = sliderColors;
            }
            if ((196608 & i) == 0) {
                if ((i2 & 32) == 0) {
                    bm3Var2 = bm3Var;
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    }
                    i3 |= i17;
                } else {
                    bm3Var2 = bm3Var;
                }
                i3 |= i17;
            } else {
                bm3Var2 = bm3Var;
            }
            i8 = i2 & 64;
            if (i8 != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i3 |= i9;
            }
            i10 = i2 & 128;
            if (i10 != 0) {
                i3 |= 12582912;
                f4 = f2;
            } else {
                f4 = f2;
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(f4)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i3 |= i11;
                }
            }
            i12 = i2 & 256;
            if (i12 != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(f3)) {
                        i13 = 67108864;
                    } else {
                        i13 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i13;
                }
                if ((i2 & 512) != 0) {
                    i3 |= 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i14 = 536870912;
                    } else {
                        i14 = 268435456;
                    }
                    i3 |= i14;
                }
                if ((306783379 & i3) != 306783378) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 16) != 0) {
                            SliderColors sliderColorsColors12 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -57345;
                            sliderColors2 = sliderColorsColors12;
                        }
                        if ((i2 & 32) != 0) {
                            z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (!z6) {
                                objRememberedValue2 = new bm3() { // from class: t28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: t28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            bm3Var2 = (bm3) objRememberedValue2;
                            i3 = (-458753) & i3;
                        }
                        if (i8 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i10 != 0) {
                            f4 = SliderKt.ThumbTrackGapSize;
                        }
                        if (i12 != 0) {
                            dm3Var4 = dm3Var3;
                            i15 = i3;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors4 = sliderColors2;
                            f7 = f4;
                            bm3Var4 = bm3Var2;
                            f8 = SliderKt.TrackInsideCornerSize;
                        } else {
                            dm3Var4 = dm3Var3;
                            i15 = i3;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors4 = sliderColors2;
                            f7 = f4;
                            bm3Var4 = bm3Var2;
                            f8 = f3;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 16) != 0) {
                            SliderColors sliderColorsColors13 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -57345;
                            sliderColors2 = sliderColorsColors13;
                        }
                        if ((i2 & 32) != 0) {
                            z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (!z6) {
                                objRememberedValue2 = new bm3() { // from class: t28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: t28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            bm3Var2 = (bm3) objRememberedValue2;
                            i3 = (-458753) & i3;
                        }
                        if (i8 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i10 != 0) {
                            f4 = SliderKt.ThumbTrackGapSize;
                        }
                        if (i12 != 0) {
                            dm3Var4 = dm3Var3;
                            i15 = i3;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors4 = sliderColors2;
                            f7 = f4;
                            bm3Var4 = bm3Var2;
                            f8 = SliderKt.TrackInsideCornerSize;
                        } else {
                            dm3Var4 = dm3Var3;
                            i15 = i3;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors4 = sliderColors2;
                            f7 = f4;
                            bm3Var4 = bm3Var2;
                            f8 = f3;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1952945688, i15, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1785)");
                    }
                    m3885TrackImplxlyIBlM(rangeSliderState, f, modifier4, z5, sliderColors4, bm3Var4, dm3Var4, f7, f8, composerStartRestartGroup, i15 & 2147483646);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    f6 = f8;
                    f5 = f7;
                    dm3Var2 = dm3Var4;
                    bm3Var3 = bm3Var4;
                    sliderColors3 = sliderColors4;
                    z4 = z5;
                    modifier3 = modifier4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    dm3Var2 = dm3Var;
                    modifier3 = modifier2;
                    z4 = z2;
                    sliderColors3 = sliderColors2;
                    f5 = f4;
                    bm3Var3 = bm3Var2;
                    f6 = f3;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: u28
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SliderDefaults.Track_mnvyFg4$lambda$41(this.b, rangeSliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f5, f6, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            if ((i2 & 512) != 0) {
                i3 |= 805306368;
            } else if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i14 = 536870912;
                } else {
                    i14 = 268435456;
                }
                i3 |= i14;
            }
            if ((306783379 & i3) != 306783378) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) == 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 16) != 0) {
                        SliderColors sliderColorsColors14 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                        i3 &= -57345;
                        sliderColors2 = sliderColorsColors14;
                    }
                    if ((i2 & 32) != 0) {
                        z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (!z6) {
                            objRememberedValue2 = new bm3() { // from class: t28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: t28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        bm3Var2 = (bm3) objRememberedValue2;
                        i3 = (-458753) & i3;
                    }
                    if (i8 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i10 != 0) {
                        f4 = SliderKt.ThumbTrackGapSize;
                    }
                    if (i12 != 0) {
                        dm3Var4 = dm3Var3;
                        i15 = i3;
                        modifier4 = modifier2;
                        z5 = z2;
                        sliderColors4 = sliderColors2;
                        f7 = f4;
                        bm3Var4 = bm3Var2;
                        f8 = SliderKt.TrackInsideCornerSize;
                    } else {
                        dm3Var4 = dm3Var3;
                        i15 = i3;
                        modifier4 = modifier2;
                        z5 = z2;
                        sliderColors4 = sliderColors2;
                        f7 = f4;
                        bm3Var4 = bm3Var2;
                        f8 = f3;
                    }
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 16) != 0) {
                        SliderColors sliderColorsColors15 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                        i3 &= -57345;
                        sliderColors2 = sliderColorsColors15;
                    }
                    if ((i2 & 32) != 0) {
                        z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (!z6) {
                            objRememberedValue2 = new bm3() { // from class: t28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: t28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        bm3Var2 = (bm3) objRememberedValue2;
                        i3 = (-458753) & i3;
                    }
                    if (i8 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i10 != 0) {
                        f4 = SliderKt.ThumbTrackGapSize;
                    }
                    if (i12 != 0) {
                        dm3Var4 = dm3Var3;
                        i15 = i3;
                        modifier4 = modifier2;
                        z5 = z2;
                        sliderColors4 = sliderColors2;
                        f7 = f4;
                        bm3Var4 = bm3Var2;
                        f8 = SliderKt.TrackInsideCornerSize;
                    } else {
                        dm3Var4 = dm3Var3;
                        i15 = i3;
                        modifier4 = modifier2;
                        z5 = z2;
                        sliderColors4 = sliderColors2;
                        f7 = f4;
                        bm3Var4 = bm3Var2;
                        f8 = f3;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1952945688, i15, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1785)");
                }
                m3885TrackImplxlyIBlM(rangeSliderState, f, modifier4, z5, sliderColors4, bm3Var4, dm3Var4, f7, f8, composerStartRestartGroup, i15 & 2147483646);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                f6 = f8;
                f5 = f7;
                dm3Var2 = dm3Var4;
                bm3Var3 = bm3Var4;
                sliderColors3 = sliderColors4;
                z4 = z5;
                modifier3 = modifier4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                dm3Var2 = dm3Var;
                modifier3 = modifier2;
                z4 = z2;
                sliderColors3 = sliderColors2;
                f5 = f4;
                bm3Var3 = bm3Var2;
                f6 = f3;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: u28
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SliderDefaults.Track_mnvyFg4$lambda$41(this.b, rangeSliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f5, f6, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        i4 = i2 & 4;
        if (i4 != 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                modifier2 = modifier;
                if (composerStartRestartGroup.changed(modifier2)) {
                    i5 = 256;
                } else {
                    i5 = 128;
                }
                i3 |= i5;
            }
            i6 = i2 & 8;
            if (i6 != 0) {
                if ((i & 3072) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                if ((i & 24576) == 0) {
                    if ((i2 & 16) == 0) {
                        sliderColors2 = sliderColors;
                        if (composerStartRestartGroup.changed(sliderColors2)) {
                        }
                        i3 |= i16;
                    } else {
                        sliderColors2 = sliderColors;
                    }
                    i3 |= i16;
                } else {
                    sliderColors2 = sliderColors;
                }
                if ((196608 & i) == 0) {
                    if ((i2 & 32) == 0) {
                        bm3Var2 = bm3Var;
                        if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        }
                        i3 |= i17;
                    } else {
                        bm3Var2 = bm3Var;
                    }
                    i3 |= i17;
                } else {
                    bm3Var2 = bm3Var;
                }
                i8 = i2 & 64;
                if (i8 != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
                i10 = i2 & 128;
                if (i10 != 0) {
                    i3 |= 12582912;
                    f4 = f2;
                } else {
                    f4 = f2;
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(f4)) {
                            i11 = 8388608;
                        } else {
                            i11 = 4194304;
                        }
                        i3 |= i11;
                    }
                }
                i12 = i2 & 256;
                if (i12 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(f3)) {
                            i13 = 67108864;
                        } else {
                            i13 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i13;
                    }
                    if ((i2 & 512) != 0) {
                        i3 |= 805306368;
                    } else if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changed(this)) {
                            i14 = 536870912;
                        } else {
                            i14 = 268435456;
                        }
                        i3 |= i14;
                    }
                    if ((306783379 & i3) != 306783378) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) == 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 16) != 0) {
                                SliderColors sliderColorsColors16 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                                i3 &= -57345;
                                sliderColors2 = sliderColorsColors16;
                            }
                            if ((i2 & 32) != 0) {
                                z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (!z6) {
                                    objRememberedValue2 = new bm3() { // from class: t28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                } else {
                                    objRememberedValue2 = new bm3() { // from class: t28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                bm3Var2 = (bm3) objRememberedValue2;
                                i3 = (-458753) & i3;
                            }
                            if (i8 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                        @Override // defpackage.dm3
                                        public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                            m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                            return j59.a;
                                        }

                                        /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                        public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                            SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                            sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                dm3Var3 = (dm3) objRememberedValue;
                            } else {
                                dm3Var3 = dm3Var;
                            }
                            if (i10 != 0) {
                                f4 = SliderKt.ThumbTrackGapSize;
                            }
                            if (i12 != 0) {
                                dm3Var4 = dm3Var3;
                                i15 = i3;
                                modifier4 = modifier2;
                                z5 = z2;
                                sliderColors4 = sliderColors2;
                                f7 = f4;
                                bm3Var4 = bm3Var2;
                                f8 = SliderKt.TrackInsideCornerSize;
                            } else {
                                dm3Var4 = dm3Var3;
                                i15 = i3;
                                modifier4 = modifier2;
                                z5 = z2;
                                sliderColors4 = sliderColors2;
                                f7 = f4;
                                bm3Var4 = bm3Var2;
                                f8 = f3;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 16) != 0) {
                                SliderColors sliderColorsColors17 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                                i3 &= -57345;
                                sliderColors2 = sliderColorsColors17;
                            }
                            if ((i2 & 32) != 0) {
                                z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (!z6) {
                                    objRememberedValue2 = new bm3() { // from class: t28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                } else {
                                    objRememberedValue2 = new bm3() { // from class: t28
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                bm3Var2 = (bm3) objRememberedValue2;
                                i3 = (-458753) & i3;
                            }
                            if (i8 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                        @Override // defpackage.dm3
                                        public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                            m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                            return j59.a;
                                        }

                                        /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                        public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                            SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                            sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                dm3Var3 = (dm3) objRememberedValue;
                            } else {
                                dm3Var3 = dm3Var;
                            }
                            if (i10 != 0) {
                                f4 = SliderKt.ThumbTrackGapSize;
                            }
                            if (i12 != 0) {
                                dm3Var4 = dm3Var3;
                                i15 = i3;
                                modifier4 = modifier2;
                                z5 = z2;
                                sliderColors4 = sliderColors2;
                                f7 = f4;
                                bm3Var4 = bm3Var2;
                                f8 = SliderKt.TrackInsideCornerSize;
                            } else {
                                dm3Var4 = dm3Var3;
                                i15 = i3;
                                modifier4 = modifier2;
                                z5 = z2;
                                sliderColors4 = sliderColors2;
                                f7 = f4;
                                bm3Var4 = bm3Var2;
                                f8 = f3;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1952945688, i15, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1785)");
                        }
                        m3885TrackImplxlyIBlM(rangeSliderState, f, modifier4, z5, sliderColors4, bm3Var4, dm3Var4, f7, f8, composerStartRestartGroup, i15 & 2147483646);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        f6 = f8;
                        f5 = f7;
                        dm3Var2 = dm3Var4;
                        bm3Var3 = bm3Var4;
                        sliderColors3 = sliderColors4;
                        z4 = z5;
                        modifier3 = modifier4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        dm3Var2 = dm3Var;
                        modifier3 = modifier2;
                        z4 = z2;
                        sliderColors3 = sliderColors2;
                        f5 = f4;
                        bm3Var3 = bm3Var2;
                        f6 = f3;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: u28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return SliderDefaults.Track_mnvyFg4$lambda$41(this.b, rangeSliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f5, f6, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                if ((i2 & 512) != 0) {
                    i3 |= 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i14 = 536870912;
                    } else {
                        i14 = 268435456;
                    }
                    i3 |= i14;
                }
                if ((306783379 & i3) != 306783378) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 16) != 0) {
                            SliderColors sliderColorsColors18 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -57345;
                            sliderColors2 = sliderColorsColors18;
                        }
                        if ((i2 & 32) != 0) {
                            z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (!z6) {
                                objRememberedValue2 = new bm3() { // from class: t28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: t28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            bm3Var2 = (bm3) objRememberedValue2;
                            i3 = (-458753) & i3;
                        }
                        if (i8 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i10 != 0) {
                            f4 = SliderKt.ThumbTrackGapSize;
                        }
                        if (i12 != 0) {
                            dm3Var4 = dm3Var3;
                            i15 = i3;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors4 = sliderColors2;
                            f7 = f4;
                            bm3Var4 = bm3Var2;
                            f8 = SliderKt.TrackInsideCornerSize;
                        } else {
                            dm3Var4 = dm3Var3;
                            i15 = i3;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors4 = sliderColors2;
                            f7 = f4;
                            bm3Var4 = bm3Var2;
                            f8 = f3;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 16) != 0) {
                            SliderColors sliderColorsColors19 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -57345;
                            sliderColors2 = sliderColorsColors19;
                        }
                        if ((i2 & 32) != 0) {
                            z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (!z6) {
                                objRememberedValue2 = new bm3() { // from class: t28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: t28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            bm3Var2 = (bm3) objRememberedValue2;
                            i3 = (-458753) & i3;
                        }
                        if (i8 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i10 != 0) {
                            f4 = SliderKt.ThumbTrackGapSize;
                        }
                        if (i12 != 0) {
                            dm3Var4 = dm3Var3;
                            i15 = i3;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors4 = sliderColors2;
                            f7 = f4;
                            bm3Var4 = bm3Var2;
                            f8 = SliderKt.TrackInsideCornerSize;
                        } else {
                            dm3Var4 = dm3Var3;
                            i15 = i3;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors4 = sliderColors2;
                            f7 = f4;
                            bm3Var4 = bm3Var2;
                            f8 = f3;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1952945688, i15, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1785)");
                    }
                    m3885TrackImplxlyIBlM(rangeSliderState, f, modifier4, z5, sliderColors4, bm3Var4, dm3Var4, f7, f8, composerStartRestartGroup, i15 & 2147483646);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    f6 = f8;
                    f5 = f7;
                    dm3Var2 = dm3Var4;
                    bm3Var3 = bm3Var4;
                    sliderColors3 = sliderColors4;
                    z4 = z5;
                    modifier3 = modifier4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    dm3Var2 = dm3Var;
                    modifier3 = modifier2;
                    z4 = z2;
                    sliderColors3 = sliderColors2;
                    f5 = f4;
                    bm3Var3 = bm3Var2;
                    f6 = f3;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: u28
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SliderDefaults.Track_mnvyFg4$lambda$41(this.b, rangeSliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f5, f6, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            z2 = z;
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    sliderColors2 = sliderColors;
                    if (composerStartRestartGroup.changed(sliderColors2)) {
                    }
                    i3 |= i16;
                } else {
                    sliderColors2 = sliderColors;
                }
                i3 |= i16;
            } else {
                sliderColors2 = sliderColors;
            }
            if ((196608 & i) == 0) {
                if ((i2 & 32) == 0) {
                    bm3Var2 = bm3Var;
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    }
                    i3 |= i17;
                } else {
                    bm3Var2 = bm3Var;
                }
                i3 |= i17;
            } else {
                bm3Var2 = bm3Var;
            }
            i8 = i2 & 64;
            if (i8 != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i3 |= i9;
            }
            i10 = i2 & 128;
            if (i10 != 0) {
                i3 |= 12582912;
                f4 = f2;
            } else {
                f4 = f2;
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(f4)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i3 |= i11;
                }
            }
            i12 = i2 & 256;
            if (i12 != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(f3)) {
                        i13 = 67108864;
                    } else {
                        i13 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i13;
                }
                if ((i2 & 512) != 0) {
                    i3 |= 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i14 = 536870912;
                    } else {
                        i14 = 268435456;
                    }
                    i3 |= i14;
                }
                if ((306783379 & i3) != 306783378) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 16) != 0) {
                            SliderColors sliderColorsColors110 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -57345;
                            sliderColors2 = sliderColorsColors110;
                        }
                        if ((i2 & 32) != 0) {
                            z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (!z6) {
                                objRememberedValue2 = new bm3() { // from class: t28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: t28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            bm3Var2 = (bm3) objRememberedValue2;
                            i3 = (-458753) & i3;
                        }
                        if (i8 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i10 != 0) {
                            f4 = SliderKt.ThumbTrackGapSize;
                        }
                        if (i12 != 0) {
                            dm3Var4 = dm3Var3;
                            i15 = i3;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors4 = sliderColors2;
                            f7 = f4;
                            bm3Var4 = bm3Var2;
                            f8 = SliderKt.TrackInsideCornerSize;
                        } else {
                            dm3Var4 = dm3Var3;
                            i15 = i3;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors4 = sliderColors2;
                            f7 = f4;
                            bm3Var4 = bm3Var2;
                            f8 = f3;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 16) != 0) {
                            SliderColors sliderColorsColors111 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -57345;
                            sliderColors2 = sliderColorsColors111;
                        }
                        if ((i2 & 32) != 0) {
                            z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (!z6) {
                                objRememberedValue2 = new bm3() { // from class: t28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: t28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            bm3Var2 = (bm3) objRememberedValue2;
                            i3 = (-458753) & i3;
                        }
                        if (i8 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i10 != 0) {
                            f4 = SliderKt.ThumbTrackGapSize;
                        }
                        if (i12 != 0) {
                            dm3Var4 = dm3Var3;
                            i15 = i3;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors4 = sliderColors2;
                            f7 = f4;
                            bm3Var4 = bm3Var2;
                            f8 = SliderKt.TrackInsideCornerSize;
                        } else {
                            dm3Var4 = dm3Var3;
                            i15 = i3;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors4 = sliderColors2;
                            f7 = f4;
                            bm3Var4 = bm3Var2;
                            f8 = f3;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1952945688, i15, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1785)");
                    }
                    m3885TrackImplxlyIBlM(rangeSliderState, f, modifier4, z5, sliderColors4, bm3Var4, dm3Var4, f7, f8, composerStartRestartGroup, i15 & 2147483646);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    f6 = f8;
                    f5 = f7;
                    dm3Var2 = dm3Var4;
                    bm3Var3 = bm3Var4;
                    sliderColors3 = sliderColors4;
                    z4 = z5;
                    modifier3 = modifier4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    dm3Var2 = dm3Var;
                    modifier3 = modifier2;
                    z4 = z2;
                    sliderColors3 = sliderColors2;
                    f5 = f4;
                    bm3Var3 = bm3Var2;
                    f6 = f3;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: u28
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SliderDefaults.Track_mnvyFg4$lambda$41(this.b, rangeSliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f5, f6, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            if ((i2 & 512) != 0) {
                i3 |= 805306368;
            } else if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i14 = 536870912;
                } else {
                    i14 = 268435456;
                }
                i3 |= i14;
            }
            if ((306783379 & i3) != 306783378) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) == 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 16) != 0) {
                        SliderColors sliderColorsColors112 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                        i3 &= -57345;
                        sliderColors2 = sliderColorsColors112;
                    }
                    if ((i2 & 32) != 0) {
                        z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (!z6) {
                            objRememberedValue2 = new bm3() { // from class: t28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: t28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        bm3Var2 = (bm3) objRememberedValue2;
                        i3 = (-458753) & i3;
                    }
                    if (i8 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i10 != 0) {
                        f4 = SliderKt.ThumbTrackGapSize;
                    }
                    if (i12 != 0) {
                        dm3Var4 = dm3Var3;
                        i15 = i3;
                        modifier4 = modifier2;
                        z5 = z2;
                        sliderColors4 = sliderColors2;
                        f7 = f4;
                        bm3Var4 = bm3Var2;
                        f8 = SliderKt.TrackInsideCornerSize;
                    } else {
                        dm3Var4 = dm3Var3;
                        i15 = i3;
                        modifier4 = modifier2;
                        z5 = z2;
                        sliderColors4 = sliderColors2;
                        f7 = f4;
                        bm3Var4 = bm3Var2;
                        f8 = f3;
                    }
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 16) != 0) {
                        SliderColors sliderColorsColors113 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                        i3 &= -57345;
                        sliderColors2 = sliderColorsColors113;
                    }
                    if ((i2 & 32) != 0) {
                        z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (!z6) {
                            objRememberedValue2 = new bm3() { // from class: t28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: t28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        bm3Var2 = (bm3) objRememberedValue2;
                        i3 = (-458753) & i3;
                    }
                    if (i8 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i10 != 0) {
                        f4 = SliderKt.ThumbTrackGapSize;
                    }
                    if (i12 != 0) {
                        dm3Var4 = dm3Var3;
                        i15 = i3;
                        modifier4 = modifier2;
                        z5 = z2;
                        sliderColors4 = sliderColors2;
                        f7 = f4;
                        bm3Var4 = bm3Var2;
                        f8 = SliderKt.TrackInsideCornerSize;
                    } else {
                        dm3Var4 = dm3Var3;
                        i15 = i3;
                        modifier4 = modifier2;
                        z5 = z2;
                        sliderColors4 = sliderColors2;
                        f7 = f4;
                        bm3Var4 = bm3Var2;
                        f8 = f3;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1952945688, i15, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1785)");
                }
                m3885TrackImplxlyIBlM(rangeSliderState, f, modifier4, z5, sliderColors4, bm3Var4, dm3Var4, f7, f8, composerStartRestartGroup, i15 & 2147483646);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                f6 = f8;
                f5 = f7;
                dm3Var2 = dm3Var4;
                bm3Var3 = bm3Var4;
                sliderColors3 = sliderColors4;
                z4 = z5;
                modifier3 = modifier4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                dm3Var2 = dm3Var;
                modifier3 = modifier2;
                z4 = z2;
                sliderColors3 = sliderColors2;
                f5 = f4;
                bm3Var3 = bm3Var2;
                f6 = f3;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: u28
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SliderDefaults.Track_mnvyFg4$lambda$41(this.b, rangeSliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f5, f6, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        modifier2 = modifier;
        i6 = i2 & 8;
        if (i6 != 0) {
            if ((i & 3072) == 0) {
                z2 = z;
                if (composerStartRestartGroup.changed(z2)) {
                    i7 = 2048;
                } else {
                    i7 = 1024;
                }
                i3 |= i7;
            }
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    sliderColors2 = sliderColors;
                    if (composerStartRestartGroup.changed(sliderColors2)) {
                    }
                    i3 |= i16;
                } else {
                    sliderColors2 = sliderColors;
                }
                i3 |= i16;
            } else {
                sliderColors2 = sliderColors;
            }
            if ((196608 & i) == 0) {
                if ((i2 & 32) == 0) {
                    bm3Var2 = bm3Var;
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    }
                    i3 |= i17;
                } else {
                    bm3Var2 = bm3Var;
                }
                i3 |= i17;
            } else {
                bm3Var2 = bm3Var;
            }
            i8 = i2 & 64;
            if (i8 != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i3 |= i9;
            }
            i10 = i2 & 128;
            if (i10 != 0) {
                i3 |= 12582912;
                f4 = f2;
            } else {
                f4 = f2;
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(f4)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i3 |= i11;
                }
            }
            i12 = i2 & 256;
            if (i12 != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(f3)) {
                        i13 = 67108864;
                    } else {
                        i13 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i13;
                }
                if ((i2 & 512) != 0) {
                    i3 |= 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i14 = 536870912;
                    } else {
                        i14 = 268435456;
                    }
                    i3 |= i14;
                }
                if ((306783379 & i3) != 306783378) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 16) != 0) {
                            SliderColors sliderColorsColors114 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -57345;
                            sliderColors2 = sliderColorsColors114;
                        }
                        if ((i2 & 32) != 0) {
                            z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (!z6) {
                                objRememberedValue2 = new bm3() { // from class: t28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: t28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            bm3Var2 = (bm3) objRememberedValue2;
                            i3 = (-458753) & i3;
                        }
                        if (i8 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i10 != 0) {
                            f4 = SliderKt.ThumbTrackGapSize;
                        }
                        if (i12 != 0) {
                            dm3Var4 = dm3Var3;
                            i15 = i3;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors4 = sliderColors2;
                            f7 = f4;
                            bm3Var4 = bm3Var2;
                            f8 = SliderKt.TrackInsideCornerSize;
                        } else {
                            dm3Var4 = dm3Var3;
                            i15 = i3;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors4 = sliderColors2;
                            f7 = f4;
                            bm3Var4 = bm3Var2;
                            f8 = f3;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 16) != 0) {
                            SliderColors sliderColorsColors115 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                            i3 &= -57345;
                            sliderColors2 = sliderColorsColors115;
                        }
                        if ((i2 & 32) != 0) {
                            z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (!z6) {
                                objRememberedValue2 = new bm3() { // from class: t28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new bm3() { // from class: t28
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            bm3Var2 = (bm3) objRememberedValue2;
                            i3 = (-458753) & i3;
                        }
                        if (i8 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                        m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                        return j59.a;
                                    }

                                    /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                    public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                        SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                        sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            dm3Var3 = (dm3) objRememberedValue;
                        } else {
                            dm3Var3 = dm3Var;
                        }
                        if (i10 != 0) {
                            f4 = SliderKt.ThumbTrackGapSize;
                        }
                        if (i12 != 0) {
                            dm3Var4 = dm3Var3;
                            i15 = i3;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors4 = sliderColors2;
                            f7 = f4;
                            bm3Var4 = bm3Var2;
                            f8 = SliderKt.TrackInsideCornerSize;
                        } else {
                            dm3Var4 = dm3Var3;
                            i15 = i3;
                            modifier4 = modifier2;
                            z5 = z2;
                            sliderColors4 = sliderColors2;
                            f7 = f4;
                            bm3Var4 = bm3Var2;
                            f8 = f3;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1952945688, i15, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1785)");
                    }
                    m3885TrackImplxlyIBlM(rangeSliderState, f, modifier4, z5, sliderColors4, bm3Var4, dm3Var4, f7, f8, composerStartRestartGroup, i15 & 2147483646);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    f6 = f8;
                    f5 = f7;
                    dm3Var2 = dm3Var4;
                    bm3Var3 = bm3Var4;
                    sliderColors3 = sliderColors4;
                    z4 = z5;
                    modifier3 = modifier4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    dm3Var2 = dm3Var;
                    modifier3 = modifier2;
                    z4 = z2;
                    sliderColors3 = sliderColors2;
                    f5 = f4;
                    bm3Var3 = bm3Var2;
                    f6 = f3;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: u28
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SliderDefaults.Track_mnvyFg4$lambda$41(this.b, rangeSliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f5, f6, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            if ((i2 & 512) != 0) {
                i3 |= 805306368;
            } else if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i14 = 536870912;
                } else {
                    i14 = 268435456;
                }
                i3 |= i14;
            }
            if ((306783379 & i3) != 306783378) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) == 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 16) != 0) {
                        SliderColors sliderColorsColors116 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                        i3 &= -57345;
                        sliderColors2 = sliderColorsColors116;
                    }
                    if ((i2 & 32) != 0) {
                        z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (!z6) {
                            objRememberedValue2 = new bm3() { // from class: t28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: t28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        bm3Var2 = (bm3) objRememberedValue2;
                        i3 = (-458753) & i3;
                    }
                    if (i8 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i10 != 0) {
                        f4 = SliderKt.ThumbTrackGapSize;
                    }
                    if (i12 != 0) {
                        dm3Var4 = dm3Var3;
                        i15 = i3;
                        modifier4 = modifier2;
                        z5 = z2;
                        sliderColors4 = sliderColors2;
                        f7 = f4;
                        bm3Var4 = bm3Var2;
                        f8 = SliderKt.TrackInsideCornerSize;
                    } else {
                        dm3Var4 = dm3Var3;
                        i15 = i3;
                        modifier4 = modifier2;
                        z5 = z2;
                        sliderColors4 = sliderColors2;
                        f7 = f4;
                        bm3Var4 = bm3Var2;
                        f8 = f3;
                    }
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 16) != 0) {
                        SliderColors sliderColorsColors117 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                        i3 &= -57345;
                        sliderColors2 = sliderColorsColors117;
                    }
                    if ((i2 & 32) != 0) {
                        z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (!z6) {
                            objRememberedValue2 = new bm3() { // from class: t28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: t28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        bm3Var2 = (bm3) objRememberedValue2;
                        i3 = (-458753) & i3;
                    }
                    if (i8 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i10 != 0) {
                        f4 = SliderKt.ThumbTrackGapSize;
                    }
                    if (i12 != 0) {
                        dm3Var4 = dm3Var3;
                        i15 = i3;
                        modifier4 = modifier2;
                        z5 = z2;
                        sliderColors4 = sliderColors2;
                        f7 = f4;
                        bm3Var4 = bm3Var2;
                        f8 = SliderKt.TrackInsideCornerSize;
                    } else {
                        dm3Var4 = dm3Var3;
                        i15 = i3;
                        modifier4 = modifier2;
                        z5 = z2;
                        sliderColors4 = sliderColors2;
                        f7 = f4;
                        bm3Var4 = bm3Var2;
                        f8 = f3;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1952945688, i15, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1785)");
                }
                m3885TrackImplxlyIBlM(rangeSliderState, f, modifier4, z5, sliderColors4, bm3Var4, dm3Var4, f7, f8, composerStartRestartGroup, i15 & 2147483646);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                f6 = f8;
                f5 = f7;
                dm3Var2 = dm3Var4;
                bm3Var3 = bm3Var4;
                sliderColors3 = sliderColors4;
                z4 = z5;
                modifier3 = modifier4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                dm3Var2 = dm3Var;
                modifier3 = modifier2;
                z4 = z2;
                sliderColors3 = sliderColors2;
                f5 = f4;
                bm3Var3 = bm3Var2;
                f6 = f3;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: u28
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SliderDefaults.Track_mnvyFg4$lambda$41(this.b, rangeSliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f5, f6, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        z2 = z;
        if ((i & 24576) == 0) {
            if ((i2 & 16) == 0) {
                sliderColors2 = sliderColors;
                if (composerStartRestartGroup.changed(sliderColors2)) {
                }
                i3 |= i16;
            } else {
                sliderColors2 = sliderColors;
            }
            i3 |= i16;
        } else {
            sliderColors2 = sliderColors;
        }
        if ((196608 & i) == 0) {
            if ((i2 & 32) == 0) {
                bm3Var2 = bm3Var;
                if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                }
                i3 |= i17;
            } else {
                bm3Var2 = bm3Var;
            }
            i3 |= i17;
        } else {
            bm3Var2 = bm3Var;
        }
        i8 = i2 & 64;
        if (i8 != 0) {
            i3 |= 1572864;
        } else if ((i & 1572864) == 0) {
            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                i9 = 1048576;
            } else {
                i9 = 524288;
            }
            i3 |= i9;
        }
        i10 = i2 & 128;
        if (i10 != 0) {
            i3 |= 12582912;
            f4 = f2;
        } else {
            f4 = f2;
            if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(f4)) {
                    i11 = 8388608;
                } else {
                    i11 = 4194304;
                }
                i3 |= i11;
            }
        }
        i12 = i2 & 256;
        if (i12 != 0) {
            if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(f3)) {
                    i13 = 67108864;
                } else {
                    i13 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i13;
            }
            if ((i2 & 512) != 0) {
                i3 |= 805306368;
            } else if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i14 = 536870912;
                } else {
                    i14 = 268435456;
                }
                i3 |= i14;
            }
            if ((306783379 & i3) != 306783378) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) == 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 16) != 0) {
                        SliderColors sliderColorsColors118 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                        i3 &= -57345;
                        sliderColors2 = sliderColorsColors118;
                    }
                    if ((i2 & 32) != 0) {
                        z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (!z6) {
                            objRememberedValue2 = new bm3() { // from class: t28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: t28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        bm3Var2 = (bm3) objRememberedValue2;
                        i3 = (-458753) & i3;
                    }
                    if (i8 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i10 != 0) {
                        f4 = SliderKt.ThumbTrackGapSize;
                    }
                    if (i12 != 0) {
                        dm3Var4 = dm3Var3;
                        i15 = i3;
                        modifier4 = modifier2;
                        z5 = z2;
                        sliderColors4 = sliderColors2;
                        f7 = f4;
                        bm3Var4 = bm3Var2;
                        f8 = SliderKt.TrackInsideCornerSize;
                    } else {
                        dm3Var4 = dm3Var3;
                        i15 = i3;
                        modifier4 = modifier2;
                        z5 = z2;
                        sliderColors4 = sliderColors2;
                        f7 = f4;
                        bm3Var4 = bm3Var2;
                        f8 = f3;
                    }
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 16) != 0) {
                        SliderColors sliderColorsColors119 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                        i3 &= -57345;
                        sliderColors2 = sliderColorsColors119;
                    }
                    if ((i2 & 32) != 0) {
                        z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (!z6) {
                            objRememberedValue2 = new bm3() { // from class: t28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new bm3() { // from class: t28
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        bm3Var2 = (bm3) objRememberedValue2;
                        i3 = (-458753) & i3;
                    }
                    if (i8 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                    m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                                public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                    SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                    sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        dm3Var3 = (dm3) objRememberedValue;
                    } else {
                        dm3Var3 = dm3Var;
                    }
                    if (i10 != 0) {
                        f4 = SliderKt.ThumbTrackGapSize;
                    }
                    if (i12 != 0) {
                        dm3Var4 = dm3Var3;
                        i15 = i3;
                        modifier4 = modifier2;
                        z5 = z2;
                        sliderColors4 = sliderColors2;
                        f7 = f4;
                        bm3Var4 = bm3Var2;
                        f8 = SliderKt.TrackInsideCornerSize;
                    } else {
                        dm3Var4 = dm3Var3;
                        i15 = i3;
                        modifier4 = modifier2;
                        z5 = z2;
                        sliderColors4 = sliderColors2;
                        f7 = f4;
                        bm3Var4 = bm3Var2;
                        f8 = f3;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1952945688, i15, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1785)");
                }
                m3885TrackImplxlyIBlM(rangeSliderState, f, modifier4, z5, sliderColors4, bm3Var4, dm3Var4, f7, f8, composerStartRestartGroup, i15 & 2147483646);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                f6 = f8;
                f5 = f7;
                dm3Var2 = dm3Var4;
                bm3Var3 = bm3Var4;
                sliderColors3 = sliderColors4;
                z4 = z5;
                modifier3 = modifier4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                dm3Var2 = dm3Var;
                modifier3 = modifier2;
                z4 = z2;
                sliderColors3 = sliderColors2;
                f5 = f4;
                bm3Var3 = bm3Var2;
                f6 = f3;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: u28
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SliderDefaults.Track_mnvyFg4$lambda$41(this.b, rangeSliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f5, f6, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 100663296;
        if ((i2 & 512) != 0) {
            i3 |= 805306368;
        } else if ((i & 805306368) == 0) {
            if (composerStartRestartGroup.changed(this)) {
                i14 = 536870912;
            } else {
                i14 = 268435456;
            }
            i3 |= i14;
        }
        if ((306783379 & i3) != 306783378) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) == 0) {
                if (i4 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i6 != 0) {
                    z2 = true;
                }
                if ((i2 & 16) != 0) {
                    SliderColors sliderColorsColors1110 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                    i3 &= -57345;
                    sliderColors2 = sliderColorsColors1110;
                }
                if ((i2 & 32) != 0) {
                    z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (!z6) {
                        objRememberedValue2 = new bm3() { // from class: t28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new bm3() { // from class: t28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    bm3Var2 = (bm3) objRememberedValue2;
                    i3 = (-458753) & i3;
                }
                if (i8 != 0) {
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                return j59.a;
                            }

                            /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                            public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    dm3Var3 = (dm3) objRememberedValue;
                } else {
                    dm3Var3 = dm3Var;
                }
                if (i10 != 0) {
                    f4 = SliderKt.ThumbTrackGapSize;
                }
                if (i12 != 0) {
                    dm3Var4 = dm3Var3;
                    i15 = i3;
                    modifier4 = modifier2;
                    z5 = z2;
                    sliderColors4 = sliderColors2;
                    f7 = f4;
                    bm3Var4 = bm3Var2;
                    f8 = SliderKt.TrackInsideCornerSize;
                } else {
                    dm3Var4 = dm3Var3;
                    i15 = i3;
                    modifier4 = modifier2;
                    z5 = z2;
                    sliderColors4 = sliderColors2;
                    f7 = f4;
                    bm3Var4 = bm3Var2;
                    f8 = f3;
                }
            } else {
                if (i4 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i6 != 0) {
                    z2 = true;
                }
                if ((i2 & 16) != 0) {
                    SliderColors sliderColorsColors1111 = colors(composerStartRestartGroup, (i3 >> 27) & 14);
                    i3 &= -57345;
                    sliderColors2 = sliderColorsColors1111;
                }
                if ((i2 & 32) != 0) {
                    z6 = ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(sliderColors2)) || (i3 & 24576) == 16384) | ((i3 & 7168) == 2048);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (!z6) {
                        objRememberedValue2 = new bm3() { // from class: t28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new bm3() { // from class: t28
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return SliderDefaults.Track_mnvyFg4$lambda$39$lambda$38(sliderColors2, z2, (DrawScope) obj, (Offset) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    bm3Var2 = (bm3) objRememberedValue2;
                    i3 = (-458753) & i3;
                }
                if (i8 != 0) {
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new dm3<DrawScope, Offset, Color, j59>() { // from class: androidx.compose.material3.SliderDefaults$Track$15$1
                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope, Offset offset, Color color) {
                                m3902invokewPWG1Vc(drawScope, offset.m5997unboximpl(), color.m6242unboximpl());
                                return j59.a;
                            }

                            /* JADX INFO: renamed from: invoke-wPWG1Vc, reason: not valid java name */
                            public final void m3902invokewPWG1Vc(DrawScope drawScope, long j, long j2) {
                                SliderDefaults sliderDefaults = SliderDefaults.INSTANCE;
                                sliderDefaults.m3897drawStopIndicatorx3O1jOs(drawScope, j, sliderDefaults.m3898getTickSizeD9Ej5fM(), j2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    dm3Var3 = (dm3) objRememberedValue;
                } else {
                    dm3Var3 = dm3Var;
                }
                if (i10 != 0) {
                    f4 = SliderKt.ThumbTrackGapSize;
                }
                if (i12 != 0) {
                    dm3Var4 = dm3Var3;
                    i15 = i3;
                    modifier4 = modifier2;
                    z5 = z2;
                    sliderColors4 = sliderColors2;
                    f7 = f4;
                    bm3Var4 = bm3Var2;
                    f8 = SliderKt.TrackInsideCornerSize;
                } else {
                    dm3Var4 = dm3Var3;
                    i15 = i3;
                    modifier4 = modifier2;
                    z5 = z2;
                    sliderColors4 = sliderColors2;
                    f7 = f4;
                    bm3Var4 = bm3Var2;
                    f8 = f3;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1952945688, i15, -1, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1785)");
            }
            m3885TrackImplxlyIBlM(rangeSliderState, f, modifier4, z5, sliderColors4, bm3Var4, dm3Var4, f7, f8, composerStartRestartGroup, i15 & 2147483646);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            f6 = f8;
            f5 = f7;
            dm3Var2 = dm3Var4;
            bm3Var3 = bm3Var4;
            sliderColors3 = sliderColors4;
            z4 = z5;
            modifier3 = modifier4;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            dm3Var2 = dm3Var;
            modifier3 = modifier2;
            z4 = z2;
            sliderColors3 = sliderColors2;
            f5 = f4;
            bm3Var3 = bm3Var2;
            f6 = f3;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: u28
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return SliderDefaults.Track_mnvyFg4$lambda$41(this.b, rangeSliderState, f, modifier3, z4, sliderColors3, bm3Var3, dm3Var2, f5, f6, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }
}
