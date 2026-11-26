package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.InfiniteRepeatableSpec;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.InfiniteTransitionKt;
import androidx.compose.animation.core.KeyframesSpec;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.ProgressSemanticsKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.internal.AccessibilityUtilKt;
import androidx.compose.material3.tokens.CircularProgressIndicatorTokens;
import androidx.compose.material3.tokens.LinearProgressIndicatorTokens;
import androidx.compose.material3.tokens.MotionTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.ProgressBarRangeInfo;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.muxer.MuxerUtil;
import androidx.profileinstaller.ProfileVerifier;
import androidx.window.core.layout.WindowSizeClass;
import defpackage.bm3;
import defpackage.gf6;
import defpackage.gn6;
import defpackage.h04;
import defpackage.in6;
import defpackage.is0;
import defpackage.j59;
import defpackage.ll3;
import defpackage.mm1;
import defpackage.nl3;
import defpackage.to;
import defpackage.ul2;
import defpackage.w54;
import defpackage.z12;
import defpackage.zg0;

/* JADX INFO: loaded from: classes2.dex */
public final class ProgressIndicatorKt {
    public static final float CircularAdditionalRotationDegreesTarget = 360.0f;
    public static final int CircularAnimationAdditionalRotationDelay = 1500;
    public static final int CircularAnimationAdditionalRotationDuration = 300;
    public static final int CircularAnimationProgressDuration = 6000;
    public static final float CircularGlobalRotationDegreesTarget = 1080.0f;
    public static final float CircularIndeterminateMaxProgress = 0.87f;
    public static final float CircularIndeterminateMinProgress = 0.1f;
    private static final CubicBezierEasing CircularProgressEasing;
    public static final int FirstLineHeadDelay = 0;
    public static final int FirstLineHeadDuration = 1000;
    public static final int FirstLineTailDelay = 250;
    public static final int FirstLineTailDuration = 1000;
    public static final int LinearAnimationDuration = 1750;
    private static final CubicBezierEasing LinearIndeterminateProgressEasing;
    public static final int SecondLineHeadDelay = 650;
    public static final int SecondLineHeadDuration = 850;
    public static final int SecondLineTailDelay = 900;
    public static final int SecondLineTailDuration = 850;
    private static final float LinearIndicatorWidth = Dp.m9042constructorimpl(240.0f);
    private static final float LinearIndicatorHeight = LinearProgressIndicatorTokens.INSTANCE.m4869getHeightD9Ej5fM();
    private static final float StopIndicatorTrailingSpace = Dp.m9042constructorimpl(6.0f);
    private static final float CircularIndicatorDiameter = CircularProgressIndicatorTokens.INSTANCE.m4578getSizeD9Ej5fM();

    static {
        MotionTokens motionTokens = MotionTokens.INSTANCE;
        LinearIndeterminateProgressEasing = motionTokens.getEasingEmphasizedAccelerateCubicBezier();
        CircularProgressEasing = motionTokens.getEasingStandardCubicBezier();
    }

    /* JADX WARN: Code duplicated, block: B:100:0x012d  */
    /* JADX WARN: Code duplicated, block: B:103:0x0139  */
    /* JADX WARN: Code duplicated, block: B:106:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:107:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:110:0x0200  */
    /* JADX WARN: Code duplicated, block: B:111:0x0202  */
    /* JADX WARN: Code duplicated, block: B:114:0x020a  */
    /* JADX WARN: Code duplicated, block: B:115:0x020c  */
    /* JADX WARN: Code duplicated, block: B:118:0x0220  */
    /* JADX WARN: Code duplicated, block: B:120:0x0226  */
    /* JADX WARN: Code duplicated, block: B:126:0x023b  */
    /* JADX WARN: Code duplicated, block: B:128:0x0241  */
    /* JADX WARN: Code duplicated, block: B:134:0x024f  */
    /* JADX WARN: Code duplicated, block: B:138:0x025f  */
    /* JADX WARN: Code duplicated, block: B:141:0x0283  */
    /* JADX WARN: Code duplicated, block: B:143:0x0294  */
    /* JADX WARN: Code duplicated, block: B:146:0x02a4  */
    /* JADX WARN: Code duplicated, block: B:148:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0061  */
    /* JADX WARN: Code duplicated, block: B:41:0x0070  */
    /* JADX WARN: Code duplicated, block: B:43:0x0074  */
    /* JADX WARN: Code duplicated, block: B:46:0x007a  */
    /* JADX WARN: Code duplicated, block: B:48:0x007f  */
    /* JADX WARN: Code duplicated, block: B:50:0x0083  */
    /* JADX WARN: Code duplicated, block: B:52:0x008b  */
    /* JADX WARN: Code duplicated, block: B:53:0x008e  */
    /* JADX WARN: Code duplicated, block: B:57:0x0098  */
    /* JADX WARN: Code duplicated, block: B:58:0x009d  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:67:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:68:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:73:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:83:0x00ec A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:84:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:85:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:88:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:90:0x0101  */
    /* JADX WARN: Code duplicated, block: B:93:0x010c  */
    /* JADX WARN: Code duplicated, block: B:94:0x0116  */
    /* JADX WARN: Code duplicated, block: B:96:0x0119  */
    /* JADX WARN: Code duplicated, block: B:98:0x0122  */
    /* JADX INFO: renamed from: CircularProgressIndicator-4lLiAd8, reason: not valid java name */
    public static final void m3740CircularProgressIndicator4lLiAd8(Modifier modifier, long j, float f, long j2, int i, float f2, Composer composer, final int i2, final int i3) {
        Modifier modifier2;
        int i4;
        long circularColor;
        float fM3736getCircularStrokeWidthD9Ej5fM;
        long j3;
        int i5;
        int iM3734getCircularIndeterminateStrokeCapKaPHkGw;
        int i6;
        int i7;
        float f3;
        int i8;
        boolean z;
        Composer composer2;
        final long j4;
        final float f4;
        final float f5;
        final long j5;
        final Modifier modifier3;
        final int i9;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        long circularIndeterminateTrackColor;
        final float fM3735getCircularIndicatorTrackGapSizeD9Ej5fM;
        final int i10;
        final Stroke stroke;
        final State<Float> stateAnimateFloat;
        final State<Float> stateAnimateFloat2;
        final State<Float> stateAnimateFloat3;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean zChanged;
        Object objRememberedValue;
        final long j6;
        final long j7;
        final float f6;
        int i11;
        Composer composerStartRestartGroup = composer.startRestartGroup(333154241);
        int i12 = i3 & 1;
        if (i12 != 0) {
            i4 = i2 | 6;
            modifier2 = modifier;
        } else if ((i2 & 6) == 0) {
            modifier2 = modifier;
            i4 = (composerStartRestartGroup.changed(modifier2) ? 4 : 2) | i2;
        } else {
            modifier2 = modifier;
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            circularColor = j;
            i4 |= ((i3 & 2) == 0 && composerStartRestartGroup.changed(circularColor)) ? 32 : 16;
        } else {
            circularColor = j;
        }
        int i13 = i3 & 4;
        if (i13 == 0) {
            if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                fM3736getCircularStrokeWidthD9Ej5fM = f;
                i4 |= composerStartRestartGroup.changed(fM3736getCircularStrokeWidthD9Ej5fM) ? 256 : 128;
            }
            if ((i2 & 3072) == 0) {
                j3 = j2;
                if ((i3 & 8) == 0 || !composerStartRestartGroup.changed(j3)) {
                    i11 = 1024;
                } else {
                    i11 = 2048;
                }
                i4 |= i11;
            } else {
                j3 = j2;
            }
            i5 = i3 & 16;
            if (i5 != 0) {
                if ((i2 & 24576) == 0) {
                    iM3734getCircularIndeterminateStrokeCapKaPHkGw = i;
                    if (composerStartRestartGroup.changed(iM3734getCircularIndeterminateStrokeCapKaPHkGw)) {
                        i6 = 16384;
                    } else {
                        i6 = 8192;
                    }
                    i4 |= i6;
                }
                i7 = i3 & 32;
                if (i7 != 0) {
                    i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    f3 = f2;
                } else {
                    f3 = f2;
                    if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(f3)) {
                            i8 = 131072;
                        } else {
                            i8 = 65536;
                        }
                        i4 |= i8;
                    }
                }
                if ((i4 & 74899) != 74898) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                        if (i12 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 2) != 0) {
                            circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                            i4 &= -113;
                        }
                        if (i13 != 0) {
                            fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                        }
                        if ((i3 & 8) != 0) {
                            circularIndeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularIndeterminateTrackColor(composerStartRestartGroup, 6);
                            i4 &= -7169;
                        } else {
                            circularIndeterminateTrackColor = j3;
                        }
                        if (i5 != 0) {
                            iM3734getCircularIndeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3734getCircularIndeterminateStrokeCapKaPHkGw();
                        }
                        if (i7 != 0) {
                            fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3735getCircularIndicatorTrackGapSizeD9Ej5fM();
                        } else {
                            fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = f3;
                        }
                        i10 = iM3734getCircularIndeterminateStrokeCapKaPHkGw;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        if ((i3 & 2) != 0) {
                            i4 &= -113;
                        }
                        if ((i3 & 8) != 0) {
                            i4 &= -7169;
                        }
                        modifier4 = modifier2;
                        fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = f3;
                        i10 = iM3734getCircularIndeterminateStrokeCapKaPHkGw;
                        circularIndeterminateTrackColor = j3;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(333154241, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:630)");
                    }
                    stroke = new Stroke(((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(fM3736getCircularStrokeWidthD9Ej5fM), 0.0f, i10, 0, null, 26, null);
                    InfiniteTransition infiniteTransitionRememberInfiniteTransition = InfiniteTransitionKt.rememberInfiniteTransition(null, composerStartRestartGroup, 0, 1);
                    InfiniteRepeatableSpec<Float> circularIndeterminateGlobalRotationAnimationSpec = getCircularIndeterminateGlobalRotationAnimationSpec();
                    int i14 = InfiniteTransition.$stable | 432 | (InfiniteRepeatableSpec.$stable << 9);
                    stateAnimateFloat = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition, 0.0f, 1080.0f, circularIndeterminateGlobalRotationAnimationSpec, null, composerStartRestartGroup, i14, 8);
                    stateAnimateFloat2 = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition, 0.0f, 360.0f, getCircularIndeterminateRotationAnimationSpec(), null, composerStartRestartGroup, i14, 8);
                    stateAnimateFloat3 = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition, 0.1f, 0.87f, getCircularIndeterminateProgressAnimationSpec(), null, composerStartRestartGroup, i14, 8);
                    Modifier modifierM2099size3ABfNKs = SizeKt.m2099size3ABfNKs(ProgressSemanticsKt.progressSemantics(modifier4), CircularIndicatorDiameter);
                    boolean zChanged2 = composerStartRestartGroup.changed(stateAnimateFloat3);
                    Modifier modifier5 = modifier4;
                    if ((i4 & 57344) == 16384) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    boolean z5 = z2 | zChanged2;
                    if ((458752 & i4) == 131072) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    boolean z6 = z5 | z3;
                    if ((i4 & 896) == 256) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    zChanged = z6 | z4 | composerStartRestartGroup.changed(stateAnimateFloat) | composerStartRestartGroup.changed(stateAnimateFloat2) | ((((i4 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(circularIndeterminateTrackColor)) || (i4 & 3072) == 2048) | composerStartRestartGroup.changedInstance(stroke) | ((((i4 & 112) ^ 48) <= 32 && composerStartRestartGroup.changed(circularColor)) || (i4 & 48) == 32);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (!zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                        j6 = circularIndeterminateTrackColor;
                        j7 = circularColor;
                        f6 = fM3736getCircularStrokeWidthD9Ej5fM;
                        objRememberedValue = new nl3() { // from class: rn6
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return ProgressIndicatorKt.CircularProgressIndicator_4lLiAd8$lambda$34$lambda$33(stateAnimateFloat3, i10, fM3735getCircularIndicatorTrackGapSizeD9Ej5fM, f6, stateAnimateFloat, stateAnimateFloat2, j6, stroke, j7, (DrawScope) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        j6 = circularIndeterminateTrackColor;
                        j7 = circularColor;
                        f6 = fM3736getCircularStrokeWidthD9Ej5fM;
                    }
                    CanvasKt.Canvas(modifierM2099size3ABfNKs, (nl3) objRememberedValue, composerStartRestartGroup, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier5;
                    composer2 = composerStartRestartGroup;
                    i9 = i10;
                    f4 = fM3735getCircularIndicatorTrackGapSizeD9Ej5fM;
                    f5 = f6;
                    j5 = j6;
                    j4 = j7;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    j4 = circularColor;
                    f4 = f3;
                    f5 = fM3736getCircularStrokeWidthD9Ej5fM;
                    j5 = j3;
                    modifier3 = modifier2;
                    i9 = iM3734getCircularIndeterminateStrokeCapKaPHkGw;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sn6
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            float f7 = f5;
                            Modifier modifier6 = modifier3;
                            long j8 = j4;
                            float f8 = f4;
                            return ProgressIndicatorKt.CircularProgressIndicator_4lLiAd8$lambda$35(modifier6, j8, f7, j5, i9, f8, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 24576;
            iM3734getCircularIndeterminateStrokeCapKaPHkGw = i;
            i7 = i3 & 32;
            if (i7 != 0) {
                i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                f3 = f2;
            } else {
                f3 = f2;
                if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(f3)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i4 |= i8;
                }
            }
            if ((i4 & 74899) != 74898) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i12 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 2) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i4 &= -113;
                    }
                    if (i13 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    }
                    if ((i3 & 8) != 0) {
                        circularIndeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularIndeterminateTrackColor(composerStartRestartGroup, 6);
                        i4 &= -7169;
                    } else {
                        circularIndeterminateTrackColor = j3;
                    }
                    if (i5 != 0) {
                        iM3734getCircularIndeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3734getCircularIndeterminateStrokeCapKaPHkGw();
                    }
                    if (i7 != 0) {
                        fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3735getCircularIndicatorTrackGapSizeD9Ej5fM();
                    } else {
                        fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = f3;
                    }
                    i10 = iM3734getCircularIndeterminateStrokeCapKaPHkGw;
                } else {
                    if (i12 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 2) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i4 &= -113;
                    }
                    if (i13 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    }
                    if ((i3 & 8) != 0) {
                        circularIndeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularIndeterminateTrackColor(composerStartRestartGroup, 6);
                        i4 &= -7169;
                    } else {
                        circularIndeterminateTrackColor = j3;
                    }
                    if (i5 != 0) {
                        iM3734getCircularIndeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3734getCircularIndeterminateStrokeCapKaPHkGw();
                    }
                    if (i7 != 0) {
                        fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3735getCircularIndicatorTrackGapSizeD9Ej5fM();
                    } else {
                        fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = f3;
                    }
                    i10 = iM3734getCircularIndeterminateStrokeCapKaPHkGw;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(333154241, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:630)");
                }
                stroke = new Stroke(((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(fM3736getCircularStrokeWidthD9Ej5fM), 0.0f, i10, 0, null, 26, null);
                InfiniteTransition infiniteTransitionRememberInfiniteTransition2 = InfiniteTransitionKt.rememberInfiniteTransition(null, composerStartRestartGroup, 0, 1);
                InfiniteRepeatableSpec<Float> circularIndeterminateGlobalRotationAnimationSpec2 = getCircularIndeterminateGlobalRotationAnimationSpec();
                int i15 = InfiniteTransition.$stable | 432 | (InfiniteRepeatableSpec.$stable << 9);
                stateAnimateFloat = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition2, 0.0f, 1080.0f, circularIndeterminateGlobalRotationAnimationSpec2, null, composerStartRestartGroup, i15, 8);
                stateAnimateFloat2 = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition2, 0.0f, 360.0f, getCircularIndeterminateRotationAnimationSpec(), null, composerStartRestartGroup, i15, 8);
                stateAnimateFloat3 = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition2, 0.1f, 0.87f, getCircularIndeterminateProgressAnimationSpec(), null, composerStartRestartGroup, i15, 8);
                Modifier modifierM2099size3ABfNKs2 = SizeKt.m2099size3ABfNKs(ProgressSemanticsKt.progressSemantics(modifier4), CircularIndicatorDiameter);
                boolean zChanged3 = composerStartRestartGroup.changed(stateAnimateFloat3);
                Modifier modifier6 = modifier4;
                if ((i4 & 57344) == 16384) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                boolean z7 = z2 | zChanged3;
                if ((458752 & i4) == 131072) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                boolean z8 = z7 | z3;
                if ((i4 & 896) == 256) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                zChanged = z8 | z4 | composerStartRestartGroup.changed(stateAnimateFloat) | composerStartRestartGroup.changed(stateAnimateFloat2) | ((((i4 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(circularIndeterminateTrackColor)) || (i4 & 3072) == 2048) | composerStartRestartGroup.changedInstance(stroke) | ((((i4 & 112) ^ 48) <= 32 && composerStartRestartGroup.changed(circularColor)) || (i4 & 48) == 32);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    j6 = circularIndeterminateTrackColor;
                    j7 = circularColor;
                    f6 = fM3736getCircularStrokeWidthD9Ej5fM;
                    objRememberedValue = new nl3() { // from class: rn6
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return ProgressIndicatorKt.CircularProgressIndicator_4lLiAd8$lambda$34$lambda$33(stateAnimateFloat3, i10, fM3735getCircularIndicatorTrackGapSizeD9Ej5fM, f6, stateAnimateFloat, stateAnimateFloat2, j6, stroke, j7, (DrawScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    j6 = circularIndeterminateTrackColor;
                    j7 = circularColor;
                    f6 = fM3736getCircularStrokeWidthD9Ej5fM;
                    objRememberedValue = new nl3() { // from class: rn6
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return ProgressIndicatorKt.CircularProgressIndicator_4lLiAd8$lambda$34$lambda$33(stateAnimateFloat3, i10, fM3735getCircularIndicatorTrackGapSizeD9Ej5fM, f6, stateAnimateFloat, stateAnimateFloat2, j6, stroke, j7, (DrawScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                CanvasKt.Canvas(modifierM2099size3ABfNKs2, (nl3) objRememberedValue, composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier6;
                composer2 = composerStartRestartGroup;
                i9 = i10;
                f4 = fM3735getCircularIndicatorTrackGapSizeD9Ej5fM;
                f5 = f6;
                j5 = j6;
                j4 = j7;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                j4 = circularColor;
                f4 = f3;
                f5 = fM3736getCircularStrokeWidthD9Ej5fM;
                j5 = j3;
                modifier3 = modifier2;
                i9 = iM3734getCircularIndeterminateStrokeCapKaPHkGw;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sn6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        float f7 = f5;
                        Modifier modifier7 = modifier3;
                        long j8 = j4;
                        float f8 = f4;
                        return ProgressIndicatorKt.CircularProgressIndicator_4lLiAd8$lambda$35(modifier7, j8, f7, j5, i9, f8, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        fM3736getCircularStrokeWidthD9Ej5fM = f;
        if ((i2 & 3072) == 0) {
            j3 = j2;
            if ((i3 & 8) == 0) {
                i11 = 1024;
            } else {
                i11 = 1024;
            }
            i4 |= i11;
        } else {
            j3 = j2;
        }
        i5 = i3 & 16;
        if (i5 != 0) {
            if ((i2 & 24576) == 0) {
                iM3734getCircularIndeterminateStrokeCapKaPHkGw = i;
                if (composerStartRestartGroup.changed(iM3734getCircularIndeterminateStrokeCapKaPHkGw)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i4 |= i6;
            }
            i7 = i3 & 32;
            if (i7 != 0) {
                i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                f3 = f2;
            } else {
                f3 = f2;
                if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(f3)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i4 |= i8;
                }
            }
            if ((i4 & 74899) != 74898) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i12 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 2) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i4 &= -113;
                    }
                    if (i13 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    }
                    if ((i3 & 8) != 0) {
                        circularIndeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularIndeterminateTrackColor(composerStartRestartGroup, 6);
                        i4 &= -7169;
                    } else {
                        circularIndeterminateTrackColor = j3;
                    }
                    if (i5 != 0) {
                        iM3734getCircularIndeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3734getCircularIndeterminateStrokeCapKaPHkGw();
                    }
                    if (i7 != 0) {
                        fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3735getCircularIndicatorTrackGapSizeD9Ej5fM();
                    } else {
                        fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = f3;
                    }
                    i10 = iM3734getCircularIndeterminateStrokeCapKaPHkGw;
                } else {
                    if (i12 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 2) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i4 &= -113;
                    }
                    if (i13 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    }
                    if ((i3 & 8) != 0) {
                        circularIndeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularIndeterminateTrackColor(composerStartRestartGroup, 6);
                        i4 &= -7169;
                    } else {
                        circularIndeterminateTrackColor = j3;
                    }
                    if (i5 != 0) {
                        iM3734getCircularIndeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3734getCircularIndeterminateStrokeCapKaPHkGw();
                    }
                    if (i7 != 0) {
                        fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3735getCircularIndicatorTrackGapSizeD9Ej5fM();
                    } else {
                        fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = f3;
                    }
                    i10 = iM3734getCircularIndeterminateStrokeCapKaPHkGw;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(333154241, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:630)");
                }
                stroke = new Stroke(((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(fM3736getCircularStrokeWidthD9Ej5fM), 0.0f, i10, 0, null, 26, null);
                InfiniteTransition infiniteTransitionRememberInfiniteTransition3 = InfiniteTransitionKt.rememberInfiniteTransition(null, composerStartRestartGroup, 0, 1);
                InfiniteRepeatableSpec<Float> circularIndeterminateGlobalRotationAnimationSpec3 = getCircularIndeterminateGlobalRotationAnimationSpec();
                int i16 = InfiniteTransition.$stable | 432 | (InfiniteRepeatableSpec.$stable << 9);
                stateAnimateFloat = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition3, 0.0f, 1080.0f, circularIndeterminateGlobalRotationAnimationSpec3, null, composerStartRestartGroup, i16, 8);
                stateAnimateFloat2 = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition3, 0.0f, 360.0f, getCircularIndeterminateRotationAnimationSpec(), null, composerStartRestartGroup, i16, 8);
                stateAnimateFloat3 = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition3, 0.1f, 0.87f, getCircularIndeterminateProgressAnimationSpec(), null, composerStartRestartGroup, i16, 8);
                Modifier modifierM2099size3ABfNKs3 = SizeKt.m2099size3ABfNKs(ProgressSemanticsKt.progressSemantics(modifier4), CircularIndicatorDiameter);
                boolean zChanged4 = composerStartRestartGroup.changed(stateAnimateFloat3);
                Modifier modifier7 = modifier4;
                if ((i4 & 57344) == 16384) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                boolean z9 = z2 | zChanged4;
                if ((458752 & i4) == 131072) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                boolean z10 = z9 | z3;
                if ((i4 & 896) == 256) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                zChanged = z10 | z4 | composerStartRestartGroup.changed(stateAnimateFloat) | composerStartRestartGroup.changed(stateAnimateFloat2) | ((((i4 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(circularIndeterminateTrackColor)) || (i4 & 3072) == 2048) | composerStartRestartGroup.changedInstance(stroke) | ((((i4 & 112) ^ 48) <= 32 && composerStartRestartGroup.changed(circularColor)) || (i4 & 48) == 32);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    j6 = circularIndeterminateTrackColor;
                    j7 = circularColor;
                    f6 = fM3736getCircularStrokeWidthD9Ej5fM;
                    objRememberedValue = new nl3() { // from class: rn6
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return ProgressIndicatorKt.CircularProgressIndicator_4lLiAd8$lambda$34$lambda$33(stateAnimateFloat3, i10, fM3735getCircularIndicatorTrackGapSizeD9Ej5fM, f6, stateAnimateFloat, stateAnimateFloat2, j6, stroke, j7, (DrawScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    j6 = circularIndeterminateTrackColor;
                    j7 = circularColor;
                    f6 = fM3736getCircularStrokeWidthD9Ej5fM;
                    objRememberedValue = new nl3() { // from class: rn6
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return ProgressIndicatorKt.CircularProgressIndicator_4lLiAd8$lambda$34$lambda$33(stateAnimateFloat3, i10, fM3735getCircularIndicatorTrackGapSizeD9Ej5fM, f6, stateAnimateFloat, stateAnimateFloat2, j6, stroke, j7, (DrawScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                CanvasKt.Canvas(modifierM2099size3ABfNKs3, (nl3) objRememberedValue, composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier7;
                composer2 = composerStartRestartGroup;
                i9 = i10;
                f4 = fM3735getCircularIndicatorTrackGapSizeD9Ej5fM;
                f5 = f6;
                j5 = j6;
                j4 = j7;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                j4 = circularColor;
                f4 = f3;
                f5 = fM3736getCircularStrokeWidthD9Ej5fM;
                j5 = j3;
                modifier3 = modifier2;
                i9 = iM3734getCircularIndeterminateStrokeCapKaPHkGw;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sn6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        float f7 = f5;
                        Modifier modifier8 = modifier3;
                        long j8 = j4;
                        float f8 = f4;
                        return ProgressIndicatorKt.CircularProgressIndicator_4lLiAd8$lambda$35(modifier8, j8, f7, j5, i9, f8, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 24576;
        iM3734getCircularIndeterminateStrokeCapKaPHkGw = i;
        i7 = i3 & 32;
        if (i7 != 0) {
            i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            f3 = f2;
        } else {
            f3 = f2;
            if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(f3)) {
                    i8 = 131072;
                } else {
                    i8 = 65536;
                }
                i4 |= i8;
            }
        }
        if ((i4 & 74899) != 74898) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i2 & 1) != 0) {
                if (i12 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 2) != 0) {
                    circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                    i4 &= -113;
                }
                if (i13 != 0) {
                    fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                }
                if ((i3 & 8) != 0) {
                    circularIndeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularIndeterminateTrackColor(composerStartRestartGroup, 6);
                    i4 &= -7169;
                } else {
                    circularIndeterminateTrackColor = j3;
                }
                if (i5 != 0) {
                    iM3734getCircularIndeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3734getCircularIndeterminateStrokeCapKaPHkGw();
                }
                if (i7 != 0) {
                    fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3735getCircularIndicatorTrackGapSizeD9Ej5fM();
                } else {
                    fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = f3;
                }
                i10 = iM3734getCircularIndeterminateStrokeCapKaPHkGw;
            } else {
                if (i12 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 2) != 0) {
                    circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                    i4 &= -113;
                }
                if (i13 != 0) {
                    fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                }
                if ((i3 & 8) != 0) {
                    circularIndeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularIndeterminateTrackColor(composerStartRestartGroup, 6);
                    i4 &= -7169;
                } else {
                    circularIndeterminateTrackColor = j3;
                }
                if (i5 != 0) {
                    iM3734getCircularIndeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3734getCircularIndeterminateStrokeCapKaPHkGw();
                }
                if (i7 != 0) {
                    fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3735getCircularIndicatorTrackGapSizeD9Ej5fM();
                } else {
                    fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = f3;
                }
                i10 = iM3734getCircularIndeterminateStrokeCapKaPHkGw;
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(333154241, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:630)");
            }
            stroke = new Stroke(((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(fM3736getCircularStrokeWidthD9Ej5fM), 0.0f, i10, 0, null, 26, null);
            InfiniteTransition infiniteTransitionRememberInfiniteTransition4 = InfiniteTransitionKt.rememberInfiniteTransition(null, composerStartRestartGroup, 0, 1);
            InfiniteRepeatableSpec<Float> circularIndeterminateGlobalRotationAnimationSpec4 = getCircularIndeterminateGlobalRotationAnimationSpec();
            int i17 = InfiniteTransition.$stable | 432 | (InfiniteRepeatableSpec.$stable << 9);
            stateAnimateFloat = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition4, 0.0f, 1080.0f, circularIndeterminateGlobalRotationAnimationSpec4, null, composerStartRestartGroup, i17, 8);
            stateAnimateFloat2 = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition4, 0.0f, 360.0f, getCircularIndeterminateRotationAnimationSpec(), null, composerStartRestartGroup, i17, 8);
            stateAnimateFloat3 = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition4, 0.1f, 0.87f, getCircularIndeterminateProgressAnimationSpec(), null, composerStartRestartGroup, i17, 8);
            Modifier modifierM2099size3ABfNKs4 = SizeKt.m2099size3ABfNKs(ProgressSemanticsKt.progressSemantics(modifier4), CircularIndicatorDiameter);
            boolean zChanged5 = composerStartRestartGroup.changed(stateAnimateFloat3);
            Modifier modifier8 = modifier4;
            if ((i4 & 57344) == 16384) {
                z2 = true;
            } else {
                z2 = false;
            }
            boolean z11 = z2 | zChanged5;
            if ((458752 & i4) == 131072) {
                z3 = true;
            } else {
                z3 = false;
            }
            boolean z12 = z11 | z3;
            if ((i4 & 896) == 256) {
                z4 = true;
            } else {
                z4 = false;
            }
            zChanged = z12 | z4 | composerStartRestartGroup.changed(stateAnimateFloat) | composerStartRestartGroup.changed(stateAnimateFloat2) | ((((i4 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(circularIndeterminateTrackColor)) || (i4 & 3072) == 2048) | composerStartRestartGroup.changedInstance(stroke) | ((((i4 & 112) ^ 48) <= 32 && composerStartRestartGroup.changed(circularColor)) || (i4 & 48) == 32);
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged) {
                j6 = circularIndeterminateTrackColor;
                j7 = circularColor;
                f6 = fM3736getCircularStrokeWidthD9Ej5fM;
                objRememberedValue = new nl3() { // from class: rn6
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return ProgressIndicatorKt.CircularProgressIndicator_4lLiAd8$lambda$34$lambda$33(stateAnimateFloat3, i10, fM3735getCircularIndicatorTrackGapSizeD9Ej5fM, f6, stateAnimateFloat, stateAnimateFloat2, j6, stroke, j7, (DrawScope) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                j6 = circularIndeterminateTrackColor;
                j7 = circularColor;
                f6 = fM3736getCircularStrokeWidthD9Ej5fM;
                objRememberedValue = new nl3() { // from class: rn6
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return ProgressIndicatorKt.CircularProgressIndicator_4lLiAd8$lambda$34$lambda$33(stateAnimateFloat3, i10, fM3735getCircularIndicatorTrackGapSizeD9Ej5fM, f6, stateAnimateFloat, stateAnimateFloat2, j6, stroke, j7, (DrawScope) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            CanvasKt.Canvas(modifierM2099size3ABfNKs4, (nl3) objRememberedValue, composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier8;
            composer2 = composerStartRestartGroup;
            i9 = i10;
            f4 = fM3735getCircularIndicatorTrackGapSizeD9Ej5fM;
            f5 = f6;
            j5 = j6;
            j4 = j7;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            j4 = circularColor;
            f4 = f3;
            f5 = fM3736getCircularStrokeWidthD9Ej5fM;
            j5 = j3;
            modifier3 = modifier2;
            i9 = iM3734getCircularIndeterminateStrokeCapKaPHkGw;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sn6
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    float f7 = f5;
                    Modifier modifier9 = modifier3;
                    long j8 = j4;
                    float f8 = f4;
                    return ProgressIndicatorKt.CircularProgressIndicator_4lLiAd8$lambda$35(modifier9, j8, f7, j5, i9, f8, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0124  */
    /* JADX WARN: Code duplicated, block: B:103:0x0134  */
    /* JADX WARN: Code duplicated, block: B:106:0x0165  */
    /* JADX WARN: Code duplicated, block: B:108:0x016f  */
    /* JADX WARN: Code duplicated, block: B:111:0x017f  */
    /* JADX WARN: Code duplicated, block: B:113:? A[RETURN, SYNTHETIC] */
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
    /* JADX WARN: Code duplicated, block: B:50:0x007f  */
    /* JADX WARN: Code duplicated, block: B:52:0x0087  */
    /* JADX WARN: Code duplicated, block: B:53:0x008a  */
    /* JADX WARN: Code duplicated, block: B:56:0x0090  */
    /* JADX WARN: Code duplicated, block: B:59:0x0098  */
    /* JADX WARN: Code duplicated, block: B:61:0x009c  */
    /* JADX WARN: Code duplicated, block: B:63:0x009f  */
    /* JADX WARN: Code duplicated, block: B:65:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:66:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:70:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:71:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:76:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:86:0x00ea A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:87:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:88:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:91:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:93:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:96:0x010a  */
    /* JADX WARN: Code duplicated, block: B:98:0x0114  */
    @ul2
    /* JADX INFO: renamed from: CircularProgressIndicator-DUhRLBM, reason: not valid java name */
    public static final /* synthetic */ void m3742CircularProgressIndicatorDUhRLBM(final ll3 ll3Var, Modifier modifier, long j, float f, long j2, int i, Composer composer, final int i2, final int i3) {
        ll3 ll3Var2;
        int i4;
        Modifier modifier2;
        long circularColor;
        int i5;
        float fM3736getCircularStrokeWidthD9Ej5fM;
        int i6;
        long circularDeterminateTrackColor;
        int i7;
        int i8;
        int i9;
        boolean z;
        Composer composer2;
        final Modifier modifier3;
        final long j3;
        final float f2;
        final long j4;
        final int i10;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        int iM3733getCircularDeterminateStrokeCapKaPHkGw;
        int i11;
        Composer composerStartRestartGroup = composer.startRestartGroup(-761680467);
        if ((i3 & 1) != 0) {
            i4 = i2 | 6;
            ll3Var2 = ll3Var;
        } else {
            ll3Var2 = ll3Var;
            if ((i2 & 6) == 0) {
                i4 = (composerStartRestartGroup.changedInstance(ll3Var2) ? 4 : 2) | i2;
            } else {
                i4 = i2;
            }
        }
        int i12 = i3 & 2;
        if (i12 == 0) {
            if ((i2 & 48) == 0) {
                modifier2 = modifier;
                i4 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if ((i3 & 4) == 0) {
                    circularColor = j;
                    int i13 = composerStartRestartGroup.changed(circularColor) ? 256 : 128;
                    i4 |= i13;
                } else {
                    circularColor = j;
                }
                i4 |= i13;
            } else {
                circularColor = j;
            }
            i5 = i3 & 8;
            if (i5 != 0) {
                if ((i2 & 3072) == 0) {
                    fM3736getCircularStrokeWidthD9Ej5fM = f;
                    if (composerStartRestartGroup.changed(fM3736getCircularStrokeWidthD9Ej5fM)) {
                        i6 = 2048;
                    } else {
                        i6 = 1024;
                    }
                    i4 |= i6;
                }
                if ((i2 & 24576) == 0) {
                    if ((i3 & 16) == 0) {
                        circularDeterminateTrackColor = j2;
                        int i14 = composerStartRestartGroup.changed(circularDeterminateTrackColor) ? 16384 : 8192;
                        i4 |= i14;
                    } else {
                        circularDeterminateTrackColor = j2;
                    }
                    i4 |= i14;
                } else {
                    circularDeterminateTrackColor = j2;
                }
                i7 = i3 & 32;
                if (i7 != 0) {
                    if ((196608 & i2) == 0) {
                        i8 = i;
                        if (composerStartRestartGroup.changed(i8)) {
                            i9 = 131072;
                        } else {
                            i9 = 65536;
                        }
                        i4 |= i9;
                    }
                    if ((74899 & i4) != 74898) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                            if (i12 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if ((i3 & 4) != 0) {
                                circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                                i4 &= -897;
                            }
                            if (i5 != 0) {
                                fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                            }
                            if ((i3 & 16) != 0) {
                                i4 &= -57345;
                                circularDeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularDeterminateTrackColor(composerStartRestartGroup, 6);
                            }
                            if (i7 != 0) {
                                iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                            } else {
                                iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                            }
                            i11 = -761680467;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            if ((i3 & 4) != 0) {
                                i4 &= -897;
                            }
                            if ((i3 & 16) != 0) {
                                i4 &= -57345;
                            }
                            circularDeterminateTrackColor = circularDeterminateTrackColor;
                            iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                            i11 = -761680467;
                            modifier4 = modifier2;
                            circularColor = circularColor;
                            fM3736getCircularStrokeWidthD9Ej5fM = fM3736getCircularStrokeWidthD9Ej5fM;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i11, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:480)");
                        }
                        composer2 = composerStartRestartGroup;
                        m3743CircularProgressIndicatorIyT6zlY(ll3Var2, modifier4, circularColor, fM3736getCircularStrokeWidthD9Ej5fM, circularDeterminateTrackColor, iM3733getCircularDeterminateStrokeCapKaPHkGw, ProgressIndicatorDefaults.INSTANCE.m3735getCircularIndicatorTrackGapSizeD9Ej5fM(), composer2, (i4 & 14) | 1572864 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (57344 & i4) | (i4 & 458752), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        j3 = circularColor;
                        f2 = fM3736getCircularStrokeWidthD9Ej5fM;
                        j4 = circularDeterminateTrackColor;
                        i10 = iM3733getCircularDeterminateStrokeCapKaPHkGw;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        j3 = circularColor;
                        f2 = fM3736getCircularStrokeWidthD9Ej5fM;
                        j4 = circularDeterminateTrackColor;
                        i10 = i8;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: en6
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$20(ll3Var, modifier3, j3, f2, j4, i10, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i8 = i;
                if ((74899 & i4) != 74898) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i12 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                            i4 &= -897;
                        }
                        if (i5 != 0) {
                            fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                        }
                        if ((i3 & 16) != 0) {
                            i4 &= -57345;
                            circularDeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularDeterminateTrackColor(composerStartRestartGroup, 6);
                        }
                        if (i7 != 0) {
                            iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                        } else {
                            iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                        }
                        i11 = -761680467;
                    } else {
                        if (i12 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                            i4 &= -897;
                        }
                        if (i5 != 0) {
                            fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                        }
                        if ((i3 & 16) != 0) {
                            i4 &= -57345;
                            circularDeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularDeterminateTrackColor(composerStartRestartGroup, 6);
                        }
                        if (i7 != 0) {
                            iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                        } else {
                            iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                        }
                        i11 = -761680467;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i11, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:480)");
                    }
                    composer2 = composerStartRestartGroup;
                    m3743CircularProgressIndicatorIyT6zlY(ll3Var2, modifier4, circularColor, fM3736getCircularStrokeWidthD9Ej5fM, circularDeterminateTrackColor, iM3733getCircularDeterminateStrokeCapKaPHkGw, ProgressIndicatorDefaults.INSTANCE.m3735getCircularIndicatorTrackGapSizeD9Ej5fM(), composer2, (i4 & 14) | 1572864 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (57344 & i4) | (i4 & 458752), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    j3 = circularColor;
                    f2 = fM3736getCircularStrokeWidthD9Ej5fM;
                    j4 = circularDeterminateTrackColor;
                    i10 = iM3733getCircularDeterminateStrokeCapKaPHkGw;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    j3 = circularColor;
                    f2 = fM3736getCircularStrokeWidthD9Ej5fM;
                    j4 = circularDeterminateTrackColor;
                    i10 = i8;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: en6
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$20(ll3Var, modifier3, j3, f2, j4, i10, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 3072;
            fM3736getCircularStrokeWidthD9Ej5fM = f;
            if ((i2 & 24576) == 0) {
                if ((i3 & 16) == 0) {
                    circularDeterminateTrackColor = j2;
                    if (composerStartRestartGroup.changed(circularDeterminateTrackColor)) {
                    }
                    i4 |= i14;
                } else {
                    circularDeterminateTrackColor = j2;
                }
                i4 |= i14;
            } else {
                circularDeterminateTrackColor = j2;
            }
            i7 = i3 & 32;
            if (i7 != 0) {
                if ((196608 & i2) == 0) {
                    i8 = i;
                    if (composerStartRestartGroup.changed(i8)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i4 |= i9;
                }
                if ((74899 & i4) != 74898) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i12 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                            i4 &= -897;
                        }
                        if (i5 != 0) {
                            fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                        }
                        if ((i3 & 16) != 0) {
                            i4 &= -57345;
                            circularDeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularDeterminateTrackColor(composerStartRestartGroup, 6);
                        }
                        if (i7 != 0) {
                            iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                        } else {
                            iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                        }
                        i11 = -761680467;
                    } else {
                        if (i12 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                            i4 &= -897;
                        }
                        if (i5 != 0) {
                            fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                        }
                        if ((i3 & 16) != 0) {
                            i4 &= -57345;
                            circularDeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularDeterminateTrackColor(composerStartRestartGroup, 6);
                        }
                        if (i7 != 0) {
                            iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                        } else {
                            iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                        }
                        i11 = -761680467;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i11, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:480)");
                    }
                    composer2 = composerStartRestartGroup;
                    m3743CircularProgressIndicatorIyT6zlY(ll3Var2, modifier4, circularColor, fM3736getCircularStrokeWidthD9Ej5fM, circularDeterminateTrackColor, iM3733getCircularDeterminateStrokeCapKaPHkGw, ProgressIndicatorDefaults.INSTANCE.m3735getCircularIndicatorTrackGapSizeD9Ej5fM(), composer2, (i4 & 14) | 1572864 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (57344 & i4) | (i4 & 458752), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    j3 = circularColor;
                    f2 = fM3736getCircularStrokeWidthD9Ej5fM;
                    j4 = circularDeterminateTrackColor;
                    i10 = iM3733getCircularDeterminateStrokeCapKaPHkGw;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    j3 = circularColor;
                    f2 = fM3736getCircularStrokeWidthD9Ej5fM;
                    j4 = circularDeterminateTrackColor;
                    i10 = i8;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: en6
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$20(ll3Var, modifier3, j3, f2, j4, i10, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i8 = i;
            if ((74899 & i4) != 74898) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i12 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if (i5 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    }
                    if ((i3 & 16) != 0) {
                        i4 &= -57345;
                        circularDeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularDeterminateTrackColor(composerStartRestartGroup, 6);
                    }
                    if (i7 != 0) {
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                    } else {
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                    }
                    i11 = -761680467;
                } else {
                    if (i12 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if (i5 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    }
                    if ((i3 & 16) != 0) {
                        i4 &= -57345;
                        circularDeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularDeterminateTrackColor(composerStartRestartGroup, 6);
                    }
                    if (i7 != 0) {
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                    } else {
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                    }
                    i11 = -761680467;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i11, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:480)");
                }
                composer2 = composerStartRestartGroup;
                m3743CircularProgressIndicatorIyT6zlY(ll3Var2, modifier4, circularColor, fM3736getCircularStrokeWidthD9Ej5fM, circularDeterminateTrackColor, iM3733getCircularDeterminateStrokeCapKaPHkGw, ProgressIndicatorDefaults.INSTANCE.m3735getCircularIndicatorTrackGapSizeD9Ej5fM(), composer2, (i4 & 14) | 1572864 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (57344 & i4) | (i4 & 458752), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                j3 = circularColor;
                f2 = fM3736getCircularStrokeWidthD9Ej5fM;
                j4 = circularDeterminateTrackColor;
                i10 = iM3733getCircularDeterminateStrokeCapKaPHkGw;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                j3 = circularColor;
                f2 = fM3736getCircularStrokeWidthD9Ej5fM;
                j4 = circularDeterminateTrackColor;
                i10 = i8;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: en6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$20(ll3Var, modifier3, j3, f2, j4, i10, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 48;
        modifier2 = modifier;
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i3 & 4) == 0) {
                circularColor = j;
                if (composerStartRestartGroup.changed(circularColor)) {
                }
                i4 |= i13;
            } else {
                circularColor = j;
            }
            i4 |= i13;
        } else {
            circularColor = j;
        }
        i5 = i3 & 8;
        if (i5 != 0) {
            if ((i2 & 3072) == 0) {
                fM3736getCircularStrokeWidthD9Ej5fM = f;
                if (composerStartRestartGroup.changed(fM3736getCircularStrokeWidthD9Ej5fM)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i4 |= i6;
            }
            if ((i2 & 24576) == 0) {
                if ((i3 & 16) == 0) {
                    circularDeterminateTrackColor = j2;
                    if (composerStartRestartGroup.changed(circularDeterminateTrackColor)) {
                    }
                    i4 |= i14;
                } else {
                    circularDeterminateTrackColor = j2;
                }
                i4 |= i14;
            } else {
                circularDeterminateTrackColor = j2;
            }
            i7 = i3 & 32;
            if (i7 != 0) {
                if ((196608 & i2) == 0) {
                    i8 = i;
                    if (composerStartRestartGroup.changed(i8)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i4 |= i9;
                }
                if ((74899 & i4) != 74898) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i12 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                            i4 &= -897;
                        }
                        if (i5 != 0) {
                            fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                        }
                        if ((i3 & 16) != 0) {
                            i4 &= -57345;
                            circularDeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularDeterminateTrackColor(composerStartRestartGroup, 6);
                        }
                        if (i7 != 0) {
                            iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                        } else {
                            iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                        }
                        i11 = -761680467;
                    } else {
                        if (i12 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                            i4 &= -897;
                        }
                        if (i5 != 0) {
                            fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                        }
                        if ((i3 & 16) != 0) {
                            i4 &= -57345;
                            circularDeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularDeterminateTrackColor(composerStartRestartGroup, 6);
                        }
                        if (i7 != 0) {
                            iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                        } else {
                            iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                        }
                        i11 = -761680467;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i11, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:480)");
                    }
                    composer2 = composerStartRestartGroup;
                    m3743CircularProgressIndicatorIyT6zlY(ll3Var2, modifier4, circularColor, fM3736getCircularStrokeWidthD9Ej5fM, circularDeterminateTrackColor, iM3733getCircularDeterminateStrokeCapKaPHkGw, ProgressIndicatorDefaults.INSTANCE.m3735getCircularIndicatorTrackGapSizeD9Ej5fM(), composer2, (i4 & 14) | 1572864 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (57344 & i4) | (i4 & 458752), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    j3 = circularColor;
                    f2 = fM3736getCircularStrokeWidthD9Ej5fM;
                    j4 = circularDeterminateTrackColor;
                    i10 = iM3733getCircularDeterminateStrokeCapKaPHkGw;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    j3 = circularColor;
                    f2 = fM3736getCircularStrokeWidthD9Ej5fM;
                    j4 = circularDeterminateTrackColor;
                    i10 = i8;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: en6
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$20(ll3Var, modifier3, j3, f2, j4, i10, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i8 = i;
            if ((74899 & i4) != 74898) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i12 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if (i5 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    }
                    if ((i3 & 16) != 0) {
                        i4 &= -57345;
                        circularDeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularDeterminateTrackColor(composerStartRestartGroup, 6);
                    }
                    if (i7 != 0) {
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                    } else {
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                    }
                    i11 = -761680467;
                } else {
                    if (i12 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if (i5 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    }
                    if ((i3 & 16) != 0) {
                        i4 &= -57345;
                        circularDeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularDeterminateTrackColor(composerStartRestartGroup, 6);
                    }
                    if (i7 != 0) {
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                    } else {
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                    }
                    i11 = -761680467;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i11, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:480)");
                }
                composer2 = composerStartRestartGroup;
                m3743CircularProgressIndicatorIyT6zlY(ll3Var2, modifier4, circularColor, fM3736getCircularStrokeWidthD9Ej5fM, circularDeterminateTrackColor, iM3733getCircularDeterminateStrokeCapKaPHkGw, ProgressIndicatorDefaults.INSTANCE.m3735getCircularIndicatorTrackGapSizeD9Ej5fM(), composer2, (i4 & 14) | 1572864 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (57344 & i4) | (i4 & 458752), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                j3 = circularColor;
                f2 = fM3736getCircularStrokeWidthD9Ej5fM;
                j4 = circularDeterminateTrackColor;
                i10 = iM3733getCircularDeterminateStrokeCapKaPHkGw;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                j3 = circularColor;
                f2 = fM3736getCircularStrokeWidthD9Ej5fM;
                j4 = circularDeterminateTrackColor;
                i10 = i8;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: en6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$20(ll3Var, modifier3, j3, f2, j4, i10, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 3072;
        fM3736getCircularStrokeWidthD9Ej5fM = f;
        if ((i2 & 24576) == 0) {
            if ((i3 & 16) == 0) {
                circularDeterminateTrackColor = j2;
                if (composerStartRestartGroup.changed(circularDeterminateTrackColor)) {
                }
                i4 |= i14;
            } else {
                circularDeterminateTrackColor = j2;
            }
            i4 |= i14;
        } else {
            circularDeterminateTrackColor = j2;
        }
        i7 = i3 & 32;
        if (i7 != 0) {
            if ((196608 & i2) == 0) {
                i8 = i;
                if (composerStartRestartGroup.changed(i8)) {
                    i9 = 131072;
                } else {
                    i9 = 65536;
                }
                i4 |= i9;
            }
            if ((74899 & i4) != 74898) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i12 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if (i5 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    }
                    if ((i3 & 16) != 0) {
                        i4 &= -57345;
                        circularDeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularDeterminateTrackColor(composerStartRestartGroup, 6);
                    }
                    if (i7 != 0) {
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                    } else {
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                    }
                    i11 = -761680467;
                } else {
                    if (i12 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if (i5 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    }
                    if ((i3 & 16) != 0) {
                        i4 &= -57345;
                        circularDeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularDeterminateTrackColor(composerStartRestartGroup, 6);
                    }
                    if (i7 != 0) {
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                    } else {
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                    }
                    i11 = -761680467;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i11, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:480)");
                }
                composer2 = composerStartRestartGroup;
                m3743CircularProgressIndicatorIyT6zlY(ll3Var2, modifier4, circularColor, fM3736getCircularStrokeWidthD9Ej5fM, circularDeterminateTrackColor, iM3733getCircularDeterminateStrokeCapKaPHkGw, ProgressIndicatorDefaults.INSTANCE.m3735getCircularIndicatorTrackGapSizeD9Ej5fM(), composer2, (i4 & 14) | 1572864 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (57344 & i4) | (i4 & 458752), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                j3 = circularColor;
                f2 = fM3736getCircularStrokeWidthD9Ej5fM;
                j4 = circularDeterminateTrackColor;
                i10 = iM3733getCircularDeterminateStrokeCapKaPHkGw;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                j3 = circularColor;
                f2 = fM3736getCircularStrokeWidthD9Ej5fM;
                j4 = circularDeterminateTrackColor;
                i10 = i8;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: en6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$20(ll3Var, modifier3, j3, f2, j4, i10, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        i8 = i;
        if ((74899 & i4) != 74898) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i2 & 1) != 0) {
                if (i12 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 4) != 0) {
                    circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                    i4 &= -897;
                }
                if (i5 != 0) {
                    fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                }
                if ((i3 & 16) != 0) {
                    i4 &= -57345;
                    circularDeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularDeterminateTrackColor(composerStartRestartGroup, 6);
                }
                if (i7 != 0) {
                    iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                } else {
                    iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                }
                i11 = -761680467;
            } else {
                if (i12 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 4) != 0) {
                    circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                    i4 &= -897;
                }
                if (i5 != 0) {
                    fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                }
                if ((i3 & 16) != 0) {
                    i4 &= -57345;
                    circularDeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularDeterminateTrackColor(composerStartRestartGroup, 6);
                }
                if (i7 != 0) {
                    iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                } else {
                    iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                }
                i11 = -761680467;
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i11, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:480)");
            }
            composer2 = composerStartRestartGroup;
            m3743CircularProgressIndicatorIyT6zlY(ll3Var2, modifier4, circularColor, fM3736getCircularStrokeWidthD9Ej5fM, circularDeterminateTrackColor, iM3733getCircularDeterminateStrokeCapKaPHkGw, ProgressIndicatorDefaults.INSTANCE.m3735getCircularIndicatorTrackGapSizeD9Ej5fM(), composer2, (i4 & 14) | 1572864 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (57344 & i4) | (i4 & 458752), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier4;
            j3 = circularColor;
            f2 = fM3736getCircularStrokeWidthD9Ej5fM;
            j4 = circularDeterminateTrackColor;
            i10 = iM3733getCircularDeterminateStrokeCapKaPHkGw;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            modifier3 = modifier2;
            j3 = circularColor;
            f2 = fM3736getCircularStrokeWidthD9Ej5fM;
            j4 = circularDeterminateTrackColor;
            i10 = i8;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: en6
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$20(ll3Var, modifier3, j3, f2, j4, i10, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x011c  */
    /* JADX WARN: Code duplicated, block: B:104:0x0127  */
    /* JADX WARN: Code duplicated, block: B:105:0x0131  */
    /* JADX WARN: Code duplicated, block: B:107:0x0134  */
    /* JADX WARN: Code duplicated, block: B:109:0x013d  */
    /* JADX WARN: Code duplicated, block: B:112:0x014f  */
    /* JADX WARN: Code duplicated, block: B:115:0x015d  */
    /* JADX WARN: Code duplicated, block: B:116:0x015f  */
    /* JADX WARN: Code duplicated, block: B:119:0x0166  */
    /* JADX WARN: Code duplicated, block: B:121:0x016e  */
    /* JADX WARN: Code duplicated, block: B:124:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:126:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:129:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:130:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:133:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:134:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:137:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:138:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:141:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:143:0x0200  */
    /* JADX WARN: Code duplicated, block: B:149:0x0215  */
    /* JADX WARN: Code duplicated, block: B:151:0x021b  */
    /* JADX WARN: Code duplicated, block: B:157:0x022c  */
    /* JADX WARN: Code duplicated, block: B:161:0x023c  */
    /* JADX WARN: Code duplicated, block: B:164:0x025c  */
    /* JADX WARN: Code duplicated, block: B:166:0x0266  */
    /* JADX WARN: Code duplicated, block: B:169:0x0275  */
    /* JADX WARN: Code duplicated, block: B:171:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0043  */
    /* JADX WARN: Code duplicated, block: B:31:0x0052  */
    /* JADX WARN: Code duplicated, block: B:33:0x0056  */
    /* JADX WARN: Code duplicated, block: B:36:0x005c  */
    /* JADX WARN: Code duplicated, block: B:38:0x0061  */
    /* JADX WARN: Code duplicated, block: B:40:0x0065  */
    /* JADX WARN: Code duplicated, block: B:42:0x006d  */
    /* JADX WARN: Code duplicated, block: B:43:0x0070  */
    /* JADX WARN: Code duplicated, block: B:47:0x0077  */
    /* JADX WARN: Code duplicated, block: B:49:0x007d  */
    /* JADX WARN: Code duplicated, block: B:52:0x0086  */
    /* JADX WARN: Code duplicated, block: B:54:0x008b  */
    /* JADX WARN: Code duplicated, block: B:57:0x0093  */
    /* JADX WARN: Code duplicated, block: B:58:0x0098  */
    /* JADX WARN: Code duplicated, block: B:60:0x009e  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:68:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:70:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:78:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:83:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:93:0x0101 A[PHI: r3 r6 r7 r11 r13 r15
      0x0101: PHI (r3v31 int) = (r3v22 int), (r3v33 int) binds: [B:108:0x013b, B:92:0x0100] A[DONT_GENERATE, DONT_INLINE]
      0x0101: PHI (r6v8 androidx.compose.ui.Modifier) = (r6v5 androidx.compose.ui.Modifier), (r6v2 androidx.compose.ui.Modifier) binds: [B:108:0x013b, B:92:0x0100] A[DONT_GENERATE, DONT_INLINE]
      0x0101: PHI (r7v10 long) = (r7v7 long), (r7v11 long) binds: [B:108:0x013b, B:92:0x0100] A[DONT_GENERATE, DONT_INLINE]
      0x0101: PHI (r11v6 long) = (r11v3 long), (r11v1 long) binds: [B:108:0x013b, B:92:0x0100] A[DONT_GENERATE, DONT_INLINE]
      0x0101: PHI (r13v6 float) = (r13v3 float), (r13v2 float) binds: [B:108:0x013b, B:92:0x0100] A[DONT_GENERATE, DONT_INLINE]
      0x0101: PHI (r15v12 int) = (r15v2 int), (r15v1 int) binds: [B:108:0x013b, B:92:0x0100] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:95:0x0106 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:96:0x0108  */
    /* JADX WARN: Code duplicated, block: B:99:0x0112  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX INFO: renamed from: CircularProgressIndicator-IyT6zlY, reason: not valid java name */
    public static final void m3743CircularProgressIndicatorIyT6zlY(final ll3<Float> ll3Var, Modifier modifier, long j, float f, long j2, int i, float f2, Composer composer, final int i2, final int i3) {
        int i4;
        Modifier modifier2;
        long circularColor;
        int i5;
        float fM3736getCircularStrokeWidthD9Ej5fM;
        int i6;
        long j3;
        int i7;
        int iM3733getCircularDeterminateStrokeCapKaPHkGw;
        int i8;
        int i9;
        float f3;
        int i10;
        int i11;
        boolean z;
        final long j4;
        final float f4;
        final float fM3735getCircularIndicatorTrackGapSizeD9Ej5fM;
        final int i12;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        long circularDeterminateTrackColor;
        boolean z2;
        Object objRememberedValue;
        final ll3 ll3Var2;
        final Stroke stroke;
        boolean zChanged;
        Object objRememberedValue2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean zChangedInstance;
        Object objRememberedValue3;
        final long j5;
        final long j6;
        final float f5;
        int i13;
        int i14;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1798883595);
        if ((i3 & 1) != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (composerStartRestartGroup.changedInstance(ll3Var) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i15 = i3 & 2;
        if (i15 == 0) {
            if ((i2 & 48) == 0) {
                modifier2 = modifier;
                i4 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                circularColor = j;
                if ((i3 & 4) == 0 || !composerStartRestartGroup.changed(circularColor)) {
                    i14 = 128;
                } else {
                    i14 = 256;
                }
                i4 |= i14;
            } else {
                circularColor = j;
            }
            i5 = i3 & 8;
            if (i5 != 0) {
                if ((i2 & 3072) == 0) {
                    fM3736getCircularStrokeWidthD9Ej5fM = f;
                    if (composerStartRestartGroup.changed(fM3736getCircularStrokeWidthD9Ej5fM)) {
                        i6 = 2048;
                    } else {
                        i6 = 1024;
                    }
                    i4 |= i6;
                }
                if ((i2 & 24576) == 0) {
                    j3 = j2;
                    if ((i3 & 16) == 0 || !composerStartRestartGroup.changed(j3)) {
                        i13 = 8192;
                    } else {
                        i13 = 16384;
                    }
                    i4 |= i13;
                } else {
                    j3 = j2;
                }
                i7 = i3 & 32;
                if (i7 != 0) {
                    i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    iM3733getCircularDeterminateStrokeCapKaPHkGw = i;
                } else {
                    iM3733getCircularDeterminateStrokeCapKaPHkGw = i;
                    if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(iM3733getCircularDeterminateStrokeCapKaPHkGw)) {
                            i8 = 131072;
                        } else {
                            i8 = 65536;
                        }
                        i4 |= i8;
                    }
                }
                i9 = i3 & 64;
                if (i9 != 0) {
                    i4 |= 1572864;
                    f3 = f2;
                } else {
                    f3 = f2;
                    if ((i2 & 1572864) == 0) {
                        if (composerStartRestartGroup.changed(f3)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i4 |= i10;
                    }
                }
                i11 = 1;
                if ((i4 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                        if (i15 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                            i4 &= -897;
                        }
                        if (i5 != 0) {
                            fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                        }
                        if ((i3 & 16) != 0) {
                            circularDeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularDeterminateTrackColor(composerStartRestartGroup, 6);
                            i4 &= -57345;
                        } else {
                            circularDeterminateTrackColor = j3;
                        }
                        if (i7 != 0) {
                            iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                        }
                        if (i9 != 0) {
                            fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3735getCircularIndicatorTrackGapSizeD9Ej5fM();
                        }
                        i12 = iM3733getCircularDeterminateStrokeCapKaPHkGw;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1798883595, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:526)");
                        }
                        if ((i4 & 14) == 4) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z2 || objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new zg0(ll3Var, 4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        ll3Var2 = (ll3) objRememberedValue;
                        stroke = new Stroke(((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(fM3736getCircularStrokeWidthD9Ej5fM), 0.0f, i12, 0, null, 26, null);
                        zChanged = composerStartRestartGroup.changed(ll3Var2);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (zChanged || objRememberedValue2 == Composer.Companion.getEmpty()) {
                            objRememberedValue2 = new w54(ll3Var2, i11);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        Modifier modifierM2099size3ABfNKs = SizeKt.m2099size3ABfNKs(SemanticsModifierKt.semantics(modifier2, true, (nl3) objRememberedValue2), CircularIndicatorDiameter);
                        boolean zChanged2 = composerStartRestartGroup.changed(ll3Var2);
                        if ((458752 & i4) == 131072) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        boolean z6 = z3 | zChanged2;
                        if ((3670016 & i4) == 1048576) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        boolean z7 = z6 | z4;
                        if ((i4 & 7168) == 2048) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        zChangedInstance = z7 | z5 | ((((57344 & i4) ^ 24576) <= 16384 && composerStartRestartGroup.changed(circularDeterminateTrackColor)) || (i4 & 24576) == 16384) | composerStartRestartGroup.changedInstance(stroke) | ((((i4 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256 && composerStartRestartGroup.changed(circularColor)) || (i4 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (!zChangedInstance || objRememberedValue3 == Composer.Companion.getEmpty()) {
                            j5 = circularDeterminateTrackColor;
                            j6 = circularColor;
                            f5 = fM3736getCircularStrokeWidthD9Ej5fM;
                            objRememberedValue3 = new nl3() { // from class: pn6
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return ProgressIndicatorKt.CircularProgressIndicator_IyT6zlY$lambda$28$lambda$27(ll3Var2, i12, fM3735getCircularIndicatorTrackGapSizeD9Ej5fM, f5, j5, stroke, j6, (DrawScope) obj);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            j5 = circularDeterminateTrackColor;
                            j6 = circularColor;
                            f5 = fM3736getCircularStrokeWidthD9Ej5fM;
                        }
                        CanvasKt.Canvas(modifierM2099size3ABfNKs, (nl3) objRememberedValue3, composerStartRestartGroup, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        f4 = f5;
                        j3 = j5;
                        j4 = j6;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        if ((i3 & 4) != 0) {
                            i4 &= -897;
                        }
                        if ((i3 & 16) != 0) {
                            i4 &= -57345;
                        }
                        circularDeterminateTrackColor = j3;
                    }
                    fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = f3;
                    i12 = iM3733getCircularDeterminateStrokeCapKaPHkGw;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1798883595, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:526)");
                    }
                    if ((i4 & 14) == 4) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = new zg0(ll3Var, 4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new zg0(ll3Var, 4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    ll3Var2 = (ll3) objRememberedValue;
                    stroke = new Stroke(((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(fM3736getCircularStrokeWidthD9Ej5fM), 0.0f, i12, 0, null, 26, null);
                    zChanged = composerStartRestartGroup.changed(ll3Var2);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue2 = new w54(ll3Var2, i11);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new w54(ll3Var2, i11);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    Modifier modifierM2099size3ABfNKs2 = SizeKt.m2099size3ABfNKs(SemanticsModifierKt.semantics(modifier2, true, (nl3) objRememberedValue2), CircularIndicatorDiameter);
                    boolean zChanged3 = composerStartRestartGroup.changed(ll3Var2);
                    if ((458752 & i4) == 131072) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    boolean z8 = z3 | zChanged3;
                    if ((3670016 & i4) == 1048576) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    boolean z9 = z8 | z4;
                    if ((i4 & 7168) == 2048) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    zChangedInstance = z9 | z5 | ((((57344 & i4) ^ 24576) <= 16384 && composerStartRestartGroup.changed(circularDeterminateTrackColor)) || (i4 & 24576) == 16384) | composerStartRestartGroup.changedInstance(stroke) | ((((i4 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256 && composerStartRestartGroup.changed(circularColor)) || (i4 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance) {
                        j5 = circularDeterminateTrackColor;
                        j6 = circularColor;
                        f5 = fM3736getCircularStrokeWidthD9Ej5fM;
                        objRememberedValue3 = new nl3() { // from class: pn6
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return ProgressIndicatorKt.CircularProgressIndicator_IyT6zlY$lambda$28$lambda$27(ll3Var2, i12, fM3735getCircularIndicatorTrackGapSizeD9Ej5fM, f5, j5, stroke, j6, (DrawScope) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        j5 = circularDeterminateTrackColor;
                        j6 = circularColor;
                        f5 = fM3736getCircularStrokeWidthD9Ej5fM;
                        objRememberedValue3 = new nl3() { // from class: pn6
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return ProgressIndicatorKt.CircularProgressIndicator_IyT6zlY$lambda$28$lambda$27(ll3Var2, i12, fM3735getCircularIndicatorTrackGapSizeD9Ej5fM, f5, j5, stroke, j6, (DrawScope) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    CanvasKt.Canvas(modifierM2099size3ABfNKs2, (nl3) objRememberedValue3, composerStartRestartGroup, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    f4 = f5;
                    j3 = j5;
                    j4 = j6;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    j4 = circularColor;
                    f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                    fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = f3;
                    i12 = iM3733getCircularDeterminateStrokeCapKaPHkGw;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final Modifier modifier3 = modifier2;
                    final long j7 = j3;
                    final int i16 = i12;
                    final float f6 = fM3735getCircularIndicatorTrackGapSizeD9Ej5fM;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qn6
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ProgressIndicatorKt.CircularProgressIndicator_IyT6zlY$lambda$29(ll3Var, modifier3, j4, f4, j7, i16, f6, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 3072;
            fM3736getCircularStrokeWidthD9Ej5fM = f;
            if ((i2 & 24576) == 0) {
                j3 = j2;
                if ((i3 & 16) == 0) {
                    i13 = 8192;
                } else {
                    i13 = 8192;
                }
                i4 |= i13;
            } else {
                j3 = j2;
            }
            i7 = i3 & 32;
            if (i7 != 0) {
                i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                iM3733getCircularDeterminateStrokeCapKaPHkGw = i;
            } else {
                iM3733getCircularDeterminateStrokeCapKaPHkGw = i;
                if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(iM3733getCircularDeterminateStrokeCapKaPHkGw)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i4 |= i8;
                }
            }
            i9 = i3 & 64;
            if (i9 != 0) {
                i4 |= 1572864;
                f3 = f2;
            } else {
                f3 = f2;
                if ((i2 & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(f3)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i4 |= i10;
                }
            }
            i11 = 1;
            if ((i4 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i15 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if (i5 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    }
                    if ((i3 & 16) != 0) {
                        circularDeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularDeterminateTrackColor(composerStartRestartGroup, 6);
                        i4 &= -57345;
                    } else {
                        circularDeterminateTrackColor = j3;
                    }
                    if (i7 != 0) {
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                    }
                    if (i9 != 0) {
                        fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3735getCircularIndicatorTrackGapSizeD9Ej5fM();
                    } else {
                        fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = f3;
                    }
                } else {
                    if (i15 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if (i5 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    }
                    if ((i3 & 16) != 0) {
                        circularDeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularDeterminateTrackColor(composerStartRestartGroup, 6);
                        i4 &= -57345;
                    } else {
                        circularDeterminateTrackColor = j3;
                    }
                    if (i7 != 0) {
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                    }
                    if (i9 != 0) {
                        fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3735getCircularIndicatorTrackGapSizeD9Ej5fM();
                    } else {
                        fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = f3;
                    }
                }
                i12 = iM3733getCircularDeterminateStrokeCapKaPHkGw;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1798883595, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:526)");
                }
                if ((i4 & 14) == 4) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z2) {
                    objRememberedValue = new zg0(ll3Var, 4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new zg0(ll3Var, 4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                ll3Var2 = (ll3) objRememberedValue;
                stroke = new Stroke(((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(fM3736getCircularStrokeWidthD9Ej5fM), 0.0f, i12, 0, null, 26, null);
                zChanged = composerStartRestartGroup.changed(ll3Var2);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue2 = new w54(ll3Var2, i11);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = new w54(ll3Var2, i11);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                Modifier modifierM2099size3ABfNKs3 = SizeKt.m2099size3ABfNKs(SemanticsModifierKt.semantics(modifier2, true, (nl3) objRememberedValue2), CircularIndicatorDiameter);
                boolean zChanged4 = composerStartRestartGroup.changed(ll3Var2);
                if ((458752 & i4) == 131072) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                boolean z10 = z3 | zChanged4;
                if ((3670016 & i4) == 1048576) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                boolean z11 = z10 | z4;
                if ((i4 & 7168) == 2048) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                zChangedInstance = z11 | z5 | ((((57344 & i4) ^ 24576) <= 16384 && composerStartRestartGroup.changed(circularDeterminateTrackColor)) || (i4 & 24576) == 16384) | composerStartRestartGroup.changedInstance(stroke) | ((((i4 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256 && composerStartRestartGroup.changed(circularColor)) || (i4 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance) {
                    j5 = circularDeterminateTrackColor;
                    j6 = circularColor;
                    f5 = fM3736getCircularStrokeWidthD9Ej5fM;
                    objRememberedValue3 = new nl3() { // from class: pn6
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return ProgressIndicatorKt.CircularProgressIndicator_IyT6zlY$lambda$28$lambda$27(ll3Var2, i12, fM3735getCircularIndicatorTrackGapSizeD9Ej5fM, f5, j5, stroke, j6, (DrawScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    j5 = circularDeterminateTrackColor;
                    j6 = circularColor;
                    f5 = fM3736getCircularStrokeWidthD9Ej5fM;
                    objRememberedValue3 = new nl3() { // from class: pn6
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return ProgressIndicatorKt.CircularProgressIndicator_IyT6zlY$lambda$28$lambda$27(ll3Var2, i12, fM3735getCircularIndicatorTrackGapSizeD9Ej5fM, f5, j5, stroke, j6, (DrawScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                CanvasKt.Canvas(modifierM2099size3ABfNKs3, (nl3) objRememberedValue3, composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                f4 = f5;
                j3 = j5;
                j4 = j6;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                j4 = circularColor;
                f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = f3;
                i12 = iM3733getCircularDeterminateStrokeCapKaPHkGw;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final Modifier modifier4 = modifier2;
                final long j8 = j3;
                final int i17 = i12;
                final float f7 = fM3735getCircularIndicatorTrackGapSizeD9Ej5fM;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qn6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ProgressIndicatorKt.CircularProgressIndicator_IyT6zlY$lambda$29(ll3Var, modifier4, j4, f4, j8, i17, f7, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 48;
        modifier2 = modifier;
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            circularColor = j;
            if ((i3 & 4) == 0) {
                i14 = 128;
            } else {
                i14 = 128;
            }
            i4 |= i14;
        } else {
            circularColor = j;
        }
        i5 = i3 & 8;
        if (i5 != 0) {
            if ((i2 & 3072) == 0) {
                fM3736getCircularStrokeWidthD9Ej5fM = f;
                if (composerStartRestartGroup.changed(fM3736getCircularStrokeWidthD9Ej5fM)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i4 |= i6;
            }
            if ((i2 & 24576) == 0) {
                j3 = j2;
                if ((i3 & 16) == 0) {
                    i13 = 8192;
                } else {
                    i13 = 8192;
                }
                i4 |= i13;
            } else {
                j3 = j2;
            }
            i7 = i3 & 32;
            if (i7 != 0) {
                i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                iM3733getCircularDeterminateStrokeCapKaPHkGw = i;
            } else {
                iM3733getCircularDeterminateStrokeCapKaPHkGw = i;
                if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(iM3733getCircularDeterminateStrokeCapKaPHkGw)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i4 |= i8;
                }
            }
            i9 = i3 & 64;
            if (i9 != 0) {
                i4 |= 1572864;
                f3 = f2;
            } else {
                f3 = f2;
                if ((i2 & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(f3)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i4 |= i10;
                }
            }
            i11 = 1;
            if ((i4 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i15 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if (i5 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    }
                    if ((i3 & 16) != 0) {
                        circularDeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularDeterminateTrackColor(composerStartRestartGroup, 6);
                        i4 &= -57345;
                    } else {
                        circularDeterminateTrackColor = j3;
                    }
                    if (i7 != 0) {
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                    }
                    if (i9 != 0) {
                        fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3735getCircularIndicatorTrackGapSizeD9Ej5fM();
                    } else {
                        fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = f3;
                    }
                } else {
                    if (i15 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if (i5 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    }
                    if ((i3 & 16) != 0) {
                        circularDeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularDeterminateTrackColor(composerStartRestartGroup, 6);
                        i4 &= -57345;
                    } else {
                        circularDeterminateTrackColor = j3;
                    }
                    if (i7 != 0) {
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                    }
                    if (i9 != 0) {
                        fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3735getCircularIndicatorTrackGapSizeD9Ej5fM();
                    } else {
                        fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = f3;
                    }
                }
                i12 = iM3733getCircularDeterminateStrokeCapKaPHkGw;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1798883595, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:526)");
                }
                if ((i4 & 14) == 4) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z2) {
                    objRememberedValue = new zg0(ll3Var, 4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new zg0(ll3Var, 4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                ll3Var2 = (ll3) objRememberedValue;
                stroke = new Stroke(((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(fM3736getCircularStrokeWidthD9Ej5fM), 0.0f, i12, 0, null, 26, null);
                zChanged = composerStartRestartGroup.changed(ll3Var2);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue2 = new w54(ll3Var2, i11);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = new w54(ll3Var2, i11);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                Modifier modifierM2099size3ABfNKs4 = SizeKt.m2099size3ABfNKs(SemanticsModifierKt.semantics(modifier2, true, (nl3) objRememberedValue2), CircularIndicatorDiameter);
                boolean zChanged5 = composerStartRestartGroup.changed(ll3Var2);
                if ((458752 & i4) == 131072) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                boolean z12 = z3 | zChanged5;
                if ((3670016 & i4) == 1048576) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                boolean z13 = z12 | z4;
                if ((i4 & 7168) == 2048) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                zChangedInstance = z13 | z5 | ((((57344 & i4) ^ 24576) <= 16384 && composerStartRestartGroup.changed(circularDeterminateTrackColor)) || (i4 & 24576) == 16384) | composerStartRestartGroup.changedInstance(stroke) | ((((i4 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256 && composerStartRestartGroup.changed(circularColor)) || (i4 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance) {
                    j5 = circularDeterminateTrackColor;
                    j6 = circularColor;
                    f5 = fM3736getCircularStrokeWidthD9Ej5fM;
                    objRememberedValue3 = new nl3() { // from class: pn6
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return ProgressIndicatorKt.CircularProgressIndicator_IyT6zlY$lambda$28$lambda$27(ll3Var2, i12, fM3735getCircularIndicatorTrackGapSizeD9Ej5fM, f5, j5, stroke, j6, (DrawScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    j5 = circularDeterminateTrackColor;
                    j6 = circularColor;
                    f5 = fM3736getCircularStrokeWidthD9Ej5fM;
                    objRememberedValue3 = new nl3() { // from class: pn6
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return ProgressIndicatorKt.CircularProgressIndicator_IyT6zlY$lambda$28$lambda$27(ll3Var2, i12, fM3735getCircularIndicatorTrackGapSizeD9Ej5fM, f5, j5, stroke, j6, (DrawScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                CanvasKt.Canvas(modifierM2099size3ABfNKs4, (nl3) objRememberedValue3, composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                f4 = f5;
                j3 = j5;
                j4 = j6;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                j4 = circularColor;
                f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = f3;
                i12 = iM3733getCircularDeterminateStrokeCapKaPHkGw;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final Modifier modifier5 = modifier2;
                final long j9 = j3;
                final int i18 = i12;
                final float f8 = fM3735getCircularIndicatorTrackGapSizeD9Ej5fM;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qn6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ProgressIndicatorKt.CircularProgressIndicator_IyT6zlY$lambda$29(ll3Var, modifier5, j4, f4, j9, i18, f8, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 3072;
        fM3736getCircularStrokeWidthD9Ej5fM = f;
        if ((i2 & 24576) == 0) {
            j3 = j2;
            if ((i3 & 16) == 0) {
                i13 = 8192;
            } else {
                i13 = 8192;
            }
            i4 |= i13;
        } else {
            j3 = j2;
        }
        i7 = i3 & 32;
        if (i7 != 0) {
            i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            iM3733getCircularDeterminateStrokeCapKaPHkGw = i;
        } else {
            iM3733getCircularDeterminateStrokeCapKaPHkGw = i;
            if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(iM3733getCircularDeterminateStrokeCapKaPHkGw)) {
                    i8 = 131072;
                } else {
                    i8 = 65536;
                }
                i4 |= i8;
            }
        }
        i9 = i3 & 64;
        if (i9 != 0) {
            i4 |= 1572864;
            f3 = f2;
        } else {
            f3 = f2;
            if ((i2 & 1572864) == 0) {
                if (composerStartRestartGroup.changed(f3)) {
                    i10 = 1048576;
                } else {
                    i10 = 524288;
                }
                i4 |= i10;
            }
        }
        i11 = 1;
        if ((i4 & 599187) != 599186) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i2 & 1) != 0) {
                if (i15 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if ((i3 & 4) != 0) {
                    circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                    i4 &= -897;
                }
                if (i5 != 0) {
                    fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                }
                if ((i3 & 16) != 0) {
                    circularDeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularDeterminateTrackColor(composerStartRestartGroup, 6);
                    i4 &= -57345;
                } else {
                    circularDeterminateTrackColor = j3;
                }
                if (i7 != 0) {
                    iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                }
                if (i9 != 0) {
                    fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3735getCircularIndicatorTrackGapSizeD9Ej5fM();
                } else {
                    fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = f3;
                }
            } else {
                if (i15 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if ((i3 & 4) != 0) {
                    circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                    i4 &= -897;
                }
                if (i5 != 0) {
                    fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                }
                if ((i3 & 16) != 0) {
                    circularDeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularDeterminateTrackColor(composerStartRestartGroup, 6);
                    i4 &= -57345;
                } else {
                    circularDeterminateTrackColor = j3;
                }
                if (i7 != 0) {
                    iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                }
                if (i9 != 0) {
                    fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3735getCircularIndicatorTrackGapSizeD9Ej5fM();
                } else {
                    fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = f3;
                }
            }
            i12 = iM3733getCircularDeterminateStrokeCapKaPHkGw;
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1798883595, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:526)");
            }
            if ((i4 & 14) == 4) {
                z2 = true;
            } else {
                z2 = false;
            }
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z2) {
                objRememberedValue = new zg0(ll3Var, 4);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                objRememberedValue = new zg0(ll3Var, 4);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            ll3Var2 = (ll3) objRememberedValue;
            stroke = new Stroke(((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(fM3736getCircularStrokeWidthD9Ej5fM), 0.0f, i12, 0, null, 26, null);
            zChanged = composerStartRestartGroup.changed(ll3Var2);
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (zChanged) {
                objRememberedValue2 = new w54(ll3Var2, i11);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            } else {
                objRememberedValue2 = new w54(ll3Var2, i11);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            Modifier modifierM2099size3ABfNKs5 = SizeKt.m2099size3ABfNKs(SemanticsModifierKt.semantics(modifier2, true, (nl3) objRememberedValue2), CircularIndicatorDiameter);
            boolean zChanged6 = composerStartRestartGroup.changed(ll3Var2);
            if ((458752 & i4) == 131072) {
                z3 = true;
            } else {
                z3 = false;
            }
            boolean z14 = z3 | zChanged6;
            if ((3670016 & i4) == 1048576) {
                z4 = true;
            } else {
                z4 = false;
            }
            boolean z15 = z14 | z4;
            if ((i4 & 7168) == 2048) {
                z5 = true;
            } else {
                z5 = false;
            }
            zChangedInstance = z15 | z5 | ((((57344 & i4) ^ 24576) <= 16384 && composerStartRestartGroup.changed(circularDeterminateTrackColor)) || (i4 & 24576) == 16384) | composerStartRestartGroup.changedInstance(stroke) | ((((i4 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256 && composerStartRestartGroup.changed(circularColor)) || (i4 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance) {
                j5 = circularDeterminateTrackColor;
                j6 = circularColor;
                f5 = fM3736getCircularStrokeWidthD9Ej5fM;
                objRememberedValue3 = new nl3() { // from class: pn6
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return ProgressIndicatorKt.CircularProgressIndicator_IyT6zlY$lambda$28$lambda$27(ll3Var2, i12, fM3735getCircularIndicatorTrackGapSizeD9Ej5fM, f5, j5, stroke, j6, (DrawScope) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            } else {
                j5 = circularDeterminateTrackColor;
                j6 = circularColor;
                f5 = fM3736getCircularStrokeWidthD9Ej5fM;
                objRememberedValue3 = new nl3() { // from class: pn6
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return ProgressIndicatorKt.CircularProgressIndicator_IyT6zlY$lambda$28$lambda$27(ll3Var2, i12, fM3735getCircularIndicatorTrackGapSizeD9Ej5fM, f5, j5, stroke, j6, (DrawScope) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            CanvasKt.Canvas(modifierM2099size3ABfNKs5, (nl3) objRememberedValue3, composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            f4 = f5;
            j3 = j5;
            j4 = j6;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            j4 = circularColor;
            f4 = fM3736getCircularStrokeWidthD9Ej5fM;
            fM3735getCircularIndicatorTrackGapSizeD9Ej5fM = f3;
            i12 = iM3733getCircularDeterminateStrokeCapKaPHkGw;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier6 = modifier2;
            final long j10 = j3;
            final int i19 = i12;
            final float f9 = fM3735getCircularIndicatorTrackGapSizeD9Ej5fM;
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qn6
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ProgressIndicatorKt.CircularProgressIndicator_IyT6zlY$lambda$29(ll3Var, modifier6, j4, f4, j10, i19, f9, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x0063  */
    /* JADX WARN: Code duplicated, block: B:39:0x0067  */
    /* JADX WARN: Code duplicated, block: B:41:0x006f  */
    /* JADX WARN: Code duplicated, block: B:42:0x0072  */
    /* JADX WARN: Code duplicated, block: B:45:0x0078  */
    /* JADX WARN: Code duplicated, block: B:48:0x007e  */
    /* JADX WARN: Code duplicated, block: B:50:0x0083  */
    /* JADX WARN: Code duplicated, block: B:52:0x0087  */
    /* JADX WARN: Code duplicated, block: B:54:0x008f  */
    /* JADX WARN: Code duplicated, block: B:55:0x0092  */
    /* JADX WARN: Code duplicated, block: B:59:0x009b  */
    /* JADX WARN: Code duplicated, block: B:60:0x009d  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:65:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:76:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:77:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:80:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:82:0x00de  */
    /* JADX WARN: Code duplicated, block: B:85:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:87:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:88:0x0101  */
    /* JADX WARN: Code duplicated, block: B:91:0x0110  */
    /* JADX WARN: Code duplicated, block: B:94:0x013a  */
    /* JADX WARN: Code duplicated, block: B:96:0x0142  */
    /* JADX WARN: Code duplicated, block: B:99:0x014f  */
    @ul2
    /* JADX INFO: renamed from: CircularProgressIndicator-LxG7B9w, reason: not valid java name */
    public static final /* synthetic */ void m3744CircularProgressIndicatorLxG7B9w(Modifier modifier, long j, float f, long j2, int i, Composer composer, final int i2, final int i3) {
        Modifier modifier2;
        int i4;
        final long circularColor;
        float fM3736getCircularStrokeWidthD9Ej5fM;
        long circularIndeterminateTrackColor;
        int i5;
        int i6;
        int i7;
        boolean z;
        final float f2;
        final long j3;
        final Modifier modifier3;
        final int i8;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        Modifier modifier5;
        int i9;
        float f3;
        long j4;
        int iM3734getCircularIndeterminateStrokeCapKaPHkGw;
        Composer composerStartRestartGroup = composer.startRestartGroup(-115871647);
        int i10 = i3 & 1;
        if (i10 != 0) {
            i4 = i2 | 6;
            modifier2 = modifier;
        } else if ((i2 & 6) == 0) {
            modifier2 = modifier;
            i4 = (composerStartRestartGroup.changed(modifier2) ? 4 : 2) | i2;
        } else {
            modifier2 = modifier;
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            if ((i3 & 2) == 0) {
                circularColor = j;
                int i11 = composerStartRestartGroup.changed(circularColor) ? 32 : 16;
                i4 |= i11;
            } else {
                circularColor = j;
            }
            i4 |= i11;
        } else {
            circularColor = j;
        }
        int i12 = i3 & 4;
        if (i12 == 0) {
            if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                fM3736getCircularStrokeWidthD9Ej5fM = f;
                i4 |= composerStartRestartGroup.changed(fM3736getCircularStrokeWidthD9Ej5fM) ? 256 : 128;
            }
            if ((i2 & 3072) == 0) {
                if ((i3 & 8) == 0) {
                    circularIndeterminateTrackColor = j2;
                    int i13 = composerStartRestartGroup.changed(circularIndeterminateTrackColor) ? 2048 : 1024;
                    i4 |= i13;
                } else {
                    circularIndeterminateTrackColor = j2;
                }
                i4 |= i13;
            } else {
                circularIndeterminateTrackColor = j2;
            }
            i5 = i3 & 16;
            if (i5 != 0) {
                if ((i2 & 24576) == 0) {
                    i6 = i;
                    if (composerStartRestartGroup.changed(i6)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i4 |= i7;
                }
                if ((i4 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                        if (i10 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 2) != 0) {
                            circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                            i4 &= -113;
                        }
                        if (i12 != 0) {
                            fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                        }
                        if ((i3 & 8) != 0) {
                            circularIndeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularIndeterminateTrackColor(composerStartRestartGroup, 6);
                            i4 &= -7169;
                        }
                        if (i5 != 0) {
                            int i14 = i4;
                            modifier5 = modifier4;
                            i9 = i14;
                            f3 = fM3736getCircularStrokeWidthD9Ej5fM;
                            j4 = circularIndeterminateTrackColor;
                            iM3734getCircularIndeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3734getCircularIndeterminateStrokeCapKaPHkGw();
                        } else {
                            int i15 = i4;
                            modifier5 = modifier4;
                            i9 = i15;
                            f3 = fM3736getCircularStrokeWidthD9Ej5fM;
                            j4 = circularIndeterminateTrackColor;
                            iM3734getCircularIndeterminateStrokeCapKaPHkGw = i6;
                        }
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        if ((i3 & 2) != 0) {
                            i4 &= -113;
                        }
                        if ((i3 & 8) != 0) {
                            i4 &= -7169;
                        }
                        i9 = i4;
                        f3 = fM3736getCircularStrokeWidthD9Ej5fM;
                        j4 = circularIndeterminateTrackColor;
                        iM3734getCircularIndeterminateStrokeCapKaPHkGw = i6;
                        modifier5 = modifier2;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-115871647, i9, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:594)");
                    }
                    m3740CircularProgressIndicator4lLiAd8(modifier5, circularColor, f3, j4, iM3734getCircularIndeterminateStrokeCapKaPHkGw, ProgressIndicatorDefaults.INSTANCE.m3735getCircularIndicatorTrackGapSizeD9Ej5fM(), composerStartRestartGroup, (i9 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i9 & 112) | (i9 & 896) | (i9 & 7168) | (i9 & 57344), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    f2 = f3;
                    j3 = j4;
                    i8 = iM3734getCircularIndeterminateStrokeCapKaPHkGw;
                    modifier3 = modifier5;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    f2 = fM3736getCircularStrokeWidthD9Ej5fM;
                    j3 = circularIndeterminateTrackColor;
                    modifier3 = modifier2;
                    i8 = i6;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tn6
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            float f4 = f2;
                            return ProgressIndicatorKt.CircularProgressIndicator_LxG7B9w$lambda$30(modifier3, circularColor, f4, j3, i8, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 24576;
            i6 = i;
            if ((i4 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i10 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 2) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i4 &= -113;
                    }
                    if (i12 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    }
                    if ((i3 & 8) != 0) {
                        circularIndeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularIndeterminateTrackColor(composerStartRestartGroup, 6);
                        i4 &= -7169;
                    }
                    if (i5 != 0) {
                        int i16 = i4;
                        modifier5 = modifier4;
                        i9 = i16;
                        f3 = fM3736getCircularStrokeWidthD9Ej5fM;
                        j4 = circularIndeterminateTrackColor;
                        iM3734getCircularIndeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3734getCircularIndeterminateStrokeCapKaPHkGw();
                    } else {
                        int i17 = i4;
                        modifier5 = modifier4;
                        i9 = i17;
                        f3 = fM3736getCircularStrokeWidthD9Ej5fM;
                        j4 = circularIndeterminateTrackColor;
                        iM3734getCircularIndeterminateStrokeCapKaPHkGw = i6;
                    }
                } else {
                    if (i10 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 2) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i4 &= -113;
                    }
                    if (i12 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    }
                    if ((i3 & 8) != 0) {
                        circularIndeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularIndeterminateTrackColor(composerStartRestartGroup, 6);
                        i4 &= -7169;
                    }
                    if (i5 != 0) {
                        int i18 = i4;
                        modifier5 = modifier4;
                        i9 = i18;
                        f3 = fM3736getCircularStrokeWidthD9Ej5fM;
                        j4 = circularIndeterminateTrackColor;
                        iM3734getCircularIndeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3734getCircularIndeterminateStrokeCapKaPHkGw();
                    } else {
                        int i19 = i4;
                        modifier5 = modifier4;
                        i9 = i19;
                        f3 = fM3736getCircularStrokeWidthD9Ej5fM;
                        j4 = circularIndeterminateTrackColor;
                        iM3734getCircularIndeterminateStrokeCapKaPHkGw = i6;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-115871647, i9, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:594)");
                }
                m3740CircularProgressIndicator4lLiAd8(modifier5, circularColor, f3, j4, iM3734getCircularIndeterminateStrokeCapKaPHkGw, ProgressIndicatorDefaults.INSTANCE.m3735getCircularIndicatorTrackGapSizeD9Ej5fM(), composerStartRestartGroup, (i9 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i9 & 112) | (i9 & 896) | (i9 & 7168) | (i9 & 57344), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                f2 = f3;
                j3 = j4;
                i8 = iM3734getCircularIndeterminateStrokeCapKaPHkGw;
                modifier3 = modifier5;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                f2 = fM3736getCircularStrokeWidthD9Ej5fM;
                j3 = circularIndeterminateTrackColor;
                modifier3 = modifier2;
                i8 = i6;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tn6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        float f4 = f2;
                        return ProgressIndicatorKt.CircularProgressIndicator_LxG7B9w$lambda$30(modifier3, circularColor, f4, j3, i8, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        fM3736getCircularStrokeWidthD9Ej5fM = f;
        if ((i2 & 3072) == 0) {
            if ((i3 & 8) == 0) {
                circularIndeterminateTrackColor = j2;
                if (composerStartRestartGroup.changed(circularIndeterminateTrackColor)) {
                }
                i4 |= i13;
            } else {
                circularIndeterminateTrackColor = j2;
            }
            i4 |= i13;
        } else {
            circularIndeterminateTrackColor = j2;
        }
        i5 = i3 & 16;
        if (i5 != 0) {
            if ((i2 & 24576) == 0) {
                i6 = i;
                if (composerStartRestartGroup.changed(i6)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i4 |= i7;
            }
            if ((i4 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i10 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 2) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i4 &= -113;
                    }
                    if (i12 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    }
                    if ((i3 & 8) != 0) {
                        circularIndeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularIndeterminateTrackColor(composerStartRestartGroup, 6);
                        i4 &= -7169;
                    }
                    if (i5 != 0) {
                        int i110 = i4;
                        modifier5 = modifier4;
                        i9 = i110;
                        f3 = fM3736getCircularStrokeWidthD9Ej5fM;
                        j4 = circularIndeterminateTrackColor;
                        iM3734getCircularIndeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3734getCircularIndeterminateStrokeCapKaPHkGw();
                    } else {
                        int i111 = i4;
                        modifier5 = modifier4;
                        i9 = i111;
                        f3 = fM3736getCircularStrokeWidthD9Ej5fM;
                        j4 = circularIndeterminateTrackColor;
                        iM3734getCircularIndeterminateStrokeCapKaPHkGw = i6;
                    }
                } else {
                    if (i10 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 2) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i4 &= -113;
                    }
                    if (i12 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    }
                    if ((i3 & 8) != 0) {
                        circularIndeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularIndeterminateTrackColor(composerStartRestartGroup, 6);
                        i4 &= -7169;
                    }
                    if (i5 != 0) {
                        int i112 = i4;
                        modifier5 = modifier4;
                        i9 = i112;
                        f3 = fM3736getCircularStrokeWidthD9Ej5fM;
                        j4 = circularIndeterminateTrackColor;
                        iM3734getCircularIndeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3734getCircularIndeterminateStrokeCapKaPHkGw();
                    } else {
                        int i113 = i4;
                        modifier5 = modifier4;
                        i9 = i113;
                        f3 = fM3736getCircularStrokeWidthD9Ej5fM;
                        j4 = circularIndeterminateTrackColor;
                        iM3734getCircularIndeterminateStrokeCapKaPHkGw = i6;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-115871647, i9, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:594)");
                }
                m3740CircularProgressIndicator4lLiAd8(modifier5, circularColor, f3, j4, iM3734getCircularIndeterminateStrokeCapKaPHkGw, ProgressIndicatorDefaults.INSTANCE.m3735getCircularIndicatorTrackGapSizeD9Ej5fM(), composerStartRestartGroup, (i9 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i9 & 112) | (i9 & 896) | (i9 & 7168) | (i9 & 57344), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                f2 = f3;
                j3 = j4;
                i8 = iM3734getCircularIndeterminateStrokeCapKaPHkGw;
                modifier3 = modifier5;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                f2 = fM3736getCircularStrokeWidthD9Ej5fM;
                j3 = circularIndeterminateTrackColor;
                modifier3 = modifier2;
                i8 = i6;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tn6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        float f4 = f2;
                        return ProgressIndicatorKt.CircularProgressIndicator_LxG7B9w$lambda$30(modifier3, circularColor, f4, j3, i8, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 24576;
        i6 = i;
        if ((i4 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i2 & 1) != 0) {
                if (i10 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 2) != 0) {
                    circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                    i4 &= -113;
                }
                if (i12 != 0) {
                    fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                }
                if ((i3 & 8) != 0) {
                    circularIndeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularIndeterminateTrackColor(composerStartRestartGroup, 6);
                    i4 &= -7169;
                }
                if (i5 != 0) {
                    int i114 = i4;
                    modifier5 = modifier4;
                    i9 = i114;
                    f3 = fM3736getCircularStrokeWidthD9Ej5fM;
                    j4 = circularIndeterminateTrackColor;
                    iM3734getCircularIndeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3734getCircularIndeterminateStrokeCapKaPHkGw();
                } else {
                    int i115 = i4;
                    modifier5 = modifier4;
                    i9 = i115;
                    f3 = fM3736getCircularStrokeWidthD9Ej5fM;
                    j4 = circularIndeterminateTrackColor;
                    iM3734getCircularIndeterminateStrokeCapKaPHkGw = i6;
                }
            } else {
                if (i10 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 2) != 0) {
                    circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                    i4 &= -113;
                }
                if (i12 != 0) {
                    fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                }
                if ((i3 & 8) != 0) {
                    circularIndeterminateTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularIndeterminateTrackColor(composerStartRestartGroup, 6);
                    i4 &= -7169;
                }
                if (i5 != 0) {
                    int i116 = i4;
                    modifier5 = modifier4;
                    i9 = i116;
                    f3 = fM3736getCircularStrokeWidthD9Ej5fM;
                    j4 = circularIndeterminateTrackColor;
                    iM3734getCircularIndeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3734getCircularIndeterminateStrokeCapKaPHkGw();
                } else {
                    int i117 = i4;
                    modifier5 = modifier4;
                    i9 = i117;
                    f3 = fM3736getCircularStrokeWidthD9Ej5fM;
                    j4 = circularIndeterminateTrackColor;
                    iM3734getCircularIndeterminateStrokeCapKaPHkGw = i6;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-115871647, i9, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:594)");
            }
            m3740CircularProgressIndicator4lLiAd8(modifier5, circularColor, f3, j4, iM3734getCircularIndeterminateStrokeCapKaPHkGw, ProgressIndicatorDefaults.INSTANCE.m3735getCircularIndicatorTrackGapSizeD9Ej5fM(), composerStartRestartGroup, (i9 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i9 & 112) | (i9 & 896) | (i9 & 7168) | (i9 & 57344), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            f2 = f3;
            j3 = j4;
            i8 = iM3734getCircularIndeterminateStrokeCapKaPHkGw;
            modifier3 = modifier5;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            f2 = fM3736getCircularStrokeWidthD9Ej5fM;
            j3 = circularIndeterminateTrackColor;
            modifier3 = modifier2;
            i8 = i6;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tn6
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    float f4 = f2;
                    return ProgressIndicatorKt.CircularProgressIndicator_LxG7B9w$lambda$30(modifier3, circularColor, f4, j3, i8, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0048  */
    /* JADX WARN: Code duplicated, block: B:31:0x0057  */
    /* JADX WARN: Code duplicated, block: B:33:0x005b  */
    /* JADX WARN: Code duplicated, block: B:36:0x0061  */
    /* JADX WARN: Code duplicated, block: B:38:0x0066  */
    /* JADX WARN: Code duplicated, block: B:40:0x006a  */
    /* JADX WARN: Code duplicated, block: B:42:0x0072  */
    /* JADX WARN: Code duplicated, block: B:43:0x0075  */
    /* JADX WARN: Code duplicated, block: B:47:0x007e  */
    /* JADX WARN: Code duplicated, block: B:48:0x0080  */
    /* JADX WARN: Code duplicated, block: B:51:0x0089  */
    /* JADX WARN: Code duplicated, block: B:53:0x0091  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:61:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:67:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:72:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:75:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:77:0x0103  */
    /* JADX WARN: Code duplicated, block: B:80:0x010f  */
    /* JADX WARN: Code duplicated, block: B:82:? A[RETURN, SYNTHETIC] */
    @ul2
    /* JADX INFO: renamed from: CircularProgressIndicator-MBs18nI, reason: not valid java name */
    public static final /* synthetic */ void m3745CircularProgressIndicatorMBs18nI(final float f, Modifier modifier, long j, float f2, Composer composer, final int i, final int i2) {
        float f3;
        int i3;
        Modifier modifier2;
        long circularColor;
        int i4;
        float f4;
        int i5;
        boolean z;
        final Modifier modifier3;
        final long j2;
        final float f5;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        float fM3736getCircularStrokeWidthD9Ej5fM;
        long j3;
        Modifier modifier5;
        int i6;
        Composer composerStartRestartGroup = composer.startRestartGroup(402841196);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
            f3 = f;
        } else if ((i & 6) == 0) {
            f3 = f;
            i3 = (composerStartRestartGroup.changed(f3) ? 4 : 2) | i;
        } else {
            f3 = f;
            i3 = i;
        }
        int i7 = i2 & 2;
        if (i7 == 0) {
            if ((i & 48) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                circularColor = j;
                if ((i2 & 4) == 0 || !composerStartRestartGroup.changed(circularColor)) {
                    i6 = 128;
                } else {
                    i6 = 256;
                }
                i3 |= i6;
            } else {
                circularColor = j;
            }
            i4 = i2 & 8;
            if (i4 != 0) {
                if ((i & 3072) == 0) {
                    f4 = f2;
                    if (composerStartRestartGroup.changed(f4)) {
                        i5 = 2048;
                    } else {
                        i5 = 1024;
                    }
                    i3 |= i5;
                }
                if ((i3 & 1171) != 1170) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                        if (i7 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i2 & 4) != 0) {
                            circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                            i3 &= -897;
                        }
                        if (i4 != 0) {
                            fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                        } else {
                            fM3736getCircularStrokeWidthD9Ej5fM = f4;
                        }
                        j3 = circularColor;
                        modifier5 = modifier4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                        }
                        modifier5 = modifier2;
                        fM3736getCircularStrokeWidthD9Ej5fM = f4;
                        j3 = circularColor;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(402841196, i3, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:723)");
                    }
                    ProgressIndicatorDefaults progressIndicatorDefaults = ProgressIndicatorDefaults.INSTANCE;
                    float f6 = fM3736getCircularStrokeWidthD9Ej5fM;
                    m3741CircularProgressIndicatorDUhRLBM(f3, modifier5, j3, f6, progressIndicatorDefaults.getCircularTrackColor(composerStartRestartGroup, 6), progressIndicatorDefaults.m3733getCircularDeterminateStrokeCapKaPHkGw(), composerStartRestartGroup, (i3 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i3 & 112) | (i3 & 896) | (i3 & 7168), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier5;
                    j2 = j3;
                    f5 = f6;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    j2 = circularColor;
                    f5 = f4;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hn6
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ProgressIndicatorKt.CircularProgressIndicator_MBs18nI$lambda$39(f, modifier3, j2, f5, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            f4 = f2;
            if ((i3 & 1171) != 1170) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i7 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 4) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i3 &= -897;
                    }
                    if (i4 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    } else {
                        fM3736getCircularStrokeWidthD9Ej5fM = f4;
                    }
                    j3 = circularColor;
                    modifier5 = modifier4;
                } else {
                    if (i7 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 4) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i3 &= -897;
                    }
                    if (i4 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    } else {
                        fM3736getCircularStrokeWidthD9Ej5fM = f4;
                    }
                    j3 = circularColor;
                    modifier5 = modifier4;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(402841196, i3, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:723)");
                }
                ProgressIndicatorDefaults progressIndicatorDefaults2 = ProgressIndicatorDefaults.INSTANCE;
                float f7 = fM3736getCircularStrokeWidthD9Ej5fM;
                m3741CircularProgressIndicatorDUhRLBM(f3, modifier5, j3, f7, progressIndicatorDefaults2.getCircularTrackColor(composerStartRestartGroup, 6), progressIndicatorDefaults2.m3733getCircularDeterminateStrokeCapKaPHkGw(), composerStartRestartGroup, (i3 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i3 & 112) | (i3 & 896) | (i3 & 7168), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier5;
                j2 = j3;
                f5 = f7;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                j2 = circularColor;
                f5 = f4;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hn6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ProgressIndicatorKt.CircularProgressIndicator_MBs18nI$lambda$39(f, modifier3, j2, f5, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        modifier2 = modifier;
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            circularColor = j;
            if ((i2 & 4) == 0) {
                i6 = 128;
            } else {
                i6 = 128;
            }
            i3 |= i6;
        } else {
            circularColor = j;
        }
        i4 = i2 & 8;
        if (i4 != 0) {
            if ((i & 3072) == 0) {
                f4 = f2;
                if (composerStartRestartGroup.changed(f4)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i3 |= i5;
            }
            if ((i3 & 1171) != 1170) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i7 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 4) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i3 &= -897;
                    }
                    if (i4 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    } else {
                        fM3736getCircularStrokeWidthD9Ej5fM = f4;
                    }
                    j3 = circularColor;
                    modifier5 = modifier4;
                } else {
                    if (i7 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 4) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i3 &= -897;
                    }
                    if (i4 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    } else {
                        fM3736getCircularStrokeWidthD9Ej5fM = f4;
                    }
                    j3 = circularColor;
                    modifier5 = modifier4;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(402841196, i3, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:723)");
                }
                ProgressIndicatorDefaults progressIndicatorDefaults3 = ProgressIndicatorDefaults.INSTANCE;
                float f8 = fM3736getCircularStrokeWidthD9Ej5fM;
                m3741CircularProgressIndicatorDUhRLBM(f3, modifier5, j3, f8, progressIndicatorDefaults3.getCircularTrackColor(composerStartRestartGroup, 6), progressIndicatorDefaults3.m3733getCircularDeterminateStrokeCapKaPHkGw(), composerStartRestartGroup, (i3 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i3 & 112) | (i3 & 896) | (i3 & 7168), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier5;
                j2 = j3;
                f5 = f8;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                j2 = circularColor;
                f5 = f4;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hn6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ProgressIndicatorKt.CircularProgressIndicator_MBs18nI$lambda$39(f, modifier3, j2, f5, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        f4 = f2;
        if ((i3 & 1171) != 1170) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i7 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i2 & 4) != 0) {
                    circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                    i3 &= -897;
                }
                if (i4 != 0) {
                    fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                } else {
                    fM3736getCircularStrokeWidthD9Ej5fM = f4;
                }
                j3 = circularColor;
                modifier5 = modifier4;
            } else {
                if (i7 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i2 & 4) != 0) {
                    circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                    i3 &= -897;
                }
                if (i4 != 0) {
                    fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                } else {
                    fM3736getCircularStrokeWidthD9Ej5fM = f4;
                }
                j3 = circularColor;
                modifier5 = modifier4;
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(402841196, i3, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:723)");
            }
            ProgressIndicatorDefaults progressIndicatorDefaults4 = ProgressIndicatorDefaults.INSTANCE;
            float f9 = fM3736getCircularStrokeWidthD9Ej5fM;
            m3741CircularProgressIndicatorDUhRLBM(f3, modifier5, j3, f9, progressIndicatorDefaults4.getCircularTrackColor(composerStartRestartGroup, 6), progressIndicatorDefaults4.m3733getCircularDeterminateStrokeCapKaPHkGw(), composerStartRestartGroup, (i3 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i3 & 112) | (i3 & 896) | (i3 & 7168), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier5;
            j2 = j3;
            f5 = f9;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            j2 = circularColor;
            f5 = f4;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hn6
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ProgressIndicatorKt.CircularProgressIndicator_MBs18nI$lambda$39(f, modifier3, j2, f5, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x005b  */
    /* JADX WARN: Code duplicated, block: B:38:0x005d  */
    /* JADX WARN: Code duplicated, block: B:41:0x0066  */
    /* JADX WARN: Code duplicated, block: B:49:0x007e A[PHI: r3 r4 r14
      0x007e: PHI (r3v16 int) = (r3v12 int), (r3v10 int), (r3v18 int) binds: [B:55:0x0093, B:47:0x007a, B:48:0x007c] A[DONT_GENERATE, DONT_INLINE]
      0x007e: PHI (r4v7 long) = (r4v4 long), (r4v2 long), (r4v2 long) binds: [B:55:0x0093, B:47:0x007a, B:48:0x007c] A[DONT_GENERATE, DONT_INLINE]
      0x007e: PHI (r14v8 androidx.compose.ui.Modifier) = (r14v2 androidx.compose.ui.Modifier), (r14v0 androidx.compose.ui.Modifier), (r14v0 androidx.compose.ui.Modifier) binds: [B:55:0x0093, B:47:0x007a, B:48:0x007c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:50:0x0083 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:51:0x0085  */
    /* JADX WARN: Code duplicated, block: B:54:0x008b  */
    /* JADX WARN: Code duplicated, block: B:56:0x0095  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:62:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:64:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:67:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:69:? A[RETURN, SYNTHETIC] */
    @ul2
    /* JADX INFO: renamed from: CircularProgressIndicator-aM-cp0Q, reason: not valid java name */
    public static final /* synthetic */ void m3746CircularProgressIndicatoraMcp0Q(Modifier modifier, long j, float f, Composer composer, final int i, final int i2) {
        int i3;
        final long circularColor;
        float f2;
        boolean z;
        final Modifier modifier2;
        final float f3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier3;
        int i4;
        float fM3736getCircularStrokeWidthD9Ej5fM;
        Composer composerStartRestartGroup = composer.startRestartGroup(947193756);
        int i5 = i2 & 1;
        if (i5 != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            if ((i2 & 2) == 0) {
                circularColor = j;
                int i6 = composerStartRestartGroup.changed(circularColor) ? 32 : 16;
                i3 |= i6;
            } else {
                circularColor = j;
            }
            i3 |= i6;
        } else {
            circularColor = j;
        }
        int i7 = i2 & 4;
        if (i7 == 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                f2 = f;
                i3 |= composerStartRestartGroup.changed(f2) ? 256 : 128;
            }
            if ((i3 & 147) != 146) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                    if (i5 != 0) {
                        modifier = Modifier.Companion;
                    }
                    if ((i2 & 2) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i3 &= -113;
                    }
                    if (i7 != 0) {
                        int i8 = i3;
                        modifier3 = modifier;
                        i4 = i8;
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(947193756, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:740)");
                    }
                    ProgressIndicatorDefaults progressIndicatorDefaults = ProgressIndicatorDefaults.INSTANCE;
                    m3740CircularProgressIndicator4lLiAd8(modifier3, circularColor, fM3736getCircularStrokeWidthD9Ej5fM, progressIndicatorDefaults.getCircularTrackColor(composerStartRestartGroup, 6), progressIndicatorDefaults.m3734getCircularIndeterminateStrokeCapKaPHkGw(), 0.0f, composerStartRestartGroup, (i4 & 14) | 24576 | (i4 & 112) | (i4 & 896), 32);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    f3 = fM3736getCircularStrokeWidthD9Ej5fM;
                    modifier2 = modifier3;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    if ((i2 & 2) != 0) {
                        i3 &= -113;
                    }
                }
                int i9 = i3;
                modifier3 = modifier;
                i4 = i9;
                fM3736getCircularStrokeWidthD9Ej5fM = f2;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(947193756, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:740)");
                }
                ProgressIndicatorDefaults progressIndicatorDefaults2 = ProgressIndicatorDefaults.INSTANCE;
                m3740CircularProgressIndicator4lLiAd8(modifier3, circularColor, fM3736getCircularStrokeWidthD9Ej5fM, progressIndicatorDefaults2.getCircularTrackColor(composerStartRestartGroup, 6), progressIndicatorDefaults2.m3734getCircularIndeterminateStrokeCapKaPHkGw(), 0.0f, composerStartRestartGroup, (i4 & 14) | 24576 | (i4 & 112) | (i4 & 896), 32);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                f3 = fM3736getCircularStrokeWidthD9Ej5fM;
                modifier2 = modifier3;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier2 = modifier;
                f3 = f2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ln6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        Modifier modifier4 = modifier2;
                        float f4 = f3;
                        return ProgressIndicatorKt.CircularProgressIndicator_aM_cp0Q$lambda$40(modifier4, circularColor, f4, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        f2 = f;
        if ((i3 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i5 != 0) {
                    modifier = Modifier.Companion;
                }
                if ((i2 & 2) != 0) {
                    circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                    i3 &= -113;
                }
                if (i7 != 0) {
                    int i10 = i3;
                    modifier3 = modifier;
                    i4 = i10;
                    fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                } else {
                    int i11 = i3;
                    modifier3 = modifier;
                    i4 = i11;
                    fM3736getCircularStrokeWidthD9Ej5fM = f2;
                }
            } else {
                if (i5 != 0) {
                    modifier = Modifier.Companion;
                }
                if ((i2 & 2) != 0) {
                    circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                    i3 &= -113;
                }
                if (i7 != 0) {
                    int i12 = i3;
                    modifier3 = modifier;
                    i4 = i12;
                    fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                } else {
                    int i13 = i3;
                    modifier3 = modifier;
                    i4 = i13;
                    fM3736getCircularStrokeWidthD9Ej5fM = f2;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(947193756, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:740)");
            }
            ProgressIndicatorDefaults progressIndicatorDefaults3 = ProgressIndicatorDefaults.INSTANCE;
            m3740CircularProgressIndicator4lLiAd8(modifier3, circularColor, fM3736getCircularStrokeWidthD9Ej5fM, progressIndicatorDefaults3.getCircularTrackColor(composerStartRestartGroup, 6), progressIndicatorDefaults3.m3734getCircularIndeterminateStrokeCapKaPHkGw(), 0.0f, composerStartRestartGroup, (i4 & 14) | 24576 | (i4 & 112) | (i4 & 896), 32);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            f3 = fM3736getCircularStrokeWidthD9Ej5fM;
            modifier2 = modifier3;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier2 = modifier;
            f3 = f2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ln6
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    Modifier modifier4 = modifier2;
                    float f4 = f3;
                    return ProgressIndicatorKt.CircularProgressIndicator_aM_cp0Q$lambda$40(modifier4, circularColor, f4, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CircularProgressIndicator_4lLiAd8$lambda$34$lambda$33(State state, int i, float f, float f2, State state2, State state3, long j, Stroke stroke, long j2, DrawScope drawScope) {
        float fFloatValue = ((Number) state.getValue()).floatValue() * 360.0f;
        if (!StrokeCap.m6602equalsimpl0(i, StrokeCap.Companion.m6606getButtKaPHkGw()) && Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) <= Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() >> 32))) {
            f = Dp.m9042constructorimpl(f + f2);
        }
        float fMo1430toDpu2uoSUM = (f / ((float) (((double) drawScope.mo1430toDpu2uoSUM(Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() >> 32)))) * 3.141592653589793d))) * 360.0f;
        float fFloatValue2 = ((Number) state3.getValue()).floatValue() + ((Number) state2.getValue()).floatValue();
        long jMo6805getCenterF1C5BW0 = drawScope.mo6805getCenterF1C5BW0();
        DrawContext drawContext = drawScope.getDrawContext();
        long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            drawContext.getTransform().mo6733rotateUv8p0NA(fFloatValue2, jMo6805getCenterF1C5BW0);
            m3754drawCircularIndicator42QJj7c(drawScope, fFloatValue + Math.min(fFloatValue, fMo1430toDpu2uoSUM), (360.0f - fFloatValue) - (Math.min(fFloatValue, fMo1430toDpu2uoSUM) * 2.0f), j, stroke);
            m3756drawDeterminateCircularIndicator42QJj7c(drawScope, 0.0f, fFloatValue, j2, stroke);
            return j59.a;
        } finally {
            defpackage.n1.a(drawContext, jMo6727getSizeNHjbRc);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CircularProgressIndicator_4lLiAd8$lambda$35(Modifier modifier, long j, float f, long j2, int i, float f2, int i2, int i3, Composer composer, int i4) {
        m3740CircularProgressIndicator4lLiAd8(modifier, j, f, j2, i, f2, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), i3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CircularProgressIndicator_DUhRLBM$lambda$20(ll3 ll3Var, Modifier modifier, long j, float f, long j2, int i, int i2, int i3, Composer composer, int i4) {
        m3742CircularProgressIndicatorDUhRLBM(ll3Var, modifier, j, f, j2, i, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), i3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float CircularProgressIndicator_DUhRLBM$lambda$37$lambda$36(float f) {
        return f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CircularProgressIndicator_DUhRLBM$lambda$38(float f, Modifier modifier, long j, float f2, long j2, int i, int i2, int i3, Composer composer, int i4) {
        m3741CircularProgressIndicatorDUhRLBM(f, modifier, j, f2, j2, i, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), i3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float CircularProgressIndicator_IyT6zlY$lambda$22$lambda$21(ll3 ll3Var) {
        float fFloatValue = ((Number) ll3Var.invoke()).floatValue();
        if (fFloatValue < 0.0f) {
            fFloatValue = 0.0f;
        }
        if (fFloatValue > 1.0f) {
            return 1.0f;
        }
        return fFloatValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CircularProgressIndicator_IyT6zlY$lambda$26$lambda$25(ll3 ll3Var, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Object objInvoke = ll3Var.invoke();
        if (Float.isNaN(((Number) objInvoke).floatValue())) {
            objInvoke = null;
        }
        Float f = (Float) objInvoke;
        SemanticsPropertiesKt.setProgressBarRangeInfo(semanticsPropertyReceiver, new ProgressBarRangeInfo(f != null ? f.floatValue() : 0.0f, new mm1(0.0f, 1.0f), 0, 4, null));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CircularProgressIndicator_IyT6zlY$lambda$28$lambda$27(ll3 ll3Var, int i, float f, float f2, long j, Stroke stroke, long j2, DrawScope drawScope) {
        float fFloatValue = ((Number) ll3Var.invoke()).floatValue() * 360.0f;
        if (!StrokeCap.m6602equalsimpl0(i, StrokeCap.Companion.m6606getButtKaPHkGw()) && Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) <= Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() >> 32))) {
            f = Dp.m9042constructorimpl(f + f2);
        }
        float fMo1430toDpu2uoSUM = (f / ((float) (((double) drawScope.mo1430toDpu2uoSUM(Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() >> 32)))) * 3.141592653589793d))) * 360.0f;
        m3754drawCircularIndicator42QJj7c(drawScope, Math.min(fFloatValue, fMo1430toDpu2uoSUM) + 270.0f + fFloatValue, (360.0f - fFloatValue) - (Math.min(fFloatValue, fMo1430toDpu2uoSUM) * 2.0f), j, stroke);
        m3756drawDeterminateCircularIndicator42QJj7c(drawScope, 270.0f, fFloatValue, j2, stroke);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CircularProgressIndicator_IyT6zlY$lambda$29(ll3 ll3Var, Modifier modifier, long j, float f, long j2, int i, float f2, int i2, int i3, Composer composer, int i4) {
        m3743CircularProgressIndicatorIyT6zlY(ll3Var, modifier, j, f, j2, i, f2, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), i3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CircularProgressIndicator_LxG7B9w$lambda$30(Modifier modifier, long j, float f, long j2, int i, int i2, int i3, Composer composer, int i4) {
        m3744CircularProgressIndicatorLxG7B9w(modifier, j, f, j2, i, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), i3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CircularProgressIndicator_MBs18nI$lambda$39(float f, Modifier modifier, long j, float f2, int i, int i2, Composer composer, int i3) {
        m3745CircularProgressIndicatorMBs18nI(f, modifier, j, f2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CircularProgressIndicator_aM_cp0Q$lambda$40(Modifier modifier, long j, float f, int i, int i2, Composer composer, int i3) {
        m3746CircularProgressIndicatoraMcp0Q(modifier, j, f, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x007e  */
    /* JADX WARN: Code duplicated, block: B:48:0x0080  */
    /* JADX WARN: Code duplicated, block: B:51:0x0089  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ab A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:65:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:74:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:79:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:82:0x0108  */
    /* JADX WARN: Code duplicated, block: B:84:0x0110  */
    /* JADX WARN: Code duplicated, block: B:87:0x011d  */
    /* JADX WARN: Code duplicated, block: B:89:? A[RETURN, SYNTHETIC] */
    @ul2
    /* JADX INFO: renamed from: LinearProgressIndicator-2cYBFYY, reason: not valid java name */
    public static final /* synthetic */ void m3747LinearProgressIndicator2cYBFYY(Modifier modifier, long j, long j2, int i, Composer composer, final int i2, final int i3) {
        Modifier modifier2;
        int i4;
        long linearColor;
        long linearTrackColor;
        int i5;
        boolean z;
        final Modifier modifier3;
        final long j3;
        final long j4;
        final int i6;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        int iM3738getLinearStrokeCapKaPHkGw;
        Modifier modifier5;
        Composer composerStartRestartGroup = composer.startRestartGroup(-476865359);
        int i7 = i3 & 1;
        if (i7 != 0) {
            i4 = i2 | 6;
            modifier2 = modifier;
        } else if ((i2 & 6) == 0) {
            modifier2 = modifier;
            i4 = (composerStartRestartGroup.changed(modifier2) ? 4 : 2) | i2;
        } else {
            modifier2 = modifier;
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            if ((i3 & 2) == 0) {
                linearColor = j;
                int i8 = composerStartRestartGroup.changed(linearColor) ? 32 : 16;
                i4 |= i8;
            } else {
                linearColor = j;
            }
            i4 |= i8;
        } else {
            linearColor = j;
        }
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            linearTrackColor = j2;
            i4 |= ((i3 & 4) == 0 && composerStartRestartGroup.changed(linearTrackColor)) ? 256 : 128;
        } else {
            linearTrackColor = j2;
        }
        int i9 = i3 & 8;
        if (i9 == 0) {
            if ((i2 & 3072) == 0) {
                i5 = i;
                i4 |= composerStartRestartGroup.changed(i5) ? 2048 : 1024;
            }
            if ((i4 & 1171) != 1170) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                    if (i7 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 2) != 0) {
                        linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                        i4 &= -113;
                    }
                    if ((i3 & 4) != 0) {
                        linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if (i9 != 0) {
                        iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                    } else {
                        iM3738getLinearStrokeCapKaPHkGw = i5;
                    }
                    modifier5 = modifier4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    if ((i3 & 2) != 0) {
                        i4 &= -113;
                    }
                    if ((i3 & 4) != 0) {
                        i4 &= -897;
                    }
                    linearTrackColor = linearTrackColor;
                    iM3738getLinearStrokeCapKaPHkGw = i5;
                    modifier5 = modifier2;
                }
                long j5 = linearColor;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-476865359, i4, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:219)");
                }
                m3753LinearProgressIndicatorrIrjwxo(modifier5, j5, linearTrackColor, iM3738getLinearStrokeCapKaPHkGw, ProgressIndicatorDefaults.INSTANCE.m3737getLinearIndicatorTrackGapSizeD9Ej5fM(), composerStartRestartGroup, (i4 & 14) | 24576 | (i4 & 112) | (i4 & 896) | (i4 & 7168), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier5;
                j3 = j5;
                j4 = linearTrackColor;
                i6 = iM3738getLinearStrokeCapKaPHkGw;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                j3 = linearColor;
                j4 = linearTrackColor;
                i6 = i5;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: an6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ProgressIndicatorKt.LinearProgressIndicator_2cYBFYY$lambda$11(modifier3, j3, j4, i6, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 3072;
        i5 = i;
        if ((i4 & 1171) != 1170) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i2 & 1) != 0) {
                if (i7 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 2) != 0) {
                    linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                    i4 &= -113;
                }
                if ((i3 & 4) != 0) {
                    linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                    i4 &= -897;
                }
                if (i9 != 0) {
                    iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                } else {
                    iM3738getLinearStrokeCapKaPHkGw = i5;
                }
                modifier5 = modifier4;
            } else {
                if (i7 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 2) != 0) {
                    linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                    i4 &= -113;
                }
                if ((i3 & 4) != 0) {
                    linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                    i4 &= -897;
                }
                if (i9 != 0) {
                    iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                } else {
                    iM3738getLinearStrokeCapKaPHkGw = i5;
                }
                modifier5 = modifier4;
            }
            long j6 = linearColor;
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-476865359, i4, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:219)");
            }
            m3753LinearProgressIndicatorrIrjwxo(modifier5, j6, linearTrackColor, iM3738getLinearStrokeCapKaPHkGw, ProgressIndicatorDefaults.INSTANCE.m3737getLinearIndicatorTrackGapSizeD9Ej5fM(), composerStartRestartGroup, (i4 & 14) | 24576 | (i4 & 112) | (i4 & 896) | (i4 & 7168), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier5;
            j3 = j6;
            j4 = linearTrackColor;
            i6 = iM3738getLinearStrokeCapKaPHkGw;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            j3 = linearColor;
            j4 = linearTrackColor;
            i6 = i5;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: an6
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ProgressIndicatorKt.LinearProgressIndicator_2cYBFYY$lambda$11(modifier3, j3, j4, i6, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x011a  */
    /* JADX WARN: Code duplicated, block: B:104:0x0126  */
    /* JADX WARN: Code duplicated, block: B:106:0x0130  */
    /* JADX WARN: Code duplicated, block: B:108:0x0138  */
    /* JADX WARN: Code duplicated, block: B:111:0x0142  */
    /* JADX WARN: Code duplicated, block: B:113:0x014a  */
    /* JADX WARN: Code duplicated, block: B:115:0x0150  */
    /* JADX WARN: Code duplicated, block: B:121:0x015d  */
    /* JADX WARN: Code duplicated, block: B:122:0x015f  */
    /* JADX WARN: Code duplicated, block: B:125:0x0167  */
    /* JADX WARN: Code duplicated, block: B:127:0x016f  */
    /* JADX WARN: Code duplicated, block: B:130:0x0181  */
    /* JADX WARN: Code duplicated, block: B:133:0x018d  */
    /* JADX WARN: Code duplicated, block: B:136:0x019b  */
    /* JADX WARN: Code duplicated, block: B:137:0x019d  */
    /* JADX WARN: Code duplicated, block: B:140:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:142:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:145:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:147:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:150:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:151:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:154:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:155:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:158:0x0208  */
    /* JADX WARN: Code duplicated, block: B:160:0x020e  */
    /* JADX WARN: Code duplicated, block: B:166:0x021e  */
    /* JADX WARN: Code duplicated, block: B:168:0x0224  */
    /* JADX WARN: Code duplicated, block: B:174:0x0235  */
    /* JADX WARN: Code duplicated, block: B:176:0x023b  */
    /* JADX WARN: Code duplicated, block: B:182:0x0248  */
    /* JADX WARN: Code duplicated, block: B:186:0x0258  */
    /* JADX WARN: Code duplicated, block: B:189:0x0276  */
    /* JADX WARN: Code duplicated, block: B:191:0x0282  */
    /* JADX WARN: Code duplicated, block: B:194:0x0293  */
    /* JADX WARN: Code duplicated, block: B:196:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0043  */
    /* JADX WARN: Code duplicated, block: B:31:0x0052  */
    /* JADX WARN: Code duplicated, block: B:33:0x0056  */
    /* JADX WARN: Code duplicated, block: B:36:0x005c  */
    /* JADX WARN: Code duplicated, block: B:41:0x006b  */
    /* JADX WARN: Code duplicated, block: B:43:0x006f  */
    /* JADX WARN: Code duplicated, block: B:46:0x0075  */
    /* JADX WARN: Code duplicated, block: B:48:0x007a  */
    /* JADX WARN: Code duplicated, block: B:50:0x007e  */
    /* JADX WARN: Code duplicated, block: B:52:0x0086  */
    /* JADX WARN: Code duplicated, block: B:53:0x0089  */
    /* JADX WARN: Code duplicated, block: B:57:0x0093  */
    /* JADX WARN: Code duplicated, block: B:58:0x0098  */
    /* JADX WARN: Code duplicated, block: B:60:0x009e  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:78:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:81:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:83:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:96:0x010f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:97:0x0111  */
    /* JADX WARN: Code duplicated, block: B:98:0x0114  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX INFO: renamed from: LinearProgressIndicator-GJbTh5U, reason: not valid java name */
    public static final void m3748LinearProgressIndicatorGJbTh5U(final ll3<Float> ll3Var, Modifier modifier, long j, long j2, int i, float f, nl3<? super DrawScope, j59> nl3Var, Composer composer, final int i2, final int i3) {
        int i4;
        Modifier modifier2;
        final long linearColor;
        long linearTrackColor;
        int i5;
        final int iM3738getLinearStrokeCapKaPHkGw;
        int i6;
        int i7;
        float fM3737getLinearIndicatorTrackGapSizeD9Ej5fM;
        int i8;
        int i9;
        boolean z;
        final nl3<? super DrawScope, j59> nl3Var2;
        final float f2;
        Modifier modifier3;
        final long j3;
        final int i10;
        final long j4;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        nl3<? super DrawScope, j59> nl3Var3;
        final int i11;
        final float f3;
        boolean z2;
        boolean z3;
        Object objRememberedValue;
        boolean z4;
        Object objRememberedValue2;
        final ll3 ll3Var2;
        boolean zChanged;
        Object objRememberedValue3;
        int i12;
        int i13;
        int i14;
        Object objRememberedValue4;
        final nl3<? super DrawScope, j59> nl3Var4;
        final long j5;
        int i15;
        int i16;
        int i17;
        Composer composerStartRestartGroup = composer.startRestartGroup(-339970038);
        if ((i3 & 1) != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (composerStartRestartGroup.changedInstance(ll3Var) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i18 = i3 & 2;
        if (i18 == 0) {
            if ((i2 & 48) == 0) {
                modifier2 = modifier;
                i4 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                linearColor = j;
                if ((i3 & 4) == 0 || !composerStartRestartGroup.changed(linearColor)) {
                    i17 = 128;
                } else {
                    i17 = 256;
                }
                i4 |= i17;
            } else {
                linearColor = j;
            }
            if ((i2 & 3072) == 0) {
                linearTrackColor = j2;
                if ((i3 & 8) == 0 || !composerStartRestartGroup.changed(linearTrackColor)) {
                    i16 = 1024;
                } else {
                    i16 = 2048;
                }
                i4 |= i16;
            } else {
                linearTrackColor = j2;
            }
            i5 = i3 & 16;
            if (i5 != 0) {
                if ((i2 & 24576) == 0) {
                    iM3738getLinearStrokeCapKaPHkGw = i;
                    if (composerStartRestartGroup.changed(iM3738getLinearStrokeCapKaPHkGw)) {
                        i6 = 16384;
                    } else {
                        i6 = 8192;
                    }
                    i4 |= i6;
                }
                i7 = i3 & 32;
                if (i7 != 0) {
                    i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = f;
                } else {
                    fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = f;
                    if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(fM3737getLinearIndicatorTrackGapSizeD9Ej5fM)) {
                            i8 = 131072;
                        } else {
                            i8 = 65536;
                        }
                        i4 |= i8;
                    }
                }
                if ((i2 & 1572864) != 0) {
                    if ((i3 & 64) == 0 || !composerStartRestartGroup.changedInstance(nl3Var)) {
                        i15 = 524288;
                    } else {
                        i15 = 1048576;
                    }
                    i4 |= i15;
                }
                i9 = 1;
                if ((i4 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                            i4 &= -897;
                        }
                        if ((i3 & 8) != 0) {
                            linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                            i4 &= -7169;
                        }
                        if (i5 != 0) {
                            iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                        }
                        if (i7 != 0) {
                            fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3737getLinearIndicatorTrackGapSizeD9Ej5fM();
                        }
                        if ((i3 & 64) != 0) {
                            boolean z5 = (((i4 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256 && composerStartRestartGroup.changed(linearColor)) || (i4 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256;
                            if ((i4 & 57344) == 16384) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            z3 = z5 | z2;
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (z3 || objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new nl3() { // from class: xm6
                                    @Override // defpackage.nl3
                                    public final Object invoke(Object obj) {
                                        return ProgressIndicatorKt.LinearProgressIndicator_GJbTh5U$lambda$2$lambda$1(linearColor, iM3738getLinearStrokeCapKaPHkGw, (DrawScope) obj);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            nl3Var3 = (nl3) objRememberedValue;
                            i4 &= -3670017;
                        } else {
                            nl3Var3 = nl3Var;
                        }
                        i11 = iM3738getLinearStrokeCapKaPHkGw;
                        f3 = fM3737getLinearIndicatorTrackGapSizeD9Ej5fM;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        if ((i3 & 4) != 0) {
                            i4 &= -897;
                        }
                        if ((i3 & 8) != 0) {
                            i4 &= -7169;
                        }
                        if ((i3 & 64) != 0) {
                            i4 &= -3670017;
                        }
                        i11 = iM3738getLinearStrokeCapKaPHkGw;
                        f3 = fM3737getLinearIndicatorTrackGapSizeD9Ej5fM;
                        modifier3 = modifier2;
                        nl3Var3 = nl3Var;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-339970038, i4, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:153)");
                    }
                    if ((i4 & 14) == 4) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z4 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                        objRememberedValue2 = new z12(ll3Var, 2);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    ll3Var2 = (ll3) objRememberedValue2;
                    Modifier modifierThen = modifier3.then(AccessibilityUtilKt.getIncreaseVerticalSemanticsBounds());
                    zChanged = composerStartRestartGroup.changed(ll3Var2);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged || objRememberedValue3 == Composer.Companion.getEmpty()) {
                        objRememberedValue3 = new gf6(ll3Var2, i9);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    Modifier modifierM2101sizeVpY3zN4 = SizeKt.m2101sizeVpY3zN4(SemanticsModifierKt.semantics(modifierThen, true, (nl3) objRememberedValue3), LinearIndicatorWidth, LinearIndicatorHeight);
                    if ((i4 & 57344) == 16384) {
                        i12 = 1;
                    } else {
                        i12 = 0;
                    }
                    if ((458752 & i4) == 131072) {
                        i13 = 1;
                    } else {
                        i13 = 0;
                    }
                    int i19 = i12 | i13 | (composerStartRestartGroup.changed(ll3Var2) ? 1 : 0) | (((((i4 & 7168) ^ 3072) > 2048 || !composerStartRestartGroup.changed(linearTrackColor)) && (i4 & 3072) != 2048) ? 0 : 1) | (((((i4 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 || !composerStartRestartGroup.changed(linearColor)) && (i4 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) ? 0 : 1);
                    if ((((3670016 & i4) ^ 1572864) > 1048576 || !composerStartRestartGroup.changed(nl3Var3)) && (i4 & 1572864) != 1048576) {
                    }
                    i14 = i9 | i19;
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (i14 == 0 || objRememberedValue4 == Composer.Companion.getEmpty()) {
                        nl3Var4 = nl3Var3;
                        j5 = linearColor;
                        j3 = linearTrackColor;
                        objRememberedValue4 = new nl3() { // from class: ym6
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return ProgressIndicatorKt.LinearProgressIndicator_GJbTh5U$lambda$9$lambda$8(i11, f3, ll3Var2, j3, j5, nl3Var4, (DrawScope) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    } else {
                        nl3Var4 = nl3Var3;
                        j5 = linearColor;
                        j3 = linearTrackColor;
                    }
                    CanvasKt.Canvas(modifierM2101sizeVpY3zN4, (nl3) objRememberedValue4, composerStartRestartGroup, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    i10 = i11;
                    f2 = f3;
                    j4 = j5;
                    nl3Var2 = nl3Var4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    nl3Var2 = nl3Var;
                    f2 = fM3737getLinearIndicatorTrackGapSizeD9Ej5fM;
                    modifier3 = modifier2;
                    j3 = linearTrackColor;
                    i10 = iM3738getLinearStrokeCapKaPHkGw;
                    j4 = linearColor;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final Modifier modifier4 = modifier3;
                    final long j6 = j3;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: zm6
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ProgressIndicatorKt.LinearProgressIndicator_GJbTh5U$lambda$10(ll3Var, modifier4, j4, j6, i10, f2, nl3Var2, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 24576;
            iM3738getLinearStrokeCapKaPHkGw = i;
            i7 = i3 & 32;
            if (i7 != 0) {
                i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = f;
            } else {
                fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = f;
                if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(fM3737getLinearIndicatorTrackGapSizeD9Ej5fM)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i4 |= i8;
                }
            }
            if ((i2 & 1572864) != 0) {
                if ((i3 & 64) == 0) {
                    i15 = 524288;
                } else {
                    i15 = 524288;
                }
                i4 |= i15;
            }
            i9 = 1;
            if ((i4 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if ((i3 & 8) != 0) {
                        linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                        i4 &= -7169;
                    }
                    if (i5 != 0) {
                        iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                    }
                    if (i7 != 0) {
                        fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3737getLinearIndicatorTrackGapSizeD9Ej5fM();
                    }
                    if ((i3 & 64) != 0) {
                        if (((i4 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
                        }
                        if ((i4 & 57344) == 16384) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        z3 = z5 | z2;
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z3) {
                            objRememberedValue = new nl3() { // from class: xm6
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return ProgressIndicatorKt.LinearProgressIndicator_GJbTh5U$lambda$2$lambda$1(linearColor, iM3738getLinearStrokeCapKaPHkGw, (DrawScope) obj);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new nl3() { // from class: xm6
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return ProgressIndicatorKt.LinearProgressIndicator_GJbTh5U$lambda$2$lambda$1(linearColor, iM3738getLinearStrokeCapKaPHkGw, (DrawScope) obj);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        nl3Var3 = (nl3) objRememberedValue;
                        i4 &= -3670017;
                    } else {
                        nl3Var3 = nl3Var;
                    }
                    i11 = iM3738getLinearStrokeCapKaPHkGw;
                    f3 = fM3737getLinearIndicatorTrackGapSizeD9Ej5fM;
                } else {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if ((i3 & 8) != 0) {
                        linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                        i4 &= -7169;
                    }
                    if (i5 != 0) {
                        iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                    }
                    if (i7 != 0) {
                        fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3737getLinearIndicatorTrackGapSizeD9Ej5fM();
                    }
                    if ((i3 & 64) != 0) {
                        if (((i4 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
                        }
                        if ((i4 & 57344) == 16384) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        z3 = z5 | z2;
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z3) {
                            objRememberedValue = new nl3() { // from class: xm6
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return ProgressIndicatorKt.LinearProgressIndicator_GJbTh5U$lambda$2$lambda$1(linearColor, iM3738getLinearStrokeCapKaPHkGw, (DrawScope) obj);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new nl3() { // from class: xm6
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return ProgressIndicatorKt.LinearProgressIndicator_GJbTh5U$lambda$2$lambda$1(linearColor, iM3738getLinearStrokeCapKaPHkGw, (DrawScope) obj);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        nl3Var3 = (nl3) objRememberedValue;
                        i4 &= -3670017;
                    } else {
                        nl3Var3 = nl3Var;
                    }
                    i11 = iM3738getLinearStrokeCapKaPHkGw;
                    f3 = fM3737getLinearIndicatorTrackGapSizeD9Ej5fM;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-339970038, i4, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:153)");
                }
                if ((i4 & 14) == 4) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z4) {
                    objRememberedValue2 = new z12(ll3Var, 2);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = new z12(ll3Var, 2);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                ll3Var2 = (ll3) objRememberedValue2;
                Modifier modifierThen2 = modifier3.then(AccessibilityUtilKt.getIncreaseVerticalSemanticsBounds());
                zChanged = composerStartRestartGroup.changed(ll3Var2);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue3 = new gf6(ll3Var2, i9);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new gf6(ll3Var2, i9);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                Modifier modifierM2101sizeVpY3zN5 = SizeKt.m2101sizeVpY3zN4(SemanticsModifierKt.semantics(modifierThen2, true, (nl3) objRememberedValue3), LinearIndicatorWidth, LinearIndicatorHeight);
                if ((i4 & 57344) == 16384) {
                    i12 = 1;
                } else {
                    i12 = 0;
                }
                if ((458752 & i4) == 131072) {
                    i13 = 1;
                } else {
                    i13 = 0;
                }
                int i110 = i12 | i13 | (composerStartRestartGroup.changed(ll3Var2) ? 1 : 0) | (((((i4 & 7168) ^ 3072) > 2048 || !composerStartRestartGroup.changed(linearTrackColor)) && (i4 & 3072) != 2048) ? 0 : 1) | (((((i4 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 || !composerStartRestartGroup.changed(linearColor)) && (i4 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) ? 0 : 1);
                i9 = ((3670016 & i4) ^ 1572864) > 1048576 ? 0 : 0;
                i14 = i9 | i110;
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (i14 == 0) {
                    nl3Var4 = nl3Var3;
                    j5 = linearColor;
                    j3 = linearTrackColor;
                    objRememberedValue4 = new nl3() { // from class: ym6
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return ProgressIndicatorKt.LinearProgressIndicator_GJbTh5U$lambda$9$lambda$8(i11, f3, ll3Var2, j3, j5, nl3Var4, (DrawScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                } else {
                    nl3Var4 = nl3Var3;
                    j5 = linearColor;
                    j3 = linearTrackColor;
                    objRememberedValue4 = new nl3() { // from class: ym6
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return ProgressIndicatorKt.LinearProgressIndicator_GJbTh5U$lambda$9$lambda$8(i11, f3, ll3Var2, j3, j5, nl3Var4, (DrawScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                CanvasKt.Canvas(modifierM2101sizeVpY3zN5, (nl3) objRememberedValue4, composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                i10 = i11;
                f2 = f3;
                j4 = j5;
                nl3Var2 = nl3Var4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                nl3Var2 = nl3Var;
                f2 = fM3737getLinearIndicatorTrackGapSizeD9Ej5fM;
                modifier3 = modifier2;
                j3 = linearTrackColor;
                i10 = iM3738getLinearStrokeCapKaPHkGw;
                j4 = linearColor;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final Modifier modifier5 = modifier3;
                final long j7 = j3;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: zm6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ProgressIndicatorKt.LinearProgressIndicator_GJbTh5U$lambda$10(ll3Var, modifier5, j4, j7, i10, f2, nl3Var2, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 48;
        modifier2 = modifier;
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            linearColor = j;
            if ((i3 & 4) == 0) {
                i17 = 128;
            } else {
                i17 = 128;
            }
            i4 |= i17;
        } else {
            linearColor = j;
        }
        if ((i2 & 3072) == 0) {
            linearTrackColor = j2;
            if ((i3 & 8) == 0) {
                i16 = 1024;
            } else {
                i16 = 1024;
            }
            i4 |= i16;
        } else {
            linearTrackColor = j2;
        }
        i5 = i3 & 16;
        if (i5 != 0) {
            if ((i2 & 24576) == 0) {
                iM3738getLinearStrokeCapKaPHkGw = i;
                if (composerStartRestartGroup.changed(iM3738getLinearStrokeCapKaPHkGw)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i4 |= i6;
            }
            i7 = i3 & 32;
            if (i7 != 0) {
                i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = f;
            } else {
                fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = f;
                if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(fM3737getLinearIndicatorTrackGapSizeD9Ej5fM)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i4 |= i8;
                }
            }
            if ((i2 & 1572864) != 0) {
                if ((i3 & 64) == 0) {
                    i15 = 524288;
                } else {
                    i15 = 524288;
                }
                i4 |= i15;
            }
            i9 = 1;
            if ((i4 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if ((i3 & 8) != 0) {
                        linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                        i4 &= -7169;
                    }
                    if (i5 != 0) {
                        iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                    }
                    if (i7 != 0) {
                        fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3737getLinearIndicatorTrackGapSizeD9Ej5fM();
                    }
                    if ((i3 & 64) != 0) {
                        if (((i4 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
                        }
                        if ((i4 & 57344) == 16384) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        z3 = z5 | z2;
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z3) {
                            objRememberedValue = new nl3() { // from class: xm6
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return ProgressIndicatorKt.LinearProgressIndicator_GJbTh5U$lambda$2$lambda$1(linearColor, iM3738getLinearStrokeCapKaPHkGw, (DrawScope) obj);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new nl3() { // from class: xm6
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return ProgressIndicatorKt.LinearProgressIndicator_GJbTh5U$lambda$2$lambda$1(linearColor, iM3738getLinearStrokeCapKaPHkGw, (DrawScope) obj);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        nl3Var3 = (nl3) objRememberedValue;
                        i4 &= -3670017;
                    } else {
                        nl3Var3 = nl3Var;
                    }
                    i11 = iM3738getLinearStrokeCapKaPHkGw;
                    f3 = fM3737getLinearIndicatorTrackGapSizeD9Ej5fM;
                } else {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if ((i3 & 8) != 0) {
                        linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                        i4 &= -7169;
                    }
                    if (i5 != 0) {
                        iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                    }
                    if (i7 != 0) {
                        fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3737getLinearIndicatorTrackGapSizeD9Ej5fM();
                    }
                    if ((i3 & 64) != 0) {
                        if (((i4 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
                        }
                        if ((i4 & 57344) == 16384) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        z3 = z5 | z2;
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z3) {
                            objRememberedValue = new nl3() { // from class: xm6
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return ProgressIndicatorKt.LinearProgressIndicator_GJbTh5U$lambda$2$lambda$1(linearColor, iM3738getLinearStrokeCapKaPHkGw, (DrawScope) obj);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new nl3() { // from class: xm6
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return ProgressIndicatorKt.LinearProgressIndicator_GJbTh5U$lambda$2$lambda$1(linearColor, iM3738getLinearStrokeCapKaPHkGw, (DrawScope) obj);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        nl3Var3 = (nl3) objRememberedValue;
                        i4 &= -3670017;
                    } else {
                        nl3Var3 = nl3Var;
                    }
                    i11 = iM3738getLinearStrokeCapKaPHkGw;
                    f3 = fM3737getLinearIndicatorTrackGapSizeD9Ej5fM;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-339970038, i4, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:153)");
                }
                if ((i4 & 14) == 4) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z4) {
                    objRememberedValue2 = new z12(ll3Var, 2);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = new z12(ll3Var, 2);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                ll3Var2 = (ll3) objRememberedValue2;
                Modifier modifierThen3 = modifier3.then(AccessibilityUtilKt.getIncreaseVerticalSemanticsBounds());
                zChanged = composerStartRestartGroup.changed(ll3Var2);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue3 = new gf6(ll3Var2, i9);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new gf6(ll3Var2, i9);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                Modifier modifierM2101sizeVpY3zN6 = SizeKt.m2101sizeVpY3zN4(SemanticsModifierKt.semantics(modifierThen3, true, (nl3) objRememberedValue3), LinearIndicatorWidth, LinearIndicatorHeight);
                if ((i4 & 57344) == 16384) {
                    i12 = 1;
                } else {
                    i12 = 0;
                }
                if ((458752 & i4) == 131072) {
                    i13 = 1;
                } else {
                    i13 = 0;
                }
                int i111 = i12 | i13 | (composerStartRestartGroup.changed(ll3Var2) ? 1 : 0) | (((((i4 & 7168) ^ 3072) > 2048 || !composerStartRestartGroup.changed(linearTrackColor)) && (i4 & 3072) != 2048) ? 0 : 1) | (((((i4 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 || !composerStartRestartGroup.changed(linearColor)) && (i4 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) ? 0 : 1);
                if (((3670016 & i4) ^ 1572864) > 1048576) {
                }
                i14 = i9 | i111;
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (i14 == 0) {
                    nl3Var4 = nl3Var3;
                    j5 = linearColor;
                    j3 = linearTrackColor;
                    objRememberedValue4 = new nl3() { // from class: ym6
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return ProgressIndicatorKt.LinearProgressIndicator_GJbTh5U$lambda$9$lambda$8(i11, f3, ll3Var2, j3, j5, nl3Var4, (DrawScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                } else {
                    nl3Var4 = nl3Var3;
                    j5 = linearColor;
                    j3 = linearTrackColor;
                    objRememberedValue4 = new nl3() { // from class: ym6
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return ProgressIndicatorKt.LinearProgressIndicator_GJbTh5U$lambda$9$lambda$8(i11, f3, ll3Var2, j3, j5, nl3Var4, (DrawScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                CanvasKt.Canvas(modifierM2101sizeVpY3zN6, (nl3) objRememberedValue4, composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                i10 = i11;
                f2 = f3;
                j4 = j5;
                nl3Var2 = nl3Var4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                nl3Var2 = nl3Var;
                f2 = fM3737getLinearIndicatorTrackGapSizeD9Ej5fM;
                modifier3 = modifier2;
                j3 = linearTrackColor;
                i10 = iM3738getLinearStrokeCapKaPHkGw;
                j4 = linearColor;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final Modifier modifier6 = modifier3;
                final long j8 = j3;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: zm6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ProgressIndicatorKt.LinearProgressIndicator_GJbTh5U$lambda$10(ll3Var, modifier6, j4, j8, i10, f2, nl3Var2, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 24576;
        iM3738getLinearStrokeCapKaPHkGw = i;
        i7 = i3 & 32;
        if (i7 != 0) {
            i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = f;
        } else {
            fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = f;
            if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(fM3737getLinearIndicatorTrackGapSizeD9Ej5fM)) {
                    i8 = 131072;
                } else {
                    i8 = 65536;
                }
                i4 |= i8;
            }
        }
        if ((i2 & 1572864) != 0) {
            if ((i3 & 64) == 0) {
                i15 = 524288;
            } else {
                i15 = 524288;
            }
            i4 |= i15;
        }
        i9 = 1;
        if ((i4 & 599187) != 599186) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i2 & 1) != 0) {
                if (i18 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i3 & 4) != 0) {
                    linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                    i4 &= -897;
                }
                if ((i3 & 8) != 0) {
                    linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                    i4 &= -7169;
                }
                if (i5 != 0) {
                    iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                }
                if (i7 != 0) {
                    fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3737getLinearIndicatorTrackGapSizeD9Ej5fM();
                }
                if ((i3 & 64) != 0) {
                    if (((i4 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
                    }
                    if ((i4 & 57344) == 16384) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    z3 = z5 | z2;
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z3) {
                        objRememberedValue = new nl3() { // from class: xm6
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return ProgressIndicatorKt.LinearProgressIndicator_GJbTh5U$lambda$2$lambda$1(linearColor, iM3738getLinearStrokeCapKaPHkGw, (DrawScope) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new nl3() { // from class: xm6
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return ProgressIndicatorKt.LinearProgressIndicator_GJbTh5U$lambda$2$lambda$1(linearColor, iM3738getLinearStrokeCapKaPHkGw, (DrawScope) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    nl3Var3 = (nl3) objRememberedValue;
                    i4 &= -3670017;
                } else {
                    nl3Var3 = nl3Var;
                }
                i11 = iM3738getLinearStrokeCapKaPHkGw;
                f3 = fM3737getLinearIndicatorTrackGapSizeD9Ej5fM;
            } else {
                if (i18 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i3 & 4) != 0) {
                    linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                    i4 &= -897;
                }
                if ((i3 & 8) != 0) {
                    linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                    i4 &= -7169;
                }
                if (i5 != 0) {
                    iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                }
                if (i7 != 0) {
                    fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3737getLinearIndicatorTrackGapSizeD9Ej5fM();
                }
                if ((i3 & 64) != 0) {
                    if (((i4 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
                    }
                    if ((i4 & 57344) == 16384) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    z3 = z5 | z2;
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z3) {
                        objRememberedValue = new nl3() { // from class: xm6
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return ProgressIndicatorKt.LinearProgressIndicator_GJbTh5U$lambda$2$lambda$1(linearColor, iM3738getLinearStrokeCapKaPHkGw, (DrawScope) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new nl3() { // from class: xm6
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return ProgressIndicatorKt.LinearProgressIndicator_GJbTh5U$lambda$2$lambda$1(linearColor, iM3738getLinearStrokeCapKaPHkGw, (DrawScope) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    nl3Var3 = (nl3) objRememberedValue;
                    i4 &= -3670017;
                } else {
                    nl3Var3 = nl3Var;
                }
                i11 = iM3738getLinearStrokeCapKaPHkGw;
                f3 = fM3737getLinearIndicatorTrackGapSizeD9Ej5fM;
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-339970038, i4, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:153)");
            }
            if ((i4 & 14) == 4) {
                z4 = true;
            } else {
                z4 = false;
            }
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (z4) {
                objRememberedValue2 = new z12(ll3Var, 2);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            } else {
                objRememberedValue2 = new z12(ll3Var, 2);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            ll3Var2 = (ll3) objRememberedValue2;
            Modifier modifierThen4 = modifier3.then(AccessibilityUtilKt.getIncreaseVerticalSemanticsBounds());
            zChanged = composerStartRestartGroup.changed(ll3Var2);
            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (zChanged) {
                objRememberedValue3 = new gf6(ll3Var2, i9);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            } else {
                objRememberedValue3 = new gf6(ll3Var2, i9);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            Modifier modifierM2101sizeVpY3zN7 = SizeKt.m2101sizeVpY3zN4(SemanticsModifierKt.semantics(modifierThen4, true, (nl3) objRememberedValue3), LinearIndicatorWidth, LinearIndicatorHeight);
            if ((i4 & 57344) == 16384) {
                i12 = 1;
            } else {
                i12 = 0;
            }
            if ((458752 & i4) == 131072) {
                i13 = 1;
            } else {
                i13 = 0;
            }
            int i112 = i12 | i13 | (composerStartRestartGroup.changed(ll3Var2) ? 1 : 0) | (((((i4 & 7168) ^ 3072) > 2048 || !composerStartRestartGroup.changed(linearTrackColor)) && (i4 & 3072) != 2048) ? 0 : 1) | (((((i4 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 || !composerStartRestartGroup.changed(linearColor)) && (i4 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) ? 0 : 1);
            if (((3670016 & i4) ^ 1572864) > 1048576) {
            }
            i14 = i9 | i112;
            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (i14 == 0) {
                nl3Var4 = nl3Var3;
                j5 = linearColor;
                j3 = linearTrackColor;
                objRememberedValue4 = new nl3() { // from class: ym6
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return ProgressIndicatorKt.LinearProgressIndicator_GJbTh5U$lambda$9$lambda$8(i11, f3, ll3Var2, j3, j5, nl3Var4, (DrawScope) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            } else {
                nl3Var4 = nl3Var3;
                j5 = linearColor;
                j3 = linearTrackColor;
                objRememberedValue4 = new nl3() { // from class: ym6
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return ProgressIndicatorKt.LinearProgressIndicator_GJbTh5U$lambda$9$lambda$8(i11, f3, ll3Var2, j3, j5, nl3Var4, (DrawScope) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            CanvasKt.Canvas(modifierM2101sizeVpY3zN7, (nl3) objRememberedValue4, composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            i10 = i11;
            f2 = f3;
            j4 = j5;
            nl3Var2 = nl3Var4;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            nl3Var2 = nl3Var;
            f2 = fM3737getLinearIndicatorTrackGapSizeD9Ej5fM;
            modifier3 = modifier2;
            j3 = linearTrackColor;
            i10 = iM3738getLinearStrokeCapKaPHkGw;
            j4 = linearColor;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier7 = modifier3;
            final long j9 = j3;
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: zm6
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ProgressIndicatorKt.LinearProgressIndicator_GJbTh5U$lambda$10(ll3Var, modifier7, j4, j9, i10, f2, nl3Var2, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    @ul2
    /* JADX INFO: renamed from: LinearProgressIndicator-RIQooxk, reason: not valid java name */
    public static final /* synthetic */ void m3749LinearProgressIndicatorRIQooxk(Modifier modifier, long j, long j2, Composer composer, final int i, final int i2) {
        Modifier modifier2;
        int i3;
        long linearColor;
        long linearTrackColor;
        final Modifier modifier3;
        final long j3;
        final long j4;
        long j5;
        Modifier modifier4;
        Composer composerStartRestartGroup = composer.startRestartGroup(585576195);
        int i4 = i2 & 1;
        if (i4 != 0) {
            i3 = i | 6;
            modifier2 = modifier;
        } else if ((i & 6) == 0) {
            modifier2 = modifier;
            i3 = (composerStartRestartGroup.changed(modifier2) ? 4 : 2) | i;
        } else {
            modifier2 = modifier;
            i3 = i;
        }
        if ((i & 48) == 0) {
            if ((i2 & 2) == 0) {
                linearColor = j;
                int i5 = composerStartRestartGroup.changed(linearColor) ? 32 : 16;
                i3 |= i5;
            } else {
                linearColor = j;
            }
            i3 |= i5;
        } else {
            linearColor = j;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i2 & 4) == 0) {
                linearTrackColor = j2;
                int i6 = composerStartRestartGroup.changed(linearTrackColor) ? 256 : 128;
                i3 |= i6;
            } else {
                linearTrackColor = j2;
            }
            i3 |= i6;
        } else {
            linearTrackColor = j2;
        }
        if (composerStartRestartGroup.shouldExecute((i3 & 147) != 146, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) == 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                Modifier modifier5 = i4 != 0 ? Modifier.Companion : modifier2;
                if ((i2 & 2) != 0) {
                    linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                    i3 &= -113;
                }
                if ((i2 & 4) != 0) {
                    linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                    i3 &= -897;
                }
                j5 = linearTrackColor;
                modifier4 = modifier5;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                if ((i2 & 2) != 0) {
                    i3 &= -113;
                }
                if ((i2 & 4) != 0) {
                    i3 &= -897;
                }
                j5 = linearTrackColor;
                modifier4 = modifier2;
            }
            long j6 = linearColor;
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(585576195, i3, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:391)");
            }
            m3753LinearProgressIndicatorrIrjwxo(modifier4, j6, j5, ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw(), 0.0f, composerStartRestartGroup, (i3 & 14) | 3072 | (i3 & 112) | (i3 & 896), 16);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier4;
            j3 = j6;
            j4 = j5;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            j3 = linearColor;
            j4 = linearTrackColor;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jn6
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ProgressIndicatorKt.LinearProgressIndicator_RIQooxk$lambda$19(modifier3, j3, j4, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0142  */
    /* JADX WARN: Code duplicated, block: B:104:0x0151  */
    /* JADX WARN: Code duplicated, block: B:106:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0044  */
    /* JADX WARN: Code duplicated, block: B:28:0x0048  */
    /* JADX WARN: Code duplicated, block: B:30:0x0050  */
    /* JADX WARN: Code duplicated, block: B:31:0x0053  */
    /* JADX WARN: Code duplicated, block: B:34:0x0059  */
    /* JADX WARN: Code duplicated, block: B:37:0x005f  */
    /* JADX WARN: Code duplicated, block: B:39:0x0063  */
    /* JADX WARN: Code duplicated, block: B:41:0x006b  */
    /* JADX WARN: Code duplicated, block: B:42:0x006e  */
    /* JADX WARN: Code duplicated, block: B:45:0x0074  */
    /* JADX WARN: Code duplicated, block: B:48:0x007a  */
    /* JADX WARN: Code duplicated, block: B:50:0x007f  */
    /* JADX WARN: Code duplicated, block: B:52:0x0083  */
    /* JADX WARN: Code duplicated, block: B:54:0x008b  */
    /* JADX WARN: Code duplicated, block: B:55:0x008e  */
    /* JADX WARN: Code duplicated, block: B:59:0x009b  */
    /* JADX WARN: Code duplicated, block: B:60:0x009e  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:65:0x00af  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c5 A[PHI: r2 r6 r7 r9
      0x00c5: PHI (r2v24 int) = (r2v19 int), (r2v25 int), (r2v26 int) binds: [B:83:0x00e8, B:72:0x00c1, B:73:0x00c3] A[DONT_GENERATE, DONT_INLINE]
      0x00c5: PHI (r6v7 androidx.compose.ui.Modifier) = (r6v3 androidx.compose.ui.Modifier), (r6v2 androidx.compose.ui.Modifier), (r6v2 androidx.compose.ui.Modifier) binds: [B:83:0x00e8, B:72:0x00c1, B:73:0x00c3] A[DONT_GENERATE, DONT_INLINE]
      0x00c5: PHI (r7v10 long) = (r7v8 long), (r7v6 long), (r7v6 long) binds: [B:83:0x00e8, B:72:0x00c1, B:73:0x00c3] A[DONT_GENERATE, DONT_INLINE]
      0x00c5: PHI (r9v8 long) = (r9v5 long), (r9v2 long), (r9v2 long) binds: [B:83:0x00e8, B:72:0x00c1, B:73:0x00c3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:75:0x00ca A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:76:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:79:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:84:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:87:0x0100  */
    /* JADX WARN: Code duplicated, block: B:90:0x010a  */
    /* JADX WARN: Code duplicated, block: B:93:0x0112  */
    /* JADX WARN: Code duplicated, block: B:95:0x011a  */
    /* JADX WARN: Code duplicated, block: B:98:0x0137  */
    @ul2
    /* JADX INFO: renamed from: LinearProgressIndicator-_5eSR-E, reason: not valid java name */
    public static final void m3750LinearProgressIndicator_5eSRE(final float f, Modifier modifier, long j, long j2, int i, Composer composer, final int i2, final int i3) {
        int i4;
        Modifier modifier2;
        long linearColor;
        long linearTrackColor;
        int i5;
        int i6;
        int i7;
        boolean z;
        long j3;
        final Modifier modifier3;
        final long j4;
        final int i8;
        final long j5;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        int iM3738getLinearStrokeCapKaPHkGw;
        Modifier modifier4;
        long j6;
        long j7;
        boolean z2;
        Object objRememberedValue;
        Composer composerStartRestartGroup = composer.startRestartGroup(905419617);
        if ((i3 & 1) != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (composerStartRestartGroup.changed(f) ? 4 : 2) | i2;
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
                    linearColor = j;
                    int i10 = composerStartRestartGroup.changed(linearColor) ? 256 : 128;
                    i4 |= i10;
                } else {
                    linearColor = j;
                }
                i4 |= i10;
            } else {
                linearColor = j;
            }
            if ((i2 & 3072) == 0) {
                if ((i3 & 8) == 0) {
                    linearTrackColor = j2;
                    int i11 = composerStartRestartGroup.changed(linearTrackColor) ? 2048 : 1024;
                    i4 |= i11;
                } else {
                    linearTrackColor = j2;
                }
                i4 |= i11;
            } else {
                linearTrackColor = j2;
            }
            i5 = i3 & 16;
            if (i5 != 0) {
                if ((i2 & 24576) == 0) {
                    i6 = i;
                    if (composerStartRestartGroup.changed(i6)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i4 |= i7;
                }
                if ((i4 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                        if (i9 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                            i4 &= -897;
                        }
                        if ((i3 & 8) != 0) {
                            linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                            i4 &= -7169;
                        }
                        if (i5 != 0) {
                            iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                            modifier4 = modifier2;
                            j6 = linearColor;
                            j7 = linearTrackColor;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(905419617, i4, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:359)");
                        }
                        z2 = (i4 & 14) == 4;
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z2 || objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new ll3() { // from class: dn6
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return Float.valueOf(ProgressIndicatorKt.LinearProgressIndicator__5eSR_E$lambda$16$lambda$15(f));
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        m3748LinearProgressIndicatorGJbTh5U((ll3) objRememberedValue, modifier4, j6, j7, iM3738getLinearStrokeCapKaPHkGw, 0.0f, null, composerStartRestartGroup, i4 & 65520, 96);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        j3 = j7;
                        modifier3 = modifier4;
                        j4 = j6;
                        i8 = iM3738getLinearStrokeCapKaPHkGw;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        if ((i3 & 4) != 0) {
                            i4 &= -897;
                        }
                        if ((i3 & 8) != 0) {
                            i4 &= -7169;
                        }
                    }
                    modifier4 = modifier2;
                    j6 = linearColor;
                    j7 = linearTrackColor;
                    iM3738getLinearStrokeCapKaPHkGw = i6;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(905419617, i4, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:359)");
                    }
                    if ((i4 & 14) == 4) {
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = new ll3() { // from class: dn6
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return Float.valueOf(ProgressIndicatorKt.LinearProgressIndicator__5eSR_E$lambda$16$lambda$15(f));
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new ll3() { // from class: dn6
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return Float.valueOf(ProgressIndicatorKt.LinearProgressIndicator__5eSR_E$lambda$16$lambda$15(f));
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    m3748LinearProgressIndicatorGJbTh5U((ll3) objRememberedValue, modifier4, j6, j7, iM3738getLinearStrokeCapKaPHkGw, 0.0f, null, composerStartRestartGroup, i4 & 65520, 96);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j3 = j7;
                    modifier3 = modifier4;
                    j4 = j6;
                    i8 = iM3738getLinearStrokeCapKaPHkGw;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    j3 = linearTrackColor;
                    modifier3 = modifier2;
                    j4 = linearColor;
                    i8 = i6;
                }
                j5 = j3;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: fn6
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ProgressIndicatorKt.LinearProgressIndicator__5eSR_E$lambda$17(f, modifier3, j4, j5, i8, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 24576;
            i6 = i;
            if ((i4 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i9 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if ((i3 & 8) != 0) {
                        linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                        i4 &= -7169;
                    }
                    if (i5 != 0) {
                        iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                        modifier4 = modifier2;
                        j6 = linearColor;
                        j7 = linearTrackColor;
                    } else {
                        modifier4 = modifier2;
                        j6 = linearColor;
                        j7 = linearTrackColor;
                        iM3738getLinearStrokeCapKaPHkGw = i6;
                    }
                } else {
                    if (i9 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if ((i3 & 8) != 0) {
                        linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                        i4 &= -7169;
                    }
                    if (i5 != 0) {
                        iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                        modifier4 = modifier2;
                        j6 = linearColor;
                        j7 = linearTrackColor;
                    } else {
                        modifier4 = modifier2;
                        j6 = linearColor;
                        j7 = linearTrackColor;
                        iM3738getLinearStrokeCapKaPHkGw = i6;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(905419617, i4, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:359)");
                }
                if ((i4 & 14) == 4) {
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z2) {
                    objRememberedValue = new ll3() { // from class: dn6
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return Float.valueOf(ProgressIndicatorKt.LinearProgressIndicator__5eSR_E$lambda$16$lambda$15(f));
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new ll3() { // from class: dn6
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return Float.valueOf(ProgressIndicatorKt.LinearProgressIndicator__5eSR_E$lambda$16$lambda$15(f));
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                m3748LinearProgressIndicatorGJbTh5U((ll3) objRememberedValue, modifier4, j6, j7, iM3738getLinearStrokeCapKaPHkGw, 0.0f, null, composerStartRestartGroup, i4 & 65520, 96);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j3 = j7;
                modifier3 = modifier4;
                j4 = j6;
                i8 = iM3738getLinearStrokeCapKaPHkGw;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                j3 = linearTrackColor;
                modifier3 = modifier2;
                j4 = linearColor;
                i8 = i6;
            }
            j5 = j3;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: fn6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ProgressIndicatorKt.LinearProgressIndicator__5eSR_E$lambda$17(f, modifier3, j4, j5, i8, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 48;
        modifier2 = modifier;
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i3 & 4) == 0) {
                linearColor = j;
                if (composerStartRestartGroup.changed(linearColor)) {
                }
                i4 |= i10;
            } else {
                linearColor = j;
            }
            i4 |= i10;
        } else {
            linearColor = j;
        }
        if ((i2 & 3072) == 0) {
            if ((i3 & 8) == 0) {
                linearTrackColor = j2;
                if (composerStartRestartGroup.changed(linearTrackColor)) {
                }
                i4 |= i11;
            } else {
                linearTrackColor = j2;
            }
            i4 |= i11;
        } else {
            linearTrackColor = j2;
        }
        i5 = i3 & 16;
        if (i5 != 0) {
            if ((i2 & 24576) == 0) {
                i6 = i;
                if (composerStartRestartGroup.changed(i6)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i4 |= i7;
            }
            if ((i4 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i9 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if ((i3 & 8) != 0) {
                        linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                        i4 &= -7169;
                    }
                    if (i5 != 0) {
                        iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                        modifier4 = modifier2;
                        j6 = linearColor;
                        j7 = linearTrackColor;
                    } else {
                        modifier4 = modifier2;
                        j6 = linearColor;
                        j7 = linearTrackColor;
                        iM3738getLinearStrokeCapKaPHkGw = i6;
                    }
                } else {
                    if (i9 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if ((i3 & 8) != 0) {
                        linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                        i4 &= -7169;
                    }
                    if (i5 != 0) {
                        iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                        modifier4 = modifier2;
                        j6 = linearColor;
                        j7 = linearTrackColor;
                    } else {
                        modifier4 = modifier2;
                        j6 = linearColor;
                        j7 = linearTrackColor;
                        iM3738getLinearStrokeCapKaPHkGw = i6;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(905419617, i4, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:359)");
                }
                if ((i4 & 14) == 4) {
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z2) {
                    objRememberedValue = new ll3() { // from class: dn6
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return Float.valueOf(ProgressIndicatorKt.LinearProgressIndicator__5eSR_E$lambda$16$lambda$15(f));
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new ll3() { // from class: dn6
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return Float.valueOf(ProgressIndicatorKt.LinearProgressIndicator__5eSR_E$lambda$16$lambda$15(f));
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                m3748LinearProgressIndicatorGJbTh5U((ll3) objRememberedValue, modifier4, j6, j7, iM3738getLinearStrokeCapKaPHkGw, 0.0f, null, composerStartRestartGroup, i4 & 65520, 96);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j3 = j7;
                modifier3 = modifier4;
                j4 = j6;
                i8 = iM3738getLinearStrokeCapKaPHkGw;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                j3 = linearTrackColor;
                modifier3 = modifier2;
                j4 = linearColor;
                i8 = i6;
            }
            j5 = j3;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: fn6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ProgressIndicatorKt.LinearProgressIndicator__5eSR_E$lambda$17(f, modifier3, j4, j5, i8, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 24576;
        i6 = i;
        if ((i4 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i2 & 1) != 0) {
                if (i9 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if ((i3 & 4) != 0) {
                    linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                    i4 &= -897;
                }
                if ((i3 & 8) != 0) {
                    linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                    i4 &= -7169;
                }
                if (i5 != 0) {
                    iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                    modifier4 = modifier2;
                    j6 = linearColor;
                    j7 = linearTrackColor;
                } else {
                    modifier4 = modifier2;
                    j6 = linearColor;
                    j7 = linearTrackColor;
                    iM3738getLinearStrokeCapKaPHkGw = i6;
                }
            } else {
                if (i9 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if ((i3 & 4) != 0) {
                    linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                    i4 &= -897;
                }
                if ((i3 & 8) != 0) {
                    linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                    i4 &= -7169;
                }
                if (i5 != 0) {
                    iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                    modifier4 = modifier2;
                    j6 = linearColor;
                    j7 = linearTrackColor;
                } else {
                    modifier4 = modifier2;
                    j6 = linearColor;
                    j7 = linearTrackColor;
                    iM3738getLinearStrokeCapKaPHkGw = i6;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(905419617, i4, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:359)");
            }
            if ((i4 & 14) == 4) {
            }
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z2) {
                objRememberedValue = new ll3() { // from class: dn6
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return Float.valueOf(ProgressIndicatorKt.LinearProgressIndicator__5eSR_E$lambda$16$lambda$15(f));
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                objRememberedValue = new ll3() { // from class: dn6
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return Float.valueOf(ProgressIndicatorKt.LinearProgressIndicator__5eSR_E$lambda$16$lambda$15(f));
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            m3748LinearProgressIndicatorGJbTh5U((ll3) objRememberedValue, modifier4, j6, j7, iM3738getLinearStrokeCapKaPHkGw, 0.0f, null, composerStartRestartGroup, i4 & 65520, 96);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            j3 = j7;
            modifier3 = modifier4;
            j4 = j6;
            i8 = iM3738getLinearStrokeCapKaPHkGw;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            j3 = linearTrackColor;
            modifier3 = modifier2;
            j4 = linearColor;
            i8 = i6;
        }
        j5 = j3;
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: fn6
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ProgressIndicatorKt.LinearProgressIndicator__5eSR_E$lambda$17(f, modifier3, j4, j5, i8, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0045  */
    /* JADX WARN: Code duplicated, block: B:28:0x0049  */
    /* JADX WARN: Code duplicated, block: B:30:0x0051  */
    /* JADX WARN: Code duplicated, block: B:31:0x0054  */
    /* JADX WARN: Code duplicated, block: B:34:0x005a  */
    /* JADX WARN: Code duplicated, block: B:37:0x0060  */
    /* JADX WARN: Code duplicated, block: B:42:0x006f  */
    /* JADX WARN: Code duplicated, block: B:44:0x0073  */
    /* JADX WARN: Code duplicated, block: B:47:0x007b  */
    /* JADX WARN: Code duplicated, block: B:48:0x007d  */
    /* JADX WARN: Code duplicated, block: B:51:0x0086  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:64:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:65:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:68:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:69:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:73:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:79:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:81:0x0104  */
    /* JADX WARN: Code duplicated, block: B:84:0x0110  */
    /* JADX WARN: Code duplicated, block: B:86:? A[RETURN, SYNTHETIC] */
    @ul2
    /* JADX INFO: renamed from: LinearProgressIndicator-eaDK9VM, reason: not valid java name */
    public static final /* synthetic */ void m3752LinearProgressIndicatoreaDK9VM(final float f, Modifier modifier, long j, long j2, Composer composer, final int i, final int i2) {
        float f2;
        int i3;
        Modifier modifier2;
        long j3;
        long j4;
        boolean z;
        final Modifier modifier3;
        final long j5;
        final long j6;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        long linearColor;
        long linearTrackColor;
        Modifier modifier5;
        long j7;
        int i4;
        Composer composerStartRestartGroup = composer.startRestartGroup(-372717133);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
            f2 = f;
        } else {
            f2 = f;
            if ((i & 6) == 0) {
                i3 = (composerStartRestartGroup.changed(f2) ? 4 : 2) | i;
            } else {
                i3 = i;
            }
        }
        int i5 = i2 & 2;
        if (i5 == 0) {
            if ((i & 48) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if ((i2 & 4) == 0) {
                    j3 = j;
                    int i6 = composerStartRestartGroup.changed(j3) ? 256 : 128;
                    i3 |= i6;
                } else {
                    j3 = j;
                }
                i3 |= i6;
            } else {
                j3 = j;
            }
            if ((i & 3072) == 0) {
                j4 = j2;
                if ((i2 & 8) == 0 || !composerStartRestartGroup.changed(j4)) {
                    i4 = 1024;
                } else {
                    i4 = 2048;
                }
                i3 |= i4;
            } else {
                j4 = j2;
            }
            if ((i3 & 1171) != 1170) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                    if (i5 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 4) != 0) {
                        linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                        i3 &= -897;
                    } else {
                        linearColor = j3;
                    }
                    if ((i2 & 8) != 0) {
                        i3 &= -7169;
                        modifier5 = modifier4;
                        j7 = linearColor;
                        linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                    } else {
                        linearTrackColor = j4;
                        modifier5 = modifier4;
                        j7 = linearColor;
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                    }
                    if ((i2 & 8) != 0) {
                        i3 &= -7169;
                    }
                    linearTrackColor = j4;
                    modifier5 = modifier2;
                    j7 = j3;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-372717133, i3, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:376)");
                }
                m3750LinearProgressIndicator_5eSRE(f2, modifier5, j7, linearTrackColor, ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw(), composerStartRestartGroup, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier5;
                j5 = j7;
                j6 = linearTrackColor;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                j5 = j3;
                j6 = j4;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kn6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ProgressIndicatorKt.LinearProgressIndicator_eaDK9VM$lambda$18(f, modifier3, j5, j6, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        modifier2 = modifier;
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i2 & 4) == 0) {
                j3 = j;
                if (composerStartRestartGroup.changed(j3)) {
                }
                i3 |= i6;
            } else {
                j3 = j;
            }
            i3 |= i6;
        } else {
            j3 = j;
        }
        if ((i & 3072) == 0) {
            j4 = j2;
            if ((i2 & 8) == 0) {
                i4 = 1024;
            } else {
                i4 = 1024;
            }
            i3 |= i4;
        } else {
            j4 = j2;
        }
        if ((i3 & 1171) != 1170) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i5 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i2 & 4) != 0) {
                    linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                    i3 &= -897;
                } else {
                    linearColor = j3;
                }
                if ((i2 & 8) != 0) {
                    i3 &= -7169;
                    modifier5 = modifier4;
                    j7 = linearColor;
                    linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                } else {
                    linearTrackColor = j4;
                    modifier5 = modifier4;
                    j7 = linearColor;
                }
            } else {
                if (i5 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i2 & 4) != 0) {
                    linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                    i3 &= -897;
                } else {
                    linearColor = j3;
                }
                if ((i2 & 8) != 0) {
                    i3 &= -7169;
                    modifier5 = modifier4;
                    j7 = linearColor;
                    linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                } else {
                    linearTrackColor = j4;
                    modifier5 = modifier4;
                    j7 = linearColor;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-372717133, i3, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:376)");
            }
            m3750LinearProgressIndicator_5eSRE(f2, modifier5, j7, linearTrackColor, ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw(), composerStartRestartGroup, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier5;
            j5 = j7;
            j6 = linearTrackColor;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            j5 = j3;
            j6 = j4;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kn6
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ProgressIndicatorKt.LinearProgressIndicator_eaDK9VM$lambda$18(f, modifier3, j5, j6, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01de  */
    /* JADX WARN: Code duplicated, block: B:104:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:110:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:112:0x0202  */
    /* JADX WARN: Code duplicated, block: B:118:0x021b  */
    /* JADX WARN: Code duplicated, block: B:120:0x0223  */
    /* JADX WARN: Code duplicated, block: B:123:0x0237  */
    /* JADX WARN: Code duplicated, block: B:125:0x0242  */
    /* JADX WARN: Code duplicated, block: B:128:0x0251  */
    /* JADX WARN: Code duplicated, block: B:130:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x007a  */
    /* JADX WARN: Code duplicated, block: B:48:0x007f  */
    /* JADX WARN: Code duplicated, block: B:50:0x0083  */
    /* JADX WARN: Code duplicated, block: B:52:0x008b  */
    /* JADX WARN: Code duplicated, block: B:53:0x008e  */
    /* JADX WARN: Code duplicated, block: B:57:0x0099  */
    /* JADX WARN: Code duplicated, block: B:58:0x009b  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:75:0x00cb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:76:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:80:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:85:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:87:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:88:0x0104  */
    /* JADX WARN: Code duplicated, block: B:91:0x0113  */
    /* JADX WARN: Code duplicated, block: B:94:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:95:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:98:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:99:0x01cc  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX INFO: renamed from: LinearProgressIndicator-rIrjwxo, reason: not valid java name */
    public static final void m3753LinearProgressIndicatorrIrjwxo(Modifier modifier, long j, long j2, int i, float f, Composer composer, final int i2, final int i3) {
        Modifier modifier2;
        int i4;
        long linearColor;
        long linearTrackColor;
        int iM3738getLinearStrokeCapKaPHkGw;
        int i5;
        float f2;
        int i6;
        boolean z;
        final long j3;
        final float f3;
        final long j4;
        final int i7;
        final Modifier modifier3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        final long j5;
        final long j6;
        final float fM3737getLinearIndicatorTrackGapSizeD9Ej5fM;
        int i8;
        final int i9;
        final State<Float> stateAnimateFloat;
        final State<Float> stateAnimateFloat2;
        final State<Float> stateAnimateFloat3;
        final State<Float> stateAnimateFloat4;
        boolean z2;
        boolean z3;
        boolean zChanged;
        Object objRememberedValue;
        Composer composerStartRestartGroup = composer.startRestartGroup(567589233);
        int i10 = i3 & 1;
        if (i10 != 0) {
            i4 = i2 | 6;
            modifier2 = modifier;
        } else if ((i2 & 6) == 0) {
            modifier2 = modifier;
            i4 = (composerStartRestartGroup.changed(modifier2) ? 4 : 2) | i2;
        } else {
            modifier2 = modifier;
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            linearColor = j;
            i4 |= ((i3 & 2) == 0 && composerStartRestartGroup.changed(linearColor)) ? 32 : 16;
        } else {
            linearColor = j;
        }
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            linearTrackColor = j2;
            i4 |= ((i3 & 4) == 0 && composerStartRestartGroup.changed(linearTrackColor)) ? 256 : 128;
        } else {
            linearTrackColor = j2;
        }
        int i11 = i3 & 8;
        if (i11 == 0) {
            if ((i2 & 3072) == 0) {
                iM3738getLinearStrokeCapKaPHkGw = i;
                i4 |= composerStartRestartGroup.changed(iM3738getLinearStrokeCapKaPHkGw) ? 2048 : 1024;
            }
            i5 = i3 & 16;
            if (i5 != 0) {
                if ((i2 & 24576) == 0) {
                    f2 = f;
                    if (composerStartRestartGroup.changed(f2)) {
                        i6 = 16384;
                    } else {
                        i6 = 8192;
                    }
                    i4 |= i6;
                }
                if ((i4 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                        if (i10 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 2) != 0) {
                            linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                            i4 &= -113;
                        }
                        if ((i3 & 4) != 0) {
                            linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                            i4 &= -897;
                        }
                        if (i11 != 0) {
                            iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                        }
                        if (i5 != 0) {
                            long j7 = linearTrackColor;
                            j5 = linearColor;
                            j6 = j7;
                            fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3737getLinearIndicatorTrackGapSizeD9Ej5fM();
                            i8 = i4;
                        } else {
                            long j8 = linearTrackColor;
                            j5 = linearColor;
                            j6 = j8;
                        }
                        i9 = iM3738getLinearStrokeCapKaPHkGw;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(567589233, i8, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:254)");
                        }
                        InfiniteTransition infiniteTransitionRememberInfiniteTransition = InfiniteTransitionKt.rememberInfiniteTransition(null, composerStartRestartGroup, 0, 1);
                        InfiniteRepeatableSpec<Float> linearIndeterminateFirstLineHeadAnimationSpec = getLinearIndeterminateFirstLineHeadAnimationSpec();
                        int i12 = InfiniteTransition.$stable | 432 | (InfiniteRepeatableSpec.$stable << 9);
                        stateAnimateFloat = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition, 0.0f, 1.0f, linearIndeterminateFirstLineHeadAnimationSpec, null, composerStartRestartGroup, i12, 8);
                        stateAnimateFloat2 = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition, 0.0f, 1.0f, getLinearIndeterminateFirstLineTailAnimationSpec(), null, composerStartRestartGroup, i12, 8);
                        stateAnimateFloat3 = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition, 0.0f, 1.0f, getLinearIndeterminateSecondLineHeadAnimationSpec(), null, composerStartRestartGroup, i12, 8);
                        stateAnimateFloat4 = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition, 0.0f, 1.0f, getLinearIndeterminateSecondLineTailAnimationSpec(), null, composerStartRestartGroup, i12, 8);
                        Modifier modifier5 = modifier4;
                        Modifier modifierM2101sizeVpY3zN4 = SizeKt.m2101sizeVpY3zN4(ProgressSemanticsKt.progressSemantics(modifier4.then(AccessibilityUtilKt.getIncreaseVerticalSemanticsBounds())), LinearIndicatorWidth, LinearIndicatorHeight);
                        if ((i8 & 7168) == 2048) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        boolean z4 = z2;
                        if ((57344 & i8) == 16384) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        zChanged = z4 | z3 | composerStartRestartGroup.changed(stateAnimateFloat) | ((((i8 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256 && composerStartRestartGroup.changed(j6)) || (i8 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changed(stateAnimateFloat2) | ((((i8 & 112) ^ 48) <= 32 && composerStartRestartGroup.changed(j5)) || (i8 & 48) == 32) | composerStartRestartGroup.changed(stateAnimateFloat3) | composerStartRestartGroup.changed(stateAnimateFloat4);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new nl3() { // from class: bn6
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return ProgressIndicatorKt.LinearProgressIndicator_rIrjwxo$lambda$13$lambda$12(i9, fM3737getLinearIndicatorTrackGapSizeD9Ej5fM, stateAnimateFloat, j6, stateAnimateFloat2, j5, stateAnimateFloat3, stateAnimateFloat4, (DrawScope) obj);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        CanvasKt.Canvas(modifierM2101sizeVpY3zN4, (nl3) objRememberedValue, composerStartRestartGroup, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        i7 = i9;
                        f3 = fM3737getLinearIndicatorTrackGapSizeD9Ej5fM;
                        j4 = j6;
                        j3 = j5;
                        modifier3 = modifier5;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        if ((i3 & 2) != 0) {
                            i4 &= -113;
                        }
                        if ((i3 & 4) != 0) {
                            i4 &= -897;
                        }
                        long j9 = linearTrackColor;
                        j5 = linearColor;
                        j6 = j9;
                        modifier4 = modifier2;
                    }
                    i8 = i4;
                    fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = f2;
                    i9 = iM3738getLinearStrokeCapKaPHkGw;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(567589233, i8, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:254)");
                    }
                    InfiniteTransition infiniteTransitionRememberInfiniteTransition2 = InfiniteTransitionKt.rememberInfiniteTransition(null, composerStartRestartGroup, 0, 1);
                    InfiniteRepeatableSpec<Float> linearIndeterminateFirstLineHeadAnimationSpec2 = getLinearIndeterminateFirstLineHeadAnimationSpec();
                    int i13 = InfiniteTransition.$stable | 432 | (InfiniteRepeatableSpec.$stable << 9);
                    stateAnimateFloat = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition2, 0.0f, 1.0f, linearIndeterminateFirstLineHeadAnimationSpec2, null, composerStartRestartGroup, i13, 8);
                    stateAnimateFloat2 = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition2, 0.0f, 1.0f, getLinearIndeterminateFirstLineTailAnimationSpec(), null, composerStartRestartGroup, i13, 8);
                    stateAnimateFloat3 = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition2, 0.0f, 1.0f, getLinearIndeterminateSecondLineHeadAnimationSpec(), null, composerStartRestartGroup, i13, 8);
                    stateAnimateFloat4 = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition2, 0.0f, 1.0f, getLinearIndeterminateSecondLineTailAnimationSpec(), null, composerStartRestartGroup, i13, 8);
                    Modifier modifier6 = modifier4;
                    Modifier modifierM2101sizeVpY3zN5 = SizeKt.m2101sizeVpY3zN4(ProgressSemanticsKt.progressSemantics(modifier4.then(AccessibilityUtilKt.getIncreaseVerticalSemanticsBounds())), LinearIndicatorWidth, LinearIndicatorHeight);
                    if ((i8 & 7168) == 2048) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    boolean z5 = z2;
                    if ((57344 & i8) == 16384) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    zChanged = z5 | z3 | composerStartRestartGroup.changed(stateAnimateFloat) | ((((i8 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256 && composerStartRestartGroup.changed(j6)) || (i8 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changed(stateAnimateFloat2) | ((((i8 & 112) ^ 48) <= 32 && composerStartRestartGroup.changed(j5)) || (i8 & 48) == 32) | composerStartRestartGroup.changed(stateAnimateFloat3) | composerStartRestartGroup.changed(stateAnimateFloat4);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue = new nl3() { // from class: bn6
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return ProgressIndicatorKt.LinearProgressIndicator_rIrjwxo$lambda$13$lambda$12(i9, fM3737getLinearIndicatorTrackGapSizeD9Ej5fM, stateAnimateFloat, j6, stateAnimateFloat2, j5, stateAnimateFloat3, stateAnimateFloat4, (DrawScope) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new nl3() { // from class: bn6
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return ProgressIndicatorKt.LinearProgressIndicator_rIrjwxo$lambda$13$lambda$12(i9, fM3737getLinearIndicatorTrackGapSizeD9Ej5fM, stateAnimateFloat, j6, stateAnimateFloat2, j5, stateAnimateFloat3, stateAnimateFloat4, (DrawScope) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    CanvasKt.Canvas(modifierM2101sizeVpY3zN5, (nl3) objRememberedValue, composerStartRestartGroup, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    i7 = i9;
                    f3 = fM3737getLinearIndicatorTrackGapSizeD9Ej5fM;
                    j4 = j6;
                    j3 = j5;
                    modifier3 = modifier6;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    j3 = linearColor;
                    f3 = f2;
                    j4 = linearTrackColor;
                    i7 = iM3738getLinearStrokeCapKaPHkGw;
                    modifier3 = modifier2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: cn6
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            float f4 = f3;
                            return ProgressIndicatorKt.LinearProgressIndicator_rIrjwxo$lambda$14(modifier3, j3, j4, i7, f4, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 24576;
            f2 = f;
            if ((i4 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i10 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 2) != 0) {
                        linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                        i4 &= -113;
                    }
                    if ((i3 & 4) != 0) {
                        linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if (i11 != 0) {
                        iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                    }
                    if (i5 != 0) {
                        long j10 = linearTrackColor;
                        j5 = linearColor;
                        j6 = j10;
                        fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3737getLinearIndicatorTrackGapSizeD9Ej5fM();
                        i8 = i4;
                    } else {
                        long j11 = linearTrackColor;
                        j5 = linearColor;
                        j6 = j11;
                        i8 = i4;
                        fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = f2;
                    }
                } else {
                    if (i10 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 2) != 0) {
                        linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                        i4 &= -113;
                    }
                    if ((i3 & 4) != 0) {
                        linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if (i11 != 0) {
                        iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                    }
                    if (i5 != 0) {
                        long j12 = linearTrackColor;
                        j5 = linearColor;
                        j6 = j12;
                        fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3737getLinearIndicatorTrackGapSizeD9Ej5fM();
                        i8 = i4;
                    } else {
                        long j13 = linearTrackColor;
                        j5 = linearColor;
                        j6 = j13;
                        i8 = i4;
                        fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = f2;
                    }
                }
                i9 = iM3738getLinearStrokeCapKaPHkGw;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(567589233, i8, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:254)");
                }
                InfiniteTransition infiniteTransitionRememberInfiniteTransition3 = InfiniteTransitionKt.rememberInfiniteTransition(null, composerStartRestartGroup, 0, 1);
                InfiniteRepeatableSpec<Float> linearIndeterminateFirstLineHeadAnimationSpec3 = getLinearIndeterminateFirstLineHeadAnimationSpec();
                int i14 = InfiniteTransition.$stable | 432 | (InfiniteRepeatableSpec.$stable << 9);
                stateAnimateFloat = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition3, 0.0f, 1.0f, linearIndeterminateFirstLineHeadAnimationSpec3, null, composerStartRestartGroup, i14, 8);
                stateAnimateFloat2 = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition3, 0.0f, 1.0f, getLinearIndeterminateFirstLineTailAnimationSpec(), null, composerStartRestartGroup, i14, 8);
                stateAnimateFloat3 = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition3, 0.0f, 1.0f, getLinearIndeterminateSecondLineHeadAnimationSpec(), null, composerStartRestartGroup, i14, 8);
                stateAnimateFloat4 = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition3, 0.0f, 1.0f, getLinearIndeterminateSecondLineTailAnimationSpec(), null, composerStartRestartGroup, i14, 8);
                Modifier modifier7 = modifier4;
                Modifier modifierM2101sizeVpY3zN6 = SizeKt.m2101sizeVpY3zN4(ProgressSemanticsKt.progressSemantics(modifier4.then(AccessibilityUtilKt.getIncreaseVerticalSemanticsBounds())), LinearIndicatorWidth, LinearIndicatorHeight);
                if ((i8 & 7168) == 2048) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                boolean z6 = z2;
                if ((57344 & i8) == 16384) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                zChanged = z6 | z3 | composerStartRestartGroup.changed(stateAnimateFloat) | ((((i8 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256 && composerStartRestartGroup.changed(j6)) || (i8 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changed(stateAnimateFloat2) | ((((i8 & 112) ^ 48) <= 32 && composerStartRestartGroup.changed(j5)) || (i8 & 48) == 32) | composerStartRestartGroup.changed(stateAnimateFloat3) | composerStartRestartGroup.changed(stateAnimateFloat4);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue = new nl3() { // from class: bn6
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return ProgressIndicatorKt.LinearProgressIndicator_rIrjwxo$lambda$13$lambda$12(i9, fM3737getLinearIndicatorTrackGapSizeD9Ej5fM, stateAnimateFloat, j6, stateAnimateFloat2, j5, stateAnimateFloat3, stateAnimateFloat4, (DrawScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new nl3() { // from class: bn6
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return ProgressIndicatorKt.LinearProgressIndicator_rIrjwxo$lambda$13$lambda$12(i9, fM3737getLinearIndicatorTrackGapSizeD9Ej5fM, stateAnimateFloat, j6, stateAnimateFloat2, j5, stateAnimateFloat3, stateAnimateFloat4, (DrawScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                CanvasKt.Canvas(modifierM2101sizeVpY3zN6, (nl3) objRememberedValue, composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                i7 = i9;
                f3 = fM3737getLinearIndicatorTrackGapSizeD9Ej5fM;
                j4 = j6;
                j3 = j5;
                modifier3 = modifier7;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                j3 = linearColor;
                f3 = f2;
                j4 = linearTrackColor;
                i7 = iM3738getLinearStrokeCapKaPHkGw;
                modifier3 = modifier2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: cn6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        float f4 = f3;
                        return ProgressIndicatorKt.LinearProgressIndicator_rIrjwxo$lambda$14(modifier3, j3, j4, i7, f4, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 3072;
        iM3738getLinearStrokeCapKaPHkGw = i;
        i5 = i3 & 16;
        if (i5 != 0) {
            if ((i2 & 24576) == 0) {
                f2 = f;
                if (composerStartRestartGroup.changed(f2)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i4 |= i6;
            }
            if ((i4 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i10 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 2) != 0) {
                        linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                        i4 &= -113;
                    }
                    if ((i3 & 4) != 0) {
                        linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if (i11 != 0) {
                        iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                    }
                    if (i5 != 0) {
                        long j14 = linearTrackColor;
                        j5 = linearColor;
                        j6 = j14;
                        fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3737getLinearIndicatorTrackGapSizeD9Ej5fM();
                        i8 = i4;
                    } else {
                        long j15 = linearTrackColor;
                        j5 = linearColor;
                        j6 = j15;
                        i8 = i4;
                        fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = f2;
                    }
                } else {
                    if (i10 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 2) != 0) {
                        linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                        i4 &= -113;
                    }
                    if ((i3 & 4) != 0) {
                        linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if (i11 != 0) {
                        iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                    }
                    if (i5 != 0) {
                        long j16 = linearTrackColor;
                        j5 = linearColor;
                        j6 = j16;
                        fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3737getLinearIndicatorTrackGapSizeD9Ej5fM();
                        i8 = i4;
                    } else {
                        long j17 = linearTrackColor;
                        j5 = linearColor;
                        j6 = j17;
                        i8 = i4;
                        fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = f2;
                    }
                }
                i9 = iM3738getLinearStrokeCapKaPHkGw;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(567589233, i8, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:254)");
                }
                InfiniteTransition infiniteTransitionRememberInfiniteTransition4 = InfiniteTransitionKt.rememberInfiniteTransition(null, composerStartRestartGroup, 0, 1);
                InfiniteRepeatableSpec<Float> linearIndeterminateFirstLineHeadAnimationSpec4 = getLinearIndeterminateFirstLineHeadAnimationSpec();
                int i15 = InfiniteTransition.$stable | 432 | (InfiniteRepeatableSpec.$stable << 9);
                stateAnimateFloat = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition4, 0.0f, 1.0f, linearIndeterminateFirstLineHeadAnimationSpec4, null, composerStartRestartGroup, i15, 8);
                stateAnimateFloat2 = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition4, 0.0f, 1.0f, getLinearIndeterminateFirstLineTailAnimationSpec(), null, composerStartRestartGroup, i15, 8);
                stateAnimateFloat3 = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition4, 0.0f, 1.0f, getLinearIndeterminateSecondLineHeadAnimationSpec(), null, composerStartRestartGroup, i15, 8);
                stateAnimateFloat4 = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition4, 0.0f, 1.0f, getLinearIndeterminateSecondLineTailAnimationSpec(), null, composerStartRestartGroup, i15, 8);
                Modifier modifier8 = modifier4;
                Modifier modifierM2101sizeVpY3zN7 = SizeKt.m2101sizeVpY3zN4(ProgressSemanticsKt.progressSemantics(modifier4.then(AccessibilityUtilKt.getIncreaseVerticalSemanticsBounds())), LinearIndicatorWidth, LinearIndicatorHeight);
                if ((i8 & 7168) == 2048) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                boolean z7 = z2;
                if ((57344 & i8) == 16384) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                zChanged = z7 | z3 | composerStartRestartGroup.changed(stateAnimateFloat) | ((((i8 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256 && composerStartRestartGroup.changed(j6)) || (i8 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changed(stateAnimateFloat2) | ((((i8 & 112) ^ 48) <= 32 && composerStartRestartGroup.changed(j5)) || (i8 & 48) == 32) | composerStartRestartGroup.changed(stateAnimateFloat3) | composerStartRestartGroup.changed(stateAnimateFloat4);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue = new nl3() { // from class: bn6
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return ProgressIndicatorKt.LinearProgressIndicator_rIrjwxo$lambda$13$lambda$12(i9, fM3737getLinearIndicatorTrackGapSizeD9Ej5fM, stateAnimateFloat, j6, stateAnimateFloat2, j5, stateAnimateFloat3, stateAnimateFloat4, (DrawScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new nl3() { // from class: bn6
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return ProgressIndicatorKt.LinearProgressIndicator_rIrjwxo$lambda$13$lambda$12(i9, fM3737getLinearIndicatorTrackGapSizeD9Ej5fM, stateAnimateFloat, j6, stateAnimateFloat2, j5, stateAnimateFloat3, stateAnimateFloat4, (DrawScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                CanvasKt.Canvas(modifierM2101sizeVpY3zN7, (nl3) objRememberedValue, composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                i7 = i9;
                f3 = fM3737getLinearIndicatorTrackGapSizeD9Ej5fM;
                j4 = j6;
                j3 = j5;
                modifier3 = modifier8;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                j3 = linearColor;
                f3 = f2;
                j4 = linearTrackColor;
                i7 = iM3738getLinearStrokeCapKaPHkGw;
                modifier3 = modifier2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: cn6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        float f4 = f3;
                        return ProgressIndicatorKt.LinearProgressIndicator_rIrjwxo$lambda$14(modifier3, j3, j4, i7, f4, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 24576;
        f2 = f;
        if ((i4 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i2 & 1) != 0) {
                if (i10 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 2) != 0) {
                    linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                    i4 &= -113;
                }
                if ((i3 & 4) != 0) {
                    linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                    i4 &= -897;
                }
                if (i11 != 0) {
                    iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                }
                if (i5 != 0) {
                    long j18 = linearTrackColor;
                    j5 = linearColor;
                    j6 = j18;
                    fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3737getLinearIndicatorTrackGapSizeD9Ej5fM();
                    i8 = i4;
                } else {
                    long j19 = linearTrackColor;
                    j5 = linearColor;
                    j6 = j19;
                    i8 = i4;
                    fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = f2;
                }
            } else {
                if (i10 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 2) != 0) {
                    linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                    i4 &= -113;
                }
                if ((i3 & 4) != 0) {
                    linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                    i4 &= -897;
                }
                if (i11 != 0) {
                    iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                }
                if (i5 != 0) {
                    long j110 = linearTrackColor;
                    j5 = linearColor;
                    j6 = j110;
                    fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3737getLinearIndicatorTrackGapSizeD9Ej5fM();
                    i8 = i4;
                } else {
                    long j111 = linearTrackColor;
                    j5 = linearColor;
                    j6 = j111;
                    i8 = i4;
                    fM3737getLinearIndicatorTrackGapSizeD9Ej5fM = f2;
                }
            }
            i9 = iM3738getLinearStrokeCapKaPHkGw;
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(567589233, i8, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:254)");
            }
            InfiniteTransition infiniteTransitionRememberInfiniteTransition5 = InfiniteTransitionKt.rememberInfiniteTransition(null, composerStartRestartGroup, 0, 1);
            InfiniteRepeatableSpec<Float> linearIndeterminateFirstLineHeadAnimationSpec5 = getLinearIndeterminateFirstLineHeadAnimationSpec();
            int i16 = InfiniteTransition.$stable | 432 | (InfiniteRepeatableSpec.$stable << 9);
            stateAnimateFloat = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition5, 0.0f, 1.0f, linearIndeterminateFirstLineHeadAnimationSpec5, null, composerStartRestartGroup, i16, 8);
            stateAnimateFloat2 = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition5, 0.0f, 1.0f, getLinearIndeterminateFirstLineTailAnimationSpec(), null, composerStartRestartGroup, i16, 8);
            stateAnimateFloat3 = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition5, 0.0f, 1.0f, getLinearIndeterminateSecondLineHeadAnimationSpec(), null, composerStartRestartGroup, i16, 8);
            stateAnimateFloat4 = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition5, 0.0f, 1.0f, getLinearIndeterminateSecondLineTailAnimationSpec(), null, composerStartRestartGroup, i16, 8);
            Modifier modifier9 = modifier4;
            Modifier modifierM2101sizeVpY3zN8 = SizeKt.m2101sizeVpY3zN4(ProgressSemanticsKt.progressSemantics(modifier4.then(AccessibilityUtilKt.getIncreaseVerticalSemanticsBounds())), LinearIndicatorWidth, LinearIndicatorHeight);
            if ((i8 & 7168) == 2048) {
                z2 = true;
            } else {
                z2 = false;
            }
            boolean z8 = z2;
            if ((57344 & i8) == 16384) {
                z3 = true;
            } else {
                z3 = false;
            }
            zChanged = z8 | z3 | composerStartRestartGroup.changed(stateAnimateFloat) | ((((i8 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256 && composerStartRestartGroup.changed(j6)) || (i8 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changed(stateAnimateFloat2) | ((((i8 & 112) ^ 48) <= 32 && composerStartRestartGroup.changed(j5)) || (i8 & 48) == 32) | composerStartRestartGroup.changed(stateAnimateFloat3) | composerStartRestartGroup.changed(stateAnimateFloat4);
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged) {
                objRememberedValue = new nl3() { // from class: bn6
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return ProgressIndicatorKt.LinearProgressIndicator_rIrjwxo$lambda$13$lambda$12(i9, fM3737getLinearIndicatorTrackGapSizeD9Ej5fM, stateAnimateFloat, j6, stateAnimateFloat2, j5, stateAnimateFloat3, stateAnimateFloat4, (DrawScope) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                objRememberedValue = new nl3() { // from class: bn6
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return ProgressIndicatorKt.LinearProgressIndicator_rIrjwxo$lambda$13$lambda$12(i9, fM3737getLinearIndicatorTrackGapSizeD9Ej5fM, stateAnimateFloat, j6, stateAnimateFloat2, j5, stateAnimateFloat3, stateAnimateFloat4, (DrawScope) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            CanvasKt.Canvas(modifierM2101sizeVpY3zN8, (nl3) objRememberedValue, composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            i7 = i9;
            f3 = fM3737getLinearIndicatorTrackGapSizeD9Ej5fM;
            j4 = j6;
            j3 = j5;
            modifier3 = modifier9;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            j3 = linearColor;
            f3 = f2;
            j4 = linearTrackColor;
            i7 = iM3738getLinearStrokeCapKaPHkGw;
            modifier3 = modifier2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: cn6
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    float f4 = f3;
                    return ProgressIndicatorKt.LinearProgressIndicator_rIrjwxo$lambda$14(modifier3, j3, j4, i7, f4, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 LinearProgressIndicator_2cYBFYY$lambda$11(Modifier modifier, long j, long j2, int i, int i2, int i3, Composer composer, int i4) {
        m3747LinearProgressIndicator2cYBFYY(modifier, j, j2, i, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), i3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 LinearProgressIndicator_GJbTh5U$lambda$10(ll3 ll3Var, Modifier modifier, long j, long j2, int i, float f, nl3 nl3Var, int i2, int i3, Composer composer, int i4) {
        m3748LinearProgressIndicatorGJbTh5U(ll3Var, modifier, j, j2, i, f, nl3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), i3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 LinearProgressIndicator_GJbTh5U$lambda$2$lambda$1(long j, int i, DrawScope drawScope) {
        ProgressIndicatorDefaults progressIndicatorDefaults = ProgressIndicatorDefaults.INSTANCE;
        progressIndicatorDefaults.m3732drawStopIndicatorEgI2THU(drawScope, progressIndicatorDefaults.m3739getLinearTrackStopIndicatorSizeD9Ej5fM(), j, i);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float LinearProgressIndicator_GJbTh5U$lambda$4$lambda$3(ll3 ll3Var) {
        float fFloatValue = ((Number) ll3Var.invoke()).floatValue();
        if (fFloatValue < 0.0f) {
            fFloatValue = 0.0f;
        }
        if (fFloatValue > 1.0f) {
            return 1.0f;
        }
        return fFloatValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 LinearProgressIndicator_GJbTh5U$lambda$7$lambda$6(ll3 ll3Var, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Object objInvoke = ll3Var.invoke();
        if (Float.isNaN(((Number) objInvoke).floatValue())) {
            objInvoke = null;
        }
        Float f = (Float) objInvoke;
        SemanticsPropertiesKt.setProgressBarRangeInfo(semanticsPropertyReceiver, new ProgressBarRangeInfo(f != null ? f.floatValue() : 0.0f, new mm1(0.0f, 1.0f), 0, 4, null));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 LinearProgressIndicator_GJbTh5U$lambda$9$lambda$8(int i, float f, ll3 ll3Var, long j, long j2, nl3 nl3Var, DrawScope drawScope) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        if (!StrokeCap.m6602equalsimpl0(i, StrokeCap.Companion.m6606getButtKaPHkGw()) && Float.intBitsToFloat((int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & drawScope.mo6806getSizeNHjbRc())) <= Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() >> 32))) {
            f = Dp.m9042constructorimpl(drawScope.mo1430toDpu2uoSUM(fIntBitsToFloat) + f);
        }
        float fMo1430toDpu2uoSUM = f / drawScope.mo1430toDpu2uoSUM(Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() >> 32)));
        float fFloatValue = ((Number) ll3Var.invoke()).floatValue();
        float fMin = Math.min(fFloatValue, fMo1430toDpu2uoSUM) + fFloatValue;
        if (fMin <= 1.0f) {
            m3758drawLinearIndicatorqYKTg0g(drawScope, fMin, 1.0f, j, fIntBitsToFloat, i);
        }
        m3758drawLinearIndicatorqYKTg0g(drawScope, 0.0f, fFloatValue, j2, fIntBitsToFloat, i);
        nl3Var.invoke(drawScope);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 LinearProgressIndicator_RIQooxk$lambda$19(Modifier modifier, long j, long j2, int i, int i2, Composer composer, int i3) {
        m3749LinearProgressIndicatorRIQooxk(modifier, j, j2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 LinearProgressIndicator__5eSR_E$lambda$0(ll3 ll3Var, Modifier modifier, long j, long j2, int i, int i2, int i3, Composer composer, int i4) {
        m3751LinearProgressIndicator_5eSRE(ll3Var, modifier, j, j2, i, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), i3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float LinearProgressIndicator__5eSR_E$lambda$16$lambda$15(float f) {
        return f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 LinearProgressIndicator__5eSR_E$lambda$17(float f, Modifier modifier, long j, long j2, int i, int i2, int i3, Composer composer, int i4) {
        m3750LinearProgressIndicator_5eSRE(f, modifier, j, j2, i, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), i3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 LinearProgressIndicator_eaDK9VM$lambda$18(float f, Modifier modifier, long j, long j2, int i, int i2, Composer composer, int i3) {
        m3752LinearProgressIndicatoreaDK9VM(f, modifier, j, j2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 LinearProgressIndicator_rIrjwxo$lambda$13$lambda$12(int i, float f, State state, long j, State state2, long j2, State state3, State state4, DrawScope drawScope) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        if (!StrokeCap.m6602equalsimpl0(i, StrokeCap.Companion.m6606getButtKaPHkGw()) && Float.intBitsToFloat((int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & drawScope.mo6806getSizeNHjbRc())) <= Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() >> 32))) {
            f = Dp.m9042constructorimpl(drawScope.mo1430toDpu2uoSUM(fIntBitsToFloat) + f);
        }
        float fMo1430toDpu2uoSUM = f / drawScope.mo1430toDpu2uoSUM(Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() >> 32)));
        if (((Number) state.getValue()).floatValue() < 1.0f - fMo1430toDpu2uoSUM) {
            m3758drawLinearIndicatorqYKTg0g(drawScope, ((Number) state.getValue()).floatValue() > 0.0f ? ((Number) state.getValue()).floatValue() + fMo1430toDpu2uoSUM : 0.0f, 1.0f, j, fIntBitsToFloat, i);
        }
        if (((Number) state.getValue()).floatValue() - ((Number) state2.getValue()).floatValue() > 0.0f) {
            m3758drawLinearIndicatorqYKTg0g(drawScope, ((Number) state.getValue()).floatValue(), ((Number) state2.getValue()).floatValue(), j2, fIntBitsToFloat, i);
        }
        if (((Number) state2.getValue()).floatValue() > fMo1430toDpu2uoSUM) {
            m3758drawLinearIndicatorqYKTg0g(drawScope, ((Number) state3.getValue()).floatValue() > 0.0f ? ((Number) state3.getValue()).floatValue() + fMo1430toDpu2uoSUM : 0.0f, ((Number) state2.getValue()).floatValue() < 1.0f ? ((Number) state2.getValue()).floatValue() - fMo1430toDpu2uoSUM : 1.0f, j, fIntBitsToFloat, i);
        }
        if (((Number) state3.getValue()).floatValue() - ((Number) state4.getValue()).floatValue() > 0.0f) {
            m3758drawLinearIndicatorqYKTg0g(drawScope, ((Number) state3.getValue()).floatValue(), ((Number) state4.getValue()).floatValue(), j2, fIntBitsToFloat, i);
        }
        if (((Number) state4.getValue()).floatValue() > fMo1430toDpu2uoSUM) {
            m3758drawLinearIndicatorqYKTg0g(drawScope, 0.0f, ((Number) state4.getValue()).floatValue() < 1.0f ? ((Number) state4.getValue()).floatValue() - fMo1430toDpu2uoSUM : 1.0f, j, fIntBitsToFloat, i);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 LinearProgressIndicator_rIrjwxo$lambda$14(Modifier modifier, long j, long j2, int i, float f, int i2, int i3, Composer composer, int i4) {
        m3753LinearProgressIndicatorrIrjwxo(modifier, j, j2, i, f, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), i3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _get_circularIndeterminateProgressAnimationSpec_$lambda$42(KeyframesSpec.KeyframesSpecConfig keyframesSpecConfig) {
        keyframesSpecConfig.setDurationMillis(6000);
        keyframesSpecConfig.using(keyframesSpecConfig.at(Float.valueOf(0.87f), 3000), CircularProgressEasing);
        keyframesSpecConfig.at(Float.valueOf(0.1f), 6000);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _get_circularIndeterminateRotationAnimationSpec_$lambda$41(KeyframesSpec.KeyframesSpecConfig keyframesSpecConfig) {
        keyframesSpecConfig.setDurationMillis(6000);
        Float fValueOf = Float.valueOf(90.0f);
        keyframesSpecConfig.using(keyframesSpecConfig.at(fValueOf, 300), MotionTokens.INSTANCE.getEasingEmphasizedDecelerateCubicBezier());
        keyframesSpecConfig.at(fValueOf, 1500);
        Float fValueOf2 = Float.valueOf(180.0f);
        keyframesSpecConfig.at(fValueOf2, 1800);
        keyframesSpecConfig.at(fValueOf2, 3000);
        Float fValueOf3 = Float.valueOf(270.0f);
        keyframesSpecConfig.at(fValueOf3, 3300);
        keyframesSpecConfig.at(fValueOf3, 4500);
        Float fValueOf4 = Float.valueOf(360.0f);
        keyframesSpecConfig.at(fValueOf4, 4800);
        keyframesSpecConfig.at(fValueOf4, 6000);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _get_linearIndeterminateFirstLineHeadAnimationSpec_$lambda$43(KeyframesSpec.KeyframesSpecConfig keyframesSpecConfig) {
        keyframesSpecConfig.setDurationMillis(LinearAnimationDuration);
        keyframesSpecConfig.using(keyframesSpecConfig.at(Float.valueOf(0.0f), 0), LinearIndeterminateProgressEasing);
        keyframesSpecConfig.at(Float.valueOf(1.0f), 1000);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _get_linearIndeterminateFirstLineTailAnimationSpec_$lambda$44(KeyframesSpec.KeyframesSpecConfig keyframesSpecConfig) {
        keyframesSpecConfig.setDurationMillis(LinearAnimationDuration);
        keyframesSpecConfig.using(keyframesSpecConfig.at(Float.valueOf(0.0f), 250), LinearIndeterminateProgressEasing);
        keyframesSpecConfig.at(Float.valueOf(1.0f), 1250);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _get_linearIndeterminateSecondLineHeadAnimationSpec_$lambda$45(KeyframesSpec.KeyframesSpecConfig keyframesSpecConfig) {
        keyframesSpecConfig.setDurationMillis(LinearAnimationDuration);
        keyframesSpecConfig.using(keyframesSpecConfig.at(Float.valueOf(0.0f), SecondLineHeadDelay), LinearIndeterminateProgressEasing);
        keyframesSpecConfig.at(Float.valueOf(1.0f), 1500);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _get_linearIndeterminateSecondLineTailAnimationSpec_$lambda$46(KeyframesSpec.KeyframesSpecConfig keyframesSpecConfig) {
        keyframesSpecConfig.setDurationMillis(LinearAnimationDuration);
        keyframesSpecConfig.using(keyframesSpecConfig.at(Float.valueOf(0.0f), 900), LinearIndeterminateProgressEasing);
        keyframesSpecConfig.at(Float.valueOf(1.0f), LinearAnimationDuration);
        return j59.a;
    }

    /* JADX INFO: renamed from: drawCircularIndicator-42QJj7c, reason: not valid java name */
    private static final void m3754drawCircularIndicator42QJj7c(DrawScope drawScope, float f, float f2, long j, Stroke stroke) {
        float width = stroke.getWidth() / 2.0f;
        float fIntBitsToFloat = Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() >> 32)) - (2.0f * width);
        DrawScope.m6785drawArcyD3GUKo$default(drawScope, j, f, f2, false, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(width)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(width) << 32)), Size.m6047constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), 0.0f, stroke, null, 0, 832, null);
    }

    /* JADX INFO: renamed from: drawCircularIndicatorTrack-bw27NRU, reason: not valid java name */
    private static final void m3755drawCircularIndicatorTrackbw27NRU(DrawScope drawScope, long j, Stroke stroke) {
        m3754drawCircularIndicator42QJj7c(drawScope, 0.0f, 360.0f, j, stroke);
    }

    /* JADX INFO: renamed from: drawDeterminateCircularIndicator-42QJj7c, reason: not valid java name */
    private static final void m3756drawDeterminateCircularIndicator42QJj7c(DrawScope drawScope, float f, float f2, long j, Stroke stroke) {
        m3754drawCircularIndicator42QJj7c(drawScope, f, f2, j, stroke);
    }

    /* JADX INFO: renamed from: drawIndeterminateCircularIndicator-hrjfTZI, reason: not valid java name */
    private static final void m3757drawIndeterminateCircularIndicatorhrjfTZI(DrawScope drawScope, float f, float f2, float f3, long j, Stroke stroke) {
        m3754drawCircularIndicator42QJj7c(drawScope, f + (StrokeCap.m6602equalsimpl0(stroke.m6875getCapKaPHkGw(), StrokeCap.Companion.m6606getButtKaPHkGw()) ? 0.0f : ((f2 / Dp.m9042constructorimpl(CircularIndicatorDiameter / 2.0f)) * 57.29578f) / 2.0f), Math.max(f3, 0.1f), j, stroke);
    }

    /* JADX INFO: renamed from: drawLinearIndicator-qYKTg0g, reason: not valid java name */
    private static final void m3758drawLinearIndicatorqYKTg0g(DrawScope drawScope, float f, float f2, long j, float f3, int i) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        float f4 = fIntBitsToFloat2 / 2.0f;
        boolean z = drawScope.getLayoutDirection() == LayoutDirection.Ltr;
        float f5 = (z ? f : 1.0f - f2) * fIntBitsToFloat;
        float f6 = (z ? f2 : 1.0f - f) * fIntBitsToFloat;
        if (StrokeCap.m6602equalsimpl0(i, StrokeCap.Companion.m6606getButtKaPHkGw()) || fIntBitsToFloat2 > fIntBitsToFloat) {
            DrawScope.m6792drawLineNGM6Ib0$default(drawScope, j, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f5)) << 32) | (((long) Float.floatToRawIntBits(f4)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f6)) << 32) | (((long) Float.floatToRawIntBits(f4)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), f3, 0, null, 0.0f, null, 0, 496, null);
            return;
        }
        float f7 = f3 / 2.0f;
        float f8 = fIntBitsToFloat - f7;
        if (f5 < f7) {
            f5 = f7;
        }
        if (f5 > f8) {
            f5 = f8;
        }
        if (f6 < f7) {
            f6 = f7;
        }
        if (f6 <= f8) {
            f8 = f6;
        }
        if (Math.abs(f2 - f) > 0.0f) {
            DrawScope.m6792drawLineNGM6Ib0$default(drawScope, j, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f5)) << 32) | (((long) Float.floatToRawIntBits(f4)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f8)) << 32) | (((long) Float.floatToRawIntBits(f4)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), f3, i, null, 0.0f, null, 0, WindowSizeClass.HEIGHT_DP_MEDIUM_LOWER_BOUND, null);
        }
    }

    public static final InfiniteRepeatableSpec<Float> getCircularIndeterminateGlobalRotationAnimationSpec() {
        return AnimationSpecKt.m1199infiniteRepeatable9IiC70o$default(AnimationSpecKt.tween$default(6000, 0, EasingKt.getLinearEasing(), 2, null), null, 0L, 6, null);
    }

    public static final InfiniteRepeatableSpec<Float> getCircularIndeterminateProgressAnimationSpec() {
        return AnimationSpecKt.m1199infiniteRepeatable9IiC70o$default(AnimationSpecKt.keyframes(new gn6(0)), null, 0L, 6, null);
    }

    public static final InfiniteRepeatableSpec<Float> getCircularIndeterminateRotationAnimationSpec() {
        return AnimationSpecKt.m1199infiniteRepeatable9IiC70o$default(AnimationSpecKt.keyframes(new in6(0)), null, 0L, 6, null);
    }

    public static final float getCircularIndicatorDiameter() {
        return CircularIndicatorDiameter;
    }

    public static final CubicBezierEasing getCircularProgressEasing() {
        return CircularProgressEasing;
    }

    public static final InfiniteRepeatableSpec<Float> getLinearIndeterminateFirstLineHeadAnimationSpec() {
        return AnimationSpecKt.m1199infiniteRepeatable9IiC70o$default(AnimationSpecKt.keyframes(new h04(2)), null, 0L, 6, null);
    }

    public static final InfiniteRepeatableSpec<Float> getLinearIndeterminateFirstLineTailAnimationSpec() {
        return AnimationSpecKt.m1199infiniteRepeatable9IiC70o$default(AnimationSpecKt.keyframes(new defpackage.z2(2)), null, 0L, 6, null);
    }

    public static final CubicBezierEasing getLinearIndeterminateProgressEasing() {
        return LinearIndeterminateProgressEasing;
    }

    public static final InfiniteRepeatableSpec<Float> getLinearIndeterminateSecondLineHeadAnimationSpec() {
        return AnimationSpecKt.m1199infiniteRepeatable9IiC70o$default(AnimationSpecKt.keyframes(new to(1)), null, 0L, 6, null);
    }

    public static final InfiniteRepeatableSpec<Float> getLinearIndeterminateSecondLineTailAnimationSpec() {
        return AnimationSpecKt.m1199infiniteRepeatable9IiC70o$default(AnimationSpecKt.keyframes(new is0(4)), null, 0L, 6, null);
    }

    public static final float getLinearIndicatorHeight() {
        return LinearIndicatorHeight;
    }

    public static final float getLinearIndicatorWidth() {
        return LinearIndicatorWidth;
    }

    public static final float getStopIndicatorTrailingSpace() {
        return StopIndicatorTrailingSpace;
    }

    /* JADX WARN: Code duplicated, block: B:100:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0045  */
    /* JADX WARN: Code duplicated, block: B:28:0x0049  */
    /* JADX WARN: Code duplicated, block: B:30:0x0051  */
    /* JADX WARN: Code duplicated, block: B:31:0x0054  */
    /* JADX WARN: Code duplicated, block: B:34:0x005a  */
    /* JADX WARN: Code duplicated, block: B:37:0x0060  */
    /* JADX WARN: Code duplicated, block: B:42:0x006f  */
    /* JADX WARN: Code duplicated, block: B:44:0x0073  */
    /* JADX WARN: Code duplicated, block: B:47:0x0079  */
    /* JADX WARN: Code duplicated, block: B:49:0x007e  */
    /* JADX WARN: Code duplicated, block: B:51:0x0082  */
    /* JADX WARN: Code duplicated, block: B:53:0x008a  */
    /* JADX WARN: Code duplicated, block: B:54:0x008d  */
    /* JADX WARN: Code duplicated, block: B:58:0x0096  */
    /* JADX WARN: Code duplicated, block: B:59:0x0098  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:64:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:75:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:76:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:79:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:80:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:83:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:85:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:87:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:90:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:93:0x012c  */
    /* JADX WARN: Code duplicated, block: B:95:0x0134  */
    /* JADX WARN: Code duplicated, block: B:98:0x0143  */
    @ul2
    /* JADX INFO: renamed from: LinearProgressIndicator-_5eSR-E, reason: not valid java name */
    public static final /* synthetic */ void m3751LinearProgressIndicator_5eSRE(final ll3 ll3Var, Modifier modifier, long j, long j2, int i, Composer composer, final int i2, final int i3) {
        ll3 ll3Var2;
        int i4;
        Modifier modifier2;
        long j3;
        long linearTrackColor;
        int i5;
        int i6;
        int i7;
        boolean z;
        Composer composer2;
        final Modifier modifier3;
        final long j4;
        final long j5;
        final int i8;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        long linearColor;
        int iM3738getLinearStrokeCapKaPHkGw;
        Modifier modifier5;
        long j6;
        int i9;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1796992155);
        if ((i3 & 1) != 0) {
            i4 = i2 | 6;
            ll3Var2 = ll3Var;
        } else {
            ll3Var2 = ll3Var;
            if ((i2 & 6) == 0) {
                i4 = (composerStartRestartGroup.changedInstance(ll3Var2) ? 4 : 2) | i2;
            } else {
                i4 = i2;
            }
        }
        int i10 = i3 & 2;
        if (i10 == 0) {
            if ((i2 & 48) == 0) {
                modifier2 = modifier;
                i4 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if ((i3 & 4) == 0) {
                    j3 = j;
                    int i11 = composerStartRestartGroup.changed(j3) ? 256 : 128;
                    i4 |= i11;
                } else {
                    j3 = j;
                }
                i4 |= i11;
            } else {
                j3 = j;
            }
            if ((i2 & 3072) == 0) {
                linearTrackColor = j2;
                if ((i3 & 8) == 0 || !composerStartRestartGroup.changed(linearTrackColor)) {
                    i9 = 1024;
                } else {
                    i9 = 2048;
                }
                i4 |= i9;
            } else {
                linearTrackColor = j2;
            }
            i5 = i3 & 16;
            if (i5 != 0) {
                if ((i2 & 24576) == 0) {
                    i6 = i;
                    if (composerStartRestartGroup.changed(i6)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i4 |= i7;
                }
                if ((i4 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                        if (i10 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                            i4 &= -897;
                        } else {
                            linearColor = j3;
                        }
                        if ((i3 & 8) != 0) {
                            linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                            i4 &= -7169;
                        }
                        if (i5 != 0) {
                            iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                        } else {
                            iM3738getLinearStrokeCapKaPHkGw = i6;
                        }
                        modifier5 = modifier4;
                        j6 = linearColor;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        if ((i3 & 4) != 0) {
                            i4 &= -897;
                        }
                        if ((i3 & 8) != 0) {
                            i4 &= -7169;
                        }
                        linearTrackColor = linearTrackColor;
                        iM3738getLinearStrokeCapKaPHkGw = i6;
                        modifier5 = modifier2;
                        j6 = j3;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1796992155, i4, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:100)");
                    }
                    composer2 = composerStartRestartGroup;
                    m3748LinearProgressIndicatorGJbTh5U(ll3Var2, modifier5, j6, linearTrackColor, iM3738getLinearStrokeCapKaPHkGw, ProgressIndicatorDefaults.INSTANCE.m3737getLinearIndicatorTrackGapSizeD9Ej5fM(), null, composer2, (i4 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (i4 & 57344), 64);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier5;
                    j4 = j6;
                    j5 = linearTrackColor;
                    i8 = iM3738getLinearStrokeCapKaPHkGw;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    j4 = j3;
                    j5 = linearTrackColor;
                    i8 = i6;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nn6
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ProgressIndicatorKt.LinearProgressIndicator__5eSR_E$lambda$0(ll3Var, modifier3, j4, j5, i8, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 24576;
            i6 = i;
            if ((i4 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i10 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    } else {
                        linearColor = j3;
                    }
                    if ((i3 & 8) != 0) {
                        linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                        i4 &= -7169;
                    }
                    if (i5 != 0) {
                        iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                    } else {
                        iM3738getLinearStrokeCapKaPHkGw = i6;
                    }
                    modifier5 = modifier4;
                    j6 = linearColor;
                } else {
                    if (i10 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    } else {
                        linearColor = j3;
                    }
                    if ((i3 & 8) != 0) {
                        linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                        i4 &= -7169;
                    }
                    if (i5 != 0) {
                        iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                    } else {
                        iM3738getLinearStrokeCapKaPHkGw = i6;
                    }
                    modifier5 = modifier4;
                    j6 = linearColor;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1796992155, i4, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:100)");
                }
                composer2 = composerStartRestartGroup;
                m3748LinearProgressIndicatorGJbTh5U(ll3Var2, modifier5, j6, linearTrackColor, iM3738getLinearStrokeCapKaPHkGw, ProgressIndicatorDefaults.INSTANCE.m3737getLinearIndicatorTrackGapSizeD9Ej5fM(), null, composer2, (i4 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (i4 & 57344), 64);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier5;
                j4 = j6;
                j5 = linearTrackColor;
                i8 = iM3738getLinearStrokeCapKaPHkGw;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                j4 = j3;
                j5 = linearTrackColor;
                i8 = i6;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nn6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ProgressIndicatorKt.LinearProgressIndicator__5eSR_E$lambda$0(ll3Var, modifier3, j4, j5, i8, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 48;
        modifier2 = modifier;
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i3 & 4) == 0) {
                j3 = j;
                if (composerStartRestartGroup.changed(j3)) {
                }
                i4 |= i11;
            } else {
                j3 = j;
            }
            i4 |= i11;
        } else {
            j3 = j;
        }
        if ((i2 & 3072) == 0) {
            linearTrackColor = j2;
            if ((i3 & 8) == 0) {
                i9 = 1024;
            } else {
                i9 = 1024;
            }
            i4 |= i9;
        } else {
            linearTrackColor = j2;
        }
        i5 = i3 & 16;
        if (i5 != 0) {
            if ((i2 & 24576) == 0) {
                i6 = i;
                if (composerStartRestartGroup.changed(i6)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i4 |= i7;
            }
            if ((i4 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i10 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    } else {
                        linearColor = j3;
                    }
                    if ((i3 & 8) != 0) {
                        linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                        i4 &= -7169;
                    }
                    if (i5 != 0) {
                        iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                    } else {
                        iM3738getLinearStrokeCapKaPHkGw = i6;
                    }
                    modifier5 = modifier4;
                    j6 = linearColor;
                } else {
                    if (i10 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    } else {
                        linearColor = j3;
                    }
                    if ((i3 & 8) != 0) {
                        linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                        i4 &= -7169;
                    }
                    if (i5 != 0) {
                        iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                    } else {
                        iM3738getLinearStrokeCapKaPHkGw = i6;
                    }
                    modifier5 = modifier4;
                    j6 = linearColor;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1796992155, i4, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:100)");
                }
                composer2 = composerStartRestartGroup;
                m3748LinearProgressIndicatorGJbTh5U(ll3Var2, modifier5, j6, linearTrackColor, iM3738getLinearStrokeCapKaPHkGw, ProgressIndicatorDefaults.INSTANCE.m3737getLinearIndicatorTrackGapSizeD9Ej5fM(), null, composer2, (i4 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (i4 & 57344), 64);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier5;
                j4 = j6;
                j5 = linearTrackColor;
                i8 = iM3738getLinearStrokeCapKaPHkGw;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                j4 = j3;
                j5 = linearTrackColor;
                i8 = i6;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nn6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ProgressIndicatorKt.LinearProgressIndicator__5eSR_E$lambda$0(ll3Var, modifier3, j4, j5, i8, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 24576;
        i6 = i;
        if ((i4 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i2 & 1) != 0) {
                if (i10 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 4) != 0) {
                    linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                    i4 &= -897;
                } else {
                    linearColor = j3;
                }
                if ((i3 & 8) != 0) {
                    linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                    i4 &= -7169;
                }
                if (i5 != 0) {
                    iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                } else {
                    iM3738getLinearStrokeCapKaPHkGw = i6;
                }
                modifier5 = modifier4;
                j6 = linearColor;
            } else {
                if (i10 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 4) != 0) {
                    linearColor = ProgressIndicatorDefaults.INSTANCE.getLinearColor(composerStartRestartGroup, 6);
                    i4 &= -897;
                } else {
                    linearColor = j3;
                }
                if ((i3 & 8) != 0) {
                    linearTrackColor = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(composerStartRestartGroup, 6);
                    i4 &= -7169;
                }
                if (i5 != 0) {
                    iM3738getLinearStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3738getLinearStrokeCapKaPHkGw();
                } else {
                    iM3738getLinearStrokeCapKaPHkGw = i6;
                }
                modifier5 = modifier4;
                j6 = linearColor;
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1796992155, i4, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:100)");
            }
            composer2 = composerStartRestartGroup;
            m3748LinearProgressIndicatorGJbTh5U(ll3Var2, modifier5, j6, linearTrackColor, iM3738getLinearStrokeCapKaPHkGw, ProgressIndicatorDefaults.INSTANCE.m3737getLinearIndicatorTrackGapSizeD9Ej5fM(), null, composer2, (i4 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (i4 & 57344), 64);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier5;
            j4 = j6;
            j5 = linearTrackColor;
            i8 = iM3738getLinearStrokeCapKaPHkGw;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            modifier3 = modifier2;
            j4 = j3;
            j5 = linearTrackColor;
            i8 = i6;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nn6
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ProgressIndicatorKt.LinearProgressIndicator__5eSR_E$lambda$0(ll3Var, modifier3, j4, j5, i8, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0126  */
    /* JADX WARN: Code duplicated, block: B:103:0x0134  */
    /* JADX WARN: Code duplicated, block: B:106:0x013c  */
    /* JADX WARN: Code duplicated, block: B:108:0x0144  */
    /* JADX WARN: Code duplicated, block: B:111:0x0160  */
    /* JADX WARN: Code duplicated, block: B:113:0x016c  */
    /* JADX WARN: Code duplicated, block: B:116:0x017a  */
    /* JADX WARN: Code duplicated, block: B:118:? A[RETURN, SYNTHETIC] */
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
    /* JADX WARN: Code duplicated, block: B:48:0x0079  */
    /* JADX WARN: Code duplicated, block: B:50:0x007d  */
    /* JADX WARN: Code duplicated, block: B:52:0x0085  */
    /* JADX WARN: Code duplicated, block: B:53:0x0088  */
    /* JADX WARN: Code duplicated, block: B:56:0x008e  */
    /* JADX WARN: Code duplicated, block: B:59:0x0096  */
    /* JADX WARN: Code duplicated, block: B:61:0x009a  */
    /* JADX WARN: Code duplicated, block: B:63:0x009d  */
    /* JADX WARN: Code duplicated, block: B:65:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:66:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:70:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:71:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:85:0x00e6 A[PHI: r2 r6 r7 r10 r11
      0x00e6: PHI (r2v26 int) = (r2v21 int), (r2v27 int), (r2v28 int) binds: [B:96:0x0112, B:83:0x00e3, B:84:0x00e5] A[DONT_GENERATE, DONT_INLINE]
      0x00e6: PHI (r6v9 androidx.compose.ui.Modifier) = (r6v5 androidx.compose.ui.Modifier), (r6v2 androidx.compose.ui.Modifier), (r6v2 androidx.compose.ui.Modifier) binds: [B:96:0x0112, B:83:0x00e3, B:84:0x00e5] A[DONT_GENERATE, DONT_INLINE]
      0x00e6: PHI (r7v10 long) = (r7v7 long), (r7v6 long), (r7v6 long) binds: [B:96:0x0112, B:83:0x00e3, B:84:0x00e5] A[DONT_GENERATE, DONT_INLINE]
      0x00e6: PHI (r10v10 float) = (r10v5 float), (r10v2 float), (r10v2 float) binds: [B:96:0x0112, B:83:0x00e3, B:84:0x00e5] A[DONT_GENERATE, DONT_INLINE]
      0x00e6: PHI (r11v10 long) = (r11v8 long), (r11v6 long), (r11v6 long) binds: [B:96:0x0112, B:83:0x00e3, B:84:0x00e5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:86:0x00ea A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:87:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:90:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:92:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:95:0x0109  */
    /* JADX WARN: Code duplicated, block: B:97:0x0114  */
    @ul2
    /* JADX INFO: renamed from: CircularProgressIndicator-DUhRLBM, reason: not valid java name */
    public static final void m3741CircularProgressIndicatorDUhRLBM(final float f, Modifier modifier, long j, float f2, long j2, int i, Composer composer, final int i2, final int i3) {
        int i4;
        Modifier modifier2;
        long circularColor;
        int i5;
        float fM3736getCircularStrokeWidthD9Ej5fM;
        int i6;
        long circularTrackColor;
        int i7;
        int i8;
        int i9;
        boolean z;
        final float f3;
        final int i10;
        final Modifier modifier3;
        final long j3;
        final long j4;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        float f4;
        long j5;
        int iM3733getCircularDeterminateStrokeCapKaPHkGw;
        boolean z2;
        Object objRememberedValue;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1472321743);
        if ((i3 & 1) != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (composerStartRestartGroup.changed(f) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i11 = i3 & 2;
        if (i11 == 0) {
            if ((i2 & 48) == 0) {
                modifier2 = modifier;
                i4 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if ((i3 & 4) == 0) {
                    circularColor = j;
                    int i12 = composerStartRestartGroup.changed(circularColor) ? 256 : 128;
                    i4 |= i12;
                } else {
                    circularColor = j;
                }
                i4 |= i12;
            } else {
                circularColor = j;
            }
            i5 = i3 & 8;
            if (i5 != 0) {
                if ((i2 & 3072) == 0) {
                    fM3736getCircularStrokeWidthD9Ej5fM = f2;
                    if (composerStartRestartGroup.changed(fM3736getCircularStrokeWidthD9Ej5fM)) {
                        i6 = 2048;
                    } else {
                        i6 = 1024;
                    }
                    i4 |= i6;
                }
                if ((i2 & 24576) == 0) {
                    if ((i3 & 16) == 0) {
                        circularTrackColor = j2;
                        int i13 = composerStartRestartGroup.changed(circularTrackColor) ? 16384 : 8192;
                        i4 |= i13;
                    } else {
                        circularTrackColor = j2;
                    }
                    i4 |= i13;
                } else {
                    circularTrackColor = j2;
                }
                i7 = i3 & 32;
                if (i7 != 0) {
                    if ((196608 & i2) == 0) {
                        i8 = i;
                        if (composerStartRestartGroup.changed(i8)) {
                            i9 = 131072;
                        } else {
                            i9 = 65536;
                        }
                        i4 |= i9;
                    }
                    if ((i4 & 74899) != 74898) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) == 0 && !composerStartRestartGroup.getDefaultsInvalid()) {
                            composerStartRestartGroup.skipToGroupEnd();
                            if ((i3 & 4) != 0) {
                                i4 &= -897;
                            }
                            if ((i3 & 16) != 0) {
                                i4 &= -57345;
                            }
                        } else {
                            if (i11 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i3 & 4) != 0) {
                                circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                                i4 &= -897;
                            }
                            if (i5 != 0) {
                                fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                            }
                            if ((i3 & 16) != 0) {
                                circularTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularTrackColor(composerStartRestartGroup, 6);
                                i4 &= -57345;
                            }
                            if (i7 != 0) {
                                f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                                j5 = circularTrackColor;
                                iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1472321743, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:705)");
                            }
                            z2 = (i4 & 14) == 4;
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (!z2 || objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new ll3() { // from class: mn6
                                    @Override // defpackage.ll3
                                    public final Object invoke() {
                                        return Float.valueOf(ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$37$lambda$36(f));
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            m3743CircularProgressIndicatorIyT6zlY((ll3) objRememberedValue, modifier2, circularColor, f4, j5, iM3733getCircularDeterminateStrokeCapKaPHkGw, 0.0f, composerStartRestartGroup, i4 & 524272, 64);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            f3 = f4;
                            i10 = iM3733getCircularDeterminateStrokeCapKaPHkGw;
                            long j6 = j5;
                            modifier3 = modifier2;
                            j3 = circularColor;
                            j4 = j6;
                        }
                        f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                        j5 = circularTrackColor;
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1472321743, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:705)");
                        }
                        if ((i4 & 14) == 4) {
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (!z2) {
                            objRememberedValue = new ll3() { // from class: mn6
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return Float.valueOf(ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$37$lambda$36(f));
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new ll3() { // from class: mn6
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return Float.valueOf(ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$37$lambda$36(f));
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        m3743CircularProgressIndicatorIyT6zlY((ll3) objRememberedValue, modifier2, circularColor, f4, j5, iM3733getCircularDeterminateStrokeCapKaPHkGw, 0.0f, composerStartRestartGroup, i4 & 524272, 64);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        f3 = f4;
                        i10 = iM3733getCircularDeterminateStrokeCapKaPHkGw;
                        long j7 = j5;
                        modifier3 = modifier2;
                        j3 = circularColor;
                        j4 = j7;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        f3 = fM3736getCircularStrokeWidthD9Ej5fM;
                        i10 = i8;
                        modifier3 = modifier2;
                        j3 = circularColor;
                        j4 = circularTrackColor;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: on6
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$38(f, modifier3, j3, f3, j4, i10, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i8 = i;
                if ((i4 & 74899) != 74898) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) == 0) {
                        if (i11 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                            i4 &= -897;
                        }
                        if (i5 != 0) {
                            fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                        }
                        if ((i3 & 16) != 0) {
                            circularTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularTrackColor(composerStartRestartGroup, 6);
                            i4 &= -57345;
                        }
                        if (i7 != 0) {
                            f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                            j5 = circularTrackColor;
                            iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                        } else {
                            f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                            j5 = circularTrackColor;
                            iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                        }
                    } else {
                        if (i11 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                            i4 &= -897;
                        }
                        if (i5 != 0) {
                            fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                        }
                        if ((i3 & 16) != 0) {
                            circularTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularTrackColor(composerStartRestartGroup, 6);
                            i4 &= -57345;
                        }
                        if (i7 != 0) {
                            f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                            j5 = circularTrackColor;
                            iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                        } else {
                            f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                            j5 = circularTrackColor;
                            iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1472321743, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:705)");
                    }
                    if ((i4 & 14) == 4) {
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (!z2) {
                        objRememberedValue = new ll3() { // from class: mn6
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return Float.valueOf(ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$37$lambda$36(f));
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new ll3() { // from class: mn6
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return Float.valueOf(ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$37$lambda$36(f));
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    m3743CircularProgressIndicatorIyT6zlY((ll3) objRememberedValue, modifier2, circularColor, f4, j5, iM3733getCircularDeterminateStrokeCapKaPHkGw, 0.0f, composerStartRestartGroup, i4 & 524272, 64);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    f3 = f4;
                    i10 = iM3733getCircularDeterminateStrokeCapKaPHkGw;
                    long j8 = j5;
                    modifier3 = modifier2;
                    j3 = circularColor;
                    j4 = j8;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    f3 = fM3736getCircularStrokeWidthD9Ej5fM;
                    i10 = i8;
                    modifier3 = modifier2;
                    j3 = circularColor;
                    j4 = circularTrackColor;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: on6
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$38(f, modifier3, j3, f3, j4, i10, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 3072;
            fM3736getCircularStrokeWidthD9Ej5fM = f2;
            if ((i2 & 24576) == 0) {
                if ((i3 & 16) == 0) {
                    circularTrackColor = j2;
                    if (composerStartRestartGroup.changed(circularTrackColor)) {
                    }
                    i4 |= i13;
                } else {
                    circularTrackColor = j2;
                }
                i4 |= i13;
            } else {
                circularTrackColor = j2;
            }
            i7 = i3 & 32;
            if (i7 != 0) {
                if ((196608 & i2) == 0) {
                    i8 = i;
                    if (composerStartRestartGroup.changed(i8)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i4 |= i9;
                }
                if ((i4 & 74899) != 74898) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) == 0) {
                        if (i11 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                            i4 &= -897;
                        }
                        if (i5 != 0) {
                            fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                        }
                        if ((i3 & 16) != 0) {
                            circularTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularTrackColor(composerStartRestartGroup, 6);
                            i4 &= -57345;
                        }
                        if (i7 != 0) {
                            f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                            j5 = circularTrackColor;
                            iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                        } else {
                            f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                            j5 = circularTrackColor;
                            iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                        }
                    } else {
                        if (i11 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                            i4 &= -897;
                        }
                        if (i5 != 0) {
                            fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                        }
                        if ((i3 & 16) != 0) {
                            circularTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularTrackColor(composerStartRestartGroup, 6);
                            i4 &= -57345;
                        }
                        if (i7 != 0) {
                            f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                            j5 = circularTrackColor;
                            iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                        } else {
                            f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                            j5 = circularTrackColor;
                            iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1472321743, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:705)");
                    }
                    if ((i4 & 14) == 4) {
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (!z2) {
                        objRememberedValue = new ll3() { // from class: mn6
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return Float.valueOf(ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$37$lambda$36(f));
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new ll3() { // from class: mn6
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return Float.valueOf(ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$37$lambda$36(f));
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    m3743CircularProgressIndicatorIyT6zlY((ll3) objRememberedValue, modifier2, circularColor, f4, j5, iM3733getCircularDeterminateStrokeCapKaPHkGw, 0.0f, composerStartRestartGroup, i4 & 524272, 64);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    f3 = f4;
                    i10 = iM3733getCircularDeterminateStrokeCapKaPHkGw;
                    long j9 = j5;
                    modifier3 = modifier2;
                    j3 = circularColor;
                    j4 = j9;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    f3 = fM3736getCircularStrokeWidthD9Ej5fM;
                    i10 = i8;
                    modifier3 = modifier2;
                    j3 = circularColor;
                    j4 = circularTrackColor;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: on6
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$38(f, modifier3, j3, f3, j4, i10, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i8 = i;
            if ((i4 & 74899) != 74898) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) == 0) {
                    if (i11 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if (i5 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    }
                    if ((i3 & 16) != 0) {
                        circularTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularTrackColor(composerStartRestartGroup, 6);
                        i4 &= -57345;
                    }
                    if (i7 != 0) {
                        f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                        j5 = circularTrackColor;
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                    } else {
                        f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                        j5 = circularTrackColor;
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                    }
                } else {
                    if (i11 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if (i5 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    }
                    if ((i3 & 16) != 0) {
                        circularTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularTrackColor(composerStartRestartGroup, 6);
                        i4 &= -57345;
                    }
                    if (i7 != 0) {
                        f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                        j5 = circularTrackColor;
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                    } else {
                        f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                        j5 = circularTrackColor;
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1472321743, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:705)");
                }
                if ((i4 & 14) == 4) {
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (!z2) {
                    objRememberedValue = new ll3() { // from class: mn6
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return Float.valueOf(ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$37$lambda$36(f));
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new ll3() { // from class: mn6
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return Float.valueOf(ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$37$lambda$36(f));
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                m3743CircularProgressIndicatorIyT6zlY((ll3) objRememberedValue, modifier2, circularColor, f4, j5, iM3733getCircularDeterminateStrokeCapKaPHkGw, 0.0f, composerStartRestartGroup, i4 & 524272, 64);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                f3 = f4;
                i10 = iM3733getCircularDeterminateStrokeCapKaPHkGw;
                long j10 = j5;
                modifier3 = modifier2;
                j3 = circularColor;
                j4 = j10;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                f3 = fM3736getCircularStrokeWidthD9Ej5fM;
                i10 = i8;
                modifier3 = modifier2;
                j3 = circularColor;
                j4 = circularTrackColor;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: on6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$38(f, modifier3, j3, f3, j4, i10, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 48;
        modifier2 = modifier;
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i3 & 4) == 0) {
                circularColor = j;
                if (composerStartRestartGroup.changed(circularColor)) {
                }
                i4 |= i12;
            } else {
                circularColor = j;
            }
            i4 |= i12;
        } else {
            circularColor = j;
        }
        i5 = i3 & 8;
        if (i5 != 0) {
            if ((i2 & 3072) == 0) {
                fM3736getCircularStrokeWidthD9Ej5fM = f2;
                if (composerStartRestartGroup.changed(fM3736getCircularStrokeWidthD9Ej5fM)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i4 |= i6;
            }
            if ((i2 & 24576) == 0) {
                if ((i3 & 16) == 0) {
                    circularTrackColor = j2;
                    if (composerStartRestartGroup.changed(circularTrackColor)) {
                    }
                    i4 |= i13;
                } else {
                    circularTrackColor = j2;
                }
                i4 |= i13;
            } else {
                circularTrackColor = j2;
            }
            i7 = i3 & 32;
            if (i7 != 0) {
                if ((196608 & i2) == 0) {
                    i8 = i;
                    if (composerStartRestartGroup.changed(i8)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i4 |= i9;
                }
                if ((i4 & 74899) != 74898) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) == 0) {
                        if (i11 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                            i4 &= -897;
                        }
                        if (i5 != 0) {
                            fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                        }
                        if ((i3 & 16) != 0) {
                            circularTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularTrackColor(composerStartRestartGroup, 6);
                            i4 &= -57345;
                        }
                        if (i7 != 0) {
                            f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                            j5 = circularTrackColor;
                            iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                        } else {
                            f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                            j5 = circularTrackColor;
                            iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                        }
                    } else {
                        if (i11 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                            i4 &= -897;
                        }
                        if (i5 != 0) {
                            fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                        }
                        if ((i3 & 16) != 0) {
                            circularTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularTrackColor(composerStartRestartGroup, 6);
                            i4 &= -57345;
                        }
                        if (i7 != 0) {
                            f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                            j5 = circularTrackColor;
                            iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                        } else {
                            f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                            j5 = circularTrackColor;
                            iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1472321743, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:705)");
                    }
                    if ((i4 & 14) == 4) {
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (!z2) {
                        objRememberedValue = new ll3() { // from class: mn6
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return Float.valueOf(ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$37$lambda$36(f));
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new ll3() { // from class: mn6
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return Float.valueOf(ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$37$lambda$36(f));
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    m3743CircularProgressIndicatorIyT6zlY((ll3) objRememberedValue, modifier2, circularColor, f4, j5, iM3733getCircularDeterminateStrokeCapKaPHkGw, 0.0f, composerStartRestartGroup, i4 & 524272, 64);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    f3 = f4;
                    i10 = iM3733getCircularDeterminateStrokeCapKaPHkGw;
                    long j11 = j5;
                    modifier3 = modifier2;
                    j3 = circularColor;
                    j4 = j11;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    f3 = fM3736getCircularStrokeWidthD9Ej5fM;
                    i10 = i8;
                    modifier3 = modifier2;
                    j3 = circularColor;
                    j4 = circularTrackColor;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: on6
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$38(f, modifier3, j3, f3, j4, i10, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i8 = i;
            if ((i4 & 74899) != 74898) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) == 0) {
                    if (i11 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if (i5 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    }
                    if ((i3 & 16) != 0) {
                        circularTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularTrackColor(composerStartRestartGroup, 6);
                        i4 &= -57345;
                    }
                    if (i7 != 0) {
                        f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                        j5 = circularTrackColor;
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                    } else {
                        f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                        j5 = circularTrackColor;
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                    }
                } else {
                    if (i11 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if (i5 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    }
                    if ((i3 & 16) != 0) {
                        circularTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularTrackColor(composerStartRestartGroup, 6);
                        i4 &= -57345;
                    }
                    if (i7 != 0) {
                        f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                        j5 = circularTrackColor;
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                    } else {
                        f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                        j5 = circularTrackColor;
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1472321743, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:705)");
                }
                if ((i4 & 14) == 4) {
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (!z2) {
                    objRememberedValue = new ll3() { // from class: mn6
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return Float.valueOf(ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$37$lambda$36(f));
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new ll3() { // from class: mn6
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return Float.valueOf(ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$37$lambda$36(f));
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                m3743CircularProgressIndicatorIyT6zlY((ll3) objRememberedValue, modifier2, circularColor, f4, j5, iM3733getCircularDeterminateStrokeCapKaPHkGw, 0.0f, composerStartRestartGroup, i4 & 524272, 64);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                f3 = f4;
                i10 = iM3733getCircularDeterminateStrokeCapKaPHkGw;
                long j12 = j5;
                modifier3 = modifier2;
                j3 = circularColor;
                j4 = j12;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                f3 = fM3736getCircularStrokeWidthD9Ej5fM;
                i10 = i8;
                modifier3 = modifier2;
                j3 = circularColor;
                j4 = circularTrackColor;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: on6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$38(f, modifier3, j3, f3, j4, i10, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 3072;
        fM3736getCircularStrokeWidthD9Ej5fM = f2;
        if ((i2 & 24576) == 0) {
            if ((i3 & 16) == 0) {
                circularTrackColor = j2;
                if (composerStartRestartGroup.changed(circularTrackColor)) {
                }
                i4 |= i13;
            } else {
                circularTrackColor = j2;
            }
            i4 |= i13;
        } else {
            circularTrackColor = j2;
        }
        i7 = i3 & 32;
        if (i7 != 0) {
            if ((196608 & i2) == 0) {
                i8 = i;
                if (composerStartRestartGroup.changed(i8)) {
                    i9 = 131072;
                } else {
                    i9 = 65536;
                }
                i4 |= i9;
            }
            if ((i4 & 74899) != 74898) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) == 0) {
                    if (i11 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if (i5 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    }
                    if ((i3 & 16) != 0) {
                        circularTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularTrackColor(composerStartRestartGroup, 6);
                        i4 &= -57345;
                    }
                    if (i7 != 0) {
                        f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                        j5 = circularTrackColor;
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                    } else {
                        f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                        j5 = circularTrackColor;
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                    }
                } else {
                    if (i11 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if (i5 != 0) {
                        fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                    }
                    if ((i3 & 16) != 0) {
                        circularTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularTrackColor(composerStartRestartGroup, 6);
                        i4 &= -57345;
                    }
                    if (i7 != 0) {
                        f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                        j5 = circularTrackColor;
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                    } else {
                        f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                        j5 = circularTrackColor;
                        iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1472321743, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:705)");
                }
                if ((i4 & 14) == 4) {
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (!z2) {
                    objRememberedValue = new ll3() { // from class: mn6
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return Float.valueOf(ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$37$lambda$36(f));
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new ll3() { // from class: mn6
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return Float.valueOf(ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$37$lambda$36(f));
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                m3743CircularProgressIndicatorIyT6zlY((ll3) objRememberedValue, modifier2, circularColor, f4, j5, iM3733getCircularDeterminateStrokeCapKaPHkGw, 0.0f, composerStartRestartGroup, i4 & 524272, 64);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                f3 = f4;
                i10 = iM3733getCircularDeterminateStrokeCapKaPHkGw;
                long j13 = j5;
                modifier3 = modifier2;
                j3 = circularColor;
                j4 = j13;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                f3 = fM3736getCircularStrokeWidthD9Ej5fM;
                i10 = i8;
                modifier3 = modifier2;
                j3 = circularColor;
                j4 = circularTrackColor;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: on6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$38(f, modifier3, j3, f3, j4, i10, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        i8 = i;
        if ((i4 & 74899) != 74898) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i2 & 1) == 0) {
                if (i11 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if ((i3 & 4) != 0) {
                    circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                    i4 &= -897;
                }
                if (i5 != 0) {
                    fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                }
                if ((i3 & 16) != 0) {
                    circularTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularTrackColor(composerStartRestartGroup, 6);
                    i4 &= -57345;
                }
                if (i7 != 0) {
                    f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                    j5 = circularTrackColor;
                    iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                } else {
                    f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                    j5 = circularTrackColor;
                    iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                }
            } else {
                if (i11 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if ((i3 & 4) != 0) {
                    circularColor = ProgressIndicatorDefaults.INSTANCE.getCircularColor(composerStartRestartGroup, 6);
                    i4 &= -897;
                }
                if (i5 != 0) {
                    fM3736getCircularStrokeWidthD9Ej5fM = ProgressIndicatorDefaults.INSTANCE.m3736getCircularStrokeWidthD9Ej5fM();
                }
                if ((i3 & 16) != 0) {
                    circularTrackColor = ProgressIndicatorDefaults.INSTANCE.getCircularTrackColor(composerStartRestartGroup, 6);
                    i4 &= -57345;
                }
                if (i7 != 0) {
                    f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                    j5 = circularTrackColor;
                    iM3733getCircularDeterminateStrokeCapKaPHkGw = ProgressIndicatorDefaults.INSTANCE.m3733getCircularDeterminateStrokeCapKaPHkGw();
                } else {
                    f4 = fM3736getCircularStrokeWidthD9Ej5fM;
                    j5 = circularTrackColor;
                    iM3733getCircularDeterminateStrokeCapKaPHkGw = i8;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1472321743, i4, -1, "androidx.compose.material3.CircularProgressIndicator (ProgressIndicator.kt:705)");
            }
            if ((i4 & 14) == 4) {
            }
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (!z2) {
                objRememberedValue = new ll3() { // from class: mn6
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return Float.valueOf(ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$37$lambda$36(f));
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                objRememberedValue = new ll3() { // from class: mn6
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return Float.valueOf(ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$37$lambda$36(f));
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            m3743CircularProgressIndicatorIyT6zlY((ll3) objRememberedValue, modifier2, circularColor, f4, j5, iM3733getCircularDeterminateStrokeCapKaPHkGw, 0.0f, composerStartRestartGroup, i4 & 524272, 64);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            f3 = f4;
            i10 = iM3733getCircularDeterminateStrokeCapKaPHkGw;
            long j14 = j5;
            modifier3 = modifier2;
            j3 = circularColor;
            j4 = j14;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            f3 = fM3736getCircularStrokeWidthD9Ej5fM;
            i10 = i8;
            modifier3 = modifier2;
            j3 = circularColor;
            j4 = circularTrackColor;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: on6
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ProgressIndicatorKt.CircularProgressIndicator_DUhRLBM$lambda$38(f, modifier3, j3, f3, j4, i10, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }
}
