package androidx.compose.material3;

import androidx.collection.IntList;
import androidx.collection.IntListKt;
import androidx.collection.MutableIntList;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.selection.SelectableGroupKt;
import androidx.compose.foundation.shape.CornerBasedShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material3.TimePickerColors;
import androidx.compose.material3.TimePickerKt;
import androidx.compose.material3.TimePickerState;
import androidx.compose.material3.internal.AccessibilityServiceStateProvider_androidKt;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.material3.tokens.TimeInputTokens;
import androidx.compose.material3.tokens.TimePickerTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.ZIndexModifierKt;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.Ref;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpOffset;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.ts.PsExtractor;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.aw4;
import defpackage.b80;
import defpackage.bm3;
import defpackage.cc;
import defpackage.cv8;
import defpackage.dc;
import defpackage.dm3;
import defpackage.e02;
import defpackage.et3;
import defpackage.ff;
import defpackage.ga1;
import defpackage.gf;
import defpackage.gx2;
import defpackage.i67;
import defpackage.im1;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.p88;
import defpackage.qj2;
import defpackage.r57;
import defpackage.ri5;
import defpackage.te;
import defpackage.vx6;
import defpackage.xe;
import defpackage.y22;
import defpackage.yk2;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class TimePickerKt {
    private static final float ClockDialMidContainerSize;
    private static final float ClockDialMinContainerSize;
    private static final float ClockDisplayBottomMargin;
    private static final float ClockFaceBottomMargin;
    private static final float DisplaySeparatorWidth;
    private static final IntList ExtraHours;
    private static final float FullCircle = 6.2831855f;
    private static final float HalfCircle = 3.1415927f;
    private static final IntList Hours;
    private static final float InnerCircleToSizeRatio;
    private static final float MaxDistance;
    private static final float MinimumInteractiveSize;
    private static final IntList Minutes;
    private static final float OuterCircleToSizeRatio;
    private static final float PeriodToggleMargin;
    private static final double QuarterCircle = 1.5707963267948966d;
    private static final float RadiansPerHour = 0.5235988f;
    private static final float RadiansPerMinute = 0.10471976f;
    private static final float SeparatorZIndex = 2.0f;
    private static final float SupportLabelTop;
    private static final float TimeInputBottomPadding;
    private static final float TimePickerMaxHeight;
    private static final float TimePickerMidHeight;

    static {
        float fM9042constructorimpl = Dp.m9042constructorimpl(101.0f);
        TimePickerTokens timePickerTokens = TimePickerTokens.INSTANCE;
        OuterCircleToSizeRatio = fM9042constructorimpl / timePickerTokens.m5185getClockDialContainerSizeD9Ej5fM();
        InnerCircleToSizeRatio = Dp.m9042constructorimpl(69.0f) / timePickerTokens.m5185getClockDialContainerSizeD9Ej5fM();
        ClockDisplayBottomMargin = Dp.m9042constructorimpl(36.0f);
        ClockFaceBottomMargin = Dp.m9042constructorimpl(24.0f);
        DisplaySeparatorWidth = Dp.m9042constructorimpl(24.0f);
        SupportLabelTop = Dp.m9042constructorimpl(7.0f);
        TimeInputBottomPadding = Dp.m9042constructorimpl(24.0f);
        MaxDistance = Dp.m9042constructorimpl(74.0f);
        MinimumInteractiveSize = Dp.m9042constructorimpl(48.0f);
        Minutes = IntListKt.intListOf(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55);
        IntList intListIntListOf = IntListKt.intListOf(12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11);
        Hours = intListIntListOf;
        MutableIntList mutableIntList = new MutableIntList(intListIntListOf._size);
        int[] iArr = intListIntListOf.content;
        int i = intListIntListOf._size;
        for (int i2 = 0; i2 < i; i2++) {
            mutableIntList.add((iArr[i2] % 12) + 12);
        }
        ExtraHours = mutableIntList;
        PeriodToggleMargin = Dp.m9042constructorimpl(12.0f);
        TimePickerMaxHeight = Dp.m9042constructorimpl(384.0f);
        TimePickerMidHeight = Dp.m9042constructorimpl(330.0f);
        ClockDialMidContainerSize = Dp.m9042constructorimpl(238.0f);
        ClockDialMinContainerSize = Dp.m9042constructorimpl(200.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void CircularLayout(Modifier modifier, final float f, final bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, final int i, final int i2) {
        int i3;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1041042571);
        int i4 = i2 & 1;
        if (i4 != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i2 & 2) != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changed(f) ? 32 : 16;
        }
        if ((i2 & 4) != 0) {
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(bm3Var) ? 256 : 128;
        }
        if (composerStartRestartGroup.shouldExecute((i3 & 147) != 146, i3 & 1)) {
            if (i4 != 0) {
                modifier = Modifier.Companion;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1041042571, i3, -1, "androidx.compose.material3.CircularLayout (TimePicker.kt:1978)");
            }
            boolean z = (i3 & 112) == 32;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new TimePickerKt$CircularLayout$1$1(f);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) objRememberedValue;
            int i5 = ((i3 >> 6) & 14) | ((i3 << 3) & 112);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier);
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            ll3<ComposeUiNode> constructor = companion.getConstructor();
            int i6 = ((i5 << 6) & 896) | 6;
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
            bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
            if (cc.f(bm3Var, composerStartRestartGroup, (i6 >> 6) & 14)) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        final Modifier modifier2 = modifier;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jv8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TimePickerKt.CircularLayout$lambda$96(modifier2, f, bm3Var, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CircularLayout$lambda$96(Modifier modifier, float f, bm3 bm3Var, int i, int i2, Composer composer, int i3) {
        CircularLayout(modifier, f, bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    private static final void ClockDisplayNumbers(final TimePickerState timePickerState, final TimePickerColors timePickerColors, Composer composer, int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-934561141);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(timePickerState) : composerStartRestartGroup.changedInstance(timePickerState) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(timePickerColors) ? 32 : 16;
        }
        int i3 = 1;
        if (composerStartRestartGroup.shouldExecute((i2 & 19) != 18, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-934561141, i2, -1, "androidx.compose.material3.ClockDisplayNumbers (TimePicker.kt:1173)");
            }
            CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{TextKt.getLocalTextStyle().provides(TypographyKt.getValue(TimePickerTokens.INSTANCE.getTimeSelectorLabelTextFont(), composerStartRestartGroup, 6)), CompositionLocalsKt.getLocalLayoutDirection().provides(LayoutDirection.Ltr)}, ComposableLambdaKt.rememberComposableLambda(-477913269, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerKt.ClockDisplayNumbers.1
                public final void invoke(Composer composer2, int i4) {
                    if (!composer2.shouldExecute((i4 & 3) != 2, i4 & 1)) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-477913269, i4, -1, "androidx.compose.material3.ClockDisplayNumbers.<anonymous> (TimePicker.kt:1179)");
                    }
                    TimePickerState timePickerState2 = timePickerState;
                    TimePickerColors timePickerColors2 = timePickerColors;
                    Modifier.Companion companion = Modifier.Companion;
                    MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer2, 0);
                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                    CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, companion);
                    ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                    ll3<ComposeUiNode> constructor = companion2.getConstructor();
                    if (composer2.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composer2.startReusableNode();
                    if (composer2.getInserting()) {
                        composer2.createNode(constructor);
                    } else {
                        composer2.useNode();
                    }
                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer2);
                    bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                    RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                    TimePickerTokens timePickerTokens = TimePickerTokens.INSTANCE;
                    Modifier modifierM2101sizeVpY3zN4 = SizeKt.m2101sizeVpY3zN4(companion, timePickerTokens.m5197getTimeSelectorContainerWidthD9Ej5fM(), timePickerTokens.m5196getTimeSelectorContainerHeightD9Ej5fM());
                    int hourForDisplay = TimePickerKt.getHourForDisplay(timePickerState2);
                    TimePickerSelectionMode.Companion companion3 = TimePickerSelectionMode.Companion;
                    TimePickerKt.m4127TimeSelectorSAnMeKU(modifierM2101sizeVpY3zN4, hourForDisplay, timePickerState2, companion3.m4155getHouryecRtBI(), timePickerColors2, composer2, 3078);
                    TimePickerKt.DisplaySeparator(SizeKt.m2101sizeVpY3zN4(companion, TimePickerKt.DisplaySeparatorWidth, timePickerTokens.m5193getPeriodSelectorVerticalContainerHeightD9Ej5fM()), composer2, 6);
                    TimePickerKt.m4127TimeSelectorSAnMeKU(SizeKt.m2101sizeVpY3zN4(companion, timePickerTokens.m5197getTimeSelectorContainerWidthD9Ej5fM(), timePickerTokens.m5196getTimeSelectorContainerHeightD9Ej5fM()), timePickerState2.getMinute(), timePickerState2, companion3.m4156getMinuteyecRtBI(), timePickerColors2, composer2, 3078);
                    composer2.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return j59.a;
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new qj2(i, i3, timePickerState, timePickerColors));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ClockDisplayNumbers$lambda$35(TimePickerState timePickerState, TimePickerColors timePickerColors, int i, Composer composer, int i2) {
        ClockDisplayNumbers(timePickerState, timePickerColors, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    public static final void ClockFace(final Modifier modifier, AnalogTimePickerState analogTimePickerState, final TimePickerColors timePickerColors, final boolean z, Composer composer, final int i) {
        int i2;
        final AnalogTimePickerState analogTimePickerState2 = analogTimePickerState;
        Composer composerStartRestartGroup = composer.startRestartGroup(-478841003);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(analogTimePickerState2) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changed(timePickerColors) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changed(z) ? 2048 : 1024;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 1171) != 1170, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-478841003, i2, -1, "androidx.compose.material3.ClockFace (TimePicker.kt:1591)");
            }
            analogTimePickerState2 = analogTimePickerState;
            CrossfadeKt.Crossfade(analogTimePickerState2.getClockFaceValues(), drawSelector(BackgroundKt.m1288backgroundbw27NRU(modifier, timePickerColors.m4091getClockDialColor0d7_KjU(), RoundedCornerShapeKt.getCircleShape()).then(new ClockDialModifier(analogTimePickerState, z, analogTimePickerState.mo3075getSelectionyecRtBI(), MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultSpatial, composerStartRestartGroup, 6), null)), analogTimePickerState2, timePickerColors), (FiniteAnimationSpec<Float>) MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composerStartRestartGroup, 6), (String) null, ComposableLambdaKt.rememberComposableLambda(747010833, true, new C06061(timePickerColors, analogTimePickerState2, z), composerStartRestartGroup, 54), composerStartRestartGroup, 24576, 8);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: su8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TimePickerKt.ClockFace$lambda$60(modifier, analogTimePickerState2, timePickerColors, z, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ClockFace$lambda$60(Modifier modifier, AnalogTimePickerState analogTimePickerState, TimePickerColors timePickerColors, boolean z, int i, Composer composer, int i2) {
        ClockFace(modifier, analogTimePickerState, timePickerColors, z, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void ClockText(final Modifier modifier, final AnalogTimePickerState analogTimePickerState, final int i, final boolean z, Composer composer, final int i2) {
        int i3;
        Composer composer2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-206784607);
        if ((i2 & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(analogTimePickerState) ? 32 : 16;
        }
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= composerStartRestartGroup.changed(i) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= composerStartRestartGroup.changed(z) ? 2048 : 1024;
        }
        int i4 = i3;
        if (composerStartRestartGroup.shouldExecute((i4 & 1171) != 1170, i4 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-206784607, i4, -1, "androidx.compose.material3.ClockText (TimePicker.kt:1727)");
            }
            TextStyle value = TypographyKt.getValue(TimePickerTokens.INSTANCE.getClockDialLabelTextFont(), composerStartRestartGroup, 6);
            final Density density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            final float fMo1434toPx0680j_4 = density.mo1434toPx0680j_4(MaxDistance);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Offset.m5976boximpl(Offset.Companion.m6003getZeroF1C5BW0()), null, 2, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            final MutableState mutableState = (MutableState) objRememberedValue;
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue2 == companion.getEmpty()) {
                objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(IntOffset.m9161boximpl(IntOffset.Companion.m9181getZeronOccac()), null, 2, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            final MutableState mutableState2 = (MutableState) objRememberedValue2;
            Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue3 == companion.getEmpty()) {
                objRememberedValue3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Rect.Companion.getZero(), null, 2, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            final MutableState mutableState3 = (MutableState) objRememberedValue3;
            Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue4 == companion.getEmpty()) {
                objRememberedValue4 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            final y22 y22Var = (y22) objRememberedValue4;
            String strM4134numberContentDescriptiondSwYdS4 = m4134numberContentDescriptiondSwYdS4(analogTimePickerState.mo3075getSelectionyecRtBI(), analogTimePickerState.is24hour(), i, composerStartRestartGroup, i4 & 896);
            String localString$default = CalendarLocale_jvmKt.toLocalString$default(i, 0, 0, false, null, 15, null);
            boolean zChanged = composerStartRestartGroup.changed(analogTimePickerState);
            Object objRememberedValue5 = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue5 == companion.getEmpty()) {
                objRememberedValue5 = SnapshotStateKt.derivedStateOf(new ll3() { // from class: vu8
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return Boolean.valueOf(TimePickerKt.ClockText$lambda$74$lambda$73(analogTimePickerState, density, mutableState3));
                    }
                });
                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
            }
            final State state = (State) objRememberedValue5;
            Alignment center = Alignment.Companion.getCenter();
            Object objRememberedValue6 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue6 == companion.getEmpty()) {
                objRememberedValue6 = new vx6(mutableState2, mutableState3, mutableState, 1);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
            }
            Modifier modifierFocusable$default = FocusableKt.focusable$default(SizeKt.m2099size3ABfNKs(InteractiveComponentSizeKt.minimumInteractiveComponentSize(OnGloballyPositionedModifierKt.onGloballyPositioned(modifier, (nl3) objRememberedValue6)), MinimumInteractiveSize), false, null, 3, null);
            boolean zChangedInstance = composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(analogTimePickerState) | composerStartRestartGroup.changed(fMo1434toPx0680j_4) | ((i4 & 7168) == 2048) | composerStartRestartGroup.changed(state);
            Object objRememberedValue7 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance || objRememberedValue7 == companion.getEmpty()) {
                nl3 nl3Var = new nl3() { // from class: wu8
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return TimePickerKt.ClockText$lambda$80$lambda$79(y22Var, analogTimePickerState, fMo1434toPx0680j_4, z, mutableState, mutableState2, state, (SemanticsPropertyReceiver) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(nl3Var);
                objRememberedValue7 = nl3Var;
            }
            Modifier modifierSemantics = SemanticsModifierKt.semantics(modifierFocusable$default, true, (nl3) objRememberedValue7);
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(center, false);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierSemantics);
            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
            ll3<ComposeUiNode> constructor = companion2.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
            bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            Modifier.Companion companion3 = Modifier.Companion;
            boolean zChanged2 = composerStartRestartGroup.changed(strM4134numberContentDescriptiondSwYdS4);
            Object objRememberedValue8 = composerStartRestartGroup.rememberedValue();
            if (zChanged2 || objRememberedValue8 == companion.getEmpty()) {
                objRememberedValue8 = new ri5(strM4134numberContentDescriptiondSwYdS4, 1);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
            }
            composer2 = composerStartRestartGroup;
            TextKt.m4085TextNvy7gAk(localString$default, SemanticsModifierKt.clearAndSetSemantics(companion3, (nl3) objRememberedValue8), 0L, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, value, composer2, 0, 0, 131068);
            composer2.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: xu8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TimePickerKt.ClockText$lambda$84(modifier, analogTimePickerState, i, z, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long ClockText$lambda$64(MutableState<Offset> mutableState) {
        return mutableState.getValue().m5997unboximpl();
    }

    private static final void ClockText$lambda$65(MutableState<Offset> mutableState, long j) {
        mutableState.setValue(Offset.m5976boximpl(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long ClockText$lambda$67(MutableState<IntOffset> mutableState) {
        return mutableState.getValue().m9179unboximpl();
    }

    private static final void ClockText$lambda$68(MutableState<IntOffset> mutableState, long j) {
        mutableState.setValue(IntOffset.m9161boximpl(j));
    }

    private static final Rect ClockText$lambda$70(MutableState<Rect> mutableState) {
        return mutableState.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean ClockText$lambda$74$lambda$73(AnalogTimePickerState analogTimePickerState, Density density, MutableState mutableState) {
        long selectorPos = getSelectorPos(analogTimePickerState);
        float fMo1434toPx0680j_4 = density.mo1434toPx0680j_4(DpOffset.m9103getXD9Ej5fM(selectorPos));
        return ClockText$lambda$70(mutableState).m6013containsk4lQ0M(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(density.mo1434toPx0680j_4(DpOffset.m9105getYD9Ej5fM(selectorPos)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fMo1434toPx0680j_4) << 32)));
    }

    private static final boolean ClockText$lambda$75(State<Boolean> state) {
        return state.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ClockText$lambda$77$lambda$76(MutableState mutableState, MutableState mutableState2, MutableState mutableState3, LayoutCoordinates layoutCoordinates) {
        LayoutCoordinates parentCoordinates = layoutCoordinates.getParentCoordinates();
        ClockText$lambda$68(mutableState, parentCoordinates != null ? IntSizeKt.m9219getCenterozmzZPI(parentCoordinates.mo7710getSizeYbymL2g()) : IntOffset.Companion.m9181getZeronOccac());
        mutableState2.setValue(LayoutCoordinatesKt.boundsInParent(layoutCoordinates));
        ClockText$lambda$65(mutableState3, ClockText$lambda$70(mutableState2).m6017getCenterF1C5BW0());
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ClockText$lambda$80$lambda$79(final y22 y22Var, final AnalogTimePickerState analogTimePickerState, final float f, final boolean z, final MutableState mutableState, final MutableState mutableState2, State state, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.onClick$default(semanticsPropertyReceiver, null, new ll3() { // from class: lv8
            @Override // defpackage.ll3
            public final Object invoke() {
                return Boolean.valueOf(TimePickerKt.ClockText$lambda$80$lambda$79$lambda$78(y22Var, analogTimePickerState, f, z, mutableState, mutableState2));
            }
        }, 1, null);
        SemanticsPropertiesKt.setSelected(semanticsPropertyReceiver, ClockText$lambda$75(state));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean ClockText$lambda$80$lambda$79$lambda$78(y22 y22Var, AnalogTimePickerState analogTimePickerState, float f, boolean z, MutableState mutableState, MutableState mutableState2) {
        av0.c(y22Var, null, null, new TimePickerKt$ClockText$2$1$1$1(analogTimePickerState, f, z, mutableState, mutableState2, null), 3);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ClockText$lambda$83$lambda$82$lambda$81(String str, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setContentDescription(semanticsPropertyReceiver, str);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ClockText$lambda$84(Modifier modifier, AnalogTimePickerState analogTimePickerState, int i, boolean z, int i2, Composer composer, int i3) {
        ClockText(modifier, analogTimePickerState, i, z, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void DisplaySeparator(final Modifier modifier, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Composer composerStartRestartGroup = composer.startRestartGroup(2100674302);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        int i3 = 1;
        if (composerStartRestartGroup.shouldExecute((i2 & 3) != 2, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2100674302, i2, -1, "androidx.compose.material3.DisplaySeparator (TimePicker.kt:1379)");
            }
            TextStyle textStyleM8504copyp1EtxEg$default = TextStyle.m8504copyp1EtxEg$default((TextStyle) composerStartRestartGroup.consume(TextKt.getLocalTextStyle()), 0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, TextAlign.Companion.m8920getCentere0LSkKk(), 0, 0L, null, null, new LineHeightStyle(LineHeightStyle.Alignment.Companion.m8887getCenterPIaL0Z0(), LineHeightStyle.Trim.Companion.m8909getBothEVpEnUU(), (jh2) null), 0, 0, null, 15695871, null);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new te(i3);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            Modifier modifierClearAndSetSemantics = SemanticsModifierKt.clearAndSetSemantics(modifier, (nl3) objRememberedValue);
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), false);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierClearAndSetSemantics);
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            ll3<ComposeUiNode> constructor = companion.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
            bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            composer2 = composerStartRestartGroup;
            TextKt.m4085TextNvy7gAk(StringUtils.PROCESS_POSTFIX_DELIMITER, null, ColorSchemeKt.getValue(TimeInputTokens.INSTANCE.getTimeFieldSeparatorColor(), composerStartRestartGroup, 6), null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyleM8504copyp1EtxEg$default, composer2, 6, 0, 131066);
            composer2.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: zu8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TimePickerKt.DisplaySeparator$lambda$54(modifier, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DisplaySeparator$lambda$52$lambda$51(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DisplaySeparator$lambda$54(Modifier modifier, int i, Composer composer, int i2) {
        DisplaySeparator(modifier, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    private static final void HorizontalClockDisplay(final TimePickerState timePickerState, final TimePickerColors timePickerColors, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(755539561);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(timePickerState) : composerStartRestartGroup.changedInstance(timePickerState) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(timePickerColors) ? 32 : 16;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 19) != 18, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(755539561, i2, -1, "androidx.compose.material3.HorizontalClockDisplay (TimePicker.kt:1133)");
            }
            Arrangement.HorizontalOrVertical center = Arrangement.INSTANCE.getCenter();
            Modifier.Companion companion = Modifier.Companion;
            Alignment.Companion companion2 = Alignment.Companion;
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(center, companion2.getStart(), composerStartRestartGroup, 6);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion);
            ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
            ll3<ComposeUiNode> constructor = companion3.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
            bm3 bm3VarB = cc.b(companion3, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion3.getSetModifier());
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            ClockDisplayNumbers(timePickerState, timePickerColors, composerStartRestartGroup, i2 & 126);
            if (timePickerState.is24hour()) {
                composerStartRestartGroup.startReplaceGroup(999020143);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(998576161);
                Modifier modifierM2037paddingqDBjuR0$default = PaddingKt.m2037paddingqDBjuR0$default(companion, 0.0f, PeriodToggleMargin, 0.0f, 0.0f, 13, null);
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion2.getTopStart(), false);
                int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2037paddingqDBjuR0$default);
                ll3<ComposeUiNode> constructor2 = companion3.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor2);
                } else {
                    composerStartRestartGroup.useNode();
                }
                Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3 bm3VarB2 = cc.b(companion3, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                    dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                }
                Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion3.getSetModifier());
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                TimePickerTokens timePickerTokens = TimePickerTokens.INSTANCE;
                int i3 = i2 << 3;
                HorizontalPeriodToggle(SizeKt.m2101sizeVpY3zN4(companion, timePickerTokens.m5191getPeriodSelectorHorizontalContainerWidthD9Ej5fM(), timePickerTokens.m5190getPeriodSelectorHorizontalContainerHeightD9Ej5fM()), timePickerState, timePickerColors, composerStartRestartGroup, 6 | (i3 & 112) | (i3 & 896));
                composerStartRestartGroup.endNode();
                composerStartRestartGroup.endReplaceGroup();
            }
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: gv8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TimePickerKt.HorizontalClockDisplay$lambda$31(timePickerState, timePickerColors, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 HorizontalClockDisplay$lambda$31(TimePickerState timePickerState, TimePickerColors timePickerColors, int i, Composer composer, int i2) {
        HorizontalClockDisplay(timePickerState, timePickerColors, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    private static final void HorizontalPeriodToggle(Modifier modifier, TimePickerState timePickerState, TimePickerColors timePickerColors, Composer composer, final int i) {
        int i2;
        final Modifier modifier2;
        final TimePickerState timePickerState2;
        final TimePickerColors timePickerColors2;
        Composer composerStartRestartGroup = composer.startRestartGroup(1261215927);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? composerStartRestartGroup.changed(timePickerState) : composerStartRestartGroup.changedInstance(timePickerState) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changed(timePickerColors) ? 256 : 128;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 147) != 146, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1261215927, i2, -1, "androidx.compose.material3.HorizontalPeriodToggle (TimePicker.kt:1206)");
            }
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = TimePickerKt$HorizontalPeriodToggle$measurePolicy$1$1.INSTANCE;
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) objRememberedValue;
            Shape value = ShapesKt.getValue(TimePickerTokens.INSTANCE.getPeriodSelectorContainerShape(), composerStartRestartGroup, 6);
            value.getClass();
            CornerBasedShape cornerBasedShape = (CornerBasedShape) value;
            modifier2 = modifier;
            timePickerState2 = timePickerState;
            timePickerColors2 = timePickerColors;
            PeriodToggleImpl(modifier2, timePickerState2, timePickerColors2, measurePolicy, ShapesKt.start$default(cornerBasedShape, null, 1, null), ShapesKt.end$default(cornerBasedShape, null, 1, null), composerStartRestartGroup, (i2 & 14) | 3072 | (i2 & 112) | (i2 & 896));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            modifier2 = modifier;
            timePickerState2 = timePickerState;
            timePickerColors2 = timePickerColors;
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ov8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    TimePickerState timePickerState3 = timePickerState2;
                    return TimePickerKt.HorizontalPeriodToggle$lambda$37(modifier2, timePickerState3, timePickerColors2, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 HorizontalPeriodToggle$lambda$37(Modifier modifier, TimePickerState timePickerState, TimePickerColors timePickerColors, int i, Composer composer, int i2) {
        HorizontalPeriodToggle(modifier, timePickerState, timePickerColors, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0044  */
    /* JADX WARN: Code duplicated, block: B:28:0x0048  */
    /* JADX WARN: Code duplicated, block: B:30:0x0050  */
    /* JADX WARN: Code duplicated, block: B:31:0x0053  */
    /* JADX WARN: Code duplicated, block: B:34:0x0059  */
    /* JADX WARN: Code duplicated, block: B:37:0x005f  */
    /* JADX WARN: Code duplicated, block: B:39:0x0064  */
    /* JADX WARN: Code duplicated, block: B:41:0x0068  */
    /* JADX WARN: Code duplicated, block: B:43:0x0070  */
    /* JADX WARN: Code duplicated, block: B:44:0x0073  */
    /* JADX WARN: Code duplicated, block: B:48:0x007e  */
    /* JADX WARN: Code duplicated, block: B:49:0x0080  */
    /* JADX WARN: Code duplicated, block: B:52:0x0089  */
    /* JADX WARN: Code duplicated, block: B:54:0x0091  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:62:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:67:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:73:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:76:0x0111  */
    /* JADX WARN: Code duplicated, block: B:79:0x011d  */
    /* JADX WARN: Code duplicated, block: B:80:0x0121  */
    /* JADX WARN: Code duplicated, block: B:83:0x0132  */
    /* JADX WARN: Code duplicated, block: B:85:0x0140  */
    /* JADX WARN: Code duplicated, block: B:88:0x0181  */
    /* JADX WARN: Code duplicated, block: B:91:0x0187  */
    /* JADX WARN: Code duplicated, block: B:94:0x0192  */
    /* JADX WARN: Code duplicated, block: B:96:? A[RETURN, SYNTHETIC] */
    public static final void HorizontalTimePicker(final AnalogTimePickerState analogTimePickerState, Modifier modifier, TimePickerColors timePickerColors, final boolean z, Composer composer, final int i, final int i2) {
        int i3;
        Modifier modifier2;
        TimePickerColors timePickerColors2;
        boolean z2;
        int i4;
        boolean z3;
        final TimePickerColors timePickerColors3;
        final Modifier modifier3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        int i5;
        TimePickerColors timePickerColorsColors;
        Object objRememberedValue;
        int currentCompositeKeyHash;
        ll3<ComposeUiNode> constructor;
        Composer composerM5355constructorimpl;
        bm3 bm3VarB;
        Composer composerStartRestartGroup = composer.startRestartGroup(1432307537);
        int i6 = 2;
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changedInstance(analogTimePickerState) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i7 = i2 & 2;
        if (i7 == 0) {
            if ((i & 48) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if ((i2 & 4) == 0) {
                    timePickerColors2 = timePickerColors;
                    int i8 = composerStartRestartGroup.changed(timePickerColors2) ? 256 : 128;
                    i3 |= i8;
                } else {
                    timePickerColors2 = timePickerColors;
                }
                i3 |= i8;
            } else {
                timePickerColors2 = timePickerColors;
            }
            if ((i2 & 8) != 0) {
                if ((i & 3072) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i4 = 2048;
                    } else {
                        i4 = 1024;
                    }
                    i3 |= i4;
                }
                if ((i3 & 1171) != 1170) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                        if (i7 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i2 & 4) != 0) {
                            Modifier modifier5 = modifier4;
                            i5 = i3 & (-897);
                            timePickerColorsColors = TimePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            modifier2 = modifier5;
                        } else {
                            modifier2 = modifier4;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1432307537, i5, -1, "androidx.compose.material3.HorizontalTimePicker (TimePicker.kt:980)");
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new et3(i6);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(modifier2, false, (nl3) objRememberedValue, 1, null);
                        MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getCenterVertically(), composerStartRestartGroup, 48);
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierSemantics$default);
                        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                        constructor = companion.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                        RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                        HorizontalClockDisplay(analogTimePickerState, timePickerColorsColors, composerStartRestartGroup, (i5 & 14) | ((i5 >> 3) & 112));
                        Modifier.Companion companion2 = Modifier.Companion;
                        SpacerKt.Spacer(SizeKt.m2104width3ABfNKs(companion2, ClockDisplayBottomMargin), composerStartRestartGroup, 6);
                        ClockFace(companion2.then(new ClockFaceSizeModifier()), analogTimePickerState, timePickerColorsColors, z2, composerStartRestartGroup, (i5 & 7168) | ((i5 << 3) & 112) | (i5 & 896));
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        timePickerColors3 = timePickerColorsColors;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                        }
                    }
                    i5 = i3;
                    timePickerColorsColors = timePickerColors2;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1432307537, i5, -1, "androidx.compose.material3.HorizontalTimePicker (TimePicker.kt:980)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new et3(i6);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    Modifier modifierSemantics$default2 = SemanticsModifierKt.semantics$default(modifier2, false, (nl3) objRememberedValue, 1, null);
                    MeasurePolicy measurePolicyRowMeasurePolicy2 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getCenterVertically(), composerStartRestartGroup, 48);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierSemantics$default2);
                    ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
                    constructor = companion3.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3VarB = cc.b(companion3, composerM5355constructorimpl, measurePolicyRowMeasurePolicy2, composerM5355constructorimpl, currentCompositionLocalMap2);
                    if (composerM5355constructorimpl.getInserting()) {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    } else {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier2, companion3.getSetModifier());
                    RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
                    HorizontalClockDisplay(analogTimePickerState, timePickerColorsColors, composerStartRestartGroup, (i5 & 14) | ((i5 >> 3) & 112));
                    Modifier.Companion companion4 = Modifier.Companion;
                    SpacerKt.Spacer(SizeKt.m2104width3ABfNKs(companion4, ClockDisplayBottomMargin), composerStartRestartGroup, 6);
                    ClockFace(companion4.then(new ClockFaceSizeModifier()), analogTimePickerState, timePickerColorsColors, z2, composerStartRestartGroup, (i5 & 7168) | ((i5 << 3) & 112) | (i5 & 896));
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    timePickerColors3 = timePickerColorsColors;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    timePickerColors3 = timePickerColors2;
                }
                modifier3 = modifier2;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mv8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TimePickerKt.HorizontalTimePicker$lambda$15(analogTimePickerState, modifier3, timePickerColors3, z, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            z2 = z;
            if ((i3 & 1171) != 1170) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i7 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 4) != 0) {
                        Modifier modifier6 = modifier4;
                        i5 = i3 & (-897);
                        timePickerColorsColors = TimePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        modifier2 = modifier6;
                    } else {
                        modifier2 = modifier4;
                        i5 = i3;
                        timePickerColorsColors = timePickerColors2;
                    }
                } else {
                    if (i7 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 4) != 0) {
                        Modifier modifier7 = modifier4;
                        i5 = i3 & (-897);
                        timePickerColorsColors = TimePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        modifier2 = modifier7;
                    } else {
                        modifier2 = modifier4;
                        i5 = i3;
                        timePickerColorsColors = timePickerColors2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1432307537, i5, -1, "androidx.compose.material3.HorizontalTimePicker (TimePicker.kt:980)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new et3(i6);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                Modifier modifierSemantics$default3 = SemanticsModifierKt.semantics$default(modifier2, false, (nl3) objRememberedValue, 1, null);
                MeasurePolicy measurePolicyRowMeasurePolicy3 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getCenterVertically(), composerStartRestartGroup, 48);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierSemantics$default3);
                ComposeUiNode.Companion companion5 = ComposeUiNode.Companion;
                constructor = companion5.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3VarB = cc.b(companion5, composerM5355constructorimpl, measurePolicyRowMeasurePolicy3, composerM5355constructorimpl, currentCompositionLocalMap3);
                if (composerM5355constructorimpl.getInserting()) {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                } else {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier3, companion5.getSetModifier());
                RowScopeInstance rowScopeInstance3 = RowScopeInstance.INSTANCE;
                HorizontalClockDisplay(analogTimePickerState, timePickerColorsColors, composerStartRestartGroup, (i5 & 14) | ((i5 >> 3) & 112));
                Modifier.Companion companion6 = Modifier.Companion;
                SpacerKt.Spacer(SizeKt.m2104width3ABfNKs(companion6, ClockDisplayBottomMargin), composerStartRestartGroup, 6);
                ClockFace(companion6.then(new ClockFaceSizeModifier()), analogTimePickerState, timePickerColorsColors, z2, composerStartRestartGroup, (i5 & 7168) | ((i5 << 3) & 112) | (i5 & 896));
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                timePickerColors3 = timePickerColorsColors;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                timePickerColors3 = timePickerColors2;
            }
            modifier3 = modifier2;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mv8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return TimePickerKt.HorizontalTimePicker$lambda$15(analogTimePickerState, modifier3, timePickerColors3, z, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        modifier2 = modifier;
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i2 & 4) == 0) {
                timePickerColors2 = timePickerColors;
                if (composerStartRestartGroup.changed(timePickerColors2)) {
                }
                i3 |= i8;
            } else {
                timePickerColors2 = timePickerColors;
            }
            i3 |= i8;
        } else {
            timePickerColors2 = timePickerColors;
        }
        if ((i2 & 8) != 0) {
            if ((i & 3072) == 0) {
                z2 = z;
                if (composerStartRestartGroup.changed(z2)) {
                    i4 = 2048;
                } else {
                    i4 = 1024;
                }
                i3 |= i4;
            }
            if ((i3 & 1171) != 1170) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i7 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 4) != 0) {
                        Modifier modifier8 = modifier4;
                        i5 = i3 & (-897);
                        timePickerColorsColors = TimePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        modifier2 = modifier8;
                    } else {
                        modifier2 = modifier4;
                        i5 = i3;
                        timePickerColorsColors = timePickerColors2;
                    }
                } else {
                    if (i7 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 4) != 0) {
                        Modifier modifier9 = modifier4;
                        i5 = i3 & (-897);
                        timePickerColorsColors = TimePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        modifier2 = modifier9;
                    } else {
                        modifier2 = modifier4;
                        i5 = i3;
                        timePickerColorsColors = timePickerColors2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1432307537, i5, -1, "androidx.compose.material3.HorizontalTimePicker (TimePicker.kt:980)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new et3(i6);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                Modifier modifierSemantics$default4 = SemanticsModifierKt.semantics$default(modifier2, false, (nl3) objRememberedValue, 1, null);
                MeasurePolicy measurePolicyRowMeasurePolicy4 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getCenterVertically(), composerStartRestartGroup, 48);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap4 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierSemantics$default4);
                ComposeUiNode.Companion companion7 = ComposeUiNode.Companion;
                constructor = companion7.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3VarB = cc.b(companion7, composerM5355constructorimpl, measurePolicyRowMeasurePolicy4, composerM5355constructorimpl, currentCompositionLocalMap4);
                if (composerM5355constructorimpl.getInserting()) {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                } else {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier4, companion7.getSetModifier());
                RowScopeInstance rowScopeInstance4 = RowScopeInstance.INSTANCE;
                HorizontalClockDisplay(analogTimePickerState, timePickerColorsColors, composerStartRestartGroup, (i5 & 14) | ((i5 >> 3) & 112));
                Modifier.Companion companion8 = Modifier.Companion;
                SpacerKt.Spacer(SizeKt.m2104width3ABfNKs(companion8, ClockDisplayBottomMargin), composerStartRestartGroup, 6);
                ClockFace(companion8.then(new ClockFaceSizeModifier()), analogTimePickerState, timePickerColorsColors, z2, composerStartRestartGroup, (i5 & 7168) | ((i5 << 3) & 112) | (i5 & 896));
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                timePickerColors3 = timePickerColorsColors;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                timePickerColors3 = timePickerColors2;
            }
            modifier3 = modifier2;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mv8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return TimePickerKt.HorizontalTimePicker$lambda$15(analogTimePickerState, modifier3, timePickerColors3, z, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        z2 = z;
        if ((i3 & 1171) != 1170) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i7 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i2 & 4) != 0) {
                    Modifier modifier10 = modifier4;
                    i5 = i3 & (-897);
                    timePickerColorsColors = TimePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    modifier2 = modifier10;
                } else {
                    modifier2 = modifier4;
                    i5 = i3;
                    timePickerColorsColors = timePickerColors2;
                }
            } else {
                if (i7 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i2 & 4) != 0) {
                    Modifier modifier11 = modifier4;
                    i5 = i3 & (-897);
                    timePickerColorsColors = TimePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    modifier2 = modifier11;
                } else {
                    modifier2 = modifier4;
                    i5 = i3;
                    timePickerColorsColors = timePickerColors2;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1432307537, i5, -1, "androidx.compose.material3.HorizontalTimePicker (TimePicker.kt:980)");
            }
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new et3(i6);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            Modifier modifierSemantics$default5 = SemanticsModifierKt.semantics$default(modifier2, false, (nl3) objRememberedValue, 1, null);
            MeasurePolicy measurePolicyRowMeasurePolicy5 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getCenterVertically(), composerStartRestartGroup, 48);
            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap5 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier5 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierSemantics$default5);
            ComposeUiNode.Companion companion9 = ComposeUiNode.Companion;
            constructor = companion9.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
            bm3VarB = cc.b(companion9, composerM5355constructorimpl, measurePolicyRowMeasurePolicy5, composerM5355constructorimpl, currentCompositionLocalMap5);
            if (composerM5355constructorimpl.getInserting()) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            } else {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier5, companion9.getSetModifier());
            RowScopeInstance rowScopeInstance5 = RowScopeInstance.INSTANCE;
            HorizontalClockDisplay(analogTimePickerState, timePickerColorsColors, composerStartRestartGroup, (i5 & 14) | ((i5 >> 3) & 112));
            Modifier.Companion companion10 = Modifier.Companion;
            SpacerKt.Spacer(SizeKt.m2104width3ABfNKs(companion10, ClockDisplayBottomMargin), composerStartRestartGroup, 6);
            ClockFace(companion10.then(new ClockFaceSizeModifier()), analogTimePickerState, timePickerColorsColors, z2, composerStartRestartGroup, (i5 & 7168) | ((i5 << 3) & 112) | (i5 & 896));
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            timePickerColors3 = timePickerColorsColors;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            timePickerColors3 = timePickerColors2;
        }
        modifier3 = modifier2;
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mv8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TimePickerKt.HorizontalTimePicker$lambda$15(analogTimePickerState, modifier3, timePickerColors3, z, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 HorizontalTimePicker$lambda$13$lambda$12(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setTraversalGroup(semanticsPropertyReceiver, true);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 HorizontalTimePicker$lambda$15(AnalogTimePickerState analogTimePickerState, Modifier modifier, TimePickerColors timePickerColors, boolean z, int i, int i2, Composer composer, int i3) {
        HorizontalTimePicker(analogTimePickerState, modifier, timePickerColors, z, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    private static final void PeriodToggleImpl(final Modifier modifier, final TimePickerState timePickerState, final TimePickerColors timePickerColors, final MeasurePolicy measurePolicy, final Shape shape, final Shape shape2, Composer composer, final int i) {
        int i2;
        Shape shape3;
        Composer composerStartRestartGroup = composer.startRestartGroup(1374241901);
        int i3 = 4;
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? composerStartRestartGroup.changed(timePickerState) : composerStartRestartGroup.changedInstance(timePickerState) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changed(timePickerColors) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changed(measurePolicy) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= composerStartRestartGroup.changed(shape) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            shape3 = shape2;
            i2 |= composerStartRestartGroup.changed(shape3) ? 131072 : 65536;
        } else {
            shape3 = shape2;
        }
        if (composerStartRestartGroup.shouldExecute((74899 & i2) != 74898, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1374241901, i2, -1, "androidx.compose.material3.PeriodToggleImpl (TimePicker.kt:1301)");
            }
            TimePickerTokens timePickerTokens = TimePickerTokens.INSTANCE;
            BorderStroke borderStrokeM1315BorderStrokecXLIe8U = BorderStrokeKt.m1315BorderStrokecXLIe8U(timePickerTokens.m5192getPeriodSelectorOutlineWidthD9Ej5fM(), timePickerColors.m4095getPeriodSelectorBorderColor0d7_KjU());
            Shape value = ShapesKt.getValue(timePickerTokens.getPeriodSelectorContainerShape(), composerStartRestartGroup, 6);
            value.getClass();
            CornerBasedShape cornerBasedShape = (CornerBasedShape) value;
            Strings.Companion companion = Strings.Companion;
            String strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_time_picker_period_toggle_description), composerStartRestartGroup, 0);
            boolean zChanged = composerStartRestartGroup.changed(strM4461getString2EP1pXo);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new im1(strM4461getString2EP1pXo, i3);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            Modifier modifierBorder = BorderKt.border(SelectableGroupKt.selectableGroup(SemanticsModifierKt.semantics$default(modifier, false, (nl3) objRememberedValue, 1, null)), borderStrokeM1315BorderStrokecXLIe8U, cornerBasedShape);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierBorder);
            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
            ll3<ComposeUiNode> constructor = companion2.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
            bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
            boolean z = !isPm(timePickerState);
            int i4 = i2 & 112;
            boolean z2 = i4 == 32 || ((i2 & 64) != 0 && composerStartRestartGroup.changedInstance(timePickerState));
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            int i5 = 5;
            if (z2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                objRememberedValue2 = new ff(timePickerState, i5);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            ComposableSingletons$TimePickerKt composableSingletons$TimePickerKt = ComposableSingletons$TimePickerKt.INSTANCE;
            int i6 = (i2 << 3) & 7168;
            ToggleItem(z, shape, (ll3) objRememberedValue2, timePickerColors, composableSingletons$TimePickerKt.getLambda$1425358052$material3(), composerStartRestartGroup, ((i2 >> 9) & 112) | 24576 | i6);
            SpacerKt.Spacer(BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.fillMaxSize$default(ZIndexModifierKt.zIndex(LayoutIdKt.layoutId(Modifier.Companion, "Spacer"), 2.0f), 0.0f, 1, null), timePickerColors.m4095getPeriodSelectorBorderColor0d7_KjU(), null, 2, null), composerStartRestartGroup, 0);
            boolean zIsPm = isPm(timePickerState);
            boolean z3 = i4 == 32 || ((i2 & 64) != 0 && composerStartRestartGroup.changedInstance(timePickerState));
            Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (z3 || objRememberedValue3 == Composer.Companion.getEmpty()) {
                objRememberedValue3 = new b80(timePickerState, 5);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            ToggleItem(zIsPm, shape3, (ll3) objRememberedValue3, timePickerColors, composableSingletons$TimePickerKt.m3325getLambda$1179219109$material3(), composerStartRestartGroup, ((i2 >> 12) & 112) | 24576 | i6);
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hv8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TimePickerKt.PeriodToggleImpl$lambda$47(modifier, timePickerState, timePickerColors, measurePolicy, shape, shape2, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 PeriodToggleImpl$lambda$41$lambda$40(String str, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setTraversalGroup(semanticsPropertyReceiver, true);
        SemanticsPropertiesKt.setContentDescription(semanticsPropertyReceiver, str);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 PeriodToggleImpl$lambda$46$lambda$43$lambda$42(TimePickerState timePickerState) {
        if (isPm(timePickerState)) {
            timePickerState.setHour(timePickerState.getHour() - 12);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 PeriodToggleImpl$lambda$46$lambda$45$lambda$44(TimePickerState timePickerState) {
        if (!isPm(timePickerState)) {
            timePickerState.setHour(timePickerState.getHour() + 12);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 PeriodToggleImpl$lambda$47(Modifier modifier, TimePickerState timePickerState, TimePickerColors timePickerColors, MeasurePolicy measurePolicy, Shape shape, Shape shape2, int i, Composer composer, int i2) {
        PeriodToggleImpl(modifier, timePickerState, timePickerColors, measurePolicy, shape, shape2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    public static final void TimeInput(final TimePickerState timePickerState, Modifier modifier, TimePickerColors timePickerColors, Composer composer, final int i, final int i2) {
        int i3;
        Composer composerStartRestartGroup = composer.startRestartGroup(-760850373);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = ((i & 8) == 0 ? composerStartRestartGroup.changed(timePickerState) : composerStartRestartGroup.changedInstance(timePickerState) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i4 = i2 & 2;
        if (i4 != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changed(modifier) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= ((i2 & 4) == 0 && composerStartRestartGroup.changed(timePickerColors)) ? 256 : 128;
        }
        if (composerStartRestartGroup.shouldExecute((i3 & 147) != 146, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) == 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                if (i4 != 0) {
                    modifier = Modifier.Companion;
                }
                if ((i2 & 4) != 0) {
                    timePickerColors = TimePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    i3 &= -897;
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                if ((i2 & 4) != 0) {
                    i3 &= -897;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-760850373, i3, -1, "androidx.compose.material3.TimeInput (TimePicker.kt:274)");
            }
            TimeInputImpl(modifier, timePickerColors, timePickerState, composerStartRestartGroup, ((i3 >> 3) & 126) | ((i3 << 6) & 896));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        final Modifier modifier2 = modifier;
        final TimePickerColors timePickerColors2 = timePickerColors;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: fv8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TimePickerKt.TimeInput$lambda$5(timePickerState, modifier2, timePickerColors2, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TimeInput$lambda$5(TimePickerState timePickerState, Modifier modifier, TimePickerColors timePickerColors, int i, int i2, Composer composer, int i3) {
        TimeInput(timePickerState, modifier, timePickerColors, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    private static final void TimeInputImpl(Modifier modifier, TimePickerColors timePickerColors, TimePickerState timePickerState, Composer composer, int i) {
        int i2;
        int i3;
        Composer composerStartRestartGroup = composer.startRestartGroup(-475657989);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(timePickerColors) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= (i & 512) == 0 ? composerStartRestartGroup.changed(timePickerState) : composerStartRestartGroup.changedInstance(timePickerState) ? 256 : 128;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 147) != 146, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-475657989, i2, -1, "androidx.compose.material3.TimeInputImpl (TimePicker.kt:997)");
            }
            Object[] objArr = new Object[0];
            TextFieldValue.Companion companion = TextFieldValue.Companion;
            Saver<TextFieldValue, Object> saver = companion.getSaver();
            int i4 = i2 & 896;
            boolean z = i4 == 256 || ((i2 & 512) != 0 && composerStartRestartGroup.changedInstance(timePickerState));
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            int i5 = 6;
            if (z || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new aw4(timePickerState, i5);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            MutableState mutableStateRememberSaveable = RememberSaveableKt.rememberSaveable(objArr, (Saver) saver, (ll3) objRememberedValue, composerStartRestartGroup, 0);
            Object[] objArr2 = new Object[0];
            Saver<TextFieldValue, Object> saver2 = companion.getSaver();
            boolean z2 = i4 == 256 || ((i2 & 512) != 0 && composerStartRestartGroup.changedInstance(timePickerState));
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            int i6 = 3;
            if (z2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                objRememberedValue2 = new gf(timePickerState, i6);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            MutableState mutableStateRememberSaveable2 = RememberSaveableKt.rememberSaveable(objArr2, (Saver) saver2, (ll3) objRememberedValue2, composerStartRestartGroup, 0);
            Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            Composer.Companion companion2 = Composer.Companion;
            if (objRememberedValue3 == companion2.getEmpty()) {
                objRememberedValue3 = new Ref();
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            Ref ref = (Ref) objRememberedValue3;
            Integer numValueOf = Integer.valueOf(timePickerState.getHour());
            Integer numValueOf2 = Integer.valueOf(timePickerState.getMinute());
            boolean zChangedInstance = composerStartRestartGroup.changedInstance(ref) | composerStartRestartGroup.changed(mutableStateRememberSaveable) | (i4 == 256 || ((i2 & 512) != 0 && composerStartRestartGroup.changedInstance(timePickerState))) | composerStartRestartGroup.changed(mutableStateRememberSaveable2);
            Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance || objRememberedValue4 == companion2.getEmpty()) {
                i3 = 6;
                TimePickerKt$TimeInputImpl$1$1 timePickerKt$TimeInputImpl$1$1 = new TimePickerKt$TimeInputImpl$1$1(ref, timePickerState, mutableStateRememberSaveable, mutableStateRememberSaveable2, null);
                composerStartRestartGroup.updateRememberedValue(timePickerKt$TimeInputImpl$1$1);
                objRememberedValue4 = timePickerKt$TimeInputImpl$1$1;
            } else {
                i3 = 6;
            }
            EffectsKt.LaunchedEffect(numValueOf, numValueOf2, (bm3) objRememberedValue4, composerStartRestartGroup, 0);
            Modifier modifierM2037paddingqDBjuR0$default = PaddingKt.m2037paddingqDBjuR0$default(modifier, 0.0f, 0.0f, 0.0f, TimeInputBottomPadding, 7, null);
            Alignment.Companion companion3 = Alignment.Companion;
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), companion3.getTop(), composerStartRestartGroup, 48);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2037paddingqDBjuR0$default);
            ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
            ll3<ComposeUiNode> constructor = companion4.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
            bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            TimeInputTokens timeInputTokens = TimeInputTokens.INSTANCE;
            int i7 = i2;
            int i8 = i3;
            CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{TextKt.getLocalTextStyle().provides(TextStyle.m8504copyp1EtxEg$default(TypographyKt.getValue(timeInputTokens.getTimeFieldLabelTextFont(), composerStartRestartGroup, i3), timePickerColors.m4108timeSelectorContentColorvNxB06k$material3(true), 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, TextAlign.Companion.m8920getCentere0LSkKk(), 0, 0L, null, null, null, 0, 0, null, 16744446, null)), CompositionLocalsKt.getLocalLayoutDirection().provides(LayoutDirection.Ltr)}, ComposableLambdaKt.rememberComposableLambda(1306700887, true, new TimePickerKt$TimeInputImpl$2$1(mutableStateRememberSaveable, timePickerState, ref, timePickerColors, mutableStateRememberSaveable2), composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
            if (timePickerState.is24hour()) {
                composerStartRestartGroup.startReplaceGroup(-1381607893);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-1381942321);
                Modifier.Companion companion5 = Modifier.Companion;
                Modifier modifierM2037paddingqDBjuR0$default2 = PaddingKt.m2037paddingqDBjuR0$default(companion5, PeriodToggleMargin, 0.0f, 0.0f, 0.0f, 14, null);
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2037paddingqDBjuR0$default2);
                ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor2);
                } else {
                    composerStartRestartGroup.useNode();
                }
                Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                    dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                }
                Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                VerticalPeriodToggle(SizeKt.m2101sizeVpY3zN4(companion5, timeInputTokens.m5180getPeriodSelectorContainerWidthD9Ej5fM(), timeInputTokens.m5179getPeriodSelectorContainerHeightD9Ej5fM()), timePickerState, timePickerColors, composerStartRestartGroup, ((i7 >> 3) & 112) | i8 | ((i7 << 3) & 896));
                composerStartRestartGroup.endNode();
                composerStartRestartGroup.endReplaceGroup();
            }
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new i67(i, 1, modifier, timePickerColors, timePickerState));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextFieldValue TimeInputImpl$hourTextValue(TimePickerState timePickerState) {
        return new TextFieldValue(CalendarLocale_jvmKt.toLocalString$default(getHourForDisplay(timePickerState), 2, 0, false, null, 14, null), 0L, (TextRange) null, 6, (jh2) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableState TimeInputImpl$lambda$17$lambda$16(TimePickerState timePickerState) {
        return SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(TimeInputImpl$hourTextValue(timePickerState), null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextFieldValue TimeInputImpl$lambda$18(MutableState<TextFieldValue> mutableState) {
        return mutableState.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableState TimeInputImpl$lambda$21$lambda$20(TimePickerState timePickerState) {
        return SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(TimeInputImpl$minuteTextValue(timePickerState), null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextFieldValue TimeInputImpl$lambda$22(MutableState<TextFieldValue> mutableState) {
        return mutableState.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TimeInputImpl$lambda$28(Modifier modifier, TimePickerColors timePickerColors, TimePickerState timePickerState, int i, Composer composer, int i2) {
        TimeInputImpl(modifier, timePickerColors, timePickerState, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextFieldValue TimeInputImpl$minuteTextValue(TimePickerState timePickerState) {
        return new TextFieldValue(CalendarLocale_jvmKt.toLocalString$default(timePickerState.getMinute(), 2, 0, false, null, 14, null), 0L, (TextRange) null, 6, (jh2) null);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0150  */
    /* JADX WARN: Code duplicated, block: B:107:0x015d  */
    /* JADX WARN: Code duplicated, block: B:110:0x0167  */
    /* JADX WARN: Code duplicated, block: B:112:0x016d  */
    /* JADX WARN: Code duplicated, block: B:115:0x0187  */
    /* JADX WARN: Code duplicated, block: B:116:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:119:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:121:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:124:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:126:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:29:0x004d  */
    /* JADX WARN: Code duplicated, block: B:31:0x0051  */
    /* JADX WARN: Code duplicated, block: B:33:0x0059  */
    /* JADX WARN: Code duplicated, block: B:34:0x005c  */
    /* JADX WARN: Code duplicated, block: B:37:0x0062  */
    /* JADX WARN: Code duplicated, block: B:40:0x0068  */
    /* JADX WARN: Code duplicated, block: B:42:0x006c  */
    /* JADX WARN: Code duplicated, block: B:44:0x0074  */
    /* JADX WARN: Code duplicated, block: B:45:0x0077  */
    /* JADX WARN: Code duplicated, block: B:48:0x007d  */
    /* JADX WARN: Code duplicated, block: B:51:0x0086  */
    /* JADX WARN: Code duplicated, block: B:52:0x0088  */
    /* JADX WARN: Code duplicated, block: B:55:0x0091  */
    /* JADX WARN: Code duplicated, block: B:68:0x00b3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:69:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:70:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:73:0x00be  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:77:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:78:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:84:0x0100  */
    /* JADX WARN: Code duplicated, block: B:87:0x010e  */
    /* JADX WARN: Code duplicated, block: B:93:0x011b  */
    /* JADX WARN: Code duplicated, block: B:96:0x0122  */
    /* JADX WARN: Code duplicated, block: B:98:0x0128  */
    /* JADX INFO: renamed from: TimePicker-mT9BvqQ, reason: not valid java name */
    public static final void m4125TimePickermT9BvqQ(final TimePickerState timePickerState, Modifier modifier, TimePickerColors timePickerColors, int i, Composer composer, final int i2, final int i3) {
        int i4;
        final Modifier modifier2;
        TimePickerColors timePickerColors2;
        int i5;
        boolean z;
        Composer composer2;
        final TimePickerColors timePickerColors3;
        final int i6;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier3;
        TimePickerColors timePickerColorsColors;
        int i7;
        TimePickerColors timePickerColors4;
        int iM4110layoutTypesDNSZnc;
        State<Boolean> stateRememberAccessibilityServiceState;
        Object objRememberedValue;
        Composer.Companion companion;
        Ref ref;
        int i8;
        boolean z2;
        Object objRememberedValue2;
        AnalogTimePickerState analogTimePickerState;
        boolean z3;
        boolean z4;
        Object objRememberedValue3;
        TimePickerColors timePickerColors5;
        Modifier modifier4;
        Composer composerStartRestartGroup = composer.startRestartGroup(-619286452);
        if ((i3 & 1) != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = ((i2 & 8) == 0 ? composerStartRestartGroup.changed(timePickerState) : composerStartRestartGroup.changedInstance(timePickerState) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i9 = i3 & 2;
        if (i9 == 0) {
            if ((i2 & 48) == 0) {
                modifier2 = modifier;
                i4 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if ((i3 & 4) == 0) {
                    timePickerColors2 = timePickerColors;
                    int i10 = composerStartRestartGroup.changed(timePickerColors2) ? 256 : 128;
                    i4 |= i10;
                } else {
                    timePickerColors2 = timePickerColors;
                }
                i4 |= i10;
            } else {
                timePickerColors2 = timePickerColors;
            }
            if ((i2 & 3072) == 0) {
                if ((i3 & 8) == 0) {
                    i5 = i;
                    int i11 = composerStartRestartGroup.changed(i5) ? 2048 : 1024;
                    i4 |= i11;
                } else {
                    i5 = i;
                }
                i4 |= i11;
            } else {
                i5 = i;
            }
            if ((i4 & 1171) != 1170) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                    if (i9 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        timePickerColorsColors = TimePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i4 &= -897;
                    } else {
                        timePickerColorsColors = timePickerColors2;
                    }
                    if ((i3 & 8) != 0) {
                        i7 = i4 & (-7169);
                        timePickerColors4 = timePickerColorsColors;
                        iM4110layoutTypesDNSZnc = TimePickerDefaults.INSTANCE.m4110layoutTypesDNSZnc(composerStartRestartGroup, 6);
                    } else {
                        i7 = i4;
                        timePickerColors4 = timePickerColorsColors;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-619286452, i7, -1, "androidx.compose.material3.TimePicker (TimePicker.kt:224)");
                    }
                    stateRememberAccessibilityServiceState = AccessibilityServiceStateProvider_androidKt.rememberAccessibilityServiceState(false, false, false, composerStartRestartGroup, 0, 7);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = new Ref();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    ref = (Ref) objRememberedValue;
                    i8 = i7 & 14;
                    if (i8 != 4 || ((i7 & 8) != 0 && composerStartRestartGroup.changed(timePickerState))) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z2 || objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = new AnalogTimePickerState(timePickerState, ref);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    analogTimePickerState = (AnalogTimePickerState) objRememberedValue2;
                    Integer numValueOf = Integer.valueOf(timePickerState.getHour());
                    Integer numValueOf2 = Integer.valueOf(timePickerState.getMinute());
                    boolean zChangedInstance = composerStartRestartGroup.changedInstance(ref) | composerStartRestartGroup.changedInstance(analogTimePickerState);
                    if (i8 != 4 || ((i7 & 8) != 0 && composerStartRestartGroup.changedInstance(timePickerState))) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    z4 = zChangedInstance | z3;
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z4 || objRememberedValue3 == companion.getEmpty()) {
                        objRememberedValue3 = new TimePickerKt$TimePicker$1$1(ref, analogTimePickerState, timePickerState, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    EffectsKt.LaunchedEffect(numValueOf, numValueOf2, (bm3) objRememberedValue3, composerStartRestartGroup, 0);
                    if (TimePickerLayoutType.m4142equalsimpl0(iM4110layoutTypesDNSZnc, TimePickerLayoutType.Companion.m4147getVerticalQJTpgSE())) {
                        composerStartRestartGroup.startReplaceGroup(2017551219);
                        timePickerColors5 = timePickerColors4;
                        modifier4 = modifier3;
                        VerticalTimePicker(analogTimePickerState, modifier4, timePickerColors5, !TimePicker_mT9BvqQ$lambda$0(stateRememberAccessibilityServiceState), composerStartRestartGroup, i7 & 1008, 0);
                        composer2 = composerStartRestartGroup;
                        composer2.endReplaceGroup();
                    } else {
                        timePickerColors5 = timePickerColors4;
                        modifier4 = modifier3;
                        composerStartRestartGroup.startReplaceGroup(2017750673);
                        HorizontalTimePicker(analogTimePickerState, modifier4, timePickerColors5, !TimePicker_mT9BvqQ$lambda$0(stateRememberAccessibilityServiceState), composerStartRestartGroup, i7 & 1008, 0);
                        composer2 = composerStartRestartGroup;
                        composer2.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier4;
                    timePickerColors3 = timePickerColors5;
                    i6 = iM4110layoutTypesDNSZnc;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    if ((i3 & 4) != 0) {
                        i4 &= -897;
                    }
                    if ((i3 & 8) != 0) {
                        i4 &= -7169;
                    }
                    i7 = i4;
                    modifier3 = modifier2;
                    timePickerColors4 = timePickerColors2;
                }
                iM4110layoutTypesDNSZnc = i5;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-619286452, i7, -1, "androidx.compose.material3.TimePicker (TimePicker.kt:224)");
                }
                stateRememberAccessibilityServiceState = AccessibilityServiceStateProvider_androidKt.rememberAccessibilityServiceState(false, false, false, composerStartRestartGroup, 0, 7);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = new Ref();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                ref = (Ref) objRememberedValue;
                i8 = i7 & 14;
                if (i8 != 4) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z2) {
                    objRememberedValue2 = new AnalogTimePickerState(timePickerState, ref);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = new AnalogTimePickerState(timePickerState, ref);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                analogTimePickerState = (AnalogTimePickerState) objRememberedValue2;
                Integer numValueOf3 = Integer.valueOf(timePickerState.getHour());
                Integer numValueOf4 = Integer.valueOf(timePickerState.getMinute());
                boolean zChangedInstance2 = composerStartRestartGroup.changedInstance(ref) | composerStartRestartGroup.changedInstance(analogTimePickerState);
                if (i8 != 4) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                z4 = zChangedInstance2 | z3;
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (z4) {
                    objRememberedValue3 = new TimePickerKt$TimePicker$1$1(ref, analogTimePickerState, timePickerState, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new TimePickerKt$TimePicker$1$1(ref, analogTimePickerState, timePickerState, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                EffectsKt.LaunchedEffect(numValueOf3, numValueOf4, (bm3) objRememberedValue3, composerStartRestartGroup, 0);
                if (TimePickerLayoutType.m4142equalsimpl0(iM4110layoutTypesDNSZnc, TimePickerLayoutType.Companion.m4147getVerticalQJTpgSE())) {
                    composerStartRestartGroup.startReplaceGroup(2017551219);
                    timePickerColors5 = timePickerColors4;
                    modifier4 = modifier3;
                    VerticalTimePicker(analogTimePickerState, modifier4, timePickerColors5, !TimePicker_mT9BvqQ$lambda$0(stateRememberAccessibilityServiceState), composerStartRestartGroup, i7 & 1008, 0);
                    composer2 = composerStartRestartGroup;
                    composer2.endReplaceGroup();
                } else {
                    timePickerColors5 = timePickerColors4;
                    modifier4 = modifier3;
                    composerStartRestartGroup.startReplaceGroup(2017750673);
                    HorizontalTimePicker(analogTimePickerState, modifier4, timePickerColors5, !TimePicker_mT9BvqQ$lambda$0(stateRememberAccessibilityServiceState), composerStartRestartGroup, i7 & 1008, 0);
                    composer2 = composerStartRestartGroup;
                    composer2.endReplaceGroup();
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier4;
                timePickerColors3 = timePickerColors5;
                i6 = iM4110layoutTypesDNSZnc;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                timePickerColors3 = timePickerColors2;
                i6 = i5;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yu8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return TimePickerKt.TimePicker_mT9BvqQ$lambda$4(timePickerState, modifier2, timePickerColors3, i6, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 48;
        modifier2 = modifier;
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i3 & 4) == 0) {
                timePickerColors2 = timePickerColors;
                if (composerStartRestartGroup.changed(timePickerColors2)) {
                }
                i4 |= i10;
            } else {
                timePickerColors2 = timePickerColors;
            }
            i4 |= i10;
        } else {
            timePickerColors2 = timePickerColors;
        }
        if ((i2 & 3072) == 0) {
            if ((i3 & 8) == 0) {
                i5 = i;
                if (composerStartRestartGroup.changed(i5)) {
                }
                i4 |= i11;
            } else {
                i5 = i;
            }
            i4 |= i11;
        } else {
            i5 = i;
        }
        if ((i4 & 1171) != 1170) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i2 & 1) != 0) {
                if (i9 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i3 & 4) != 0) {
                    timePickerColorsColors = TimePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    i4 &= -897;
                } else {
                    timePickerColorsColors = timePickerColors2;
                }
                if ((i3 & 8) != 0) {
                    i7 = i4 & (-7169);
                    timePickerColors4 = timePickerColorsColors;
                    iM4110layoutTypesDNSZnc = TimePickerDefaults.INSTANCE.m4110layoutTypesDNSZnc(composerStartRestartGroup, 6);
                } else {
                    i7 = i4;
                    timePickerColors4 = timePickerColorsColors;
                    iM4110layoutTypesDNSZnc = i5;
                }
            } else {
                if (i9 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i3 & 4) != 0) {
                    timePickerColorsColors = TimePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    i4 &= -897;
                } else {
                    timePickerColorsColors = timePickerColors2;
                }
                if ((i3 & 8) != 0) {
                    i7 = i4 & (-7169);
                    timePickerColors4 = timePickerColorsColors;
                    iM4110layoutTypesDNSZnc = TimePickerDefaults.INSTANCE.m4110layoutTypesDNSZnc(composerStartRestartGroup, 6);
                } else {
                    i7 = i4;
                    timePickerColors4 = timePickerColorsColors;
                    iM4110layoutTypesDNSZnc = i5;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-619286452, i7, -1, "androidx.compose.material3.TimePicker (TimePicker.kt:224)");
            }
            stateRememberAccessibilityServiceState = AccessibilityServiceStateProvider_androidKt.rememberAccessibilityServiceState(false, false, false, composerStartRestartGroup, 0, 7);
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = new Ref();
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            ref = (Ref) objRememberedValue;
            i8 = i7 & 14;
            if (i8 != 4) {
                z2 = true;
            } else {
                z2 = true;
            }
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (z2) {
                objRememberedValue2 = new AnalogTimePickerState(timePickerState, ref);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            } else {
                objRememberedValue2 = new AnalogTimePickerState(timePickerState, ref);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            analogTimePickerState = (AnalogTimePickerState) objRememberedValue2;
            Integer numValueOf5 = Integer.valueOf(timePickerState.getHour());
            Integer numValueOf6 = Integer.valueOf(timePickerState.getMinute());
            boolean zChangedInstance3 = composerStartRestartGroup.changedInstance(ref) | composerStartRestartGroup.changedInstance(analogTimePickerState);
            if (i8 != 4) {
                z3 = true;
            } else {
                z3 = true;
            }
            z4 = zChangedInstance3 | z3;
            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (z4) {
                objRememberedValue3 = new TimePickerKt$TimePicker$1$1(ref, analogTimePickerState, timePickerState, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            } else {
                objRememberedValue3 = new TimePickerKt$TimePicker$1$1(ref, analogTimePickerState, timePickerState, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            EffectsKt.LaunchedEffect(numValueOf5, numValueOf6, (bm3) objRememberedValue3, composerStartRestartGroup, 0);
            if (TimePickerLayoutType.m4142equalsimpl0(iM4110layoutTypesDNSZnc, TimePickerLayoutType.Companion.m4147getVerticalQJTpgSE())) {
                composerStartRestartGroup.startReplaceGroup(2017551219);
                timePickerColors5 = timePickerColors4;
                modifier4 = modifier3;
                VerticalTimePicker(analogTimePickerState, modifier4, timePickerColors5, !TimePicker_mT9BvqQ$lambda$0(stateRememberAccessibilityServiceState), composerStartRestartGroup, i7 & 1008, 0);
                composer2 = composerStartRestartGroup;
                composer2.endReplaceGroup();
            } else {
                timePickerColors5 = timePickerColors4;
                modifier4 = modifier3;
                composerStartRestartGroup.startReplaceGroup(2017750673);
                HorizontalTimePicker(analogTimePickerState, modifier4, timePickerColors5, !TimePicker_mT9BvqQ$lambda$0(stateRememberAccessibilityServiceState), composerStartRestartGroup, i7 & 1008, 0);
                composer2 = composerStartRestartGroup;
                composer2.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier2 = modifier4;
            timePickerColors3 = timePickerColors5;
            i6 = iM4110layoutTypesDNSZnc;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            timePickerColors3 = timePickerColors2;
            i6 = i5;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yu8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TimePickerKt.TimePicker_mT9BvqQ$lambda$4(timePickerState, modifier2, timePickerColors3, i6, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    public static final TimePickerState TimePickerState(int i, int i2, boolean z) {
        return new TimePickerStateImpl(i, i2, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r117v1 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.dex.visitors.ModVisitor.anonymousCallArgMod(ModVisitor.java:535)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.ModVisitor.processAnonymousConstructor(ModVisitor.java:528)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:111)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    /* JADX INFO: renamed from: TimePickerTextField-1vLObsk, reason: not valid java name */
    public static final void m4126TimePickerTextField1vLObsk(androidx.compose.ui.Modifier r111, final androidx.compose.ui.text.input.TextFieldValue r112, defpackage.nl3<? super androidx.compose.ui.text.input.TextFieldValue, defpackage.j59> r113, androidx.compose.material3.TimePickerState r114, int r115, androidx.compose.foundation.text.KeyboardOptions r116, androidx.compose.foundation.text.KeyboardActions r117, androidx.compose.material3.TimePickerColors r118, androidx.compose.runtime.Composer r119, int r120, int r121) {
        /*
            Method dump skipped, instruction units count: 1525
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TimePickerKt.m4126TimePickerTextField1vLObsk(androidx.compose.ui.Modifier, androidx.compose.ui.text.input.TextFieldValue, nl3, androidx.compose.material3.TimePickerState, int, androidx.compose.foundation.text.KeyboardOptions, androidx.compose.foundation.text.KeyboardActions, androidx.compose.material3.TimePickerColors, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TimePickerTextField_1vLObsk$lambda$92$lambda$89$lambda$88$lambda$87(String str, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setContentDescription(semanticsPropertyReceiver, str);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TimePickerTextField_1vLObsk$lambda$92$lambda$91$lambda$90(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TimePickerTextField_1vLObsk$lambda$94(Modifier modifier, TextFieldValue textFieldValue, nl3 nl3Var, TimePickerState timePickerState, int i, KeyboardOptions keyboardOptions, KeyboardActions keyboardActions, TimePickerColors timePickerColors, int i2, int i3, Composer composer, int i4) {
        m4126TimePickerTextField1vLObsk(modifier, textFieldValue, nl3Var, timePickerState, i, keyboardOptions, keyboardActions, timePickerColors, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), i3);
        return j59.a;
    }

    private static final boolean TimePicker_mT9BvqQ$lambda$0(State<Boolean> state) {
        return state.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TimePicker_mT9BvqQ$lambda$4(TimePickerState timePickerState, Modifier modifier, TimePickerColors timePickerColors, int i, int i2, int i3, Composer composer, int i4) {
        m4125TimePickermT9BvqQ(timePickerState, modifier, timePickerColors, i, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), i3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: TimeSelector-SAnMeKU, reason: not valid java name */
    public static final void m4127TimeSelectorSAnMeKU(final Modifier modifier, final int i, final TimePickerState timePickerState, final int i2, final TimePickerColors timePickerColors, Composer composer, final int i3) {
        int i4;
        Composer composer2;
        int iM4382constructorimpl;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1148055889);
        if ((i3 & 6) == 0) {
            i4 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i3;
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= composerStartRestartGroup.changed(i) ? 32 : 16;
        }
        if ((i3 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i4 |= (i3 & 512) == 0 ? composerStartRestartGroup.changed(timePickerState) : composerStartRestartGroup.changedInstance(timePickerState) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i4 |= composerStartRestartGroup.changed(i2) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i4 |= composerStartRestartGroup.changed(timePickerColors) ? 16384 : 8192;
        }
        int i5 = 1;
        if (composerStartRestartGroup.shouldExecute((i4 & 9363) != 9362, i4 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1148055889, i4, -1, "androidx.compose.material3.TimeSelector (TimePicker.kt:1403)");
            }
            boolean zM4151equalsimpl0 = TimePickerSelectionMode.m4151equalsimpl0(timePickerState.mo3075getSelectionyecRtBI(), i2);
            if (TimePickerSelectionMode.m4151equalsimpl0(i2, TimePickerSelectionMode.Companion.m4155getHouryecRtBI())) {
                Strings.Companion companion = Strings.Companion;
                iM4382constructorimpl = Strings.m4382constructorimpl(R.string.m3c_time_picker_hour_selection);
            } else {
                Strings.Companion companion2 = Strings.Companion;
                iM4382constructorimpl = Strings.m4382constructorimpl(R.string.m3c_time_picker_minute_selection);
            }
            String strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(iM4382constructorimpl, composerStartRestartGroup, 0);
            long jM4107timeSelectorContainerColorvNxB06k$material3 = timePickerColors.m4107timeSelectorContainerColorvNxB06k$material3(zM4151equalsimpl0);
            long jM4108timeSelectorContentColorvNxB06k$material3 = timePickerColors.m4108timeSelectorContentColorvNxB06k$material3(zM4151equalsimpl0);
            boolean zChanged = composerStartRestartGroup.changed(strM4461getString2EP1pXo);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new p88(strM4461getString2EP1pXo, i5);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            Modifier modifierSemantics = SemanticsModifierKt.semantics(modifier, true, (nl3) objRememberedValue);
            Shape value = ShapesKt.getValue(TimePickerTokens.INSTANCE.getTimeSelectorContainerShape(), composerStartRestartGroup, 6);
            boolean z = ((i4 & 7168) == 2048) | ((i4 & 896) == 256 || ((i4 & 512) != 0 && composerStartRestartGroup.changedInstance(timePickerState)));
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue2 == Composer.Companion.getEmpty()) {
                objRememberedValue2 = new ll3() { // from class: tu8
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return TimePickerKt.TimeSelector_SAnMeKU$lambda$58$lambda$57(i2, timePickerState);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            composer2 = composerStartRestartGroup;
            SurfaceKt.m3943Surfaced85dljk(zM4151equalsimpl0, (ll3<j59>) objRememberedValue2, modifierSemantics, false, value, jM4107timeSelectorContainerColorvNxB06k$material3, 0L, 0.0f, 0.0f, (BorderStroke) null, (MutableInteractionSource) null, (bm3<? super Composer, ? super Integer, j59>) ComposableLambdaKt.rememberComposableLambda(-1477282471, true, new TimePickerKt$TimeSelector$3(i2, timePickerState, i, jM4108timeSelectorContentColorvNxB06k$material3), composerStartRestartGroup, 54), composer2, 0, 48, 1992);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: uu8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    TimePickerState timePickerState2 = timePickerState;
                    Modifier modifier2 = modifier;
                    TimePickerColors timePickerColors2 = timePickerColors;
                    return TimePickerKt.TimeSelector_SAnMeKU$lambda$59(modifier2, i, timePickerState2, i2, timePickerColors2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TimeSelector_SAnMeKU$lambda$56$lambda$55(String str, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.m8280setRolekuIjeqM(semanticsPropertyReceiver, Role.Companion.m8266getRadioButtono7Vup1c());
        SemanticsPropertiesKt.setContentDescription(semanticsPropertyReceiver, str);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TimeSelector_SAnMeKU$lambda$58$lambda$57(int i, TimePickerState timePickerState) {
        if (!TimePickerSelectionMode.m4151equalsimpl0(i, timePickerState.mo3075getSelectionyecRtBI())) {
            timePickerState.mo3077setSelection6_8s6DQ(i);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TimeSelector_SAnMeKU$lambda$59(Modifier modifier, int i, TimePickerState timePickerState, int i2, TimePickerColors timePickerColors, int i3, Composer composer, int i4) {
        m4127TimeSelectorSAnMeKU(modifier, i, timePickerState, i2, timePickerColors, composer, RecomposeScopeImplKt.updateChangedFlags(i3 | 1));
        return j59.a;
    }

    private static final void ToggleItem(final boolean z, final Shape shape, final ll3<j59> ll3Var, final TimePickerColors timePickerColors, final dm3<? super RowScope, ? super Composer, ? super Integer, j59> dm3Var, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Composer composerStartRestartGroup = composer.startRestartGroup(1523811083);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(z) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(shape) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(ll3Var) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changed(timePickerColors) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(dm3Var) ? 16384 : 8192;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 9363) != 9362, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1523811083, i2, -1, "androidx.compose.material3.ToggleItem (TimePicker.kt:1359)");
            }
            long jM4106periodSelectorContentColorvNxB06k$material3 = timePickerColors.m4106periodSelectorContentColorvNxB06k$material3(z);
            long jM4105periodSelectorContainerColorvNxB06k$material3 = timePickerColors.m4105periodSelectorContainerColorvNxB06k$material3(z);
            Modifier modifierFillMaxSize$default = SizeKt.fillMaxSize$default(ZIndexModifierKt.zIndex(Modifier.Companion, z ? 0.0f : 1.0f), 0.0f, 1, null);
            boolean z2 = (i2 & 14) == 4;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z2 || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new nl3() { // from class: dv8
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return TimePickerKt.ToggleItem$lambda$49$lambda$48(z, (SemanticsPropertyReceiver) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            ButtonKt.TextButton(ll3Var, SemanticsModifierKt.semantics$default(modifierFillMaxSize$default, false, (nl3) objRememberedValue, 1, null), false, shape, ButtonDefaults.INSTANCE.m3147textButtonColorsro_MJ88(jM4105periodSelectorContainerColorvNxB06k$material3, jM4106periodSelectorContentColorvNxB06k$material3, 0L, 0L, composerStartRestartGroup, 24576, 12), null, null, PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f)), null, dm3Var, composerStartRestartGroup, ((i2 >> 6) & 14) | 12582912 | ((i2 << 6) & 7168) | ((i2 << 15) & 1879048192), 356);
            composer2 = composerStartRestartGroup;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ev8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TimePickerKt.ToggleItem$lambda$50(z, shape, ll3Var, timePickerColors, dm3Var, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ToggleItem$lambda$49$lambda$48(boolean z, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setSelected(semanticsPropertyReceiver, z);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ToggleItem$lambda$50(boolean z, Shape shape, ll3 ll3Var, TimePickerColors timePickerColors, dm3 dm3Var, int i, Composer composer, int i2) {
        ToggleItem(z, shape, ll3Var, timePickerColors, dm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    private static final void VerticalClockDisplay(final TimePickerState timePickerState, final TimePickerColors timePickerColors, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(2054675515);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(timePickerState) : composerStartRestartGroup.changedInstance(timePickerState) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(timePickerColors) ? 32 : 16;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 19) != 18, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2054675515, i2, -1, "androidx.compose.material3.VerticalClockDisplay (TimePicker.kt:1153)");
            }
            Arrangement.HorizontalOrVertical center = Arrangement.INSTANCE.getCenter();
            Modifier.Companion companion = Modifier.Companion;
            Alignment.Companion companion2 = Alignment.Companion;
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(center, companion2.getTop(), composerStartRestartGroup, 6);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion);
            ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
            ll3<ComposeUiNode> constructor = companion3.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
            bm3 bm3VarB = cc.b(companion3, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion3.getSetModifier());
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            ClockDisplayNumbers(timePickerState, timePickerColors, composerStartRestartGroup, i2 & 126);
            if (timePickerState.is24hour()) {
                composerStartRestartGroup.startReplaceGroup(1364727499);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(1364287361);
                Modifier modifierM2037paddingqDBjuR0$default = PaddingKt.m2037paddingqDBjuR0$default(companion, PeriodToggleMargin, 0.0f, 0.0f, 0.0f, 14, null);
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion2.getTopStart(), false);
                int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2037paddingqDBjuR0$default);
                ll3<ComposeUiNode> constructor2 = companion3.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor2);
                } else {
                    composerStartRestartGroup.useNode();
                }
                Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3 bm3VarB2 = cc.b(companion3, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                    dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                }
                Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion3.getSetModifier());
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                TimePickerTokens timePickerTokens = TimePickerTokens.INSTANCE;
                int i3 = i2 << 3;
                VerticalPeriodToggle(SizeKt.m2101sizeVpY3zN4(companion, timePickerTokens.m5194getPeriodSelectorVerticalContainerWidthD9Ej5fM(), timePickerTokens.m5193getPeriodSelectorVerticalContainerHeightD9Ej5fM()), timePickerState, timePickerColors, composerStartRestartGroup, 6 | (i3 & 112) | (i3 & 896));
                composerStartRestartGroup.endNode();
                composerStartRestartGroup.endReplaceGroup();
            }
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: av8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TimePickerKt.VerticalClockDisplay$lambda$34(timePickerState, timePickerColors, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 VerticalClockDisplay$lambda$34(TimePickerState timePickerState, TimePickerColors timePickerColors, int i, Composer composer, int i2) {
        VerticalClockDisplay(timePickerState, timePickerColors, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    private static final void VerticalPeriodToggle(Modifier modifier, TimePickerState timePickerState, TimePickerColors timePickerColors, Composer composer, final int i) {
        int i2;
        final Modifier modifier2;
        final TimePickerState timePickerState2;
        final TimePickerColors timePickerColors2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1898918107);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? composerStartRestartGroup.changed(timePickerState) : composerStartRestartGroup.changedInstance(timePickerState) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changed(timePickerColors) ? 256 : 128;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 147) != 146, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1898918107, i2, -1, "androidx.compose.material3.VerticalPeriodToggle (TimePicker.kt:1252)");
            }
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = TimePickerKt$VerticalPeriodToggle$measurePolicy$1$1.INSTANCE;
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) objRememberedValue;
            Shape value = ShapesKt.getValue(TimePickerTokens.INSTANCE.getPeriodSelectorContainerShape(), composerStartRestartGroup, 6);
            value.getClass();
            CornerBasedShape cornerBasedShape = (CornerBasedShape) value;
            modifier2 = modifier;
            timePickerState2 = timePickerState;
            timePickerColors2 = timePickerColors;
            PeriodToggleImpl(modifier2, timePickerState2, timePickerColors2, measurePolicy, ShapesKt.top$default(cornerBasedShape, null, 1, null), ShapesKt.bottom$default(cornerBasedShape, null, 1, null), composerStartRestartGroup, (i2 & 14) | 3072 | (i2 & 112) | (i2 & 896));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            modifier2 = modifier;
            timePickerState2 = timePickerState;
            timePickerColors2 = timePickerColors;
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kv8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    TimePickerState timePickerState3 = timePickerState2;
                    return TimePickerKt.VerticalPeriodToggle$lambda$39(modifier2, timePickerState3, timePickerColors2, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 VerticalPeriodToggle$lambda$39(Modifier modifier, TimePickerState timePickerState, TimePickerColors timePickerColors, int i, Composer composer, int i2) {
        VerticalPeriodToggle(modifier, timePickerState, timePickerColors, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0043  */
    /* JADX WARN: Code duplicated, block: B:28:0x0047  */
    /* JADX WARN: Code duplicated, block: B:30:0x004f  */
    /* JADX WARN: Code duplicated, block: B:31:0x0052  */
    /* JADX WARN: Code duplicated, block: B:34:0x0058  */
    /* JADX WARN: Code duplicated, block: B:37:0x005e  */
    /* JADX WARN: Code duplicated, block: B:39:0x0063  */
    /* JADX WARN: Code duplicated, block: B:41:0x0067  */
    /* JADX WARN: Code duplicated, block: B:43:0x006f  */
    /* JADX WARN: Code duplicated, block: B:44:0x0072  */
    /* JADX WARN: Code duplicated, block: B:48:0x007d  */
    /* JADX WARN: Code duplicated, block: B:49:0x007f  */
    /* JADX WARN: Code duplicated, block: B:52:0x0088  */
    /* JADX WARN: Code duplicated, block: B:54:0x0090  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:62:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:73:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:76:0x0113  */
    /* JADX WARN: Code duplicated, block: B:79:0x011f  */
    /* JADX WARN: Code duplicated, block: B:80:0x0123  */
    /* JADX WARN: Code duplicated, block: B:83:0x0134  */
    /* JADX WARN: Code duplicated, block: B:85:0x0142  */
    /* JADX WARN: Code duplicated, block: B:88:0x018e  */
    /* JADX WARN: Code duplicated, block: B:90:0x0194  */
    /* JADX WARN: Code duplicated, block: B:93:0x019f  */
    /* JADX WARN: Code duplicated, block: B:95:? A[RETURN, SYNTHETIC] */
    public static final void VerticalTimePicker(final AnalogTimePickerState analogTimePickerState, Modifier modifier, TimePickerColors timePickerColors, final boolean z, Composer composer, final int i, final int i2) {
        int i3;
        Modifier modifier2;
        TimePickerColors timePickerColors2;
        boolean z2;
        int i4;
        boolean z3;
        final Modifier modifier3;
        final TimePickerColors timePickerColors3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        int i5;
        TimePickerColors timePickerColorsColors;
        Modifier modifier5;
        Object objRememberedValue;
        int currentCompositeKeyHash;
        ll3<ComposeUiNode> constructor;
        Composer composerM5355constructorimpl;
        bm3 bm3VarB;
        Composer composerStartRestartGroup = composer.startRestartGroup(1249591487);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changedInstance(analogTimePickerState) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i6 = i2 & 2;
        if (i6 == 0) {
            if ((i & 48) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if ((i2 & 4) == 0) {
                    timePickerColors2 = timePickerColors;
                    int i7 = composerStartRestartGroup.changed(timePickerColors2) ? 256 : 128;
                    i3 |= i7;
                } else {
                    timePickerColors2 = timePickerColors;
                }
                i3 |= i7;
            } else {
                timePickerColors2 = timePickerColors;
            }
            if ((i2 & 8) != 0) {
                if ((i & 3072) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i4 = 2048;
                    } else {
                        i4 = 1024;
                    }
                    i3 |= i4;
                }
                if ((i3 & 1171) != 1170) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                        if (i6 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i2 & 4) != 0) {
                            modifier5 = modifier4;
                            i5 = i3 & (-897);
                            timePickerColorsColors = TimePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        } else {
                            Modifier modifier6 = modifier4;
                            i5 = i3;
                            timePickerColorsColors = timePickerColors2;
                            modifier5 = modifier6;
                        }
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                        }
                        i5 = i3;
                        timePickerColorsColors = timePickerColors2;
                        modifier5 = modifier2;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1249591487, i5, -1, "androidx.compose.material3.VerticalTimePicker (TimePicker.kt:957)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new xe(3);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(modifier5, false, (nl3) objRememberedValue, 1, null);
                    MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getCenterHorizontally(), composerStartRestartGroup, 48);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierSemantics$default);
                    ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                    constructor = companion.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                    VerticalClockDisplay(analogTimePickerState, timePickerColorsColors, composerStartRestartGroup, (i5 & 14) | ((i5 >> 3) & 112));
                    Modifier.Companion companion2 = Modifier.Companion;
                    SpacerKt.Spacer(SizeKt.m2085height3ABfNKs(companion2, ClockDisplayBottomMargin), composerStartRestartGroup, 6);
                    ClockFace(SizeKt.m2099size3ABfNKs(companion2, TimePickerTokens.INSTANCE.m5185getClockDialContainerSizeD9Ej5fM()), analogTimePickerState, timePickerColorsColors, z2, composerStartRestartGroup, ((i5 << 3) & 112) | 6 | (i5 & 896) | (i5 & 7168));
                    SpacerKt.Spacer(SizeKt.m2085height3ABfNKs(companion2, ClockFaceBottomMargin), composerStartRestartGroup, 6);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    timePickerColors3 = timePickerColorsColors;
                    modifier3 = modifier5;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    timePickerColors3 = timePickerColors2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: bv8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TimePickerKt.VerticalTimePicker$lambda$11(analogTimePickerState, modifier3, timePickerColors3, z, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            z2 = z;
            if ((i3 & 1171) != 1170) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i6 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 4) != 0) {
                        modifier5 = modifier4;
                        i5 = i3 & (-897);
                        timePickerColorsColors = TimePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    } else {
                        Modifier modifier7 = modifier4;
                        i5 = i3;
                        timePickerColorsColors = timePickerColors2;
                        modifier5 = modifier7;
                    }
                } else {
                    if (i6 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 4) != 0) {
                        modifier5 = modifier4;
                        i5 = i3 & (-897);
                        timePickerColorsColors = TimePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    } else {
                        Modifier modifier8 = modifier4;
                        i5 = i3;
                        timePickerColorsColors = timePickerColors2;
                        modifier5 = modifier8;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1249591487, i5, -1, "androidx.compose.material3.VerticalTimePicker (TimePicker.kt:957)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new xe(3);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                Modifier modifierSemantics$default2 = SemanticsModifierKt.semantics$default(modifier5, false, (nl3) objRememberedValue, 1, null);
                MeasurePolicy measurePolicyColumnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getCenterHorizontally(), composerStartRestartGroup, 48);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierSemantics$default2);
                ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
                constructor = companion3.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3VarB = cc.b(companion3, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy2, composerM5355constructorimpl, currentCompositionLocalMap2);
                if (composerM5355constructorimpl.getInserting()) {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                } else {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier2, companion3.getSetModifier());
                ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
                VerticalClockDisplay(analogTimePickerState, timePickerColorsColors, composerStartRestartGroup, (i5 & 14) | ((i5 >> 3) & 112));
                Modifier.Companion companion4 = Modifier.Companion;
                SpacerKt.Spacer(SizeKt.m2085height3ABfNKs(companion4, ClockDisplayBottomMargin), composerStartRestartGroup, 6);
                ClockFace(SizeKt.m2099size3ABfNKs(companion4, TimePickerTokens.INSTANCE.m5185getClockDialContainerSizeD9Ej5fM()), analogTimePickerState, timePickerColorsColors, z2, composerStartRestartGroup, ((i5 << 3) & 112) | 6 | (i5 & 896) | (i5 & 7168));
                SpacerKt.Spacer(SizeKt.m2085height3ABfNKs(companion4, ClockFaceBottomMargin), composerStartRestartGroup, 6);
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                timePickerColors3 = timePickerColorsColors;
                modifier3 = modifier5;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                timePickerColors3 = timePickerColors2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: bv8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return TimePickerKt.VerticalTimePicker$lambda$11(analogTimePickerState, modifier3, timePickerColors3, z, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        modifier2 = modifier;
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i2 & 4) == 0) {
                timePickerColors2 = timePickerColors;
                if (composerStartRestartGroup.changed(timePickerColors2)) {
                }
                i3 |= i7;
            } else {
                timePickerColors2 = timePickerColors;
            }
            i3 |= i7;
        } else {
            timePickerColors2 = timePickerColors;
        }
        if ((i2 & 8) != 0) {
            if ((i & 3072) == 0) {
                z2 = z;
                if (composerStartRestartGroup.changed(z2)) {
                    i4 = 2048;
                } else {
                    i4 = 1024;
                }
                i3 |= i4;
            }
            if ((i3 & 1171) != 1170) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i6 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 4) != 0) {
                        modifier5 = modifier4;
                        i5 = i3 & (-897);
                        timePickerColorsColors = TimePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    } else {
                        Modifier modifier9 = modifier4;
                        i5 = i3;
                        timePickerColorsColors = timePickerColors2;
                        modifier5 = modifier9;
                    }
                } else {
                    if (i6 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 4) != 0) {
                        modifier5 = modifier4;
                        i5 = i3 & (-897);
                        timePickerColorsColors = TimePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    } else {
                        Modifier modifier10 = modifier4;
                        i5 = i3;
                        timePickerColorsColors = timePickerColors2;
                        modifier5 = modifier10;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1249591487, i5, -1, "androidx.compose.material3.VerticalTimePicker (TimePicker.kt:957)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new xe(3);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                Modifier modifierSemantics$default3 = SemanticsModifierKt.semantics$default(modifier5, false, (nl3) objRememberedValue, 1, null);
                MeasurePolicy measurePolicyColumnMeasurePolicy3 = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getCenterHorizontally(), composerStartRestartGroup, 48);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierSemantics$default3);
                ComposeUiNode.Companion companion5 = ComposeUiNode.Companion;
                constructor = companion5.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3VarB = cc.b(companion5, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy3, composerM5355constructorimpl, currentCompositionLocalMap3);
                if (composerM5355constructorimpl.getInserting()) {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                } else {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier3, companion5.getSetModifier());
                ColumnScopeInstance columnScopeInstance3 = ColumnScopeInstance.INSTANCE;
                VerticalClockDisplay(analogTimePickerState, timePickerColorsColors, composerStartRestartGroup, (i5 & 14) | ((i5 >> 3) & 112));
                Modifier.Companion companion6 = Modifier.Companion;
                SpacerKt.Spacer(SizeKt.m2085height3ABfNKs(companion6, ClockDisplayBottomMargin), composerStartRestartGroup, 6);
                ClockFace(SizeKt.m2099size3ABfNKs(companion6, TimePickerTokens.INSTANCE.m5185getClockDialContainerSizeD9Ej5fM()), analogTimePickerState, timePickerColorsColors, z2, composerStartRestartGroup, ((i5 << 3) & 112) | 6 | (i5 & 896) | (i5 & 7168));
                SpacerKt.Spacer(SizeKt.m2085height3ABfNKs(companion6, ClockFaceBottomMargin), composerStartRestartGroup, 6);
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                timePickerColors3 = timePickerColorsColors;
                modifier3 = modifier5;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                timePickerColors3 = timePickerColors2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: bv8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return TimePickerKt.VerticalTimePicker$lambda$11(analogTimePickerState, modifier3, timePickerColors3, z, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        z2 = z;
        if ((i3 & 1171) != 1170) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i6 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i2 & 4) != 0) {
                    modifier5 = modifier4;
                    i5 = i3 & (-897);
                    timePickerColorsColors = TimePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                } else {
                    Modifier modifier11 = modifier4;
                    i5 = i3;
                    timePickerColorsColors = timePickerColors2;
                    modifier5 = modifier11;
                }
            } else {
                if (i6 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i2 & 4) != 0) {
                    modifier5 = modifier4;
                    i5 = i3 & (-897);
                    timePickerColorsColors = TimePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                } else {
                    Modifier modifier12 = modifier4;
                    i5 = i3;
                    timePickerColorsColors = timePickerColors2;
                    modifier5 = modifier12;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1249591487, i5, -1, "androidx.compose.material3.VerticalTimePicker (TimePicker.kt:957)");
            }
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new xe(3);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            Modifier modifierSemantics$default4 = SemanticsModifierKt.semantics$default(modifier5, false, (nl3) objRememberedValue, 1, null);
            MeasurePolicy measurePolicyColumnMeasurePolicy4 = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getCenterHorizontally(), composerStartRestartGroup, 48);
            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap4 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierSemantics$default4);
            ComposeUiNode.Companion companion7 = ComposeUiNode.Companion;
            constructor = companion7.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
            bm3VarB = cc.b(companion7, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy4, composerM5355constructorimpl, currentCompositionLocalMap4);
            if (composerM5355constructorimpl.getInserting()) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            } else {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier4, companion7.getSetModifier());
            ColumnScopeInstance columnScopeInstance4 = ColumnScopeInstance.INSTANCE;
            VerticalClockDisplay(analogTimePickerState, timePickerColorsColors, composerStartRestartGroup, (i5 & 14) | ((i5 >> 3) & 112));
            Modifier.Companion companion8 = Modifier.Companion;
            SpacerKt.Spacer(SizeKt.m2085height3ABfNKs(companion8, ClockDisplayBottomMargin), composerStartRestartGroup, 6);
            ClockFace(SizeKt.m2099size3ABfNKs(companion8, TimePickerTokens.INSTANCE.m5185getClockDialContainerSizeD9Ej5fM()), analogTimePickerState, timePickerColorsColors, z2, composerStartRestartGroup, ((i5 << 3) & 112) | 6 | (i5 & 896) | (i5 & 7168));
            SpacerKt.Spacer(SizeKt.m2085height3ABfNKs(companion8, ClockFaceBottomMargin), composerStartRestartGroup, 6);
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            timePickerColors3 = timePickerColorsColors;
            modifier3 = modifier5;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            timePickerColors3 = timePickerColors2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: bv8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TimePickerKt.VerticalTimePicker$lambda$11(analogTimePickerState, modifier3, timePickerColors3, z, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 VerticalTimePicker$lambda$11(AnalogTimePickerState analogTimePickerState, Modifier modifier, TimePickerColors timePickerColors, boolean z, int i, int i2, Composer composer, int i3) {
        VerticalTimePicker(analogTimePickerState, modifier, timePickerColors, z, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 VerticalTimePicker$lambda$9$lambda$8(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setTraversalGroup(semanticsPropertyReceiver, true);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float atan(float f, float f2) {
        float fAtan2 = ((float) Math.atan2(f, f2)) - 1.5707964f;
        return fAtan2 < 0.0f ? fAtan2 + FullCircle : fAtan2;
    }

    private static final float dist(float f, float f2, int i, int i2) {
        return (float) Math.hypot(i - f, i2 - f2);
    }

    private static final Modifier drawSelector(Modifier modifier, AnalogTimePickerState analogTimePickerState, TimePickerColors timePickerColors) {
        return DrawModifierKt.drawWithContent(modifier, new cv8(0, analogTimePickerState, timePickerColors));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 drawSelector$lambda$61(AnalogTimePickerState analogTimePickerState, TimePickerColors timePickerColors, ContentDrawScope contentDrawScope) {
        float fMo1434toPx0680j_4 = contentDrawScope.mo1434toPx0680j_4(DpOffset.m9103getXD9Ej5fM(getSelectorPos(analogTimePickerState)));
        long jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(contentDrawScope.mo1434toPx0680j_4(DpOffset.m9105getYD9Ej5fM(getSelectorPos(analogTimePickerState))))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fMo1434toPx0680j_4) << 32));
        TimePickerTokens timePickerTokens = TimePickerTokens.INSTANCE;
        float fMo1434toPx0680j_5 = ((contentDrawScope.mo1434toPx0680j_4(timePickerTokens.m5187getClockDialSelectorHandleContainerSizeD9Ej5fM()) / 2.0f) * contentDrawScope.mo1428roundToPx0680j_4(analogTimePickerState.m3074getCurrentDiameterD9Ej5fM())) / contentDrawScope.mo1428roundToPx0680j_4(timePickerTokens.m5185getClockDialContainerSizeD9Ej5fM());
        long jM4100getSelectorColor0d7_KjU = timePickerColors.m4100getSelectorColor0d7_KjU();
        long jM6258getBlack0d7_KjU = Color.Companion.m6258getBlack0d7_KjU();
        BlendMode.Companion companion = BlendMode.Companion;
        DrawScope.m6787drawCircleVaOC9Bg$default(contentDrawScope, jM6258getBlack0d7_KjU, fMo1434toPx0680j_5, jM5979constructorimpl, 0.0f, null, null, companion.m6145getClear0nO6VwU(), 56, null);
        contentDrawScope.drawContent();
        DrawScope.m6787drawCircleVaOC9Bg$default(contentDrawScope, jM4100getSelectorColor0d7_KjU, fMo1434toPx0680j_5, jM5979constructorimpl, 0.0f, null, null, companion.m6173getXor0nO6VwU(), 56, null);
        float fMo1434toPx0680j_6 = contentDrawScope.mo1434toPx0680j_4(timePickerTokens.m5188getClockDialSelectorTrackContainerWidthD9Ej5fM());
        float fCos = ((float) Math.cos(analogTimePickerState.getCurrentAngle())) * fMo1434toPx0680j_5;
        DrawScope.m6792drawLineNGM6Ib0$default(contentDrawScope, jM4100getSelectorColor0d7_KjU, androidx.compose.ui.geometry.SizeKt.m6066getCenteruvyYCjk(contentDrawScope.mo6806getSizeNHjbRc()), Offset.m5991minusMKHz9U(jM5979constructorimpl, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(((float) Math.sin(analogTimePickerState.getCurrentAngle())) * fMo1434toPx0680j_5)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fCos) << 32))), fMo1434toPx0680j_6, 0, null, 0.0f, null, companion.m6172getSrcOver0nO6VwU(), PsExtractor.VIDEO_STREAM_MASK, null);
        DrawScope.m6787drawCircleVaOC9Bg$default(contentDrawScope, jM4100getSelectorColor0d7_KjU, contentDrawScope.mo1434toPx0680j_4(timePickerTokens.m5186getClockDialSelectorCenterContainerSizeD9Ej5fM()) / 2.0f, androidx.compose.ui.geometry.SizeKt.m6066getCenteruvyYCjk(contentDrawScope.mo6806getSizeNHjbRc()), 0.0f, null, null, 0, 120, null);
        DrawScope.m6787drawCircleVaOC9Bg$default(contentDrawScope, timePickerColors.m4089clockDialContentColorvNxB06k$material3(true), fMo1434toPx0680j_5, jM5979constructorimpl, 0.0f, null, null, companion.m6155getDstOver0nO6VwU(), 56, null);
        return j59.a;
    }

    public static final float getClockDialMinContainerSize() {
        return ClockDialMinContainerSize;
    }

    public static final int getDefaultTimePickerLayoutType(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(435687004, i, -1, "androidx.compose.material3.<get-defaultTimePickerLayoutType> (TimePicker.kt:2051)");
        }
        int iDefaultTimePickerLayoutType = TimePicker_androidKt.defaultTimePickerLayoutType(composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return iDefaultTimePickerLayoutType;
    }

    public static /* synthetic */ void getDefaultTimePickerLayoutType$annotations() {
    }

    public static final int getHourForDisplay(TimePickerState timePickerState) {
        if (timePickerState.is24hour()) {
            return timePickerState.getHour() % 24;
        }
        if (timePickerState.getHour() % 12 == 0) {
            return 12;
        }
        return isPm(timePickerState) ? timePickerState.getHour() - 12 : timePickerState.getHour();
    }

    public static final long getSelectorPos(AnalogTimePickerState analogTimePickerState) {
        float fM3074getCurrentDiameterD9Ej5fM = analogTimePickerState.m3074getCurrentDiameterD9Ej5fM();
        TimePickerTokens timePickerTokens = TimePickerTokens.INSTANCE;
        float fM9042constructorimpl = Dp.m9042constructorimpl(Dp.m9042constructorimpl(timePickerTokens.m5187getClockDialSelectorHandleContainerSizeD9Ej5fM() / 2.0f) * (fM3074getCurrentDiameterD9Ej5fM / timePickerTokens.m5185getClockDialContainerSizeD9Ej5fM()));
        Dp dpM9040boximpl = Dp.m9040boximpl(Dp.m9042constructorimpl(((analogTimePickerState.is24hour() && isPm(analogTimePickerState) && TimePickerSelectionMode.m4151equalsimpl0(analogTimePickerState.mo3075getSelectionyecRtBI(), TimePickerSelectionMode.Companion.m4155getHouryecRtBI())) ? Dp.m9042constructorimpl(analogTimePickerState.m3074getCurrentDiameterD9Ej5fM() * InnerCircleToSizeRatio) : Dp.m9042constructorimpl(analogTimePickerState.m3074getCurrentDiameterD9Ej5fM() * OuterCircleToSizeRatio)) - fM9042constructorimpl));
        Dp dpM9040boximpl2 = Dp.m9040boximpl(Dp.m9042constructorimpl(0.0f));
        dpM9040boximpl.getClass();
        dpM9040boximpl2.getClass();
        if (dpM9040boximpl.compareTo(dpM9040boximpl2) < 0) {
            dpM9040boximpl = dpM9040boximpl2;
        }
        float fM9042constructorimpl2 = Dp.m9042constructorimpl(dpM9040boximpl.m9056unboximpl() + fM9042constructorimpl);
        return DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(Dp.m9042constructorimpl(analogTimePickerState.m3074getCurrentDiameterD9Ej5fM() / 2.0f) + Dp.m9042constructorimpl(((float) Math.cos(analogTimePickerState.getCurrentAngle())) * fM9042constructorimpl2)))) << 32) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(Dp.m9042constructorimpl(analogTimePickerState.m3074getCurrentDiameterD9Ej5fM() / 2.0f) + Dp.m9042constructorimpl(fM9042constructorimpl2 * ((float) Math.sin(analogTimePickerState.getCurrentAngle())))))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public static final boolean isPm(TimePickerState timePickerState) {
        return timePickerState.getHour() >= 12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: moveSelector-d3b8Pxo, reason: not valid java name */
    public static final void m4133moveSelectord3b8Pxo(TimePickerState timePickerState, float f, float f2, float f3, long j) {
        if (TimePickerSelectionMode.m4151equalsimpl0(timePickerState.mo3075getSelectionyecRtBI(), TimePickerSelectionMode.Companion.m4155getHouryecRtBI()) && timePickerState.is24hour()) {
            float fDist = dist(f, f2, IntOffset.m9170getXimpl(j), IntOffset.m9171getYimpl(j));
            if (isPm(timePickerState)) {
                timePickerState.setHour(timePickerState.getHour() - (fDist >= f3 ? 12 : 0));
            } else {
                timePickerState.setHour(timePickerState.getHour() + (fDist < f3 ? 12 : 0));
            }
        }
    }

    /* JADX INFO: renamed from: numberContentDescription-dSwYdS4, reason: not valid java name */
    public static final String m4134numberContentDescriptiondSwYdS4(int i, boolean z, int i2, Composer composer, int i3) {
        int iM4382constructorimpl;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(194237364, i3, -1, "androidx.compose.material3.numberContentDescription (TimePicker.kt:2019)");
        }
        if (TimePickerSelectionMode.m4151equalsimpl0(i, TimePickerSelectionMode.Companion.m4156getMinuteyecRtBI())) {
            Strings.Companion companion = Strings.Companion;
            iM4382constructorimpl = Strings.m4382constructorimpl(R.string.m3c_time_picker_minute_suffix);
        } else if (z) {
            Strings.Companion companion2 = Strings.Companion;
            iM4382constructorimpl = Strings.m4382constructorimpl(R.string.m3c_time_picker_hour_24h_suffix);
        } else {
            Strings.Companion companion3 = Strings.Companion;
            iM4382constructorimpl = Strings.m4382constructorimpl(R.string.m3c_time_picker_hour_suffix);
        }
        String strM4462getStringqBjtwXw = Strings_androidKt.m4462getStringqBjtwXw(iM4382constructorimpl, new Object[]{Integer.valueOf(i2)}, composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return strM4462getStringqBjtwXw;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:35:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    /* JADX INFO: renamed from: onTap-uYHVD98, reason: not valid java name */
    public static final Object m4135onTapuYHVD98(AnalogTimePickerState analogTimePickerState, float f, float f2, float f3, boolean z, long j, AnimationSpec<Float> animationSpec, e02<? super j59> e02Var) {
        TimePickerKt$onTap$1 timePickerKt$onTap$1;
        float f4;
        float fRint;
        AnalogTimePickerState analogTimePickerState2;
        boolean z2;
        AnalogTimePickerState analogTimePickerState3;
        if (e02Var instanceof TimePickerKt$onTap$1) {
            timePickerKt$onTap$1 = (TimePickerKt$onTap$1) e02Var;
            int i = timePickerKt$onTap$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                timePickerKt$onTap$1.label = i - Integer.MIN_VALUE;
            } else {
                timePickerKt$onTap$1 = new TimePickerKt$onTap$1(e02Var);
            }
        } else {
            timePickerKt$onTap$1 = new TimePickerKt$onTap$1(e02Var);
        }
        TimePickerKt$onTap$1 timePickerKt$onTap$2 = timePickerKt$onTap$1;
        Object obj = timePickerKt$onTap$2.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = timePickerKt$onTap$2.label;
        if (i2 != 0) {
            if (i2 == 1) {
                z2 = timePickerKt$onTap$2.Z$0;
                AnalogTimePickerState analogTimePickerState4 = (AnalogTimePickerState) timePickerKt$onTap$2.L$0;
                r57.b(obj);
                analogTimePickerState2 = analogTimePickerState4;
            } else {
                if (i2 != 2) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                z2 = timePickerKt$onTap$2.Z$0;
                analogTimePickerState3 = (AnalogTimePickerState) timePickerKt$onTap$2.L$0;
                r57.b(obj);
            }
            analogTimePickerState2 = analogTimePickerState3;
            if (z2) {
                analogTimePickerState2.mo3077setSelection6_8s6DQ(TimePickerSelectionMode.Companion.m4156getMinuteyecRtBI());
            }
            return j59.a;
        }
        r57.b(obj);
        float fAtan = atan(f2 - IntOffset.m9171getYimpl(j), f - IntOffset.m9170getXimpl(j));
        if (TimePickerSelectionMode.m4151equalsimpl0(analogTimePickerState.mo3075getSelectionyecRtBI(), TimePickerSelectionMode.Companion.m4156getMinuteyecRtBI())) {
            f4 = RadiansPerMinute;
            fRint = ((float) Math.rint((fAtan / RadiansPerMinute) / 5.0f)) * 5.0f;
        } else {
            f4 = RadiansPerHour;
            fRint = (float) Math.rint(fAtan / RadiansPerHour);
        }
        float f5 = fRint * f4;
        m4133moveSelectord3b8Pxo(analogTimePickerState, f, f2, f3, j);
        timePickerKt$onTap$2.L$0 = analogTimePickerState;
        timePickerKt$onTap$2.Z$0 = z;
        timePickerKt$onTap$2.label = 1;
        if (analogTimePickerState.rotateTo(f5, animationSpec, true, timePickerKt$onTap$2) != a32Var) {
            analogTimePickerState2 = analogTimePickerState;
            z2 = z;
        }
        return a32Var;
        if (TimePickerSelectionMode.m4151equalsimpl0(analogTimePickerState2.mo3075getSelectionyecRtBI(), TimePickerSelectionMode.Companion.m4155getHouryecRtBI()) && z2) {
            timePickerKt$onTap$2.L$0 = analogTimePickerState2;
            timePickerKt$onTap$2.Z$0 = z2;
            timePickerKt$onTap$2.label = 2;
            if (yk2.b(100L, timePickerKt$onTap$2) != a32Var) {
                analogTimePickerState3 = analogTimePickerState2;
                analogTimePickerState2 = analogTimePickerState3;
            }
            return a32Var;
        }
        if (z2) {
            analogTimePickerState2.mo3077setSelection6_8s6DQ(TimePickerSelectionMode.Companion.m4156getMinuteyecRtBI());
        }
        return j59.a;
    }

    public static final TimePickerState rememberTimePickerState(final int i, final int i2, final boolean z, Composer composer, int i3, int i4) {
        if ((i4 & 1) != 0) {
            i = 0;
        }
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            z = TimeFormat_androidKt.is24HourFormat(composer, 0);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1237715277, i3, -1, "androidx.compose.material3.rememberTimePickerState (TimePicker.kt:587)");
        }
        Object[] objArr = new Object[0];
        Saver<TimePickerStateImpl, ?> Saver = TimePickerStateImpl.Companion.Saver();
        boolean z2 = true;
        boolean z3 = ((((i3 & 14) ^ 6) > 4 && composer.changed(i)) || (i3 & 6) == 4) | ((((i3 & 112) ^ 48) > 32 && composer.changed(i2)) || (i3 & 48) == 32);
        if ((((i3 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256 || !composer.changed(z)) && (i3 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) {
            z2 = false;
        }
        boolean z4 = z3 | z2;
        Object objRememberedValue = composer.rememberedValue();
        if (z4 || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new ll3() { // from class: iv8
                @Override // defpackage.ll3
                public final Object invoke() {
                    return TimePickerKt.rememberTimePickerState$lambda$7$lambda$6(i, i2, z);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        TimePickerStateImpl timePickerStateImpl = (TimePickerStateImpl) RememberSaveableKt.m5624rememberSaveable(objArr, (Saver) Saver, (ll3) objRememberedValue, composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return timePickerStateImpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TimePickerStateImpl rememberTimePickerState$lambda$7$lambda$6(int i, int i2, boolean z) {
        return new TimePickerStateImpl(i, i2, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: timeInputOnChange-_K77t-0, reason: not valid java name */
    public static final void m4136timeInputOnChange_K77t0(int i, TimePickerState timePickerState, TextFieldValue textFieldValue, TextFieldValue textFieldValue2, int i2, Ref<Boolean> ref, nl3<? super TextFieldValue, j59> nl3Var) {
        ref.setValue(Boolean.FALSE);
        if (aa4.e(textFieldValue.getText(), textFieldValue2.getText())) {
            nl3Var.invoke(textFieldValue);
            return;
        }
        int i3 = 12;
        if (textFieldValue.getText().length() == 0) {
            if (TimePickerSelectionMode.m4151equalsimpl0(i, TimePickerSelectionMode.Companion.m4155getHouryecRtBI())) {
                timePickerState.setHour((!isPm(timePickerState) || timePickerState.is24hour()) ? 0 : 12);
            } else {
                timePickerState.setMinute(0);
            }
            nl3Var.invoke(TextFieldValue.m8737copy3r_uNRQ$default(textFieldValue, "", 0L, (TextRange) null, 6, (Object) null));
            return;
        }
        try {
            int iC = (textFieldValue.getText().length() == 3 && TextRange.m8491getStartimpl(textFieldValue.m8741getSelectiond9O1mEE()) == 1) ? ga1.c(textFieldValue.getText().charAt(0)) : Integer.parseInt(textFieldValue.getText());
            if (iC <= i2) {
                TimePickerSelectionMode.Companion companion = TimePickerSelectionMode.Companion;
                if (TimePickerSelectionMode.m4151equalsimpl0(i, companion.m4155getHouryecRtBI())) {
                    if (iC != 12 || !isPm(timePickerState)) {
                        if (iC != 12 || isPm(timePickerState) || timePickerState.is24hour()) {
                            if (!isPm(timePickerState) || timePickerState.is24hour()) {
                                i3 = 0;
                            }
                            i3 += iC;
                        } else {
                            i3 = 0;
                        }
                    }
                    timePickerState.setHour(i3);
                    if (iC > 1 && !timePickerState.is24hour()) {
                        timePickerState.mo3077setSelection6_8s6DQ(companion.m4156getMinuteyecRtBI());
                    }
                } else {
                    timePickerState.setMinute(iC);
                }
                nl3Var.invoke(textFieldValue.getText().length() <= 2 ? textFieldValue : TextFieldValue.m8737copy3r_uNRQ$default(textFieldValue, String.valueOf(textFieldValue.getText().charAt(0)), 0L, (TextRange) null, 6, (Object) null));
            }
        } catch (NumberFormatException | IllegalArgumentException unused) {
        }
    }

    private static final Modifier visible(Modifier modifier, boolean z) {
        return modifier.then(new VisibleModifier(z, InspectableValueKt.isDebugInspectorInfoEnabled() ? new TimePickerKt$visible$$inlined$debugInspectorInfo$1(z) : InspectableValueKt.getNoInspectorInfo()));
    }

    /* JADX INFO: renamed from: androidx.compose.material3.TimePickerKt$ClockFace$1, reason: invalid class name and case insensitive filesystem */
    public static final class C06061 implements dm3<IntList, Composer, Integer, j59> {
        final /* synthetic */ boolean $autoSwitchToMinute;
        final /* synthetic */ TimePickerColors $colors;
        final /* synthetic */ AnalogTimePickerState $state;

        public C06061(TimePickerColors timePickerColors, AnalogTimePickerState analogTimePickerState, boolean z) {
            this.$colors = timePickerColors;
            this.$state = analogTimePickerState;
            this.$autoSwitchToMinute = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invoke$lambda$1$lambda$0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
            SemanticsPropertiesKt.selectableGroup(semanticsPropertyReceiver);
            return j59.a;
        }

        public final void invoke(final IntList intList, Composer composer, int i) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(747010833, i, -1, "androidx.compose.material3.ClockFace.<anonymous> (TimePicker.kt:1609)");
            }
            Modifier modifierM2099size3ABfNKs = SizeKt.m2099size3ABfNKs(Modifier.Companion, TimePickerTokens.INSTANCE.m5185getClockDialContainerSizeD9Ej5fM());
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new x4();
                composer.updateRememberedValue(objRememberedValue);
            }
            Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(modifierM2099size3ABfNKs, false, (nl3) objRememberedValue, 1, null);
            float f = TimePickerKt.OuterCircleToSizeRatio;
            final TimePickerColors timePickerColors = this.$colors;
            final AnalogTimePickerState analogTimePickerState = this.$state;
            final boolean z = this.$autoSwitchToMinute;
            TimePickerKt.CircularLayout(modifierSemantics$default, f, ComposableLambdaKt.rememberComposableLambda(-99063847, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerKt.ClockFace.1.2
                public final void invoke(Composer composer2, int i2) {
                    if (!composer2.shouldExecute((i2 & 3) != 2, i2 & 1)) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-99063847, i2, -1, "androidx.compose.material3.ClockFace.<anonymous>.<anonymous> (TimePicker.kt:1613)");
                    }
                    CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(timePickerColors.m4089clockDialContentColorvNxB06k$material3(false))), ComposableLambdaKt.rememberComposableLambda(-596940007, true, new C00681(intList, analogTimePickerState, z), composer2, 54), composer2, ProvidedValue.$stable | 48);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return j59.a;
                }

                /* JADX INFO: renamed from: androidx.compose.material3.TimePickerKt$ClockFace$1$2$1, reason: invalid class name and collision with other inner class name */
                public static final class C00681 implements bm3<Composer, Integer, j59> {
                    final /* synthetic */ boolean $autoSwitchToMinute;
                    final /* synthetic */ IntList $screen;
                    final /* synthetic */ AnalogTimePickerState $state;

                    public C00681(IntList intList, AnalogTimePickerState analogTimePickerState, boolean z) {
                        this.$screen = intList;
                        this.$state = analogTimePickerState;
                        this.$autoSwitchToMinute = z;
                    }

                    /* JADX INFO: Access modifiers changed from: private */
                    public static final j59 invoke$lambda$2$lambda$1$lambda$0(int i, SemanticsPropertyReceiver semanticsPropertyReceiver) {
                        SemanticsPropertiesKt.setTraversalIndex(semanticsPropertyReceiver, i + 1.0f);
                        return j59.a;
                    }

                    public final void invoke(Composer composer, int i) {
                        if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
                            composer.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-596940007, i, -1, "androidx.compose.material3.ClockFace.<anonymous>.<anonymous>.<anonymous> (TimePicker.kt:1616)");
                        }
                        composer.startReplaceGroup(1866272144);
                        IntList intList = this.$screen;
                        int i2 = intList._size;
                        AnalogTimePickerState analogTimePickerState = this.$state;
                        boolean z = this.$autoSwitchToMinute;
                        for (final int i3 = 0; i3 < i2; i3++) {
                            int i4 = (!analogTimePickerState.is24hour() || TimePickerSelectionMode.m4151equalsimpl0(analogTimePickerState.mo3075getSelectionyecRtBI(), TimePickerSelectionMode.Companion.m4156getMinuteyecRtBI())) ? intList.get(i3) : intList.get(i3) % 12;
                            Modifier.Companion companion = Modifier.Companion;
                            boolean zChanged = composer.changed(i3);
                            Object objRememberedValue = composer.rememberedValue();
                            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new nl3() { // from class: androidx.compose.material3.y4
                                    @Override // defpackage.nl3
                                    public final Object invoke(Object obj) {
                                        return TimePickerKt.C06061.AnonymousClass2.C00681.invoke$lambda$2$lambda$1$lambda$0(i3, (SemanticsPropertyReceiver) obj);
                                    }
                                };
                                composer.updateRememberedValue(objRememberedValue);
                            }
                            TimePickerKt.ClockText(SemanticsModifierKt.semantics$default(companion, false, (nl3) objRememberedValue, 1, null), analogTimePickerState, i4, z, composer, 0);
                        }
                        composer.endReplaceGroup();
                        if (TimePickerSelectionMode.m4151equalsimpl0(this.$state.mo3075getSelectionyecRtBI(), TimePickerSelectionMode.Companion.m4155getHouryecRtBI()) && this.$state.is24hour()) {
                            composer.startReplaceGroup(2020585964);
                            TimePickerKt.CircularLayout(BackgroundKt.m1288backgroundbw27NRU(SizeKt.m2099size3ABfNKs(LayoutIdKt.layoutId(Modifier.Companion, LayoutId.InnerCircle), TimePickerTokens.INSTANCE.m5185getClockDialContainerSizeD9Ej5fM()), Color.Companion.m6267getTransparent0d7_KjU(), RoundedCornerShapeKt.getCircleShape()), TimePickerKt.InnerCircleToSizeRatio, ComposableLambdaKt.rememberComposableLambda(-1385767514, true, new C00692(this.$state, this.$autoSwitchToMinute), composer, 54), composer, 432, 0);
                            composer.endReplaceGroup();
                        } else {
                            composer.startReplaceGroup(2021505641);
                            composer.endReplaceGroup();
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    /* JADX INFO: renamed from: androidx.compose.material3.TimePickerKt$ClockFace$1$2$1$2, reason: invalid class name and collision with other inner class name */
                    public static final class C00692 implements bm3<Composer, Integer, j59> {
                        final /* synthetic */ boolean $autoSwitchToMinute;
                        final /* synthetic */ AnalogTimePickerState $state;

                        public C00692(AnalogTimePickerState analogTimePickerState, boolean z) {
                            this.$state = analogTimePickerState;
                            this.$autoSwitchToMinute = z;
                        }

                        /* JADX INFO: Access modifiers changed from: private */
                        public static final j59 invoke$lambda$2$lambda$1$lambda$0(int i, SemanticsPropertyReceiver semanticsPropertyReceiver) {
                            SemanticsPropertiesKt.setTraversalIndex(semanticsPropertyReceiver, 12.0f + i);
                            return j59.a;
                        }

                        public final void invoke(Composer composer, int i) {
                            if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
                                composer.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1385767514, i, -1, "androidx.compose.material3.ClockFace.<anonymous>.<anonymous>.<anonymous>.<anonymous> (TimePicker.kt:1639)");
                            }
                            int i2 = TimePickerKt.ExtraHours._size;
                            AnalogTimePickerState analogTimePickerState = this.$state;
                            boolean z = this.$autoSwitchToMinute;
                            for (final int i3 = 0; i3 < i2; i3++) {
                                int i4 = TimePickerKt.ExtraHours.get(i3);
                                Modifier.Companion companion = Modifier.Companion;
                                boolean zChanged = composer.changed(i3);
                                Object objRememberedValue = composer.rememberedValue();
                                if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new nl3() { // from class: androidx.compose.material3.z4
                                        @Override // defpackage.nl3
                                        public final Object invoke(Object obj) {
                                            return TimePickerKt.C06061.AnonymousClass2.C00681.C00692.invoke$lambda$2$lambda$1$lambda$0(i3, (SemanticsPropertyReceiver) obj);
                                        }
                                    };
                                    composer.updateRememberedValue(objRememberedValue);
                                }
                                TimePickerKt.ClockText(SemanticsModifierKt.semantics$default(companion, false, (nl3) objRememberedValue, 1, null), analogTimePickerState, i4, z, composer, 0);
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
                            invoke(composer, num.intValue());
                            return j59.a;
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
                        invoke(composer, num.intValue());
                        return j59.a;
                    }
                }
            }, composer, 54), composer, 432, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // defpackage.dm3
        public /* bridge */ /* synthetic */ j59 invoke(IntList intList, Composer composer, Integer num) {
            invoke(intList, composer, num.intValue());
            return j59.a;
        }
    }
}
