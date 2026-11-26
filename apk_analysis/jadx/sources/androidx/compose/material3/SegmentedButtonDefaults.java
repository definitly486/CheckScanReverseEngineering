package androidx.compose.material3;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.CornerBasedShape;
import androidx.compose.material3.SegmentedButtonDefaults;
import androidx.compose.material3.internal.Icons;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.material3.tokens.OutlinedSegmentedButtonTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TransformOriginKt;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class SegmentedButtonDefaults {
    public static final int $stable = 0;
    private static final float BorderWidth;
    private static final PaddingValues ContentPadding;
    public static final SegmentedButtonDefaults INSTANCE = new SegmentedButtonDefaults();
    private static final float IconSize;

    static {
        OutlinedSegmentedButtonTokens outlinedSegmentedButtonTokens = OutlinedSegmentedButtonTokens.INSTANCE;
        BorderWidth = outlinedSegmentedButtonTokens.m4969getOutlineWidthD9Ej5fM();
        IconSize = outlinedSegmentedButtonTokens.m4968getIconSizeD9Ej5fM();
        ContentPadding = ButtonDefaults.INSTANCE.getTextButtonContentPadding();
    }

    private SegmentedButtonDefaults() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ActiveIcon$lambda$1(SegmentedButtonDefaults segmentedButtonDefaults, int i, Composer composer, int i2) {
        segmentedButtonDefaults.ActiveIcon(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Icon$lambda$2(SegmentedButtonDefaults segmentedButtonDefaults, boolean z, bm3 bm3Var, bm3 bm3Var2, int i, int i2, Composer composer, int i3) {
        segmentedButtonDefaults.Icon(z, bm3Var, bm3Var2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: renamed from: borderStroke-l07J4OM$default, reason: not valid java name */
    public static /* synthetic */ BorderStroke m3830borderStrokel07J4OM$default(SegmentedButtonDefaults segmentedButtonDefaults, long j, float f, int i, Object obj) {
        if ((i & 2) != 0) {
            f = BorderWidth;
        }
        return segmentedButtonDefaults.m3831borderStrokel07J4OM(j, f);
    }

    public final void ActiveIcon(Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1273041460);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(this) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 3) != 2, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1273041460, i2, -1, "androidx.compose.material3.SegmentedButtonDefaults.ActiveIcon (SegmentedButton.kt:614)");
            }
            IconKt.m3533Iconww6aTOc(Icons.Filled.INSTANCE.getCheck$material3(), (String) null, SizeKt.m2099size3ABfNKs(Modifier.Companion, IconSize), 0L, composerStartRestartGroup, 48, 8);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kl7
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return SegmentedButtonDefaults.ActiveIcon$lambda$1(this.b, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0046  */
    /* JADX WARN: Code duplicated, block: B:28:0x004b  */
    /* JADX WARN: Code duplicated, block: B:30:0x004f  */
    /* JADX WARN: Code duplicated, block: B:32:0x0057  */
    /* JADX WARN: Code duplicated, block: B:33:0x005a  */
    /* JADX WARN: Code duplicated, block: B:37:0x0064  */
    /* JADX WARN: Code duplicated, block: B:38:0x0066  */
    /* JADX WARN: Code duplicated, block: B:41:0x006f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:42:0x0071  */
    /* JADX WARN: Code duplicated, block: B:43:0x0078  */
    /* JADX WARN: Code duplicated, block: B:46:0x007c  */
    /* JADX WARN: Code duplicated, block: B:47:0x007e  */
    /* JADX WARN: Code duplicated, block: B:50:0x0085  */
    /* JADX WARN: Code duplicated, block: B:53:0x0090  */
    /* JADX WARN: Code duplicated, block: B:54:0x00db  */
    /* JADX WARN: Code duplicated, block: B:57:0x010b  */
    /* JADX WARN: Code duplicated, block: B:59:0x0110  */
    /* JADX WARN: Code duplicated, block: B:62:0x011b  */
    /* JADX WARN: Code duplicated, block: B:64:? A[RETURN, SYNTHETIC] */
    public final void Icon(final boolean z, bm3<? super Composer, ? super Integer, j59> bm3Var, bm3<? super Composer, ? super Integer, j59> bm3Var2, Composer composer, final int i, final int i2) {
        boolean z2;
        int i3;
        bm3<? super Composer, ? super Integer, j59> bm3Var3;
        int i4;
        bm3<? super Composer, ? super Integer, j59> bm3Var4;
        int i5;
        boolean z3;
        final bm3<? super Composer, ? super Integer, j59> lambda$1863131183$material3;
        final bm3<? super Composer, ? super Integer, j59> bm3Var5;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        final bm3<? super Composer, ? super Integer, j59> bm3Var6;
        Composer composerStartRestartGroup = composer.startRestartGroup(-657462570);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
            z2 = z;
        } else {
            z2 = z;
            if ((i & 6) == 0) {
                i3 = (composerStartRestartGroup.changed(z2) ? 4 : 2) | i;
            } else {
                i3 = i;
            }
        }
        int i6 = i2 & 2;
        if (i6 == 0) {
            if ((i & 48) == 0) {
                bm3Var3 = bm3Var;
                i3 |= composerStartRestartGroup.changedInstance(bm3Var3) ? 32 : 16;
            }
            i4 = i2 & 4;
            if (i4 != 0) {
                if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    bm3Var4 = bm3Var2;
                    if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                        i5 = 256;
                    } else {
                        i5 = 128;
                    }
                    i3 |= i5;
                }
                if ((i3 & 147) != 146) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    if (i6 != 0) {
                        lambda$1863131183$material3 = ComposableSingletons$SegmentedButtonKt.INSTANCE.getLambda$1863131183$material3();
                    } else {
                        lambda$1863131183$material3 = bm3Var3;
                    }
                    if (i4 != 0) {
                        bm3Var6 = null;
                    } else {
                        bm3Var6 = bm3Var4;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-657462570, i3, -1, "androidx.compose.material3.SegmentedButtonDefaults.Icon (SegmentedButton.kt:635)");
                    }
                    if (bm3Var6 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1416314439);
                        AnimatedVisibilityKt.AnimatedVisibility(z2, (Modifier) null, EnterExitTransitionKt.fadeIn$default(MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composerStartRestartGroup, 6), 0.0f, 2, null).plus(EnterExitTransitionKt.m1091scaleInL8ZKhE(MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, TransformOriginKt.TransformOrigin(0.0f, 1.0f))), ExitTransition.Companion.getNone(), (String) null, ComposableLambdaKt.rememberComposableLambda(2059591811, true, new dm3<AnimatedVisibilityScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.SegmentedButtonDefaults.Icon.1
                            public final void invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer2, int i7) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(2059591811, i7, -1, "androidx.compose.material3.SegmentedButtonDefaults.Icon.<anonymous> (SegmentedButton.kt:649)");
                                }
                                lambda$1863131183$material3.invoke(composer2, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer2, Integer num) {
                                invoke(animatedVisibilityScope, composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, (i3 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 18);
                        composerStartRestartGroup = composerStartRestartGroup;
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1415695803);
                        CrossfadeKt.Crossfade(Boolean.valueOf(z), (Modifier) null, (FiniteAnimationSpec<Float>) MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composerStartRestartGroup, 6), (String) null, ComposableLambdaKt.rememberComposableLambda(-1785818285, true, new dm3<Boolean, Composer, Integer, j59>() { // from class: androidx.compose.material3.SegmentedButtonDefaults.Icon.2
                            public final void invoke(boolean z4, Composer composer2, int i7) {
                                bm3<Composer, Integer, j59> bm3Var7;
                                if ((i7 & 6) == 0) {
                                    i7 |= composer2.changed(z4) ? 4 : 2;
                                }
                                if (!composer2.shouldExecute((i7 & 19) != 18, i7 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1785818285, i7, -1, "androidx.compose.material3.SegmentedButtonDefaults.Icon.<anonymous> (SegmentedButton.kt:657)");
                                }
                                if (z4) {
                                    composer2.startReplaceGroup(1815547362);
                                    bm3Var7 = lambda$1863131183$material3;
                                } else {
                                    composer2.startReplaceGroup(1815548036);
                                    bm3Var7 = bm3Var6;
                                }
                                bm3Var7.invoke(composer2, 0);
                                composer2.endReplaceGroup();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(Boolean bool, Composer composer2, Integer num) {
                                invoke(bool.booleanValue(), composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, (i3 & 14) | 24576, 10);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    bm3Var5 = bm3Var6;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    lambda$1863131183$material3 = bm3Var3;
                    bm3Var5 = bm3Var4;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ll7
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return SegmentedButtonDefaults.Icon$lambda$2(this.b, z, lambda$1863131183$material3, bm3Var5, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            bm3Var4 = bm3Var2;
            if ((i3 & 147) != 146) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                if (i6 != 0) {
                    lambda$1863131183$material3 = ComposableSingletons$SegmentedButtonKt.INSTANCE.getLambda$1863131183$material3();
                } else {
                    lambda$1863131183$material3 = bm3Var3;
                }
                if (i4 != 0) {
                    bm3Var6 = null;
                } else {
                    bm3Var6 = bm3Var4;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-657462570, i3, -1, "androidx.compose.material3.SegmentedButtonDefaults.Icon (SegmentedButton.kt:635)");
                }
                if (bm3Var6 == null) {
                    composerStartRestartGroup.startReplaceGroup(-1416314439);
                    AnimatedVisibilityKt.AnimatedVisibility(z2, (Modifier) null, EnterExitTransitionKt.fadeIn$default(MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composerStartRestartGroup, 6), 0.0f, 2, null).plus(EnterExitTransitionKt.m1091scaleInL8ZKhE(MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, TransformOriginKt.TransformOrigin(0.0f, 1.0f))), ExitTransition.Companion.getNone(), (String) null, ComposableLambdaKt.rememberComposableLambda(2059591811, true, new dm3<AnimatedVisibilityScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.SegmentedButtonDefaults.Icon.1
                        public final void invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer2, int i7) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(2059591811, i7, -1, "androidx.compose.material3.SegmentedButtonDefaults.Icon.<anonymous> (SegmentedButton.kt:649)");
                            }
                            lambda$1863131183$material3.invoke(composer2, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.dm3
                        public /* bridge */ /* synthetic */ j59 invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer2, Integer num) {
                            invoke(animatedVisibilityScope, composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i3 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 18);
                    composerStartRestartGroup = composerStartRestartGroup;
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1415695803);
                    CrossfadeKt.Crossfade(Boolean.valueOf(z), (Modifier) null, (FiniteAnimationSpec<Float>) MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composerStartRestartGroup, 6), (String) null, ComposableLambdaKt.rememberComposableLambda(-1785818285, true, new dm3<Boolean, Composer, Integer, j59>() { // from class: androidx.compose.material3.SegmentedButtonDefaults.Icon.2
                        public final void invoke(boolean z4, Composer composer2, int i7) {
                            bm3<Composer, Integer, j59> bm3Var7;
                            if ((i7 & 6) == 0) {
                                i7 |= composer2.changed(z4) ? 4 : 2;
                            }
                            if (!composer2.shouldExecute((i7 & 19) != 18, i7 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1785818285, i7, -1, "androidx.compose.material3.SegmentedButtonDefaults.Icon.<anonymous> (SegmentedButton.kt:657)");
                            }
                            if (z4) {
                                composer2.startReplaceGroup(1815547362);
                                bm3Var7 = lambda$1863131183$material3;
                            } else {
                                composer2.startReplaceGroup(1815548036);
                                bm3Var7 = bm3Var6;
                            }
                            bm3Var7.invoke(composer2, 0);
                            composer2.endReplaceGroup();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.dm3
                        public /* bridge */ /* synthetic */ j59 invoke(Boolean bool, Composer composer2, Integer num) {
                            invoke(bool.booleanValue(), composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i3 & 14) | 24576, 10);
                    composerStartRestartGroup.endReplaceGroup();
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                bm3Var5 = bm3Var6;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                lambda$1863131183$material3 = bm3Var3;
                bm3Var5 = bm3Var4;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ll7
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SegmentedButtonDefaults.Icon$lambda$2(this.b, z, lambda$1863131183$material3, bm3Var5, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        bm3Var3 = bm3Var;
        i4 = i2 & 4;
        if (i4 != 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                bm3Var4 = bm3Var2;
                if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                    i5 = 256;
                } else {
                    i5 = 128;
                }
                i3 |= i5;
            }
            if ((i3 & 147) != 146) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                if (i6 != 0) {
                    lambda$1863131183$material3 = ComposableSingletons$SegmentedButtonKt.INSTANCE.getLambda$1863131183$material3();
                } else {
                    lambda$1863131183$material3 = bm3Var3;
                }
                if (i4 != 0) {
                    bm3Var6 = null;
                } else {
                    bm3Var6 = bm3Var4;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-657462570, i3, -1, "androidx.compose.material3.SegmentedButtonDefaults.Icon (SegmentedButton.kt:635)");
                }
                if (bm3Var6 == null) {
                    composerStartRestartGroup.startReplaceGroup(-1416314439);
                    AnimatedVisibilityKt.AnimatedVisibility(z2, (Modifier) null, EnterExitTransitionKt.fadeIn$default(MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composerStartRestartGroup, 6), 0.0f, 2, null).plus(EnterExitTransitionKt.m1091scaleInL8ZKhE(MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, TransformOriginKt.TransformOrigin(0.0f, 1.0f))), ExitTransition.Companion.getNone(), (String) null, ComposableLambdaKt.rememberComposableLambda(2059591811, true, new dm3<AnimatedVisibilityScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.SegmentedButtonDefaults.Icon.1
                        public final void invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer2, int i7) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(2059591811, i7, -1, "androidx.compose.material3.SegmentedButtonDefaults.Icon.<anonymous> (SegmentedButton.kt:649)");
                            }
                            lambda$1863131183$material3.invoke(composer2, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.dm3
                        public /* bridge */ /* synthetic */ j59 invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer2, Integer num) {
                            invoke(animatedVisibilityScope, composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i3 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 18);
                    composerStartRestartGroup = composerStartRestartGroup;
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1415695803);
                    CrossfadeKt.Crossfade(Boolean.valueOf(z), (Modifier) null, (FiniteAnimationSpec<Float>) MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composerStartRestartGroup, 6), (String) null, ComposableLambdaKt.rememberComposableLambda(-1785818285, true, new dm3<Boolean, Composer, Integer, j59>() { // from class: androidx.compose.material3.SegmentedButtonDefaults.Icon.2
                        public final void invoke(boolean z4, Composer composer2, int i7) {
                            bm3<Composer, Integer, j59> bm3Var7;
                            if ((i7 & 6) == 0) {
                                i7 |= composer2.changed(z4) ? 4 : 2;
                            }
                            if (!composer2.shouldExecute((i7 & 19) != 18, i7 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1785818285, i7, -1, "androidx.compose.material3.SegmentedButtonDefaults.Icon.<anonymous> (SegmentedButton.kt:657)");
                            }
                            if (z4) {
                                composer2.startReplaceGroup(1815547362);
                                bm3Var7 = lambda$1863131183$material3;
                            } else {
                                composer2.startReplaceGroup(1815548036);
                                bm3Var7 = bm3Var6;
                            }
                            bm3Var7.invoke(composer2, 0);
                            composer2.endReplaceGroup();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.dm3
                        public /* bridge */ /* synthetic */ j59 invoke(Boolean bool, Composer composer2, Integer num) {
                            invoke(bool.booleanValue(), composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i3 & 14) | 24576, 10);
                    composerStartRestartGroup.endReplaceGroup();
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                bm3Var5 = bm3Var6;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                lambda$1863131183$material3 = bm3Var3;
                bm3Var5 = bm3Var4;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ll7
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return SegmentedButtonDefaults.Icon$lambda$2(this.b, z, lambda$1863131183$material3, bm3Var5, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        bm3Var4 = bm3Var2;
        if ((i3 & 147) != 146) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
            if (i6 != 0) {
                lambda$1863131183$material3 = ComposableSingletons$SegmentedButtonKt.INSTANCE.getLambda$1863131183$material3();
            } else {
                lambda$1863131183$material3 = bm3Var3;
            }
            if (i4 != 0) {
                bm3Var6 = null;
            } else {
                bm3Var6 = bm3Var4;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-657462570, i3, -1, "androidx.compose.material3.SegmentedButtonDefaults.Icon (SegmentedButton.kt:635)");
            }
            if (bm3Var6 == null) {
                composerStartRestartGroup.startReplaceGroup(-1416314439);
                AnimatedVisibilityKt.AnimatedVisibility(z2, (Modifier) null, EnterExitTransitionKt.fadeIn$default(MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composerStartRestartGroup, 6), 0.0f, 2, null).plus(EnterExitTransitionKt.m1091scaleInL8ZKhE(MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, TransformOriginKt.TransformOrigin(0.0f, 1.0f))), ExitTransition.Companion.getNone(), (String) null, ComposableLambdaKt.rememberComposableLambda(2059591811, true, new dm3<AnimatedVisibilityScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.SegmentedButtonDefaults.Icon.1
                    public final void invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer2, int i7) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(2059591811, i7, -1, "androidx.compose.material3.SegmentedButtonDefaults.Icon.<anonymous> (SegmentedButton.kt:649)");
                        }
                        lambda$1863131183$material3.invoke(composer2, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.dm3
                    public /* bridge */ /* synthetic */ j59 invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer2, Integer num) {
                        invoke(animatedVisibilityScope, composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, (i3 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 18);
                composerStartRestartGroup = composerStartRestartGroup;
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-1415695803);
                CrossfadeKt.Crossfade(Boolean.valueOf(z), (Modifier) null, (FiniteAnimationSpec<Float>) MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composerStartRestartGroup, 6), (String) null, ComposableLambdaKt.rememberComposableLambda(-1785818285, true, new dm3<Boolean, Composer, Integer, j59>() { // from class: androidx.compose.material3.SegmentedButtonDefaults.Icon.2
                    public final void invoke(boolean z4, Composer composer2, int i7) {
                        bm3<Composer, Integer, j59> bm3Var7;
                        if ((i7 & 6) == 0) {
                            i7 |= composer2.changed(z4) ? 4 : 2;
                        }
                        if (!composer2.shouldExecute((i7 & 19) != 18, i7 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1785818285, i7, -1, "androidx.compose.material3.SegmentedButtonDefaults.Icon.<anonymous> (SegmentedButton.kt:657)");
                        }
                        if (z4) {
                            composer2.startReplaceGroup(1815547362);
                            bm3Var7 = lambda$1863131183$material3;
                        } else {
                            composer2.startReplaceGroup(1815548036);
                            bm3Var7 = bm3Var6;
                        }
                        bm3Var7.invoke(composer2, 0);
                        composer2.endReplaceGroup();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.dm3
                    public /* bridge */ /* synthetic */ j59 invoke(Boolean bool, Composer composer2, Integer num) {
                        invoke(bool.booleanValue(), composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, (i3 & 14) | 24576, 10);
                composerStartRestartGroup.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            bm3Var5 = bm3Var6;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            lambda$1863131183$material3 = bm3Var3;
            bm3Var5 = bm3Var4;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ll7
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return SegmentedButtonDefaults.Icon$lambda$2(this.b, z, lambda$1863131183$material3, bm3Var5, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: renamed from: borderStroke-l07J4OM, reason: not valid java name */
    public final BorderStroke m3831borderStrokel07J4OM(long j, float f) {
        return BorderStrokeKt.m1315BorderStrokecXLIe8U(f, j);
    }

    public final SegmentedButtonColors colors(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(679457321, i, -1, "androidx.compose.material3.SegmentedButtonDefaults.colors (SegmentedButton.kt:494)");
        }
        SegmentedButtonColors defaultSegmentedButtonColors$material3 = getDefaultSegmentedButtonColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return defaultSegmentedButtonColors$material3;
    }

    /* JADX INFO: renamed from: colors-XqyqHi0, reason: not valid java name */
    public final SegmentedButtonColors m3832colorsXqyqHi0(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, Composer composer, int i, int i2, int i3) {
        long jM6268getUnspecified0d7_KjU = (i3 & 1) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j;
        long jM6268getUnspecified0d7_KjU2 = (i3 & 2) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j2;
        long jM6268getUnspecified0d7_KjU3 = (i3 & 4) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j3;
        long jM6268getUnspecified0d7_KjU4 = (i3 & 8) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j4;
        long jM6268getUnspecified0d7_KjU5 = (i3 & 16) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j5;
        long jM6268getUnspecified0d7_KjU6 = (i3 & 32) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j6;
        long jM6268getUnspecified0d7_KjU7 = (i3 & 64) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j7;
        long jM6268getUnspecified0d7_KjU8 = (i3 & 128) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j8;
        long j13 = jM6268getUnspecified0d7_KjU;
        long jM6268getUnspecified0d7_KjU9 = (i3 & 256) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j9;
        long jM6268getUnspecified0d7_KjU10 = (i3 & 512) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j10;
        long jM6268getUnspecified0d7_KjU11 = (i3 & 1024) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j11;
        long jM6268getUnspecified0d7_KjU12 = (i3 & 2048) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j12;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(132526205, i, i2, "androidx.compose.material3.SegmentedButtonDefaults.colors (SegmentedButton.kt:530)");
        }
        SegmentedButtonColors segmentedButtonColorsM3817copy2qZNXz8 = getDefaultSegmentedButtonColors$material3(MaterialTheme.INSTANCE.getColorScheme(composer, 6)).m3817copy2qZNXz8(j13, jM6268getUnspecified0d7_KjU2, jM6268getUnspecified0d7_KjU3, jM6268getUnspecified0d7_KjU4, jM6268getUnspecified0d7_KjU5, jM6268getUnspecified0d7_KjU6, jM6268getUnspecified0d7_KjU7, jM6268getUnspecified0d7_KjU8, jM6268getUnspecified0d7_KjU9, jM6268getUnspecified0d7_KjU10, jM6268getUnspecified0d7_KjU11, jM6268getUnspecified0d7_KjU12);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return segmentedButtonColorsM3817copy2qZNXz8;
    }

    public final CornerBasedShape getBaseShape(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1264240381, i, -1, "androidx.compose.material3.SegmentedButtonDefaults.<get-baseShape> (SegmentedButton.kt:578)");
        }
        Shape value = ShapesKt.getValue(OutlinedSegmentedButtonTokens.INSTANCE.getShape(), composer, 6);
        value.getClass();
        CornerBasedShape cornerBasedShape = (CornerBasedShape) value;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return cornerBasedShape;
    }

    /* JADX INFO: renamed from: getBorderWidth-D9Ej5fM, reason: not valid java name */
    public final float m3833getBorderWidthD9Ej5fM() {
        return BorderWidth;
    }

    public final PaddingValues getContentPadding() {
        return ContentPadding;
    }

    public final SegmentedButtonColors getDefaultSegmentedButtonColors$material3(ColorScheme colorScheme) {
        SegmentedButtonColors defaultSegmentedButtonColorsCached$material3 = colorScheme.getDefaultSegmentedButtonColorsCached$material3();
        if (defaultSegmentedButtonColorsCached$material3 != null) {
            return defaultSegmentedButtonColorsCached$material3;
        }
        OutlinedSegmentedButtonTokens outlinedSegmentedButtonTokens = OutlinedSegmentedButtonTokens.INSTANCE;
        long jFromToken = ColorSchemeKt.fromToken(colorScheme, outlinedSegmentedButtonTokens.getSelectedContainerColor());
        long jFromToken2 = ColorSchemeKt.fromToken(colorScheme, outlinedSegmentedButtonTokens.getSelectedLabelTextColor());
        long jFromToken3 = ColorSchemeKt.fromToken(colorScheme, outlinedSegmentedButtonTokens.getOutlineColor());
        Color.Companion companion = Color.Companion;
        SegmentedButtonColors segmentedButtonColors = new SegmentedButtonColors(jFromToken, jFromToken2, jFromToken3, companion.m6267getTransparent0d7_KjU(), ColorSchemeKt.fromToken(colorScheme, outlinedSegmentedButtonTokens.getUnselectedLabelTextColor()), ColorSchemeKt.fromToken(colorScheme, outlinedSegmentedButtonTokens.getOutlineColor()), ColorSchemeKt.fromToken(colorScheme, outlinedSegmentedButtonTokens.getSelectedContainerColor()), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, outlinedSegmentedButtonTokens.getDisabledLabelTextColor()), outlinedSegmentedButtonTokens.getDisabledLabelTextOpacity(), 0.0f, 0.0f, 0.0f, 14, null), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, outlinedSegmentedButtonTokens.getOutlineColor()), outlinedSegmentedButtonTokens.getDisabledOutlineOpacity(), 0.0f, 0.0f, 0.0f, 14, null), companion.m6267getTransparent0d7_KjU(), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, outlinedSegmentedButtonTokens.getDisabledLabelTextColor()), outlinedSegmentedButtonTokens.getDisabledLabelTextOpacity(), 0.0f, 0.0f, 0.0f, 14, null), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, outlinedSegmentedButtonTokens.getOutlineColor()), outlinedSegmentedButtonTokens.getDisabledOutlineOpacity(), 0.0f, 0.0f, 0.0f, 14, null), null);
        colorScheme.setDefaultSegmentedButtonColorsCached$material3(segmentedButtonColors);
        return segmentedButtonColors;
    }

    /* JADX INFO: renamed from: getIconSize-D9Ej5fM, reason: not valid java name */
    public final float m3834getIconSizeD9Ej5fM() {
        return IconSize;
    }

    public final Shape itemShape(int i, int i2, CornerBasedShape cornerBasedShape, Composer composer, int i3, int i4) {
        Shape shapeEnd$default;
        if ((i4 & 4) != 0) {
            cornerBasedShape = getBaseShape(composer, (i3 >> 9) & 14);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-942072063, i3, -1, "androidx.compose.material3.SegmentedButtonDefaults.itemShape (SegmentedButton.kt:594)");
        }
        if (i2 == 1) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            return cornerBasedShape;
        }
        if (i == 0) {
            shapeEnd$default = ShapesKt.start$default(cornerBasedShape, null, 1, null);
        } else {
            shapeEnd$default = i == i2 - 1 ? ShapesKt.end$default(cornerBasedShape, null, 1, null) : RectangleShapeKt.getRectangleShape();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return shapeEnd$default;
    }
}
