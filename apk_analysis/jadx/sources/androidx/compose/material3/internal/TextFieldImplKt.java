package androidx.compose.material3.internal;

import androidx.compose.animation.ColorVectorConverterKt;
import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.interaction.FocusInteractionKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.ContentColorKt;
import androidx.compose.material3.InteractiveComponentSizeKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.MotionSchemeKt;
import androidx.compose.material3.OutlinedTextFieldKt;
import androidx.compose.material3.TextFieldColors;
import androidx.compose.material3.TextFieldKt;
import androidx.compose.material3.TextFieldLabelPosition;
import androidx.compose.material3.TextFieldLabelScope;
import androidx.compose.material3.Typography;
import androidx.compose.material3.internal.TextFieldImplKt;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.material3.tokens.SmallIconButtonTokens;
import androidx.compose.material3.tokens.TypeScaleTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.draw.DrawResult;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.OutlineKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnit;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.muxer.MuxerUtil;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.aa4;
import defpackage.ar8;
import defpackage.b11;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.dm3;
import defpackage.h67;
import defpackage.im3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.me0;
import defpackage.nl3;
import defpackage.qh8;
import defpackage.qn7;
import defpackage.r01;
import defpackage.rg5;
import defpackage.sc3;
import defpackage.xq8;
import defpackage.zr6;

/* JADX INFO: loaded from: classes2.dex */
public final class TextFieldImplKt {
    public static final String ContainerId = "Container";
    public static final String LabelId = "Label";
    public static final String LeadingId = "Leading";
    public static final String PlaceholderId = "Hint";
    public static final String PrefixId = "Prefix";
    public static final String SuffixId = "Suffix";
    public static final String SupportingId = "Supporting";
    public static final String TextFieldId = "TextField";
    public static final String TrailingId = "Trailing";
    private static final float TextFieldPadding = Dp.m9042constructorimpl(16.0f);
    private static final float AboveLabelHorizontalPadding = Dp.m9042constructorimpl(4.0f);
    private static final float AboveLabelBottomPadding = Dp.m9042constructorimpl(4.0f);
    private static final float SupportingTopPadding = Dp.m9042constructorimpl(4.0f);
    private static final float PrefixSuffixTextPadding = Dp.m9042constructorimpl(2.0f);
    private static final float MinTextLineHeight = Dp.m9042constructorimpl(24.0f);
    private static final float MinFocusedLabelLineHeight = Dp.m9042constructorimpl(16.0f);
    private static final float MinSupportingTextLineHeight = Dp.m9042constructorimpl(16.0f);

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[TextFieldType.values().length];
            try {
                iArr[TextFieldType.Filled.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TextFieldType.Outlined.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[InputPhase.values().length];
            try {
                iArr2[InputPhase.Focused.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[InputPhase.UnfocusedEmpty.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[InputPhase.UnfocusedNotEmpty.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:222:0x0382  */
    /* JADX WARN: Code duplicated, block: B:240:0x03c2  */
    public static final void CommonDecorationBox(final TextFieldType textFieldType, final CharSequence charSequence, final bm3<? super Composer, ? super Integer, j59> bm3Var, final TextFieldLabelPosition textFieldLabelPosition, final dm3<? super TextFieldLabelScope, ? super Composer, ? super Integer, j59> dm3Var, final bm3<? super Composer, ? super Integer, j59> bm3Var2, final bm3<? super Composer, ? super Integer, j59> bm3Var3, final bm3<? super Composer, ? super Integer, j59> bm3Var4, final bm3<? super Composer, ? super Integer, j59> bm3Var5, final bm3<? super Composer, ? super Integer, j59> bm3Var6, final bm3<? super Composer, ? super Integer, j59> bm3Var7, final boolean z, final boolean z2, final boolean z3, final InteractionSource interactionSource, final PaddingValues paddingValues, final TextFieldColors textFieldColors, final bm3<? super Composer, ? super Integer, j59> bm3Var8, Composer composer, final int i, final int i2) {
        int i3;
        int i4;
        int i5;
        TextFieldColors textFieldColors2;
        Composer composer2;
        InputPhase inputPhase;
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        Composer composer3;
        int i6;
        TextStyle textStyle;
        final TextStyle textStyle2;
        final State state;
        ComposableLambda composableLambda;
        State state2;
        State state3;
        ComposableLambda composableLambda2;
        ComposableLambda composableLambda3;
        ComposableLambda composableLambdaRememberComposableLambda;
        ComposableLambda composableLambda4;
        int i7;
        ComposableLambda composableLambdaRememberComposableLambda2;
        Composer composerStartRestartGroup = composer.startRestartGroup(546805032);
        if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(textFieldType.ordinal()) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i4 = i3 | (composerStartRestartGroup.changedInstance(charSequence) ? 32 : 16);
        } else {
            i4 = i3;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i4 |= composerStartRestartGroup.changedInstance(bm3Var) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i4 |= composerStartRestartGroup.changed(textFieldLabelPosition) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i4 |= composerStartRestartGroup.changedInstance(dm3Var) ? 16384 : 8192;
        }
        if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            i4 |= composerStartRestartGroup.changedInstance(bm3Var2) ? 131072 : 65536;
        }
        if ((i & 1572864) == 0) {
            i4 |= composerStartRestartGroup.changedInstance(bm3Var3) ? 1048576 : 524288;
        }
        if ((i & 12582912) == 0) {
            i4 |= composerStartRestartGroup.changedInstance(bm3Var4) ? 8388608 : 4194304;
        }
        if ((i & 100663296) == 0) {
            i4 |= composerStartRestartGroup.changedInstance(bm3Var5) ? 67108864 : GroupFlagsKt.HasAuxSlotFlag;
        }
        if ((i & 805306368) == 0) {
            i4 |= composerStartRestartGroup.changedInstance(bm3Var6) ? 536870912 : 268435456;
        }
        int i8 = i4;
        if ((i2 & 6) == 0) {
            i5 = i2 | (composerStartRestartGroup.changedInstance(bm3Var7) ? 4 : 2);
        } else {
            i5 = i2;
        }
        if ((i2 & 48) == 0) {
            i5 |= composerStartRestartGroup.changed(z) ? 32 : 16;
        }
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i5 |= composerStartRestartGroup.changed(z2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i5 |= composerStartRestartGroup.changed(z3) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i5 |= composerStartRestartGroup.changed(interactionSource) ? 16384 : 8192;
        }
        if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            i5 |= composerStartRestartGroup.changed(paddingValues) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            textFieldColors2 = textFieldColors;
            i5 |= composerStartRestartGroup.changed(textFieldColors2) ? 1048576 : 524288;
        } else {
            textFieldColors2 = textFieldColors;
        }
        if ((i2 & 12582912) == 0) {
            i5 |= composerStartRestartGroup.changedInstance(bm3Var8) ? 8388608 : 4194304;
        }
        int i9 = i5;
        if (composerStartRestartGroup.shouldExecute(((i8 & 306783379) == 306783378 && (4793491 & i9) == 4793490) ? false : true, i8 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(546805032, i8, i9, "androidx.compose.material3.internal.CommonDecorationBox (TextFieldImpl.kt:98)");
            }
            boolean zBooleanValue = FocusInteractionKt.collectIsFocusedAsState(interactionSource, composerStartRestartGroup, (i9 >> 12) & 14).getValue().booleanValue();
            if (zBooleanValue) {
                inputPhase = InputPhase.Focused;
            } else {
                inputPhase = charSequence.length() == 0 ? InputPhase.UnfocusedEmpty : InputPhase.UnfocusedNotEmpty;
            }
            long jM4046labelColorXeAY9LY$material3 = textFieldColors2.m4046labelColorXeAY9LY$material3(z2, z3, zBooleanValue);
            Typography typography = MaterialTheme.INSTANCE.getTypography(composerStartRestartGroup, 6);
            final TextStyle bodyLarge = typography.getBodyLarge();
            final TextStyle bodySmall = typography.getBodySmall();
            long jM8521getColor0d7_KjU = bodyLarge.m8521getColor0d7_KjU();
            Color.Companion companion = Color.Companion;
            boolean z4 = (Color.m6233equalsimpl0(jM8521getColor0d7_KjU, companion.m6268getUnspecified0d7_KjU()) && !Color.m6233equalsimpl0(bodySmall.m8521getColor0d7_KjU(), companion.m6268getUnspecified0d7_KjU())) || (!Color.m6233equalsimpl0(bodyLarge.m8521getColor0d7_KjU(), companion.m6268getUnspecified0d7_KjU()) && Color.m6233equalsimpl0(bodySmall.m8521getColor0d7_KjU(), companion.m6268getUnspecified0d7_KjU()));
            long jM8521getColor0d7_KjU2 = bodySmall.m8521getColor0d7_KjU();
            if (z4 && jM8521getColor0d7_KjU2 == 16) {
                jM8521getColor0d7_KjU2 = jM4046labelColorXeAY9LY$material3;
            }
            long jM8521getColor0d7_KjU3 = bodyLarge.m8521getColor0d7_KjU();
            long j = (z4 && jM8521getColor0d7_KjU3 == 16) ? jM4046labelColorXeAY9LY$material3 : jM8521getColor0d7_KjU3;
            boolean z5 = dm3Var != null && getShowExpandedLabel(textFieldLabelPosition);
            final boolean z6 = z4;
            long j2 = jM8521getColor0d7_KjU2;
            Transition transitionUpdateTransition = TransitionKt.updateTransition(inputPhase, "TextFieldInputState", composerStartRestartGroup, 48, 0);
            TextFieldImplKt$TextFieldTransitionScope$labelProgress$1 textFieldImplKt$TextFieldTransitionScope$labelProgress$1 = new TextFieldImplKt$TextFieldTransitionScope$labelProgress$1(MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6));
            sc3 sc3Var = sc3.a;
            TwoWayConverter<Float, AnimationVector1D> vectorConverter = VectorConvertersKt.getVectorConverter(sc3Var);
            InputPhase inputPhase2 = (InputPhase) transitionUpdateTransition.getCurrentState();
            composerStartRestartGroup.startReplaceGroup(-1436405362);
            boolean z7 = z5;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1436405362, 0, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:391)");
            }
            int[] iArr = WhenMappings.$EnumSwitchMapping$1;
            int i10 = iArr[inputPhase2.ordinal()];
            float f6 = 1.0f;
            if (i10 == 1) {
                f = 1.0f;
            } else {
                if (i10 != 2) {
                    if (i10 != 3) {
                        me0.e();
                        return;
                    }
                } else if (z7) {
                    f = 0.0f;
                }
                f = 1.0f;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composerStartRestartGroup.endReplaceGroup();
            Float fValueOf = Float.valueOf(f);
            InputPhase inputPhase3 = (InputPhase) transitionUpdateTransition.getTargetState();
            composerStartRestartGroup.startReplaceGroup(-1436405362);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1436405362, 0, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:391)");
            }
            int i11 = iArr[inputPhase3.ordinal()];
            if (i11 == 1) {
                f2 = 1.0f;
            } else {
                if (i11 != 2) {
                    if (i11 != 3) {
                        me0.e();
                        return;
                    }
                } else if (z7) {
                    f2 = 0.0f;
                }
                f2 = 1.0f;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composerStartRestartGroup.endReplaceGroup();
            final State stateCreateTransitionAnimation = TransitionKt.createTransitionAnimation(transitionUpdateTransition, fValueOf, Float.valueOf(f2), textFieldImplKt$TextFieldTransitionScope$labelProgress$1.invoke(transitionUpdateTransition.getSegment(), composerStartRestartGroup, 0), vectorConverter, "LabelProgress", composerStartRestartGroup, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE);
            MotionSchemeKeyTokens motionSchemeKeyTokens = MotionSchemeKeyTokens.FastEffects;
            FiniteAnimationSpec finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens, composerStartRestartGroup, 6);
            TextFieldImplKt$TextFieldTransitionScope$placeholderOpacity$1 textFieldImplKt$TextFieldTransitionScope$placeholderOpacity$1 = new TextFieldImplKt$TextFieldTransitionScope$placeholderOpacity$1(finiteAnimationSpecValue, MotionSchemeKt.value(MotionSchemeKeyTokens.SlowEffects, composerStartRestartGroup, 6));
            TwoWayConverter<Float, AnimationVector1D> vectorConverter2 = VectorConvertersKt.getVectorConverter(sc3Var);
            InputPhase inputPhase4 = (InputPhase) transitionUpdateTransition.getCurrentState();
            composerStartRestartGroup.startReplaceGroup(-1093194547);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1093194547, 0, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:416)");
            }
            int i12 = iArr[inputPhase4.ordinal()];
            if (i12 == 1) {
                f3 = 1.0f;
            } else {
                if (i12 != 2) {
                    if (i12 != 3) {
                        me0.e();
                        return;
                    }
                } else if (!z7) {
                    f3 = 1.0f;
                }
                f3 = 0.0f;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composerStartRestartGroup.endReplaceGroup();
            Float fValueOf2 = Float.valueOf(f3);
            InputPhase inputPhase5 = (InputPhase) transitionUpdateTransition.getTargetState();
            composerStartRestartGroup.startReplaceGroup(-1093194547);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1093194547, 0, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:416)");
            }
            int i13 = iArr[inputPhase5.ordinal()];
            if (i13 == 1) {
                f4 = 1.0f;
            } else {
                if (i13 != 2) {
                    if (i13 != 3) {
                        me0.e();
                        return;
                    }
                } else if (!z7) {
                    f4 = 1.0f;
                }
                f4 = 0.0f;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composerStartRestartGroup.endReplaceGroup();
            State stateCreateTransitionAnimation2 = TransitionKt.createTransitionAnimation(transitionUpdateTransition, fValueOf2, Float.valueOf(f4), textFieldImplKt$TextFieldTransitionScope$placeholderOpacity$1.invoke(transitionUpdateTransition.getSegment(), composerStartRestartGroup, 0), vectorConverter2, "PlaceholderOpacity", composerStartRestartGroup, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE);
            TextFieldImplKt$TextFieldTransitionScope$prefixSuffixOpacity$1 textFieldImplKt$TextFieldTransitionScope$prefixSuffixOpacity$1 = new TextFieldImplKt$TextFieldTransitionScope$prefixSuffixOpacity$1(finiteAnimationSpecValue);
            TwoWayConverter<Float, AnimationVector1D> vectorConverter3 = VectorConvertersKt.getVectorConverter(sc3Var);
            InputPhase inputPhase6 = (InputPhase) transitionUpdateTransition.getCurrentState();
            composerStartRestartGroup.startReplaceGroup(-1258455321);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1258455321, 0, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:428)");
            }
            int i14 = iArr[inputPhase6.ordinal()];
            if (i14 == 1) {
                f5 = 1.0f;
            } else {
                if (i14 != 2) {
                    if (i14 != 3) {
                        me0.e();
                        return;
                    }
                } else if (z7) {
                    f5 = 0.0f;
                }
                f5 = 1.0f;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composerStartRestartGroup.endReplaceGroup();
            Float fValueOf3 = Float.valueOf(f5);
            InputPhase inputPhase7 = (InputPhase) transitionUpdateTransition.getTargetState();
            composerStartRestartGroup.startReplaceGroup(-1258455321);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1258455321, 0, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:428)");
            }
            int i15 = iArr[inputPhase7.ordinal()];
            if (i15 != 1) {
                if (i15 != 2) {
                    if (i15 != 3) {
                        me0.e();
                        return;
                    }
                } else if (z7) {
                    f6 = 0.0f;
                }
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composerStartRestartGroup.endReplaceGroup();
            State stateCreateTransitionAnimation3 = TransitionKt.createTransitionAnimation(transitionUpdateTransition, fValueOf3, Float.valueOf(f6), textFieldImplKt$TextFieldTransitionScope$prefixSuffixOpacity$1.invoke(transitionUpdateTransition.getSegment(), composerStartRestartGroup, 0), vectorConverter3, "PrefixSuffixOpacity", composerStartRestartGroup, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE);
            FiniteAnimationSpec finiteAnimationSpecValue2 = MotionSchemeKt.value(motionSchemeKeyTokens, composerStartRestartGroup, 6);
            TextFieldImplKt$TextFieldTransitionScope$labelTextStyleColor$1 textFieldImplKt$TextFieldTransitionScope$labelTextStyleColor$1 = new TextFieldImplKt$TextFieldTransitionScope$labelTextStyleColor$1(finiteAnimationSpecValue2);
            InputPhase inputPhase8 = (InputPhase) transitionUpdateTransition.getTargetState();
            composerStartRestartGroup.startReplaceGroup(-12973394);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-12973394, 0, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:441)");
            }
            long j3 = iArr[inputPhase8.ordinal()] == 1 ? j2 : j;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composerStartRestartGroup.endReplaceGroup();
            ColorSpace colorSpaceM6236getColorSpaceimpl = Color.m6236getColorSpaceimpl(j3);
            boolean zChanged = composerStartRestartGroup.changed(colorSpaceM6236getColorSpaceimpl);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = (TwoWayConverter) ColorVectorConverterKt.getVectorConverter(companion).invoke(colorSpaceM6236getColorSpaceimpl);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            TwoWayConverter twoWayConverter = (TwoWayConverter) objRememberedValue;
            InputPhase inputPhase9 = (InputPhase) transitionUpdateTransition.getCurrentState();
            composerStartRestartGroup.startReplaceGroup(-12973394);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-12973394, 0, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:441)");
            }
            long j4 = iArr[inputPhase9.ordinal()] == 1 ? j2 : j;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composerStartRestartGroup.endReplaceGroup();
            Color colorM6222boximpl = Color.m6222boximpl(j4);
            InputPhase inputPhase10 = (InputPhase) transitionUpdateTransition.getTargetState();
            composerStartRestartGroup.startReplaceGroup(-12973394);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-12973394, 0, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:441)");
            }
            if (iArr[inputPhase10.ordinal()] == 1) {
                j = j2;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composerStartRestartGroup.endReplaceGroup();
            final State stateCreateTransitionAnimation4 = TransitionKt.createTransitionAnimation(transitionUpdateTransition, colorM6222boximpl, Color.m6222boximpl(j), textFieldImplKt$TextFieldTransitionScope$labelTextStyleColor$1.invoke(transitionUpdateTransition.getSegment(), composerStartRestartGroup, 0), twoWayConverter, "LabelTextStyleColor", composerStartRestartGroup, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE);
            TextFieldImplKt$TextFieldTransitionScope$labelContentColor$1 textFieldImplKt$TextFieldTransitionScope$labelContentColor$1 = new TextFieldImplKt$TextFieldTransitionScope$labelContentColor$1(finiteAnimationSpecValue2);
            composerStartRestartGroup.startReplaceGroup(-464752477);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-464752477, 0, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:452)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composerStartRestartGroup.endReplaceGroup();
            ColorSpace colorSpaceM6236getColorSpaceimpl2 = Color.m6236getColorSpaceimpl(jM4046labelColorXeAY9LY$material3);
            boolean zChanged2 = composerStartRestartGroup.changed(colorSpaceM6236getColorSpaceimpl2);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (zChanged2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                objRememberedValue2 = (TwoWayConverter) ColorVectorConverterKt.getVectorConverter(companion).invoke(colorSpaceM6236getColorSpaceimpl2);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            TwoWayConverter twoWayConverter2 = (TwoWayConverter) objRememberedValue2;
            composerStartRestartGroup.startReplaceGroup(-464752477);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-464752477, 0, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:452)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composerStartRestartGroup.endReplaceGroup();
            Color colorM6222boximpl2 = Color.m6222boximpl(jM4046labelColorXeAY9LY$material3);
            composerStartRestartGroup.startReplaceGroup(-464752477);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-464752477, 0, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:452)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composerStartRestartGroup.endReplaceGroup();
            final State stateCreateTransitionAnimation5 = TransitionKt.createTransitionAnimation(transitionUpdateTransition, colorM6222boximpl2, Color.m6222boximpl(jM4046labelColorXeAY9LY$material3), textFieldImplKt$TextFieldTransitionScope$labelContentColor$1.invoke(transitionUpdateTransition.getSegment(), composerStartRestartGroup, 0), twoWayConverter2, "LabelContentColor", composerStartRestartGroup, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE);
            Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            Composer.Companion companion2 = Composer.Companion;
            if (objRememberedValue3 == companion2.getEmpty()) {
                objRememberedValue3 = new TextFieldLabelScope() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1
                    @Override // androidx.compose.material3.TextFieldLabelScope
                    public float getLabelMinimizedProgress() {
                        return stateCreateTransitionAnimation.getValue().floatValue();
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            final TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1 textFieldImplKt$CommonDecorationBox$3$labelScope$1$1 = (TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1) objRememberedValue3;
            ComposableLambda composableLambdaRememberComposableLambda3 = null;
            if (dm3Var == null) {
                composerStartRestartGroup.startReplaceGroup(-1891724857);
                composerStartRestartGroup.endReplaceGroup();
                state = stateCreateTransitionAnimation;
                composer3 = composerStartRestartGroup;
                textStyle2 = bodySmall;
                textStyle = bodyLarge;
                i6 = 54;
            } else {
                composerStartRestartGroup.startReplaceGroup(-1891724856);
                composer3 = composerStartRestartGroup;
                i6 = 54;
                bm3<Composer, Integer, j59> bm3Var9 = new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1
                    public final void invoke(Composer composer4, int i16) {
                        if (!composer4.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                            composer4.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1076580032, i16, -1, "androidx.compose.material3.internal.CommonDecorationBox.<anonymous>.<anonymous>.<anonymous> (TextFieldImpl.kt:139)");
                        }
                        TextStyle textStyleLerp = TextStyleKt.lerp(bodyLarge, bodySmall, stateCreateTransitionAnimation.getValue().floatValue());
                        boolean z8 = z6;
                        State<Color> state4 = stateCreateTransitionAnimation4;
                        if (z8) {
                            textStyleLerp = TextStyle.m8504copyp1EtxEg$default(textStyleLerp, state4.getValue().m6242unboximpl(), 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, 0, 0, 0L, null, null, null, 0, 0, null, 16777214, null);
                        }
                        TextStyle textStyle3 = textStyleLerp;
                        long jM6242unboximpl = stateCreateTransitionAnimation5.getValue().m6242unboximpl();
                        final dm3<TextFieldLabelScope, Composer, Integer, j59> dm3Var2 = dm3Var;
                        final TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1 textFieldImplKt$CommonDecorationBox$3$labelScope$1$2 = textFieldImplKt$CommonDecorationBox$3$labelScope$1$1;
                        TextFieldImplKt.m4463Decoration3JVO9M(jM6242unboximpl, textStyle3, ComposableLambdaKt.rememberComposableLambda(1157484991, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1.1
                            public final void invoke(Composer composer5, int i17) {
                                if (!composer5.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                    composer5.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1157484991, i17, -1, "androidx.compose.material3.internal.CommonDecorationBox.<anonymous>.<anonymous>.<anonymous>.<anonymous> (TextFieldImpl.kt:147)");
                                }
                                dm3Var2.invoke(textFieldImplKt$CommonDecorationBox$3$labelScope$1$2, composer5, 6);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                invoke(composer5, num.intValue());
                                return j59.a;
                            }
                        }, composer4, 54), composer4, RendererCapabilities.DECODER_SUPPORT_MASK);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                        invoke(composer4, num.intValue());
                        return j59.a;
                    }
                };
                textStyle = bodyLarge;
                textStyle2 = bodySmall;
                state = stateCreateTransitionAnimation;
                composableLambdaRememberComposableLambda3 = ComposableLambdaKt.rememberComposableLambda(-1076580032, true, bm3Var9, composer3, 54);
                composer3.endReplaceGroup();
            }
            ComposableLambda composableLambda5 = composableLambdaRememberComposableLambda3;
            long jM4048placeholderColorXeAY9LY$material3 = textFieldColors.m4048placeholderColorXeAY9LY$material3(z2, z3, r45);
            Object objRememberedValue4 = composer3.rememberedValue();
            if (objRememberedValue4 == companion2.getEmpty()) {
                objRememberedValue4 = SnapshotStateKt.derivedStateOf(SnapshotStateKt.structuralEqualityPolicy(), new b11(stateCreateTransitionAnimation2, 5));
                composer3.updateRememberedValue(objRememberedValue4);
            }
            State state4 = (State) objRememberedValue4;
            if (bm3Var2 != null && charSequence.length() == 0 && CommonDecorationBox$lambda$18$lambda$8(state4)) {
                composer3.startReplaceGroup(-1890614312);
                ComposableLambda composableLambdaRememberComposableLambda4 = ComposableLambdaKt.rememberComposableLambda(1405547205, true, new TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1(stateCreateTransitionAnimation2, jM4048placeholderColorXeAY9LY$material3, textStyle, bm3Var2), composer3, i6);
                composer3.endReplaceGroup();
                composableLambda = composableLambdaRememberComposableLambda4;
            } else {
                composer3.startReplaceGroup(-1890217110);
                composer3.endReplaceGroup();
                composableLambda = null;
            }
            long jM4049prefixColorXeAY9LY$material3 = textFieldColors.m4049prefixColorXeAY9LY$material3(z2, z3, r45);
            Object objRememberedValue5 = composer3.rememberedValue();
            if (objRememberedValue5 == companion2.getEmpty()) {
                state2 = stateCreateTransitionAnimation3;
                objRememberedValue5 = SnapshotStateKt.derivedStateOf(SnapshotStateKt.structuralEqualityPolicy(), new h67(state2, 2));
                composer3.updateRememberedValue(objRememberedValue5);
            } else {
                state2 = stateCreateTransitionAnimation3;
            }
            State state5 = (State) objRememberedValue5;
            if (bm3Var5 == null || !CommonDecorationBox$lambda$18$lambda$11(state5)) {
                state3 = state2;
                composer3.startReplaceGroup(-1889500886);
                composer3.endReplaceGroup();
                composableLambda2 = null;
            } else {
                composer3.startReplaceGroup(-1889877907);
                state3 = state2;
                ComposableLambda composableLambdaRememberComposableLambda5 = ComposableLambdaKt.rememberComposableLambda(606594655, true, new TextFieldImplKt$CommonDecorationBox$3$decoratedPrefix$1(state3, jM4049prefixColorXeAY9LY$material3, textStyle, bm3Var5), composer3, 54);
                composer3.endReplaceGroup();
                composableLambda2 = composableLambdaRememberComposableLambda5;
            }
            long jM4050suffixColorXeAY9LY$material3 = textFieldColors.m4050suffixColorXeAY9LY$material3(z2, z3, r45);
            if (bm3Var6 == null || !CommonDecorationBox$lambda$18$lambda$11(state5)) {
                composer3.startReplaceGroup(-1888924534);
                composer3.endReplaceGroup();
                composableLambda3 = null;
            } else {
                composer3.startReplaceGroup(-1889301555);
                ComposableLambda composableLambdaRememberComposableLambda6 = ComposableLambdaKt.rememberComposableLambda(-45078754, true, new TextFieldImplKt$CommonDecorationBox$3$decoratedSuffix$1(state3, jM4050suffixColorXeAY9LY$material3, textStyle, bm3Var6), composer3, 54);
                composer3.endReplaceGroup();
                composableLambda3 = composableLambdaRememberComposableLambda6;
            }
            final long jM4047leadingIconColorXeAY9LY$material3 = textFieldColors.m4047leadingIconColorXeAY9LY$material3(z2, z3, r45);
            if (bm3Var3 == null) {
                composer3.startReplaceGroup(-1888749663);
                composer3.endReplaceGroup();
                composableLambdaRememberComposableLambda = null;
            } else {
                composer3.startReplaceGroup(-1888749662);
                composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1736293487, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$decoratedLeading$1$1
                    public final void invoke(Composer composer4, int i16) {
                        if (!composer4.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                            composer4.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1736293487, i16, -1, "androidx.compose.material3.internal.CommonDecorationBox.<anonymous>.<anonymous>.<anonymous> (TextFieldImpl.kt:205)");
                        }
                        TextFieldImplKt.m4464DecorationIv8Zu3U(jM4047leadingIconColorXeAY9LY$material3, bm3Var3, composer4, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                        invoke(composer4, num.intValue());
                        return j59.a;
                    }
                }, composer3, 54);
                composer3.endReplaceGroup();
            }
            final long jM4053trailingIconColorXeAY9LY$material3 = textFieldColors.m4053trailingIconColorXeAY9LY$material3(z2, z3, r45);
            if (bm3Var4 == null) {
                composer3.startReplaceGroup(-1888469888);
                composer3.endReplaceGroup();
                composableLambda4 = null;
            } else {
                composer3.startReplaceGroup(-1888469887);
                ComposableLambda composableLambdaRememberComposableLambda7 = ComposableLambdaKt.rememberComposableLambda(1334518521, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$decoratedTrailing$1$1
                    public final void invoke(Composer composer4, int i16) {
                        if (!composer4.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                            composer4.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1334518521, i16, -1, "androidx.compose.material3.internal.CommonDecorationBox.<anonymous>.<anonymous>.<anonymous> (TextFieldImpl.kt:211)");
                        }
                        TextFieldImplKt.m4464DecorationIv8Zu3U(jM4053trailingIconColorXeAY9LY$material3, bm3Var4, composer4, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                        invoke(composer4, num.intValue());
                        return j59.a;
                    }
                }, composer3, 54);
                composer3.endReplaceGroup();
                composableLambda4 = composableLambdaRememberComposableLambda7;
            }
            final long jM4051supportingTextColorXeAY9LY$material3 = textFieldColors.m4051supportingTextColorXeAY9LY$material3(z2, z3, zBooleanValue);
            if (bm3Var7 == null) {
                composer3.startReplaceGroup(-1888176380);
                composer3.endReplaceGroup();
                composableLambdaRememberComposableLambda2 = null;
                i7 = 1;
            } else {
                composer3.startReplaceGroup(-1888176379);
                bm3<Composer, Integer, j59> bm3Var10 = new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$decoratedSupporting$1$1
                    public final void invoke(Composer composer4, int i16) {
                        if (!composer4.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                            composer4.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(837168720, i16, -1, "androidx.compose.material3.internal.CommonDecorationBox.<anonymous>.<anonymous>.<anonymous> (TextFieldImpl.kt:218)");
                        }
                        TextFieldImplKt.m4463Decoration3JVO9M(jM4051supportingTextColorXeAY9LY$material3, textStyle2, bm3Var7, composer4, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                        invoke(composer4, num.intValue());
                        return j59.a;
                    }
                };
                i7 = 1;
                composableLambdaRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(837168720, true, bm3Var10, composer3, 54);
                composer3.endReplaceGroup();
            }
            int i16 = WhenMappings.$EnumSwitchMapping$0[textFieldType.ordinal()];
            if (i16 == i7) {
                Composer composer4 = composer3;
                composer4.startReplaceGroup(-1887830698);
                TextFieldKt.TextFieldLayout(Modifier.Companion, bm3Var, composableLambda5, composableLambda, composableLambdaRememberComposableLambda, composableLambda4, composableLambda2, composableLambda3, z, textFieldLabelPosition, new TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0(new zr6(state) { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$1
                    @Override // defpackage.zr6, defpackage.af4
                    public Object get() {
                        return ((State) this.receiver).getValue();
                    }
                }), ComposableLambdaKt.rememberComposableLambda(-1729858187, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$containerWithId$1
                    public final void invoke(Composer composer5, int i17) {
                        if (!composer5.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                            composer5.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1729858187, i17, -1, "androidx.compose.material3.internal.CommonDecorationBox.<anonymous>.<anonymous> (TextFieldImpl.kt:229)");
                        }
                        Modifier modifierLayoutId = LayoutIdKt.layoutId(Modifier.Companion, TextFieldImplKt.ContainerId);
                        bm3<Composer, Integer, j59> bm3Var11 = bm3Var8;
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), true);
                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer5, 0);
                        CompositionLocalMap currentCompositionLocalMap = composer5.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer5, modifierLayoutId);
                        ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
                        ll3<ComposeUiNode> constructor = companion3.getConstructor();
                        if (composer5.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composer5.startReusableNode();
                        if (composer5.getInserting()) {
                            composer5.createNode(constructor);
                        } else {
                            composer5.useNode();
                        }
                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer5);
                        bm3 bm3VarB = cc.b(companion3, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion3.getSetModifier());
                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                        if (cc.f(bm3Var11, composer5, 0)) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                        invoke(composer5, num.intValue());
                        return j59.a;
                    }
                }, composer4, 54), composableLambdaRememberComposableLambda2, paddingValues, composer4, ((i8 >> 3) & 112) | 6 | ((i9 << 21) & 234881024) | ((i8 << 18) & 1879048192), ((i9 >> 6) & 7168) | 48);
                composer2 = composer4;
                composer2.endReplaceGroup();
                j59 j59Var = j59.a;
            } else {
                if (i16 != 2) {
                    Composer composer5 = composer3;
                    composer5.startReplaceGroup(493292232);
                    composer5.endReplaceGroup();
                    me0.e();
                    return;
                }
                composer3.startReplaceGroup(-1886778186);
                Object objRememberedValue6 = composer3.rememberedValue();
                if (objRememberedValue6 == companion2.getEmpty()) {
                    objRememberedValue6 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Size.m6044boximpl(Size.Companion.m6065getZeroNHjbRc()), null, 2, null);
                    composer3.updateRememberedValue(objRememberedValue6);
                }
                final MutableState mutableState = (MutableState) objRememberedValue6;
                ComposableLambda composableLambda6 = composableLambdaRememberComposableLambda2;
                ComposableLambda composableLambda7 = composableLambda;
                ComposableLambda composableLambda8 = composableLambda3;
                ComposableLambda composableLambdaRememberComposableLambda8 = ComposableLambdaKt.rememberComposableLambda(528115858, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1
                    public final void invoke(Composer composer6, int i17) {
                        if (!composer6.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                            composer6.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(528115858, i17, -1, "androidx.compose.material3.internal.CommonDecorationBox.<anonymous>.<anonymous> (TextFieldImpl.kt:255)");
                        }
                        Modifier modifierOutlineCutout = OutlinedTextFieldKt.outlineCutout(LayoutIdKt.layoutId(Modifier.Companion, TextFieldImplKt.ContainerId), new rg5(mutableState) { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1.1
                            @Override // defpackage.rg5, defpackage.af4
                            public Object get() {
                                return ((MutableState) this.receiver).getValue();
                            }

                            @Override // defpackage.rg5
                            public void set(Object obj) {
                                ((MutableState) this.receiver).setValue(obj);
                            }
                        }, TextFieldImplKt.getMinimizedAlignment(textFieldLabelPosition), paddingValues);
                        bm3<Composer, Integer, j59> bm3Var11 = bm3Var8;
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), true);
                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer6, 0);
                        CompositionLocalMap currentCompositionLocalMap = composer6.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer6, modifierOutlineCutout);
                        ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
                        ll3<ComposeUiNode> constructor = companion3.getConstructor();
                        if (composer6.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composer6.startReusableNode();
                        if (composer6.getInserting()) {
                            composer6.createNode(constructor);
                        } else {
                            composer6.useNode();
                        }
                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer6);
                        bm3 bm3VarB = cc.b(companion3, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion3.getSetModifier());
                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                        if (cc.f(bm3Var11, composer6, 0)) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer6, Integer num) {
                        invoke(composer6, num.intValue());
                        return j59.a;
                    }
                }, composer3, 54);
                Modifier.Companion companion3 = Modifier.Companion;
                TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0 textFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0 = new TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0(new zr6(state) { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$2
                    @Override // defpackage.zr6, defpackage.af4
                    public Object get() {
                        return ((State) this.receiver).getValue();
                    }
                });
                boolean zChanged3 = ((i8 & 7168) == 2048) | composer3.changed(state);
                Object objRememberedValue7 = composer3.rememberedValue();
                if (zChanged3 || objRememberedValue7 == companion2.getEmpty()) {
                    objRememberedValue7 = new xq8(textFieldLabelPosition, state, mutableState, 0);
                    composer3.updateRememberedValue(objRememberedValue7);
                }
                Composer composer6 = composer3;
                OutlinedTextFieldKt.OutlinedTextFieldLayout(companion3, bm3Var, composableLambda7, composableLambda5, composableLambdaRememberComposableLambda, composableLambda4, composableLambda2, composableLambda8, z, textFieldLabelPosition, textFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0, (nl3) objRememberedValue7, composableLambdaRememberComposableLambda8, composableLambda6, paddingValues, composer6, ((i8 >> 3) & 112) | 6 | ((i9 << 21) & 234881024) | ((i8 << 18) & 1879048192), (57344 & (i9 >> 3)) | RendererCapabilities.DECODER_SUPPORT_MASK);
                composer2 = composer6;
                composer2.endReplaceGroup();
                j59 j59Var2 = j59.a;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yq8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TextFieldImplKt.CommonDecorationBox$lambda$19(textFieldType, charSequence, bm3Var, textFieldLabelPosition, dm3Var, bm3Var2, bm3Var3, bm3Var4, bm3Var5, bm3Var6, bm3Var7, z, z2, z3, interactionSource, paddingValues, textFieldColors, bm3Var8, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean CommonDecorationBox$lambda$18$lambda$10$lambda$9(State state) {
        return ((Number) state.getValue()).floatValue() > 0.0f;
    }

    private static final boolean CommonDecorationBox$lambda$18$lambda$11(State<Boolean> state) {
        return state.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CommonDecorationBox$lambda$18$lambda$17$lambda$16(TextFieldLabelPosition textFieldLabelPosition, State state, MutableState mutableState, Size size) {
        if (textFieldLabelPosition instanceof TextFieldLabelPosition.Above) {
            return j59.a;
        }
        float fFloatValue = ((Number) state.getValue()).floatValue();
        float fIntBitsToFloat = Float.intBitsToFloat((int) (size.m6061unboximpl() >> 32)) * fFloatValue;
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (size.m6061unboximpl() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) * fFloatValue;
        if (Float.intBitsToFloat((int) (((Size) mutableState.getValue()).m6061unboximpl() >> 32)) != fIntBitsToFloat || Float.intBitsToFloat((int) (((Size) mutableState.getValue()).m6061unboximpl() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) != fIntBitsToFloat2) {
            mutableState.setValue(Size.m6044boximpl(Size.m6047constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE))));
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean CommonDecorationBox$lambda$18$lambda$7$lambda$6(State state) {
        return ((Number) state.getValue()).floatValue() > 0.0f;
    }

    private static final boolean CommonDecorationBox$lambda$18$lambda$8(State<Boolean> state) {
        return state.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CommonDecorationBox$lambda$19(TextFieldType textFieldType, CharSequence charSequence, bm3 bm3Var, TextFieldLabelPosition textFieldLabelPosition, dm3 dm3Var, bm3 bm3Var2, bm3 bm3Var3, bm3 bm3Var4, bm3 bm3Var5, bm3 bm3Var6, bm3 bm3Var7, boolean z, boolean z2, boolean z3, InteractionSource interactionSource, PaddingValues paddingValues, TextFieldColors textFieldColors, bm3 bm3Var8, int i, int i2, Composer composer, int i3) {
        CommonDecorationBox(textFieldType, charSequence, bm3Var, textFieldLabelPosition, dm3Var, bm3Var2, bm3Var3, bm3Var4, bm3Var5, bm3Var6, bm3Var7, z, z2, z3, interactionSource, paddingValues, textFieldColors, bm3Var8, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), RecomposeScopeImplKt.updateChangedFlags(i2));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: Decoration-3J-VO9M, reason: not valid java name */
    public static final void m4463Decoration3JVO9M(long j, TextStyle textStyle, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, final int i) {
        int i2;
        final bm3<? super Composer, ? super Integer, j59> bm3Var2;
        final TextStyle textStyle2;
        final long j2;
        Composer composerStartRestartGroup = composer.startRestartGroup(396611577);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(j) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(textStyle) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var) ? 256 : 128;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 147) != 146, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(396611577, i2, -1, "androidx.compose.material3.internal.Decoration (TextFieldImpl.kt:325)");
            }
            ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(j, textStyle, bm3Var, composerStartRestartGroup, i2 & AnalyticsListener.EVENT_DRM_SESSION_ACQUIRED);
            j2 = j;
            textStyle2 = textStyle;
            bm3Var2 = bm3Var;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            bm3Var2 = bm3Var;
            textStyle2 = textStyle;
            j2 = j;
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: br8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TextFieldImplKt.Decoration_3J_VO9M$lambda$20(j2, textStyle2, bm3Var2, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: Decoration-Iv8Zu3U, reason: not valid java name */
    public static final void m4464DecorationIv8Zu3U(final long j, final bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(590397809);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(j) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var) ? 32 : 16;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 19) != 18, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(590397809, i2, -1, "androidx.compose.material3.internal.Decoration (TextFieldImpl.kt:330)");
            }
            CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(j)), bm3Var, composerStartRestartGroup, (i2 & 112) | ProvidedValue.$stable);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: wq8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TextFieldImplKt.Decoration_Iv8Zu3U$lambda$21(j, bm3Var, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Decoration_3J_VO9M$lambda$20(long j, TextStyle textStyle, bm3 bm3Var, int i, Composer composer, int i2) {
        m4463Decoration3JVO9M(j, textStyle, bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Decoration_Iv8Zu3U$lambda$21(long j, bm3 bm3Var, int i, Composer composer, int i2) {
        m4464DecorationIv8Zu3U(j, bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0103  */
    /* JADX WARN: Code duplicated, block: B:63:0x013f  */
    /* JADX INFO: renamed from: TextFieldTransitionScope-Jy8F4Js, reason: not valid java name */
    private static final void m4465TextFieldTransitionScopeJy8F4Js(InputPhase inputPhase, long j, long j2, long j3, boolean z, im3<? super State<Float>, ? super State<Color>, ? super State<Color>, ? super State<Float>, ? super State<Float>, ? super Composer, ? super Integer, j59> im3Var, Composer composer, int i) throws Throwable {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        Transition transitionUpdateTransition = TransitionKt.updateTransition(inputPhase, "TextFieldInputState", composer, (i & 14) | 48, 0);
        TextFieldImplKt$TextFieldTransitionScope$labelProgress$1 textFieldImplKt$TextFieldTransitionScope$labelProgress$1 = new TextFieldImplKt$TextFieldTransitionScope$labelProgress$1(MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composer, 6));
        sc3 sc3Var = sc3.a;
        TwoWayConverter<Float, AnimationVector1D> vectorConverter = VectorConvertersKt.getVectorConverter(sc3Var);
        InputPhase inputPhase2 = (InputPhase) transitionUpdateTransition.getCurrentState();
        composer.startReplaceGroup(-1436405362);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1436405362, 0, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:391)");
        }
        int[] iArr = WhenMappings.$EnumSwitchMapping$1;
        int i2 = iArr[inputPhase2.ordinal()];
        float f6 = 0.0f;
        if (i2 == 1) {
            f = 1.0f;
        } else {
            if (i2 != 2) {
                if (i2 != 3) {
                    me0.e();
                    return;
                }
            } else if (z) {
                f = 0.0f;
            }
            f = 1.0f;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        Float fValueOf = Float.valueOf(f);
        InputPhase inputPhase3 = (InputPhase) transitionUpdateTransition.getTargetState();
        composer.startReplaceGroup(-1436405362);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1436405362, 0, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:391)");
        }
        int i3 = iArr[inputPhase3.ordinal()];
        if (i3 == 1) {
            f2 = 1.0f;
        } else {
            if (i3 != 2) {
                if (i3 != 3) {
                    me0.e();
                    return;
                }
            } else if (z) {
                f2 = 0.0f;
            }
            f2 = 1.0f;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        State stateCreateTransitionAnimation = TransitionKt.createTransitionAnimation(transitionUpdateTransition, fValueOf, Float.valueOf(f2), textFieldImplKt$TextFieldTransitionScope$labelProgress$1.invoke(transitionUpdateTransition.getSegment(), composer, 0), vectorConverter, "LabelProgress", composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE);
        MotionSchemeKeyTokens motionSchemeKeyTokens = MotionSchemeKeyTokens.FastEffects;
        FiniteAnimationSpec finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens, composer, 6);
        TextFieldImplKt$TextFieldTransitionScope$placeholderOpacity$1 textFieldImplKt$TextFieldTransitionScope$placeholderOpacity$1 = new TextFieldImplKt$TextFieldTransitionScope$placeholderOpacity$1(finiteAnimationSpecValue, MotionSchemeKt.value(MotionSchemeKeyTokens.SlowEffects, composer, 6));
        TwoWayConverter<Float, AnimationVector1D> vectorConverter2 = VectorConvertersKt.getVectorConverter(sc3Var);
        InputPhase inputPhase4 = (InputPhase) transitionUpdateTransition.getCurrentState();
        composer.startReplaceGroup(-1093194547);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1093194547, 0, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:416)");
        }
        int i4 = iArr[inputPhase4.ordinal()];
        if (i4 == 1) {
            f3 = 1.0f;
        } else {
            if (i4 != 2) {
                if (i4 != 3) {
                    me0.e();
                    return;
                }
            } else if (!z) {
                f3 = 1.0f;
            }
            f3 = 0.0f;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        Float fValueOf2 = Float.valueOf(f3);
        InputPhase inputPhase5 = (InputPhase) transitionUpdateTransition.getTargetState();
        composer.startReplaceGroup(-1093194547);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1093194547, 0, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:416)");
        }
        int i5 = iArr[inputPhase5.ordinal()];
        if (i5 == 1) {
            f4 = 1.0f;
        } else {
            if (i5 != 2) {
                if (i5 != 3) {
                    me0.e();
                    return;
                }
            } else if (!z) {
                f4 = 1.0f;
            }
            f4 = 0.0f;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        State stateCreateTransitionAnimation2 = TransitionKt.createTransitionAnimation(transitionUpdateTransition, fValueOf2, Float.valueOf(f4), textFieldImplKt$TextFieldTransitionScope$placeholderOpacity$1.invoke(transitionUpdateTransition.getSegment(), composer, 0), vectorConverter2, "PlaceholderOpacity", composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE);
        TextFieldImplKt$TextFieldTransitionScope$prefixSuffixOpacity$1 textFieldImplKt$TextFieldTransitionScope$prefixSuffixOpacity$1 = new TextFieldImplKt$TextFieldTransitionScope$prefixSuffixOpacity$1(finiteAnimationSpecValue);
        TwoWayConverter<Float, AnimationVector1D> vectorConverter3 = VectorConvertersKt.getVectorConverter(sc3Var);
        InputPhase inputPhase6 = (InputPhase) transitionUpdateTransition.getCurrentState();
        composer.startReplaceGroup(-1258455321);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1258455321, 0, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:428)");
        }
        int i6 = iArr[inputPhase6.ordinal()];
        if (i6 == 1) {
            f5 = 1.0f;
        } else {
            if (i6 != 2) {
                if (i6 != 3) {
                    me0.e();
                    return;
                }
            } else if (z) {
                f5 = 0.0f;
            }
            f5 = 1.0f;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        Float fValueOf3 = Float.valueOf(f5);
        InputPhase inputPhase7 = (InputPhase) transitionUpdateTransition.getTargetState();
        composer.startReplaceGroup(-1258455321);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1258455321, 0, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:428)");
        }
        int i7 = iArr[inputPhase7.ordinal()];
        if (i7 == 1) {
            f6 = 1.0f;
        } else {
            if (i7 != 2) {
                if (i7 != 3) {
                    me0.e();
                    return;
                }
            } else if (!z) {
            }
            f6 = 1.0f;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        State stateCreateTransitionAnimation3 = TransitionKt.createTransitionAnimation(transitionUpdateTransition, fValueOf3, Float.valueOf(f6), textFieldImplKt$TextFieldTransitionScope$prefixSuffixOpacity$1.invoke(transitionUpdateTransition.getSegment(), composer, 0), vectorConverter3, "PrefixSuffixOpacity", composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE);
        FiniteAnimationSpec finiteAnimationSpecValue2 = MotionSchemeKt.value(motionSchemeKeyTokens, composer, 6);
        TextFieldImplKt$TextFieldTransitionScope$labelTextStyleColor$1 textFieldImplKt$TextFieldTransitionScope$labelTextStyleColor$1 = new TextFieldImplKt$TextFieldTransitionScope$labelTextStyleColor$1(finiteAnimationSpecValue2);
        InputPhase inputPhase8 = (InputPhase) transitionUpdateTransition.getTargetState();
        composer.startReplaceGroup(-12973394);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-12973394, 0, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:441)");
        }
        long j4 = iArr[inputPhase8.ordinal()] == 1 ? j : j2;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        ColorSpace colorSpaceM6236getColorSpaceimpl = Color.m6236getColorSpaceimpl(j4);
        boolean zChanged = composer.changed(colorSpaceM6236getColorSpaceimpl);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = (TwoWayConverter) ColorVectorConverterKt.getVectorConverter(Color.Companion).invoke(colorSpaceM6236getColorSpaceimpl);
            composer.updateRememberedValue(objRememberedValue);
        }
        TwoWayConverter twoWayConverter = (TwoWayConverter) objRememberedValue;
        InputPhase inputPhase9 = (InputPhase) transitionUpdateTransition.getCurrentState();
        composer.startReplaceGroup(-12973394);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-12973394, 0, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:441)");
        }
        long j5 = iArr[inputPhase9.ordinal()] == 1 ? j : j2;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        Color colorM6222boximpl = Color.m6222boximpl(j5);
        InputPhase inputPhase10 = (InputPhase) transitionUpdateTransition.getTargetState();
        composer.startReplaceGroup(-12973394);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-12973394, 0, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:441)");
        }
        long j6 = iArr[inputPhase10.ordinal()] == 1 ? j : j2;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        State stateCreateTransitionAnimation4 = TransitionKt.createTransitionAnimation(transitionUpdateTransition, colorM6222boximpl, Color.m6222boximpl(j6), textFieldImplKt$TextFieldTransitionScope$labelTextStyleColor$1.invoke(transitionUpdateTransition.getSegment(), composer, 0), twoWayConverter, "LabelTextStyleColor", composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE);
        TextFieldImplKt$TextFieldTransitionScope$labelContentColor$1 textFieldImplKt$TextFieldTransitionScope$labelContentColor$1 = new TextFieldImplKt$TextFieldTransitionScope$labelContentColor$1(finiteAnimationSpecValue2);
        composer.startReplaceGroup(-464752477);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-464752477, 0, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:452)");
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        ColorSpace colorSpaceM6236getColorSpaceimpl2 = Color.m6236getColorSpaceimpl(j3);
        boolean zChanged2 = composer.changed(colorSpaceM6236getColorSpaceimpl2);
        Object objRememberedValue2 = composer.rememberedValue();
        if (zChanged2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
            objRememberedValue2 = (TwoWayConverter) ColorVectorConverterKt.getVectorConverter(Color.Companion).invoke(colorSpaceM6236getColorSpaceimpl2);
            composer.updateRememberedValue(objRememberedValue2);
        }
        TwoWayConverter twoWayConverter2 = (TwoWayConverter) objRememberedValue2;
        composer.startReplaceGroup(-464752477);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-464752477, 0, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:452)");
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        Color colorM6222boximpl2 = Color.m6222boximpl(j3);
        composer.startReplaceGroup(-464752477);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-464752477, 0, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:452)");
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        im3Var.invoke(stateCreateTransitionAnimation, stateCreateTransitionAnimation4, TransitionKt.createTransitionAnimation(transitionUpdateTransition, colorM6222boximpl2, Color.m6222boximpl(j3), textFieldImplKt$TextFieldTransitionScope$labelContentColor$1.invoke(transitionUpdateTransition.getSegment(), composer, 0), twoWayConverter2, "LabelContentColor", composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE), stateCreateTransitionAnimation2, stateCreateTransitionAnimation3, composer, Integer.valueOf(i & 458752));
    }

    /* JADX INFO: renamed from: animateBorderStrokeAsState-NuRrP5Q, reason: not valid java name */
    public static final State<BorderStroke> m4468animateBorderStrokeAsStateNuRrP5Q(boolean z, boolean z2, boolean z3, TextFieldColors textFieldColors, float f, float f2, Composer composer, int i) {
        State<Color> stateRememberUpdatedState;
        State<Dp> stateRememberUpdatedState2;
        Composer composer2 = composer;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(2047013045, i, -1, "androidx.compose.material3.internal.animateBorderStrokeAsState (TextFieldImpl.kt:472)");
        }
        long jM4045indicatorColorXeAY9LY$material3 = textFieldColors.m4045indicatorColorXeAY9LY$material3(z, z2, z3);
        FiniteAnimationSpec finiteAnimationSpecValue = MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composer2, 6);
        if (z) {
            composer2.startReplaceGroup(-1674507999);
            stateRememberUpdatedState = SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(jM4045indicatorColorXeAY9LY$material3, finiteAnimationSpecValue, null, null, composer, 0, 12);
            composer2 = composer;
            composer2.endReplaceGroup();
        } else {
            composer2.startReplaceGroup(-1674427244);
            stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m6222boximpl(jM4045indicatorColorXeAY9LY$material3), composer2, 0);
            composer2.endReplaceGroup();
        }
        State<Color> state = stateRememberUpdatedState;
        FiniteAnimationSpec finiteAnimationSpecValue2 = MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composer2, 6);
        if (z) {
            composer2.startReplaceGroup(-1674245832);
            stateRememberUpdatedState2 = AnimateAsStateKt.m1188animateDpAsStateAjpBEmI(z3 ? f : f2, finiteAnimationSpecValue2, null, null, composer2, 0, 12);
            composer2.endReplaceGroup();
        } else {
            composer2.startReplaceGroup(-1674063769);
            stateRememberUpdatedState2 = SnapshotStateKt.rememberUpdatedState(Dp.m9040boximpl(f2), composer2, (i >> 15) & 14);
            composer2.endReplaceGroup();
        }
        State<BorderStroke> stateRememberUpdatedState3 = SnapshotStateKt.rememberUpdatedState(BorderStrokeKt.m1315BorderStrokecXLIe8U(stateRememberUpdatedState2.getValue().m9056unboximpl(), state.getValue().m6242unboximpl()), composer2, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return stateRememberUpdatedState3;
    }

    public static final Modifier defaultErrorSemantics(Modifier modifier, boolean z, String str) {
        return z ? SemanticsModifierKt.semantics$default(modifier, false, new ar8(str, 0), 1, null) : modifier;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 defaultErrorSemantics$lambda$22(String str, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.error(semanticsPropertyReceiver, str);
        return j59.a;
    }

    public static final float getAboveLabelBottomPadding() {
        return AboveLabelBottomPadding;
    }

    public static final float getAboveLabelHorizontalPadding() {
        return AboveLabelHorizontalPadding;
    }

    public static final Alignment.Horizontal getExpandedAlignment(TextFieldLabelPosition textFieldLabelPosition) {
        if (textFieldLabelPosition instanceof TextFieldLabelPosition.Above) {
            return ((TextFieldLabelPosition.Above) textFieldLabelPosition).getAlignment();
        }
        if (textFieldLabelPosition instanceof TextFieldLabelPosition.Attached) {
            return ((TextFieldLabelPosition.Attached) textFieldLabelPosition).getExpandedAlignment();
        }
        r01.e(textFieldLabelPosition, "Unknown position: ");
        return null;
    }

    public static final float getMinFocusedLabelLineHeight() {
        return MinFocusedLabelLineHeight;
    }

    public static final float getMinSupportingTextLineHeight() {
        return MinSupportingTextLineHeight;
    }

    public static final float getMinTextLineHeight() {
        return MinTextLineHeight;
    }

    public static final Alignment.Horizontal getMinimizedAlignment(TextFieldLabelPosition textFieldLabelPosition) {
        if (textFieldLabelPosition instanceof TextFieldLabelPosition.Above) {
            return ((TextFieldLabelPosition.Above) textFieldLabelPosition).getAlignment();
        }
        if (textFieldLabelPosition instanceof TextFieldLabelPosition.Attached) {
            return ((TextFieldLabelPosition.Attached) textFieldLabelPosition).getMinimizedAlignment();
        }
        r01.e(textFieldLabelPosition, "Unknown position: ");
        return null;
    }

    public static final float getPrefixSuffixTextPadding() {
        return PrefixSuffixTextPadding;
    }

    private static final boolean getShowExpandedLabel(TextFieldLabelPosition textFieldLabelPosition) {
        return (textFieldLabelPosition instanceof TextFieldLabelPosition.Attached) && !((TextFieldLabelPosition.Attached) textFieldLabelPosition).getAlwaysMinimize();
    }

    public static final float getSupportingTopPadding() {
        return SupportingTopPadding;
    }

    public static final float getTextFieldPadding() {
        return TextFieldPadding;
    }

    public static final float minimizedLabelHalfHeight(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1251545215, i, -1, "androidx.compose.material3.internal.minimizedLabelHalfHeight (TextFieldImpl.kt:527)");
        }
        long jM8530getLineHeightXSAIIZE = MaterialTheme.INSTANCE.getTypography(composer, 6).getBodySmall().m8530getLineHeightXSAIIZE();
        long jM5218getBodySmallLineHeightXSAIIZE = TypeScaleTokens.INSTANCE.m5218getBodySmallLineHeightXSAIIZE();
        if (!TextUnit.m9239isSpimpl(jM8530getLineHeightXSAIIZE)) {
            jM8530getLineHeightXSAIIZE = jM5218getBodySmallLineHeightXSAIIZE;
        }
        float fM9042constructorimpl = Dp.m9042constructorimpl(((Density) composer.consume(CompositionLocalsKt.getLocalDensity())).mo1429toDpGaN1DYA(jM8530getLineHeightXSAIIZE) / 2.0f);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return fM9042constructorimpl;
    }

    public static final Modifier textFieldBackground(Modifier modifier, ColorProducer colorProducer, Shape shape) {
        return DrawModifierKt.drawWithCache(modifier, new qh8(1, shape, colorProducer));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DrawResult textFieldBackground$lambda$24(Shape shape, ColorProducer colorProducer, CacheDrawScope cacheDrawScope) {
        return cacheDrawScope.onDrawBehind(new qn7(1, shape.mo1345createOutlinePq9zytI(cacheDrawScope.m5767getSizeNHjbRc(), cacheDrawScope.getLayoutDirection(), cacheDrawScope), colorProducer));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 textFieldBackground$lambda$24$lambda$23(Outline outline, ColorProducer colorProducer, DrawScope drawScope) {
        OutlineKt.m6505drawOutlinewDX37Ww$default(drawScope, outline, colorProducer.mo3400invoke0d7_KjU(), 0.0f, null, null, 0, 60, null);
        return j59.a;
    }

    public static final float textFieldHorizontalIconPadding(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1986450462, i, -1, "androidx.compose.material3.internal.textFieldHorizontalIconPadding (TextFieldImpl.kt:520)");
        }
        float fM9056unboximpl = ((Dp) composer.consume(InteractiveComponentSizeKt.getLocalMinimumInteractiveComponentSize())).m9056unboximpl();
        if (Float.isNaN(fM9056unboximpl)) {
            fM9056unboximpl = Dp.m9042constructorimpl(0.0f);
        }
        float fM9042constructorimpl = Dp.m9042constructorimpl(Dp.m9042constructorimpl(fM9056unboximpl - SmallIconButtonTokens.INSTANCE.m5109getIconSizeD9Ej5fM()) / 2.0f);
        float fM9042constructorimpl2 = Dp.m9042constructorimpl(0.0f);
        if (fM9042constructorimpl < fM9042constructorimpl2) {
            fM9042constructorimpl = fM9042constructorimpl2;
        }
        float fM9042constructorimpl3 = Dp.m9042constructorimpl(fM9042constructorimpl);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return fM9042constructorimpl3;
    }

    public static final Modifier textFieldLabelMinHeight(Modifier modifier, final ll3<Dp> ll3Var) {
        return LayoutModifierKt.layout(modifier, new dm3() { // from class: zq8
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return TextFieldImplKt.textFieldLabelMinHeight$lambda$26(ll3Var, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult textFieldLabelMinHeight$lambda$26(ll3 ll3Var, MeasureScope measureScope, Measurable measurable, Constraints constraints) {
        float fM9056unboximpl = ((Dp) ll3Var.invoke()).m9056unboximpl();
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(constraints.m9001unboximpl(), 0, 0, ConstraintsKt.m9011constrainHeightK40F9xA(constraints.m9001unboximpl(), !Dp.m9047equalsimpl0(fM9056unboximpl, Dp.Companion.m9062getUnspecifiedD9Ej5fM()) ? measureScope.mo1428roundToPx0680j_4(fM9056unboximpl) : 0), 0, 11, null));
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new nl3() { // from class: vq8
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return TextFieldImplKt.textFieldLabelMinHeight$lambda$26$lambda$25(placeableMo7702measureBRTryo0, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 textFieldLabelMinHeight$lambda$26$lambda$25(Placeable placeable, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.place$default(placementScope, placeable, 0, 0, 0.0f, 4, null);
        return j59.a;
    }
}
