package androidx.compose.foundation;

import androidx.compose.foundation.BasicTooltipKt;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.LiveRegionMode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.compose.ui.window.PopupProperties;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.cc;
import defpackage.e02;
import defpackage.f57;
import defpackage.gx2;
import defpackage.hm;
import defpackage.j59;
import defpackage.jg;
import defpackage.jh2;
import defpackage.lh0;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.rh0;
import defpackage.ul2;
import defpackage.vh0;
import defpackage.xh0;
import defpackage.y22;
import defpackage.z22;

/* JADX INFO: loaded from: classes.dex */
public final class BasicTooltipKt {
    /* JADX WARN: Code duplicated, block: B:100:0x0151  */
    /* JADX WARN: Code duplicated, block: B:103:0x0158  */
    /* JADX WARN: Code duplicated, block: B:105:0x015e  */
    /* JADX WARN: Code duplicated, block: B:108:0x0176  */
    /* JADX WARN: Code duplicated, block: B:110:0x017f  */
    /* JADX WARN: Code duplicated, block: B:113:0x0190  */
    /* JADX WARN: Code duplicated, block: B:115:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x0062  */
    /* JADX WARN: Code duplicated, block: B:39:0x0067  */
    /* JADX WARN: Code duplicated, block: B:41:0x006b  */
    /* JADX WARN: Code duplicated, block: B:43:0x0073  */
    /* JADX WARN: Code duplicated, block: B:44:0x0076  */
    /* JADX WARN: Code duplicated, block: B:48:0x007f  */
    /* JADX WARN: Code duplicated, block: B:50:0x0083  */
    /* JADX WARN: Code duplicated, block: B:52:0x0086  */
    /* JADX WARN: Code duplicated, block: B:54:0x008e  */
    /* JADX WARN: Code duplicated, block: B:55:0x0091  */
    /* JADX WARN: Code duplicated, block: B:59:0x009a  */
    /* JADX WARN: Code duplicated, block: B:61:0x009e  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:65:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:70:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:72:0x00be  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:78:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:81:0x00db A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:82:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:85:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:86:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:88:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:90:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:93:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:96:0x010a  */
    public static final void BasicTooltipBox(final PopupPositionProvider popupPositionProvider, final bm3<? super Composer, ? super Integer, j59> bm3Var, final BasicTooltipState basicTooltipState, Modifier modifier, boolean z, boolean z2, boolean z3, final bm3<? super Composer, ? super Integer, j59> bm3Var2, Composer composer, final int i, final int i2) {
        final PopupPositionProvider popupPositionProvider2;
        int i3;
        Modifier modifier2;
        int i4;
        boolean z4;
        int i5;
        int i6;
        boolean z5;
        int i7;
        int i8;
        boolean z6;
        int i9;
        boolean z7;
        BasicTooltipState basicTooltipState2;
        Composer composer2;
        final Modifier modifier3;
        final boolean z8;
        final boolean z9;
        final boolean z10;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        final boolean z11;
        Object objRememberedValue;
        Composer.Companion companion;
        boolean z12;
        Object objRememberedValue2;
        int i10;
        Composer composerStartRestartGroup = composer.startRestartGroup(-542290032);
        if ((i & 6) == 0) {
            popupPositionProvider2 = popupPositionProvider;
            i3 = (composerStartRestartGroup.changed(popupPositionProvider2) ? 4 : 2) | i;
        } else {
            popupPositionProvider2 = popupPositionProvider;
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(bm3Var) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= composerStartRestartGroup.changed(basicTooltipState) ? 256 : 128;
        }
        int i11 = i2 & 8;
        if (i11 == 0) {
            if ((i & 3072) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 2048 : 1024;
            }
            i4 = i2 & 16;
            if (i4 != 0) {
                if ((i & 24576) == 0) {
                    z4 = z;
                    if (composerStartRestartGroup.changed(z4)) {
                        i5 = 16384;
                    } else {
                        i5 = 8192;
                    }
                    i3 |= i5;
                }
                i6 = i2 & 32;
                if (i6 != 0) {
                    if ((196608 & i) == 0) {
                        z5 = z2;
                        if (composerStartRestartGroup.changed(z5)) {
                            i7 = 131072;
                        } else {
                            i7 = 65536;
                        }
                        i3 |= i7;
                    }
                    i8 = i2 & 64;
                    if (i8 != 0) {
                        if ((1572864 & i) == 0) {
                            z6 = z3;
                            if (composerStartRestartGroup.changed(z6)) {
                                i9 = 1048576;
                            } else {
                                i9 = 524288;
                            }
                            i3 |= i9;
                        }
                        if ((i & 12582912) == 0) {
                            if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                                i10 = 8388608;
                            } else {
                                i10 = 4194304;
                            }
                            i3 |= i10;
                        }
                        if ((i3 & 4793491) != 4793490) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z7, i3 & 1)) {
                            if (i11 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if (i4 != 0) {
                                z11 = true;
                            } else {
                                z11 = z4;
                            }
                            if (i6 != 0) {
                                z5 = true;
                            }
                            if (i8 != 0) {
                                z6 = false;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-542290032, i3, -1, "androidx.compose.foundation.BasicTooltipBox (BasicTooltip.kt:84)");
                            }
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            companion = Composer.Companion;
                            if (objRememberedValue == companion.getEmpty()) {
                                objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            final y22 y22Var = (y22) objRememberedValue;
                            int i12 = i3;
                            boolean z13 = z11;
                            ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(99800901, true, new bm3() { // from class: ph0
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return BasicTooltipKt.BasicTooltipBox$lambda$0(basicTooltipState, popupPositionProvider2, y22Var, z11, bm3Var, bm3Var2, (Composer) obj, iIntValue);
                                }
                            }, composerStartRestartGroup, 54);
                            int i13 = ((i12 >> 15) & 14) | 24576 | ((i12 >> 3) & 112) | ((i12 >> 12) & 896) | (i12 & 7168);
                            basicTooltipState2 = basicTooltipState;
                            boolean z14 = z5;
                            boolean z15 = z6;
                            Modifier modifier5 = modifier4;
                            WrappedAnchor(z14, basicTooltipState2, z15, modifier5, composableLambdaRememberComposableLambda, composerStartRestartGroup, i13, 0);
                            z12 = (i12 & 896) == 256;
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z12 || objRememberedValue2 == companion.getEmpty()) {
                                objRememberedValue2 = new rh0(basicTooltipState2, 0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            EffectsKt.DisposableEffect(basicTooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue2, composerStartRestartGroup, (i12 >> 6) & 14);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            z9 = z14;
                            z10 = z15;
                            modifier3 = modifier5;
                            composer2 = composerStartRestartGroup;
                            z8 = z13;
                        } else {
                            basicTooltipState2 = basicTooltipState;
                            composerStartRestartGroup.skipToGroupEnd();
                            composer2 = composerStartRestartGroup;
                            modifier3 = modifier2;
                            z8 = z4;
                            z9 = z5;
                            z10 = z6;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            final BasicTooltipState basicTooltipState3 = basicTooltipState2;
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: th0
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return BasicTooltipKt.BasicTooltipBox$lambda$2(popupPositionProvider, bm3Var, basicTooltipState3, modifier3, z8, z9, z10, bm3Var2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 1572864;
                    z6 = z3;
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                            i10 = 8388608;
                        } else {
                            i10 = 4194304;
                        }
                        i3 |= i10;
                    }
                    if ((i3 & 4793491) != 4793490) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z7, i3 & 1)) {
                        if (i11 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            z11 = true;
                        } else {
                            z11 = z4;
                        }
                        if (i6 != 0) {
                            z5 = true;
                        }
                        if (i8 != 0) {
                            z6 = false;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-542290032, i3, -1, "androidx.compose.foundation.BasicTooltipBox (BasicTooltip.kt:84)");
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        final y22 y22Var2 = (y22) objRememberedValue;
                        int i14 = i3;
                        boolean z16 = z11;
                        ComposableLambda composableLambdaRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(99800901, true, new bm3() { // from class: ph0
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return BasicTooltipKt.BasicTooltipBox$lambda$0(basicTooltipState, popupPositionProvider2, y22Var2, z11, bm3Var, bm3Var2, (Composer) obj, iIntValue);
                            }
                        }, composerStartRestartGroup, 54);
                        int i15 = ((i14 >> 15) & 14) | 24576 | ((i14 >> 3) & 112) | ((i14 >> 12) & 896) | (i14 & 7168);
                        basicTooltipState2 = basicTooltipState;
                        boolean z17 = z5;
                        boolean z18 = z6;
                        Modifier modifier6 = modifier4;
                        WrappedAnchor(z17, basicTooltipState2, z18, modifier6, composableLambdaRememberComposableLambda2, composerStartRestartGroup, i15, 0);
                        if ((i14 & 896) == 256) {
                        }
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z12) {
                            objRememberedValue2 = new rh0(basicTooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new rh0(basicTooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        EffectsKt.DisposableEffect(basicTooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue2, composerStartRestartGroup, (i14 >> 6) & 14);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z9 = z17;
                        z10 = z18;
                        modifier3 = modifier6;
                        composer2 = composerStartRestartGroup;
                        z8 = z16;
                    } else {
                        basicTooltipState2 = basicTooltipState;
                        composerStartRestartGroup.skipToGroupEnd();
                        composer2 = composerStartRestartGroup;
                        modifier3 = modifier2;
                        z8 = z4;
                        z9 = z5;
                        z10 = z6;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        final BasicTooltipState basicTooltipState4 = basicTooltipState2;
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: th0
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return BasicTooltipKt.BasicTooltipBox$lambda$2(popupPositionProvider, bm3Var, basicTooltipState4, modifier3, z8, z9, z10, bm3Var2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                z5 = z2;
                i8 = i2 & 64;
                if (i8 != 0) {
                    if ((1572864 & i) == 0) {
                        z6 = z3;
                        if (composerStartRestartGroup.changed(z6)) {
                            i9 = 1048576;
                        } else {
                            i9 = 524288;
                        }
                        i3 |= i9;
                    }
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                            i10 = 8388608;
                        } else {
                            i10 = 4194304;
                        }
                        i3 |= i10;
                    }
                    if ((i3 & 4793491) != 4793490) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z7, i3 & 1)) {
                        if (i11 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            z11 = true;
                        } else {
                            z11 = z4;
                        }
                        if (i6 != 0) {
                            z5 = true;
                        }
                        if (i8 != 0) {
                            z6 = false;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-542290032, i3, -1, "androidx.compose.foundation.BasicTooltipBox (BasicTooltip.kt:84)");
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        final y22 y22Var3 = (y22) objRememberedValue;
                        int i16 = i3;
                        boolean z19 = z11;
                        ComposableLambda composableLambdaRememberComposableLambda3 = ComposableLambdaKt.rememberComposableLambda(99800901, true, new bm3() { // from class: ph0
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return BasicTooltipKt.BasicTooltipBox$lambda$0(basicTooltipState, popupPositionProvider2, y22Var3, z11, bm3Var, bm3Var2, (Composer) obj, iIntValue);
                            }
                        }, composerStartRestartGroup, 54);
                        int i17 = ((i16 >> 15) & 14) | 24576 | ((i16 >> 3) & 112) | ((i16 >> 12) & 896) | (i16 & 7168);
                        basicTooltipState2 = basicTooltipState;
                        boolean z110 = z5;
                        boolean z111 = z6;
                        Modifier modifier7 = modifier4;
                        WrappedAnchor(z110, basicTooltipState2, z111, modifier7, composableLambdaRememberComposableLambda3, composerStartRestartGroup, i17, 0);
                        if ((i16 & 896) == 256) {
                        }
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z12) {
                            objRememberedValue2 = new rh0(basicTooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new rh0(basicTooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        EffectsKt.DisposableEffect(basicTooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue2, composerStartRestartGroup, (i16 >> 6) & 14);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z9 = z110;
                        z10 = z111;
                        modifier3 = modifier7;
                        composer2 = composerStartRestartGroup;
                        z8 = z19;
                    } else {
                        basicTooltipState2 = basicTooltipState;
                        composerStartRestartGroup.skipToGroupEnd();
                        composer2 = composerStartRestartGroup;
                        modifier3 = modifier2;
                        z8 = z4;
                        z9 = z5;
                        z10 = z6;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        final BasicTooltipState basicTooltipState5 = basicTooltipState2;
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: th0
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return BasicTooltipKt.BasicTooltipBox$lambda$2(popupPositionProvider, bm3Var, basicTooltipState5, modifier3, z8, z9, z10, bm3Var2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                z6 = z3;
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        i10 = 8388608;
                    } else {
                        i10 = 4194304;
                    }
                    i3 |= i10;
                }
                if ((i3 & 4793491) != 4793490) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z7, i3 & 1)) {
                    if (i11 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z11 = true;
                    } else {
                        z11 = z4;
                    }
                    if (i6 != 0) {
                        z5 = true;
                    }
                    if (i8 != 0) {
                        z6 = false;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-542290032, i3, -1, "androidx.compose.foundation.BasicTooltipBox (BasicTooltip.kt:84)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    final y22 y22Var4 = (y22) objRememberedValue;
                    int i18 = i3;
                    boolean z112 = z11;
                    ComposableLambda composableLambdaRememberComposableLambda4 = ComposableLambdaKt.rememberComposableLambda(99800901, true, new bm3() { // from class: ph0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BasicTooltipKt.BasicTooltipBox$lambda$0(basicTooltipState, popupPositionProvider2, y22Var4, z11, bm3Var, bm3Var2, (Composer) obj, iIntValue);
                        }
                    }, composerStartRestartGroup, 54);
                    int i19 = ((i18 >> 15) & 14) | 24576 | ((i18 >> 3) & 112) | ((i18 >> 12) & 896) | (i18 & 7168);
                    basicTooltipState2 = basicTooltipState;
                    boolean z113 = z5;
                    boolean z114 = z6;
                    Modifier modifier8 = modifier4;
                    WrappedAnchor(z113, basicTooltipState2, z114, modifier8, composableLambdaRememberComposableLambda4, composerStartRestartGroup, i19, 0);
                    if ((i18 & 896) == 256) {
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z12) {
                        objRememberedValue2 = new rh0(basicTooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new rh0(basicTooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    EffectsKt.DisposableEffect(basicTooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue2, composerStartRestartGroup, (i18 >> 6) & 14);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z9 = z113;
                    z10 = z114;
                    modifier3 = modifier8;
                    composer2 = composerStartRestartGroup;
                    z8 = z112;
                } else {
                    basicTooltipState2 = basicTooltipState;
                    composerStartRestartGroup.skipToGroupEnd();
                    composer2 = composerStartRestartGroup;
                    modifier3 = modifier2;
                    z8 = z4;
                    z9 = z5;
                    z10 = z6;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final BasicTooltipState basicTooltipState6 = basicTooltipState2;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: th0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BasicTooltipKt.BasicTooltipBox$lambda$2(popupPositionProvider, bm3Var, basicTooltipState6, modifier3, z8, z9, z10, bm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            z4 = z;
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    z5 = z2;
                    if (composerStartRestartGroup.changed(z5)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 64;
                if (i8 != 0) {
                    if ((1572864 & i) == 0) {
                        z6 = z3;
                        if (composerStartRestartGroup.changed(z6)) {
                            i9 = 1048576;
                        } else {
                            i9 = 524288;
                        }
                        i3 |= i9;
                    }
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                            i10 = 8388608;
                        } else {
                            i10 = 4194304;
                        }
                        i3 |= i10;
                    }
                    if ((i3 & 4793491) != 4793490) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z7, i3 & 1)) {
                        if (i11 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            z11 = true;
                        } else {
                            z11 = z4;
                        }
                        if (i6 != 0) {
                            z5 = true;
                        }
                        if (i8 != 0) {
                            z6 = false;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-542290032, i3, -1, "androidx.compose.foundation.BasicTooltipBox (BasicTooltip.kt:84)");
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        final y22 y22Var5 = (y22) objRememberedValue;
                        int i110 = i3;
                        boolean z115 = z11;
                        ComposableLambda composableLambdaRememberComposableLambda5 = ComposableLambdaKt.rememberComposableLambda(99800901, true, new bm3() { // from class: ph0
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return BasicTooltipKt.BasicTooltipBox$lambda$0(basicTooltipState, popupPositionProvider2, y22Var5, z11, bm3Var, bm3Var2, (Composer) obj, iIntValue);
                            }
                        }, composerStartRestartGroup, 54);
                        int i111 = ((i110 >> 15) & 14) | 24576 | ((i110 >> 3) & 112) | ((i110 >> 12) & 896) | (i110 & 7168);
                        basicTooltipState2 = basicTooltipState;
                        boolean z116 = z5;
                        boolean z117 = z6;
                        Modifier modifier9 = modifier4;
                        WrappedAnchor(z116, basicTooltipState2, z117, modifier9, composableLambdaRememberComposableLambda5, composerStartRestartGroup, i111, 0);
                        if ((i110 & 896) == 256) {
                        }
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z12) {
                            objRememberedValue2 = new rh0(basicTooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new rh0(basicTooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        EffectsKt.DisposableEffect(basicTooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue2, composerStartRestartGroup, (i110 >> 6) & 14);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z9 = z116;
                        z10 = z117;
                        modifier3 = modifier9;
                        composer2 = composerStartRestartGroup;
                        z8 = z115;
                    } else {
                        basicTooltipState2 = basicTooltipState;
                        composerStartRestartGroup.skipToGroupEnd();
                        composer2 = composerStartRestartGroup;
                        modifier3 = modifier2;
                        z8 = z4;
                        z9 = z5;
                        z10 = z6;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        final BasicTooltipState basicTooltipState7 = basicTooltipState2;
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: th0
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return BasicTooltipKt.BasicTooltipBox$lambda$2(popupPositionProvider, bm3Var, basicTooltipState7, modifier3, z8, z9, z10, bm3Var2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                z6 = z3;
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        i10 = 8388608;
                    } else {
                        i10 = 4194304;
                    }
                    i3 |= i10;
                }
                if ((i3 & 4793491) != 4793490) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z7, i3 & 1)) {
                    if (i11 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z11 = true;
                    } else {
                        z11 = z4;
                    }
                    if (i6 != 0) {
                        z5 = true;
                    }
                    if (i8 != 0) {
                        z6 = false;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-542290032, i3, -1, "androidx.compose.foundation.BasicTooltipBox (BasicTooltip.kt:84)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    final y22 y22Var6 = (y22) objRememberedValue;
                    int i112 = i3;
                    boolean z118 = z11;
                    ComposableLambda composableLambdaRememberComposableLambda6 = ComposableLambdaKt.rememberComposableLambda(99800901, true, new bm3() { // from class: ph0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BasicTooltipKt.BasicTooltipBox$lambda$0(basicTooltipState, popupPositionProvider2, y22Var6, z11, bm3Var, bm3Var2, (Composer) obj, iIntValue);
                        }
                    }, composerStartRestartGroup, 54);
                    int i113 = ((i112 >> 15) & 14) | 24576 | ((i112 >> 3) & 112) | ((i112 >> 12) & 896) | (i112 & 7168);
                    basicTooltipState2 = basicTooltipState;
                    boolean z119 = z5;
                    boolean z1110 = z6;
                    Modifier modifier10 = modifier4;
                    WrappedAnchor(z119, basicTooltipState2, z1110, modifier10, composableLambdaRememberComposableLambda6, composerStartRestartGroup, i113, 0);
                    if ((i112 & 896) == 256) {
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z12) {
                        objRememberedValue2 = new rh0(basicTooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new rh0(basicTooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    EffectsKt.DisposableEffect(basicTooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue2, composerStartRestartGroup, (i112 >> 6) & 14);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z9 = z119;
                    z10 = z1110;
                    modifier3 = modifier10;
                    composer2 = composerStartRestartGroup;
                    z8 = z118;
                } else {
                    basicTooltipState2 = basicTooltipState;
                    composerStartRestartGroup.skipToGroupEnd();
                    composer2 = composerStartRestartGroup;
                    modifier3 = modifier2;
                    z8 = z4;
                    z9 = z5;
                    z10 = z6;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final BasicTooltipState basicTooltipState8 = basicTooltipState2;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: th0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BasicTooltipKt.BasicTooltipBox$lambda$2(popupPositionProvider, bm3Var, basicTooltipState8, modifier3, z8, z9, z10, bm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            z5 = z2;
            i8 = i2 & 64;
            if (i8 != 0) {
                if ((1572864 & i) == 0) {
                    z6 = z3;
                    if (composerStartRestartGroup.changed(z6)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        i10 = 8388608;
                    } else {
                        i10 = 4194304;
                    }
                    i3 |= i10;
                }
                if ((i3 & 4793491) != 4793490) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z7, i3 & 1)) {
                    if (i11 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z11 = true;
                    } else {
                        z11 = z4;
                    }
                    if (i6 != 0) {
                        z5 = true;
                    }
                    if (i8 != 0) {
                        z6 = false;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-542290032, i3, -1, "androidx.compose.foundation.BasicTooltipBox (BasicTooltip.kt:84)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    final y22 y22Var7 = (y22) objRememberedValue;
                    int i114 = i3;
                    boolean z1111 = z11;
                    ComposableLambda composableLambdaRememberComposableLambda7 = ComposableLambdaKt.rememberComposableLambda(99800901, true, new bm3() { // from class: ph0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BasicTooltipKt.BasicTooltipBox$lambda$0(basicTooltipState, popupPositionProvider2, y22Var7, z11, bm3Var, bm3Var2, (Composer) obj, iIntValue);
                        }
                    }, composerStartRestartGroup, 54);
                    int i115 = ((i114 >> 15) & 14) | 24576 | ((i114 >> 3) & 112) | ((i114 >> 12) & 896) | (i114 & 7168);
                    basicTooltipState2 = basicTooltipState;
                    boolean z1112 = z5;
                    boolean z1113 = z6;
                    Modifier modifier11 = modifier4;
                    WrappedAnchor(z1112, basicTooltipState2, z1113, modifier11, composableLambdaRememberComposableLambda7, composerStartRestartGroup, i115, 0);
                    if ((i114 & 896) == 256) {
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z12) {
                        objRememberedValue2 = new rh0(basicTooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new rh0(basicTooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    EffectsKt.DisposableEffect(basicTooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue2, composerStartRestartGroup, (i114 >> 6) & 14);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z9 = z1112;
                    z10 = z1113;
                    modifier3 = modifier11;
                    composer2 = composerStartRestartGroup;
                    z8 = z1111;
                } else {
                    basicTooltipState2 = basicTooltipState;
                    composerStartRestartGroup.skipToGroupEnd();
                    composer2 = composerStartRestartGroup;
                    modifier3 = modifier2;
                    z8 = z4;
                    z9 = z5;
                    z10 = z6;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final BasicTooltipState basicTooltipState9 = basicTooltipState2;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: th0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BasicTooltipKt.BasicTooltipBox$lambda$2(popupPositionProvider, bm3Var, basicTooltipState9, modifier3, z8, z9, z10, bm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 1572864;
            z6 = z3;
            if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    i10 = 8388608;
                } else {
                    i10 = 4194304;
                }
                i3 |= i10;
            }
            if ((i3 & 4793491) != 4793490) {
                z7 = true;
            } else {
                z7 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z7, i3 & 1)) {
                if (i11 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    z11 = true;
                } else {
                    z11 = z4;
                }
                if (i6 != 0) {
                    z5 = true;
                }
                if (i8 != 0) {
                    z6 = false;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-542290032, i3, -1, "androidx.compose.foundation.BasicTooltipBox (BasicTooltip.kt:84)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                final y22 y22Var8 = (y22) objRememberedValue;
                int i116 = i3;
                boolean z1114 = z11;
                ComposableLambda composableLambdaRememberComposableLambda8 = ComposableLambdaKt.rememberComposableLambda(99800901, true, new bm3() { // from class: ph0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return BasicTooltipKt.BasicTooltipBox$lambda$0(basicTooltipState, popupPositionProvider2, y22Var8, z11, bm3Var, bm3Var2, (Composer) obj, iIntValue);
                    }
                }, composerStartRestartGroup, 54);
                int i117 = ((i116 >> 15) & 14) | 24576 | ((i116 >> 3) & 112) | ((i116 >> 12) & 896) | (i116 & 7168);
                basicTooltipState2 = basicTooltipState;
                boolean z1115 = z5;
                boolean z1116 = z6;
                Modifier modifier12 = modifier4;
                WrappedAnchor(z1115, basicTooltipState2, z1116, modifier12, composableLambdaRememberComposableLambda8, composerStartRestartGroup, i117, 0);
                if ((i116 & 896) == 256) {
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z12) {
                    objRememberedValue2 = new rh0(basicTooltipState2, 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = new rh0(basicTooltipState2, 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                EffectsKt.DisposableEffect(basicTooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue2, composerStartRestartGroup, (i116 >> 6) & 14);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z9 = z1115;
                z10 = z1116;
                modifier3 = modifier12;
                composer2 = composerStartRestartGroup;
                z8 = z1114;
            } else {
                basicTooltipState2 = basicTooltipState;
                composerStartRestartGroup.skipToGroupEnd();
                composer2 = composerStartRestartGroup;
                modifier3 = modifier2;
                z8 = z4;
                z9 = z5;
                z10 = z6;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final BasicTooltipState basicTooltipState10 = basicTooltipState2;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: th0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return BasicTooltipKt.BasicTooltipBox$lambda$2(popupPositionProvider, bm3Var, basicTooltipState10, modifier3, z8, z9, z10, bm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        modifier2 = modifier;
        i4 = i2 & 16;
        if (i4 != 0) {
            if ((i & 24576) == 0) {
                z4 = z;
                if (composerStartRestartGroup.changed(z4)) {
                    i5 = 16384;
                } else {
                    i5 = 8192;
                }
                i3 |= i5;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    z5 = z2;
                    if (composerStartRestartGroup.changed(z5)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 64;
                if (i8 != 0) {
                    if ((1572864 & i) == 0) {
                        z6 = z3;
                        if (composerStartRestartGroup.changed(z6)) {
                            i9 = 1048576;
                        } else {
                            i9 = 524288;
                        }
                        i3 |= i9;
                    }
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                            i10 = 8388608;
                        } else {
                            i10 = 4194304;
                        }
                        i3 |= i10;
                    }
                    if ((i3 & 4793491) != 4793490) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z7, i3 & 1)) {
                        if (i11 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            z11 = true;
                        } else {
                            z11 = z4;
                        }
                        if (i6 != 0) {
                            z5 = true;
                        }
                        if (i8 != 0) {
                            z6 = false;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-542290032, i3, -1, "androidx.compose.foundation.BasicTooltipBox (BasicTooltip.kt:84)");
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        final y22 y22Var9 = (y22) objRememberedValue;
                        int i118 = i3;
                        boolean z1117 = z11;
                        ComposableLambda composableLambdaRememberComposableLambda9 = ComposableLambdaKt.rememberComposableLambda(99800901, true, new bm3() { // from class: ph0
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return BasicTooltipKt.BasicTooltipBox$lambda$0(basicTooltipState, popupPositionProvider2, y22Var9, z11, bm3Var, bm3Var2, (Composer) obj, iIntValue);
                            }
                        }, composerStartRestartGroup, 54);
                        int i119 = ((i118 >> 15) & 14) | 24576 | ((i118 >> 3) & 112) | ((i118 >> 12) & 896) | (i118 & 7168);
                        basicTooltipState2 = basicTooltipState;
                        boolean z1118 = z5;
                        boolean z1119 = z6;
                        Modifier modifier13 = modifier4;
                        WrappedAnchor(z1118, basicTooltipState2, z1119, modifier13, composableLambdaRememberComposableLambda9, composerStartRestartGroup, i119, 0);
                        if ((i118 & 896) == 256) {
                        }
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z12) {
                            objRememberedValue2 = new rh0(basicTooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new rh0(basicTooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        EffectsKt.DisposableEffect(basicTooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue2, composerStartRestartGroup, (i118 >> 6) & 14);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z9 = z1118;
                        z10 = z1119;
                        modifier3 = modifier13;
                        composer2 = composerStartRestartGroup;
                        z8 = z1117;
                    } else {
                        basicTooltipState2 = basicTooltipState;
                        composerStartRestartGroup.skipToGroupEnd();
                        composer2 = composerStartRestartGroup;
                        modifier3 = modifier2;
                        z8 = z4;
                        z9 = z5;
                        z10 = z6;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        final BasicTooltipState basicTooltipState11 = basicTooltipState2;
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: th0
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return BasicTooltipKt.BasicTooltipBox$lambda$2(popupPositionProvider, bm3Var, basicTooltipState11, modifier3, z8, z9, z10, bm3Var2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                z6 = z3;
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        i10 = 8388608;
                    } else {
                        i10 = 4194304;
                    }
                    i3 |= i10;
                }
                if ((i3 & 4793491) != 4793490) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z7, i3 & 1)) {
                    if (i11 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z11 = true;
                    } else {
                        z11 = z4;
                    }
                    if (i6 != 0) {
                        z5 = true;
                    }
                    if (i8 != 0) {
                        z6 = false;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-542290032, i3, -1, "androidx.compose.foundation.BasicTooltipBox (BasicTooltip.kt:84)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    final y22 y22Var10 = (y22) objRememberedValue;
                    int i1110 = i3;
                    boolean z11110 = z11;
                    ComposableLambda composableLambdaRememberComposableLambda10 = ComposableLambdaKt.rememberComposableLambda(99800901, true, new bm3() { // from class: ph0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BasicTooltipKt.BasicTooltipBox$lambda$0(basicTooltipState, popupPositionProvider2, y22Var10, z11, bm3Var, bm3Var2, (Composer) obj, iIntValue);
                        }
                    }, composerStartRestartGroup, 54);
                    int i1111 = ((i1110 >> 15) & 14) | 24576 | ((i1110 >> 3) & 112) | ((i1110 >> 12) & 896) | (i1110 & 7168);
                    basicTooltipState2 = basicTooltipState;
                    boolean z11111 = z5;
                    boolean z11112 = z6;
                    Modifier modifier14 = modifier4;
                    WrappedAnchor(z11111, basicTooltipState2, z11112, modifier14, composableLambdaRememberComposableLambda10, composerStartRestartGroup, i1111, 0);
                    if ((i1110 & 896) == 256) {
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z12) {
                        objRememberedValue2 = new rh0(basicTooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new rh0(basicTooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    EffectsKt.DisposableEffect(basicTooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue2, composerStartRestartGroup, (i1110 >> 6) & 14);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z9 = z11111;
                    z10 = z11112;
                    modifier3 = modifier14;
                    composer2 = composerStartRestartGroup;
                    z8 = z11110;
                } else {
                    basicTooltipState2 = basicTooltipState;
                    composerStartRestartGroup.skipToGroupEnd();
                    composer2 = composerStartRestartGroup;
                    modifier3 = modifier2;
                    z8 = z4;
                    z9 = z5;
                    z10 = z6;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final BasicTooltipState basicTooltipState12 = basicTooltipState2;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: th0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BasicTooltipKt.BasicTooltipBox$lambda$2(popupPositionProvider, bm3Var, basicTooltipState12, modifier3, z8, z9, z10, bm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            z5 = z2;
            i8 = i2 & 64;
            if (i8 != 0) {
                if ((1572864 & i) == 0) {
                    z6 = z3;
                    if (composerStartRestartGroup.changed(z6)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        i10 = 8388608;
                    } else {
                        i10 = 4194304;
                    }
                    i3 |= i10;
                }
                if ((i3 & 4793491) != 4793490) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z7, i3 & 1)) {
                    if (i11 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z11 = true;
                    } else {
                        z11 = z4;
                    }
                    if (i6 != 0) {
                        z5 = true;
                    }
                    if (i8 != 0) {
                        z6 = false;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-542290032, i3, -1, "androidx.compose.foundation.BasicTooltipBox (BasicTooltip.kt:84)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    final y22 y22Var11 = (y22) objRememberedValue;
                    int i1112 = i3;
                    boolean z11113 = z11;
                    ComposableLambda composableLambdaRememberComposableLambda11 = ComposableLambdaKt.rememberComposableLambda(99800901, true, new bm3() { // from class: ph0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BasicTooltipKt.BasicTooltipBox$lambda$0(basicTooltipState, popupPositionProvider2, y22Var11, z11, bm3Var, bm3Var2, (Composer) obj, iIntValue);
                        }
                    }, composerStartRestartGroup, 54);
                    int i1113 = ((i1112 >> 15) & 14) | 24576 | ((i1112 >> 3) & 112) | ((i1112 >> 12) & 896) | (i1112 & 7168);
                    basicTooltipState2 = basicTooltipState;
                    boolean z11114 = z5;
                    boolean z11115 = z6;
                    Modifier modifier15 = modifier4;
                    WrappedAnchor(z11114, basicTooltipState2, z11115, modifier15, composableLambdaRememberComposableLambda11, composerStartRestartGroup, i1113, 0);
                    if ((i1112 & 896) == 256) {
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z12) {
                        objRememberedValue2 = new rh0(basicTooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new rh0(basicTooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    EffectsKt.DisposableEffect(basicTooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue2, composerStartRestartGroup, (i1112 >> 6) & 14);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z9 = z11114;
                    z10 = z11115;
                    modifier3 = modifier15;
                    composer2 = composerStartRestartGroup;
                    z8 = z11113;
                } else {
                    basicTooltipState2 = basicTooltipState;
                    composerStartRestartGroup.skipToGroupEnd();
                    composer2 = composerStartRestartGroup;
                    modifier3 = modifier2;
                    z8 = z4;
                    z9 = z5;
                    z10 = z6;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final BasicTooltipState basicTooltipState13 = basicTooltipState2;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: th0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BasicTooltipKt.BasicTooltipBox$lambda$2(popupPositionProvider, bm3Var, basicTooltipState13, modifier3, z8, z9, z10, bm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 1572864;
            z6 = z3;
            if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    i10 = 8388608;
                } else {
                    i10 = 4194304;
                }
                i3 |= i10;
            }
            if ((i3 & 4793491) != 4793490) {
                z7 = true;
            } else {
                z7 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z7, i3 & 1)) {
                if (i11 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    z11 = true;
                } else {
                    z11 = z4;
                }
                if (i6 != 0) {
                    z5 = true;
                }
                if (i8 != 0) {
                    z6 = false;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-542290032, i3, -1, "androidx.compose.foundation.BasicTooltipBox (BasicTooltip.kt:84)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                final y22 y22Var12 = (y22) objRememberedValue;
                int i1114 = i3;
                boolean z11116 = z11;
                ComposableLambda composableLambdaRememberComposableLambda12 = ComposableLambdaKt.rememberComposableLambda(99800901, true, new bm3() { // from class: ph0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return BasicTooltipKt.BasicTooltipBox$lambda$0(basicTooltipState, popupPositionProvider2, y22Var12, z11, bm3Var, bm3Var2, (Composer) obj, iIntValue);
                    }
                }, composerStartRestartGroup, 54);
                int i1115 = ((i1114 >> 15) & 14) | 24576 | ((i1114 >> 3) & 112) | ((i1114 >> 12) & 896) | (i1114 & 7168);
                basicTooltipState2 = basicTooltipState;
                boolean z11117 = z5;
                boolean z11118 = z6;
                Modifier modifier16 = modifier4;
                WrappedAnchor(z11117, basicTooltipState2, z11118, modifier16, composableLambdaRememberComposableLambda12, composerStartRestartGroup, i1115, 0);
                if ((i1114 & 896) == 256) {
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z12) {
                    objRememberedValue2 = new rh0(basicTooltipState2, 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = new rh0(basicTooltipState2, 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                EffectsKt.DisposableEffect(basicTooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue2, composerStartRestartGroup, (i1114 >> 6) & 14);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z9 = z11117;
                z10 = z11118;
                modifier3 = modifier16;
                composer2 = composerStartRestartGroup;
                z8 = z11116;
            } else {
                basicTooltipState2 = basicTooltipState;
                composerStartRestartGroup.skipToGroupEnd();
                composer2 = composerStartRestartGroup;
                modifier3 = modifier2;
                z8 = z4;
                z9 = z5;
                z10 = z6;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final BasicTooltipState basicTooltipState14 = basicTooltipState2;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: th0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return BasicTooltipKt.BasicTooltipBox$lambda$2(popupPositionProvider, bm3Var, basicTooltipState14, modifier3, z8, z9, z10, bm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        z4 = z;
        i6 = i2 & 32;
        if (i6 != 0) {
            if ((196608 & i) == 0) {
                z5 = z2;
                if (composerStartRestartGroup.changed(z5)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i3 |= i7;
            }
            i8 = i2 & 64;
            if (i8 != 0) {
                if ((1572864 & i) == 0) {
                    z6 = z3;
                    if (composerStartRestartGroup.changed(z6)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        i10 = 8388608;
                    } else {
                        i10 = 4194304;
                    }
                    i3 |= i10;
                }
                if ((i3 & 4793491) != 4793490) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z7, i3 & 1)) {
                    if (i11 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z11 = true;
                    } else {
                        z11 = z4;
                    }
                    if (i6 != 0) {
                        z5 = true;
                    }
                    if (i8 != 0) {
                        z6 = false;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-542290032, i3, -1, "androidx.compose.foundation.BasicTooltipBox (BasicTooltip.kt:84)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    final y22 y22Var13 = (y22) objRememberedValue;
                    int i1116 = i3;
                    boolean z11119 = z11;
                    ComposableLambda composableLambdaRememberComposableLambda13 = ComposableLambdaKt.rememberComposableLambda(99800901, true, new bm3() { // from class: ph0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BasicTooltipKt.BasicTooltipBox$lambda$0(basicTooltipState, popupPositionProvider2, y22Var13, z11, bm3Var, bm3Var2, (Composer) obj, iIntValue);
                        }
                    }, composerStartRestartGroup, 54);
                    int i1117 = ((i1116 >> 15) & 14) | 24576 | ((i1116 >> 3) & 112) | ((i1116 >> 12) & 896) | (i1116 & 7168);
                    basicTooltipState2 = basicTooltipState;
                    boolean z111110 = z5;
                    boolean z111111 = z6;
                    Modifier modifier17 = modifier4;
                    WrappedAnchor(z111110, basicTooltipState2, z111111, modifier17, composableLambdaRememberComposableLambda13, composerStartRestartGroup, i1117, 0);
                    if ((i1116 & 896) == 256) {
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z12) {
                        objRememberedValue2 = new rh0(basicTooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new rh0(basicTooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    EffectsKt.DisposableEffect(basicTooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue2, composerStartRestartGroup, (i1116 >> 6) & 14);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z9 = z111110;
                    z10 = z111111;
                    modifier3 = modifier17;
                    composer2 = composerStartRestartGroup;
                    z8 = z11119;
                } else {
                    basicTooltipState2 = basicTooltipState;
                    composerStartRestartGroup.skipToGroupEnd();
                    composer2 = composerStartRestartGroup;
                    modifier3 = modifier2;
                    z8 = z4;
                    z9 = z5;
                    z10 = z6;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final BasicTooltipState basicTooltipState15 = basicTooltipState2;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: th0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BasicTooltipKt.BasicTooltipBox$lambda$2(popupPositionProvider, bm3Var, basicTooltipState15, modifier3, z8, z9, z10, bm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 1572864;
            z6 = z3;
            if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    i10 = 8388608;
                } else {
                    i10 = 4194304;
                }
                i3 |= i10;
            }
            if ((i3 & 4793491) != 4793490) {
                z7 = true;
            } else {
                z7 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z7, i3 & 1)) {
                if (i11 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    z11 = true;
                } else {
                    z11 = z4;
                }
                if (i6 != 0) {
                    z5 = true;
                }
                if (i8 != 0) {
                    z6 = false;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-542290032, i3, -1, "androidx.compose.foundation.BasicTooltipBox (BasicTooltip.kt:84)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                final y22 y22Var14 = (y22) objRememberedValue;
                int i1118 = i3;
                boolean z111112 = z11;
                ComposableLambda composableLambdaRememberComposableLambda14 = ComposableLambdaKt.rememberComposableLambda(99800901, true, new bm3() { // from class: ph0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return BasicTooltipKt.BasicTooltipBox$lambda$0(basicTooltipState, popupPositionProvider2, y22Var14, z11, bm3Var, bm3Var2, (Composer) obj, iIntValue);
                    }
                }, composerStartRestartGroup, 54);
                int i1119 = ((i1118 >> 15) & 14) | 24576 | ((i1118 >> 3) & 112) | ((i1118 >> 12) & 896) | (i1118 & 7168);
                basicTooltipState2 = basicTooltipState;
                boolean z111113 = z5;
                boolean z111114 = z6;
                Modifier modifier18 = modifier4;
                WrappedAnchor(z111113, basicTooltipState2, z111114, modifier18, composableLambdaRememberComposableLambda14, composerStartRestartGroup, i1119, 0);
                if ((i1118 & 896) == 256) {
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z12) {
                    objRememberedValue2 = new rh0(basicTooltipState2, 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = new rh0(basicTooltipState2, 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                EffectsKt.DisposableEffect(basicTooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue2, composerStartRestartGroup, (i1118 >> 6) & 14);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z9 = z111113;
                z10 = z111114;
                modifier3 = modifier18;
                composer2 = composerStartRestartGroup;
                z8 = z111112;
            } else {
                basicTooltipState2 = basicTooltipState;
                composerStartRestartGroup.skipToGroupEnd();
                composer2 = composerStartRestartGroup;
                modifier3 = modifier2;
                z8 = z4;
                z9 = z5;
                z10 = z6;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final BasicTooltipState basicTooltipState16 = basicTooltipState2;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: th0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return BasicTooltipKt.BasicTooltipBox$lambda$2(popupPositionProvider, bm3Var, basicTooltipState16, modifier3, z8, z9, z10, bm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        z5 = z2;
        i8 = i2 & 64;
        if (i8 != 0) {
            if ((1572864 & i) == 0) {
                z6 = z3;
                if (composerStartRestartGroup.changed(z6)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i3 |= i9;
            }
            if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    i10 = 8388608;
                } else {
                    i10 = 4194304;
                }
                i3 |= i10;
            }
            if ((i3 & 4793491) != 4793490) {
                z7 = true;
            } else {
                z7 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z7, i3 & 1)) {
                if (i11 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    z11 = true;
                } else {
                    z11 = z4;
                }
                if (i6 != 0) {
                    z5 = true;
                }
                if (i8 != 0) {
                    z6 = false;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-542290032, i3, -1, "androidx.compose.foundation.BasicTooltipBox (BasicTooltip.kt:84)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                final y22 y22Var15 = (y22) objRememberedValue;
                int i11110 = i3;
                boolean z111115 = z11;
                ComposableLambda composableLambdaRememberComposableLambda15 = ComposableLambdaKt.rememberComposableLambda(99800901, true, new bm3() { // from class: ph0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return BasicTooltipKt.BasicTooltipBox$lambda$0(basicTooltipState, popupPositionProvider2, y22Var15, z11, bm3Var, bm3Var2, (Composer) obj, iIntValue);
                    }
                }, composerStartRestartGroup, 54);
                int i11111 = ((i11110 >> 15) & 14) | 24576 | ((i11110 >> 3) & 112) | ((i11110 >> 12) & 896) | (i11110 & 7168);
                basicTooltipState2 = basicTooltipState;
                boolean z111116 = z5;
                boolean z111117 = z6;
                Modifier modifier19 = modifier4;
                WrappedAnchor(z111116, basicTooltipState2, z111117, modifier19, composableLambdaRememberComposableLambda15, composerStartRestartGroup, i11111, 0);
                if ((i11110 & 896) == 256) {
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z12) {
                    objRememberedValue2 = new rh0(basicTooltipState2, 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = new rh0(basicTooltipState2, 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                EffectsKt.DisposableEffect(basicTooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue2, composerStartRestartGroup, (i11110 >> 6) & 14);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z9 = z111116;
                z10 = z111117;
                modifier3 = modifier19;
                composer2 = composerStartRestartGroup;
                z8 = z111115;
            } else {
                basicTooltipState2 = basicTooltipState;
                composerStartRestartGroup.skipToGroupEnd();
                composer2 = composerStartRestartGroup;
                modifier3 = modifier2;
                z8 = z4;
                z9 = z5;
                z10 = z6;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final BasicTooltipState basicTooltipState17 = basicTooltipState2;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: th0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return BasicTooltipKt.BasicTooltipBox$lambda$2(popupPositionProvider, bm3Var, basicTooltipState17, modifier3, z8, z9, z10, bm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 1572864;
        z6 = z3;
        if ((i & 12582912) == 0) {
            if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                i10 = 8388608;
            } else {
                i10 = 4194304;
            }
            i3 |= i10;
        }
        if ((i3 & 4793491) != 4793490) {
            z7 = true;
        } else {
            z7 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z7, i3 & 1)) {
            if (i11 != 0) {
                modifier4 = Modifier.Companion;
            } else {
                modifier4 = modifier2;
            }
            if (i4 != 0) {
                z11 = true;
            } else {
                z11 = z4;
            }
            if (i6 != 0) {
                z5 = true;
            }
            if (i8 != 0) {
                z6 = false;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-542290032, i3, -1, "androidx.compose.foundation.BasicTooltipBox (BasicTooltip.kt:84)");
            }
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            final y22 y22Var16 = (y22) objRememberedValue;
            int i11112 = i3;
            boolean z111118 = z11;
            ComposableLambda composableLambdaRememberComposableLambda16 = ComposableLambdaKt.rememberComposableLambda(99800901, true, new bm3() { // from class: ph0
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return BasicTooltipKt.BasicTooltipBox$lambda$0(basicTooltipState, popupPositionProvider2, y22Var16, z11, bm3Var, bm3Var2, (Composer) obj, iIntValue);
                }
            }, composerStartRestartGroup, 54);
            int i11113 = ((i11112 >> 15) & 14) | 24576 | ((i11112 >> 3) & 112) | ((i11112 >> 12) & 896) | (i11112 & 7168);
            basicTooltipState2 = basicTooltipState;
            boolean z111119 = z5;
            boolean z1111110 = z6;
            Modifier modifier110 = modifier4;
            WrappedAnchor(z111119, basicTooltipState2, z1111110, modifier110, composableLambdaRememberComposableLambda16, composerStartRestartGroup, i11113, 0);
            if ((i11112 & 896) == 256) {
            }
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (z12) {
                objRememberedValue2 = new rh0(basicTooltipState2, 0);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            } else {
                objRememberedValue2 = new rh0(basicTooltipState2, 0);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            EffectsKt.DisposableEffect(basicTooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue2, composerStartRestartGroup, (i11112 >> 6) & 14);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            z9 = z111119;
            z10 = z1111110;
            modifier3 = modifier110;
            composer2 = composerStartRestartGroup;
            z8 = z111118;
        } else {
            basicTooltipState2 = basicTooltipState;
            composerStartRestartGroup.skipToGroupEnd();
            composer2 = composerStartRestartGroup;
            modifier3 = modifier2;
            z8 = z4;
            z9 = z5;
            z10 = z6;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final BasicTooltipState basicTooltipState18 = basicTooltipState2;
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: th0
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return BasicTooltipKt.BasicTooltipBox$lambda$2(popupPositionProvider, bm3Var, basicTooltipState18, modifier3, z8, z9, z10, bm3Var2, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 BasicTooltipBox$lambda$0(BasicTooltipState basicTooltipState, PopupPositionProvider popupPositionProvider, y22 y22Var, boolean z, bm3 bm3Var, bm3 bm3Var2, Composer composer, int i) {
        if (composer.shouldExecute((i & 3) != 2, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(99800901, i, -1, "androidx.compose.foundation.BasicTooltipBox.<anonymous> (BasicTooltip.kt:92)");
            }
            if (basicTooltipState.isVisible()) {
                composer.startReplaceGroup(1051311053);
                TooltipPopup(popupPositionProvider, basicTooltipState, y22Var, z, bm3Var, composer, 0);
                composer.endReplaceGroup();
            } else {
                composer.startReplaceGroup(1051541693);
                composer.endReplaceGroup();
            }
            bm3Var2.invoke(composer, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisposableEffectResult BasicTooltipBox$lambda$1$0(final BasicTooltipState basicTooltipState, DisposableEffectScope disposableEffectScope) {
        return new DisposableEffectResult() { // from class: androidx.compose.foundation.BasicTooltipKt$BasicTooltipBox$lambda$1$0$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                basicTooltipState.onDispose();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 BasicTooltipBox$lambda$2(PopupPositionProvider popupPositionProvider, bm3 bm3Var, BasicTooltipState basicTooltipState, Modifier modifier, boolean z, boolean z2, boolean z3, bm3 bm3Var2, int i, int i2, Composer composer, int i3) {
        BasicTooltipBox(popupPositionProvider, bm3Var, basicTooltipState, modifier, z, z2, z3, bm3Var2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 BasicTooltipBox$lambda$3(PopupPositionProvider popupPositionProvider, bm3 bm3Var, BasicTooltipState basicTooltipState, Modifier modifier, boolean z, boolean z2, bm3 bm3Var2, int i, int i2, Composer composer, int i3) {
        BasicTooltipBox(popupPositionProvider, bm3Var, basicTooltipState, modifier, z, z2, bm3Var2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    public static final BasicTooltipState BasicTooltipState(boolean z, boolean z2, MutatorMutex mutatorMutex) {
        return new BasicTooltipStateImpl(z, z2, mutatorMutex);
    }

    public static /* synthetic */ BasicTooltipState BasicTooltipState$default(boolean z, boolean z2, MutatorMutex mutatorMutex, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = true;
        }
        if ((i & 4) != 0) {
            mutatorMutex = BasicTooltipDefaults.INSTANCE.getGlobalMutatorMutex();
        }
        return BasicTooltipState(z, z2, mutatorMutex);
    }

    private static final void TooltipPopup(final PopupPositionProvider popupPositionProvider, final BasicTooltipState basicTooltipState, final y22 y22Var, final boolean z, final bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, final int i) {
        PopupPositionProvider popupPositionProvider2;
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1882542163);
        if ((i & 6) == 0) {
            popupPositionProvider2 = popupPositionProvider;
            i2 = (composerStartRestartGroup.changed(popupPositionProvider2) ? 4 : 2) | i;
        } else {
            popupPositionProvider2 = popupPositionProvider;
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(basicTooltipState) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(y22Var) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changed(z) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var) ? 16384 : 8192;
        }
        int i3 = 0;
        if (composerStartRestartGroup.shouldExecute((i2 & 9363) != 9362, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1882542163, i2, -1, "androidx.compose.foundation.TooltipPopup (BasicTooltip.kt:166)");
            }
            final String strDescription = BasicTooltipStrings.INSTANCE.description(composerStartRestartGroup, 6);
            boolean zChangedInstance = ((i2 & 112) == 32) | composerStartRestartGroup.changedInstance(y22Var);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new xh0(i3, basicTooltipState, y22Var);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            AndroidPopup_androidKt.Popup(popupPositionProvider2, (ll3) objRememberedValue, new PopupProperties(z, false, false, false, false, 30, (jh2) null), ComposableLambdaKt.rememberComposableLambda(916917707, true, new bm3() { // from class: zh0
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return BasicTooltipKt.TooltipPopup$lambda$1(strDescription, bm3Var, (Composer) obj, iIntValue);
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, (i2 & 14) | 3072, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ai0
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return BasicTooltipKt.TooltipPopup$lambda$2(popupPositionProvider, basicTooltipState, y22Var, z, bm3Var, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TooltipPopup$lambda$0$0(BasicTooltipState basicTooltipState, y22 y22Var) {
        if (basicTooltipState.isVisible()) {
            av0.c(y22Var, null, null, new BasicTooltipKt$TooltipPopup$1$1$1(basicTooltipState, null), 3);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TooltipPopup$lambda$1(String str, bm3 bm3Var, Composer composer, int i) {
        int i2 = 0;
        if (composer.shouldExecute((i & 3) != 2, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(916917707, i, -1, "androidx.compose.foundation.TooltipPopup.<anonymous> (BasicTooltip.kt:177)");
            }
            Modifier.Companion companion = Modifier.Companion;
            boolean zChanged = composer.changed(str);
            Object objRememberedValue = composer.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new vh0(str, i2);
                composer.updateRememberedValue(objRememberedValue);
            }
            Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(companion, false, (nl3) objRememberedValue, 1, null);
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer, 0));
            CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifierSemantics$default);
            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
            ll3<ComposeUiNode> constructor = companion2.getConstructor();
            if (composer.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composer.startReusableNode();
            if (composer.getInserting()) {
                composer.createNode(constructor);
            } else {
                composer.useNode();
            }
            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer);
            jg.d(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, (bm3<? super T, ? super Modifier, j59>) hm.b(companion2, composerM5355constructorimpl, Integer.valueOf(iHashCode), composerM5355constructorimpl));
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            if (cc.f(bm3Var, composer, 0)) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TooltipPopup$lambda$1$0$0(String str, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.m8279setLiveRegionhR3wRGc(semanticsPropertyReceiver, LiveRegionMode.Companion.m8252getAssertive0phEisY());
        SemanticsPropertiesKt.setPaneTitle(semanticsPropertyReceiver, str);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TooltipPopup$lambda$2(PopupPositionProvider popupPositionProvider, BasicTooltipState basicTooltipState, y22 y22Var, boolean z, bm3 bm3Var, int i, Composer composer, int i2) {
        TooltipPopup(popupPositionProvider, basicTooltipState, y22Var, z, bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x005e  */
    /* JADX WARN: Code duplicated, block: B:39:0x0064  */
    /* JADX WARN: Code duplicated, block: B:40:0x0067  */
    /* JADX WARN: Code duplicated, block: B:44:0x0071  */
    /* JADX WARN: Code duplicated, block: B:45:0x0073  */
    /* JADX WARN: Code duplicated, block: B:48:0x007c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x007e  */
    /* JADX WARN: Code duplicated, block: B:52:0x0087  */
    /* JADX WARN: Code duplicated, block: B:55:0x0099  */
    /* JADX WARN: Code duplicated, block: B:58:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:61:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:62:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:65:0x010a  */
    /* JADX WARN: Code duplicated, block: B:67:0x010f  */
    /* JADX WARN: Code duplicated, block: B:70:0x0119  */
    /* JADX WARN: Code duplicated, block: B:72:? A[RETURN, SYNTHETIC] */
    private static final void WrappedAnchor(final boolean z, final BasicTooltipState basicTooltipState, final boolean z2, Modifier modifier, final bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, final int i, final int i2) {
        int i3;
        Modifier modifier2;
        boolean z3;
        final Modifier modifier3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Object objRememberedValue;
        ll3<ComposeUiNode> constructor;
        int i4;
        Composer composerStartRestartGroup = composer.startRestartGroup(423692761);
        if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(z) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changed(basicTooltipState) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= composerStartRestartGroup.changed(z2) ? 256 : 128;
        }
        int i5 = i2 & 8;
        if (i5 == 0) {
            if ((i & 3072) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 2048 : 1024;
            }
            if ((i & 24576) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var)) {
                    i4 = 16384;
                } else {
                    i4 = 8192;
                }
                i3 |= i4;
            }
            if ((i3 & 9363) != 9362) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                if (i5 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(423692761, i3, -1, "androidx.compose.foundation.WrappedAnchor (BasicTooltip.kt:144)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                Modifier modifierAnchorSemantics = anchorSemantics(handleGestures(modifier2, z, basicTooltipState), BasicTooltipStrings.INSTANCE.label(composerStartRestartGroup, 6), z, basicTooltipState, (y22) objRememberedValue);
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), z2);
                int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierAnchorSemantics);
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
                Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                jg.d(companion, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, (bm3<? super T, ? super Modifier, j59>) hm.b(companion, composerM5355constructorimpl, Integer.valueOf(iHashCode), composerM5355constructorimpl));
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                if (cc.f(bm3Var, composerStartRestartGroup, (i3 >> 12) & 14)) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
            }
            modifier3 = modifier2;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mh0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return BasicTooltipKt.WrappedAnchor$lambda$1(z, basicTooltipState, z2, modifier3, bm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        modifier2 = modifier;
        if ((i & 24576) == 0) {
            if (composerStartRestartGroup.changedInstance(bm3Var)) {
                i4 = 16384;
            } else {
                i4 = 8192;
            }
            i3 |= i4;
        }
        if ((i3 & 9363) != 9362) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
            if (i5 != 0) {
                modifier2 = Modifier.Companion;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(423692761, i3, -1, "androidx.compose.foundation.WrappedAnchor (BasicTooltip.kt:144)");
            }
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            Modifier modifierAnchorSemantics2 = anchorSemantics(handleGestures(modifier2, z, basicTooltipState), BasicTooltipStrings.INSTANCE.label(composerStartRestartGroup, 6), z, basicTooltipState, (y22) objRememberedValue);
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), z2);
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
            CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierAnchorSemantics2);
            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
            constructor = companion2.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
            jg.d(companion2, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl2, currentCompositionLocalMap2);
            Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, (bm3<? super T, ? super Modifier, j59>) hm.b(companion2, composerM5355constructorimpl2, Integer.valueOf(iHashCode2), composerM5355constructorimpl2));
            BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
            if (cc.f(bm3Var, composerStartRestartGroup, (i3 >> 12) & 14)) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        modifier3 = modifier2;
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mh0
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return BasicTooltipKt.WrappedAnchor$lambda$1(z, basicTooltipState, z2, modifier3, bm3Var, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 WrappedAnchor$lambda$1(boolean z, BasicTooltipState basicTooltipState, boolean z2, Modifier modifier, bm3 bm3Var, int i, int i2, Composer composer, int i3) {
        WrappedAnchor(z, basicTooltipState, z2, modifier, bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    private static final Modifier anchorSemantics(Modifier modifier, String str, boolean z, BasicTooltipState basicTooltipState, y22 y22Var) {
        return z ? SemanticsModifierKt.semantics(modifier, true, new lh0(str, y22Var, basicTooltipState, 0)) : modifier;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 anchorSemantics$lambda$0(String str, final y22 y22Var, final BasicTooltipState basicTooltipState, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.onLongClick(semanticsPropertyReceiver, str, new ll3() { // from class: bi0
            @Override // defpackage.ll3
            public final Object invoke() {
                return Boolean.valueOf(BasicTooltipKt.anchorSemantics$lambda$0$0(y22Var, basicTooltipState));
            }
        });
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean anchorSemantics$lambda$0$0(y22 y22Var, BasicTooltipState basicTooltipState) {
        av0.c(y22Var, null, null, new BasicTooltipKt$anchorSemantics$1$1$1(basicTooltipState, null), 3);
        return true;
    }

    private static final Modifier handleGestures(Modifier modifier, boolean z, final BasicTooltipState basicTooltipState) {
        return z ? SuspendingPointerInputFilterKt.pointerInput(SuspendingPointerInputFilterKt.pointerInput(modifier, basicTooltipState, new PointerInputEventHandler() { // from class: androidx.compose.foundation.BasicTooltipKt.handleGestures.1

            /* JADX INFO: renamed from: androidx.compose.foundation.BasicTooltipKt$handleGestures$1$1, reason: invalid class name and collision with other inner class name */
            @bd2(c = "androidx.compose.foundation.BasicTooltipKt$handleGestures$1$1", f = "BasicTooltip.kt", l = {195}, m = "invokeSuspend", v = 1)
            public static final class C00191 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                final /* synthetic */ BasicTooltipState $state;
                final /* synthetic */ PointerInputScope $this_pointerInput;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX INFO: renamed from: androidx.compose.foundation.BasicTooltipKt$handleGestures$1$1$1, reason: invalid class name and collision with other inner class name */
                @bd2(c = "androidx.compose.foundation.BasicTooltipKt$handleGestures$1$1$1", f = "BasicTooltip.kt", l = {199, ComposerKt.compositionLocalMapKey, 208}, m = "invokeSuspend", v = 1)
                public static final class C00201 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
                    final /* synthetic */ y22 $$this$coroutineScope;
                    final /* synthetic */ BasicTooltipState $state;
                    private /* synthetic */ Object L$0;
                    Object L$1;
                    int label;

                    /* JADX INFO: renamed from: androidx.compose.foundation.BasicTooltipKt$handleGestures$1$1$1$1, reason: invalid class name and collision with other inner class name */
                    @bd2(c = "androidx.compose.foundation.BasicTooltipKt$handleGestures$1$1$1$1", f = "BasicTooltip.kt", l = {205}, m = "invokeSuspend", v = 1)
                    public static final class C00211 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                        final /* synthetic */ BasicTooltipState $state;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public C00211(BasicTooltipState basicTooltipState, e02<? super C00211> e02Var) {
                            super(2, e02Var);
                            this.$state = basicTooltipState;
                        }

                        @Override // defpackage.cd0
                        public final e02<j59> create(Object obj, e02<?> e02Var) {
                            return new C00211(this.$state, e02Var);
                        }

                        @Override // defpackage.bm3
                        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                            return ((C00211) create(y22Var, e02Var)).invokeSuspend(j59.a);
                        }

                        @Override // defpackage.cd0
                        public final Object invokeSuspend(Object obj) {
                            a32 a32Var = a32.COROUTINE_SUSPENDED;
                            int i = this.label;
                            if (i == 0) {
                                r57.b(obj);
                                BasicTooltipState basicTooltipState = this.$state;
                                MutatePriority mutatePriority = MutatePriority.UserInput;
                                this.label = 1;
                                if (basicTooltipState.show(mutatePriority, this) == a32Var) {
                                    return a32Var;
                                }
                            } else {
                                if (i != 1) {
                                    ah.f("call to 'resume' before 'invoke' with coroutine");
                                    return null;
                                }
                                r57.b(obj);
                            }
                            return j59.a;
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C00201(y22 y22Var, BasicTooltipState basicTooltipState, e02<? super C00201> e02Var) {
                        super(2, e02Var);
                        this.$$this$coroutineScope = y22Var;
                        this.$state = basicTooltipState;
                    }

                    @Override // defpackage.cd0
                    public final e02<j59> create(Object obj, e02<?> e02Var) {
                        C00201 c00201 = new C00201(this.$$this$coroutineScope, this.$state, e02Var);
                        c00201.L$0 = obj;
                        return c00201;
                    }

                    @Override // defpackage.bm3
                    public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
                        return ((C00201) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
                    }

                    /* JADX WARN: Code duplicated, block: B:26:0x0082  */
                    /* JADX WARN: Code restructure failed: missing block: B:27:0x0098, code lost:
                    
                        if (r13 == r0) goto L28;
                     */
                    @Override // defpackage.cd0
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
                        /*
                            r12 = this;
                            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                            int r1 = r12.label
                            r2 = 3
                            r3 = 2
                            r4 = 0
                            r5 = 1
                            if (r1 == 0) goto L35
                            if (r1 == r5) goto L28
                            if (r1 == r3) goto L1b
                            if (r1 != r2) goto L15
                            defpackage.r57.b(r13)
                            goto L9b
                        L15:
                            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
                            defpackage.ah.f(r12)
                            return r4
                        L1b:
                            java.lang.Object r1 = r12.L$1
                            androidx.compose.ui.input.pointer.PointerEventPass r1 = (androidx.compose.ui.input.pointer.PointerEventPass) r1
                            java.lang.Object r3 = r12.L$0
                            androidx.compose.ui.input.pointer.AwaitPointerEventScope r3 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r3
                            defpackage.r57.b(r13)
                            r9 = r12
                            goto L7c
                        L28:
                            java.lang.Object r1 = r12.L$1
                            androidx.compose.ui.input.pointer.PointerEventPass r1 = (androidx.compose.ui.input.pointer.PointerEventPass) r1
                            java.lang.Object r5 = r12.L$0
                            androidx.compose.ui.input.pointer.AwaitPointerEventScope r5 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r5
                            defpackage.r57.b(r13)
                            r9 = r12
                            goto L52
                        L35:
                            defpackage.r57.b(r13)
                            java.lang.Object r13 = r12.L$0
                            r6 = r13
                            androidx.compose.ui.input.pointer.AwaitPointerEventScope r6 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r6
                            androidx.compose.ui.input.pointer.PointerEventPass r8 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                            r12.L$0 = r6
                            r12.L$1 = r8
                            r12.label = r5
                            r7 = 0
                            r10 = 1
                            r11 = 0
                            r9 = r12
                            java.lang.Object r13 = androidx.compose.foundation.gestures.TapGestureDetectorKt.awaitFirstDown$default(r6, r7, r8, r9, r10, r11)
                            if (r13 != r0) goto L50
                            goto L9a
                        L50:
                            r5 = r6
                            r1 = r8
                        L52:
                            androidx.compose.ui.input.pointer.PointerInputChange r13 = (androidx.compose.ui.input.pointer.PointerInputChange) r13
                            int r12 = r13.m7572getTypeT8wyACA()
                            androidx.compose.ui.input.pointer.PointerType$Companion r13 = androidx.compose.ui.input.pointer.PointerType.Companion
                            int r6 = r13.m7649getTouchT8wyACA()
                            boolean r6 = androidx.compose.ui.input.pointer.PointerType.m7642equalsimpl0(r12, r6)
                            if (r6 != 0) goto L6e
                            int r13 = r13.m7648getStylusT8wyACA()
                            boolean r12 = androidx.compose.ui.input.pointer.PointerType.m7642equalsimpl0(r12, r13)
                            if (r12 == 0) goto Lb4
                        L6e:
                            r9.L$0 = r5
                            r9.L$1 = r1
                            r9.label = r3
                            java.lang.Object r13 = androidx.compose.foundation.gestures.TapGestureDetectorKt.waitForLongPress(r5, r1, r9)
                            if (r13 != r0) goto L7b
                            goto L9a
                        L7b:
                            r3 = r5
                        L7c:
                            androidx.compose.foundation.gestures.LongPressResult r13 = (androidx.compose.foundation.gestures.LongPressResult) r13
                            boolean r12 = r13 instanceof androidx.compose.foundation.gestures.LongPressResult.Success
                            if (r12 == 0) goto Lb4
                            y22 r12 = r9.$$this$coroutineScope
                            androidx.compose.foundation.BasicTooltipKt$handleGestures$1$1$1$1 r13 = new androidx.compose.foundation.BasicTooltipKt$handleGestures$1$1$1$1
                            androidx.compose.foundation.BasicTooltipState r5 = r9.$state
                            r13.<init>(r5, r4)
                            defpackage.av0.c(r12, r4, r4, r13, r2)
                            r9.L$0 = r4
                            r9.L$1 = r4
                            r9.label = r2
                            java.lang.Object r13 = r3.awaitPointerEvent(r1, r9)
                            if (r13 != r0) goto L9b
                        L9a:
                            return r0
                        L9b:
                            androidx.compose.ui.input.pointer.PointerEvent r13 = (androidx.compose.ui.input.pointer.PointerEvent) r13
                            java.util.List r12 = r13.getChanges()
                            int r13 = r12.size()
                            r0 = 0
                        La6:
                            if (r0 >= r13) goto Lb4
                            java.lang.Object r1 = r12.get(r0)
                            androidx.compose.ui.input.pointer.PointerInputChange r1 = (androidx.compose.ui.input.pointer.PointerInputChange) r1
                            r1.consume()
                            int r0 = r0 + 1
                            goto La6
                        Lb4:
                            j59 r12 = defpackage.j59.a
                            return r12
                        */
                        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.BasicTooltipKt.AnonymousClass1.C00191.C00201.invokeSuspend(java.lang.Object):java.lang.Object");
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C00191(PointerInputScope pointerInputScope, BasicTooltipState basicTooltipState, e02<? super C00191> e02Var) {
                    super(2, e02Var);
                    this.$this_pointerInput = pointerInputScope;
                    this.$state = basicTooltipState;
                }

                @Override // defpackage.cd0
                public final e02<j59> create(Object obj, e02<?> e02Var) {
                    C00191 c00191 = new C00191(this.$this_pointerInput, this.$state, e02Var);
                    c00191.L$0 = obj;
                    return c00191;
                }

                @Override // defpackage.bm3
                public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                    return ((C00191) create(y22Var, e02Var)).invokeSuspend(j59.a);
                }

                @Override // defpackage.cd0
                public final Object invokeSuspend(Object obj) {
                    a32 a32Var = a32.COROUTINE_SUSPENDED;
                    int i = this.label;
                    if (i == 0) {
                        r57.b(obj);
                        y22 y22Var = (y22) this.L$0;
                        PointerInputScope pointerInputScope = this.$this_pointerInput;
                        C00201 c00201 = new C00201(y22Var, this.$state, null);
                        this.label = 1;
                        if (ForEachGestureKt.awaitEachGesture(pointerInputScope, c00201, this) == a32Var) {
                            return a32Var;
                        }
                    } else {
                        if (i != 1) {
                            ah.f("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        r57.b(obj);
                    }
                    return j59.a;
                }
            }

            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
            public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
                Object objC = z22.c(new C00191(pointerInputScope, basicTooltipState, null), e02Var);
                return objC == a32.COROUTINE_SUSPENDED ? objC : j59.a;
            }
        }), basicTooltipState, new PointerInputEventHandler() { // from class: androidx.compose.foundation.BasicTooltipKt.handleGestures.2

            /* JADX INFO: renamed from: androidx.compose.foundation.BasicTooltipKt$handleGestures$2$1, reason: invalid class name */
            @bd2(c = "androidx.compose.foundation.BasicTooltipKt$handleGestures$2$1", f = "BasicTooltip.kt", l = {219}, m = "invokeSuspend", v = 1)
            public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                final /* synthetic */ BasicTooltipState $state;
                final /* synthetic */ PointerInputScope $this_pointerInput;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX INFO: renamed from: androidx.compose.foundation.BasicTooltipKt$handleGestures$2$1$1, reason: invalid class name and collision with other inner class name */
                @bd2(c = "androidx.compose.foundation.BasicTooltipKt$handleGestures$2$1$1", f = "BasicTooltip.kt", l = {223}, m = "invokeSuspend", v = 1)
                public static final class C00221 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
                    final /* synthetic */ y22 $$this$coroutineScope;
                    final /* synthetic */ BasicTooltipState $state;
                    private /* synthetic */ Object L$0;
                    Object L$1;
                    int label;

                    /* JADX INFO: renamed from: androidx.compose.foundation.BasicTooltipKt$handleGestures$2$1$1$1, reason: invalid class name and collision with other inner class name */
                    @bd2(c = "androidx.compose.foundation.BasicTooltipKt$handleGestures$2$1$1$1", f = "BasicTooltip.kt", l = {228}, m = "invokeSuspend", v = 1)
                    public static final class C00231 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                        final /* synthetic */ BasicTooltipState $state;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public C00231(BasicTooltipState basicTooltipState, e02<? super C00231> e02Var) {
                            super(2, e02Var);
                            this.$state = basicTooltipState;
                        }

                        @Override // defpackage.cd0
                        public final e02<j59> create(Object obj, e02<?> e02Var) {
                            return new C00231(this.$state, e02Var);
                        }

                        @Override // defpackage.bm3
                        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                            return ((C00231) create(y22Var, e02Var)).invokeSuspend(j59.a);
                        }

                        @Override // defpackage.cd0
                        public final Object invokeSuspend(Object obj) {
                            a32 a32Var = a32.COROUTINE_SUSPENDED;
                            int i = this.label;
                            if (i == 0) {
                                r57.b(obj);
                                BasicTooltipState basicTooltipState = this.$state;
                                MutatePriority mutatePriority = MutatePriority.UserInput;
                                this.label = 1;
                                if (basicTooltipState.show(mutatePriority, this) == a32Var) {
                                    return a32Var;
                                }
                            } else {
                                if (i != 1) {
                                    ah.f("call to 'resume' before 'invoke' with coroutine");
                                    return null;
                                }
                                r57.b(obj);
                            }
                            return j59.a;
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C00221(y22 y22Var, BasicTooltipState basicTooltipState, e02<? super C00221> e02Var) {
                        super(2, e02Var);
                        this.$$this$coroutineScope = y22Var;
                        this.$state = basicTooltipState;
                    }

                    @Override // defpackage.cd0
                    public final e02<j59> create(Object obj, e02<?> e02Var) {
                        C00221 c00221 = new C00221(this.$$this$coroutineScope, this.$state, e02Var);
                        c00221.L$0 = obj;
                        return c00221;
                    }

                    @Override // defpackage.bm3
                    public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
                        return ((C00221) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
                    }

                    /* JADX WARN: Code duplicated, block: B:11:0x0032 A[RETURN] */
                    /* JADX WARN: Code duplicated, block: B:14:0x0050  */
                    /* JADX WARN: Code duplicated, block: B:16:0x0060  */
                    /* JADX WARN: Code duplicated, block: B:17:0x006e  */
                    /* JADX WARN: Code duplicated, block: B:19:0x0078  */
                    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0030 -> B:12:0x0033). Please report as a decompilation issue!!! */
                    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:0:?
                        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
                        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
                        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
                        */
                    @Override // defpackage.cd0
                    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
                        /*
                            r7 = this;
                            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                            int r1 = r7.label
                            r2 = 0
                            r3 = 1
                            if (r1 == 0) goto L1c
                            if (r1 != r3) goto L16
                            java.lang.Object r1 = r7.L$1
                            androidx.compose.ui.input.pointer.PointerEventPass r1 = (androidx.compose.ui.input.pointer.PointerEventPass) r1
                            java.lang.Object r4 = r7.L$0
                            androidx.compose.ui.input.pointer.AwaitPointerEventScope r4 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r4
                            defpackage.r57.b(r8)
                            goto L33
                        L16:
                            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                            defpackage.ah.f(r7)
                            return r2
                        L1c:
                            defpackage.r57.b(r8)
                            java.lang.Object r8 = r7.L$0
                            androidx.compose.ui.input.pointer.AwaitPointerEventScope r8 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r8
                            androidx.compose.ui.input.pointer.PointerEventPass r1 = androidx.compose.ui.input.pointer.PointerEventPass.Main
                            r4 = r8
                        L26:
                            r7.L$0 = r4
                            r7.L$1 = r1
                            r7.label = r3
                            java.lang.Object r8 = r4.awaitPointerEvent(r1, r7)
                            if (r8 != r0) goto L33
                            return r0
                        L33:
                            androidx.compose.ui.input.pointer.PointerEvent r8 = (androidx.compose.ui.input.pointer.PointerEvent) r8
                            java.util.List r5 = r8.getChanges()
                            r6 = 0
                            java.lang.Object r5 = r5.get(r6)
                            androidx.compose.ui.input.pointer.PointerInputChange r5 = (androidx.compose.ui.input.pointer.PointerInputChange) r5
                            int r5 = r5.m7572getTypeT8wyACA()
                            androidx.compose.ui.input.pointer.PointerType$Companion r6 = androidx.compose.ui.input.pointer.PointerType.Companion
                            int r6 = r6.m7647getMouseT8wyACA()
                            boolean r5 = androidx.compose.ui.input.pointer.PointerType.m7642equalsimpl0(r5, r6)
                            if (r5 == 0) goto L26
                            int r8 = r8.m7502getType7fucELk()
                            androidx.compose.ui.input.pointer.PointerEventType$Companion r5 = androidx.compose.ui.input.pointer.PointerEventType.Companion
                            int r6 = r5.m7513getEnter7fucELk()
                            boolean r6 = androidx.compose.ui.input.pointer.PointerEventType.m7509equalsimpl0(r8, r6)
                            if (r6 == 0) goto L6e
                            y22 r8 = r7.$$this$coroutineScope
                            androidx.compose.foundation.BasicTooltipKt$handleGestures$2$1$1$1 r5 = new androidx.compose.foundation.BasicTooltipKt$handleGestures$2$1$1$1
                            androidx.compose.foundation.BasicTooltipState r6 = r7.$state
                            r5.<init>(r6, r2)
                            r6 = 3
                            defpackage.av0.c(r8, r2, r2, r5, r6)
                            goto L26
                        L6e:
                            int r5 = r5.m7514getExit7fucELk()
                            boolean r8 = androidx.compose.ui.input.pointer.PointerEventType.m7509equalsimpl0(r8, r5)
                            if (r8 == 0) goto L26
                            androidx.compose.foundation.BasicTooltipState r8 = r7.$state
                            r8.dismiss()
                            goto L26
                        */
                        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.BasicTooltipKt.AnonymousClass2.AnonymousClass1.C00221.invokeSuspend(java.lang.Object):java.lang.Object");
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass1(PointerInputScope pointerInputScope, BasicTooltipState basicTooltipState, e02<? super AnonymousClass1> e02Var) {
                    super(2, e02Var);
                    this.$this_pointerInput = pointerInputScope;
                    this.$state = basicTooltipState;
                }

                @Override // defpackage.cd0
                public final e02<j59> create(Object obj, e02<?> e02Var) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_pointerInput, this.$state, e02Var);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                }

                @Override // defpackage.bm3
                public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                    return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
                }

                @Override // defpackage.cd0
                public final Object invokeSuspend(Object obj) {
                    a32 a32Var = a32.COROUTINE_SUSPENDED;
                    int i = this.label;
                    if (i == 0) {
                        r57.b(obj);
                        y22 y22Var = (y22) this.L$0;
                        PointerInputScope pointerInputScope = this.$this_pointerInput;
                        C00221 c00221 = new C00221(y22Var, this.$state, null);
                        this.label = 1;
                        if (pointerInputScope.awaitPointerEventScope(c00221, this) == a32Var) {
                            return a32Var;
                        }
                    } else {
                        if (i != 1) {
                            ah.f("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        r57.b(obj);
                    }
                    return j59.a;
                }
            }

            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
            public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
                Object objC = z22.c(new AnonymousClass1(pointerInputScope, basicTooltipState, null), e02Var);
                return objC == a32.COROUTINE_SUSPENDED ? objC : j59.a;
            }
        }) : modifier;
    }

    public static final BasicTooltipState rememberBasicTooltipState(boolean z, boolean z2, MutatorMutex mutatorMutex, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            z = false;
        }
        if ((i2 & 2) != 0) {
            z2 = true;
        }
        if ((i2 & 4) != 0) {
            mutatorMutex = BasicTooltipDefaults.INSTANCE.getGlobalMutatorMutex();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1123859613, i, -1, "androidx.compose.foundation.rememberBasicTooltipState (BasicTooltip.kt:278)");
        }
        boolean z3 = ((((i & 112) ^ 48) > 32 && composer.changed(z2)) || (i & 48) == 32) | ((((i & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && composer.changed(mutatorMutex)) || (i & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
        Object objRememberedValue = composer.rememberedValue();
        if (z3 || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new BasicTooltipStateImpl(z, z2, mutatorMutex);
            composer.updateRememberedValue(objRememberedValue);
        }
        BasicTooltipStateImpl basicTooltipStateImpl = (BasicTooltipStateImpl) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return basicTooltipStateImpl;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0060  */
    /* JADX WARN: Code duplicated, block: B:39:0x0065  */
    /* JADX WARN: Code duplicated, block: B:41:0x0069  */
    /* JADX WARN: Code duplicated, block: B:43:0x0071  */
    /* JADX WARN: Code duplicated, block: B:44:0x0074  */
    /* JADX WARN: Code duplicated, block: B:48:0x007d  */
    /* JADX WARN: Code duplicated, block: B:50:0x0081  */
    /* JADX WARN: Code duplicated, block: B:52:0x0084  */
    /* JADX WARN: Code duplicated, block: B:54:0x008c  */
    /* JADX WARN: Code duplicated, block: B:55:0x008f  */
    /* JADX WARN: Code duplicated, block: B:59:0x0098  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:64:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:68:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:75:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:76:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:78:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:79:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:82:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:85:0x010f  */
    /* JADX WARN: Code duplicated, block: B:87:0x0116  */
    /* JADX WARN: Code duplicated, block: B:90:0x0124  */
    /* JADX WARN: Code duplicated, block: B:92:? A[RETURN, SYNTHETIC] */
    @ul2
    public static final /* synthetic */ void BasicTooltipBox(final PopupPositionProvider popupPositionProvider, final bm3 bm3Var, final BasicTooltipState basicTooltipState, Modifier modifier, boolean z, boolean z2, final bm3 bm3Var2, Composer composer, final int i, final int i2) {
        int i3;
        final Modifier modifier2;
        int i4;
        boolean z3;
        int i5;
        int i6;
        int i7;
        boolean z4;
        Composer composer2;
        final boolean z5;
        final boolean z6;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier3;
        boolean z7;
        boolean z8;
        int i8;
        Composer composerStartRestartGroup = composer.startRestartGroup(196062260);
        if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(popupPositionProvider) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(bm3Var) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= composerStartRestartGroup.changed(basicTooltipState) ? 256 : 128;
        }
        int i9 = i2 & 8;
        if (i9 == 0) {
            if ((i & 3072) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 2048 : 1024;
            }
            i4 = i2 & 16;
            if (i4 != 0) {
                if ((i & 24576) == 0) {
                    z3 = z;
                    if (composerStartRestartGroup.changed(z3)) {
                        i5 = 16384;
                    } else {
                        i5 = 8192;
                    }
                    i3 |= i5;
                }
                i6 = i2 & 32;
                if (i6 != 0) {
                    if ((196608 & i) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i7 = 131072;
                        } else {
                            i7 = 65536;
                        }
                        i3 |= i7;
                    }
                    if ((i & 1572864) != 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                            i8 = 1048576;
                        } else {
                            i8 = 524288;
                        }
                        i3 |= i8;
                    }
                    if ((599187 & i3) != 599186) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        if (i9 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i4 != 0) {
                            z7 = true;
                        } else {
                            z7 = z3;
                        }
                        if (i6 != 0) {
                            z8 = true;
                        } else {
                            z8 = z2;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(196062260, i3, -1, "androidx.compose.foundation.BasicTooltipBox (BasicTooltip.kt:123)");
                        }
                        composer2 = composerStartRestartGroup;
                        BasicTooltipBox(popupPositionProvider, bm3Var, basicTooltipState, modifier3, z7, z8, false, bm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier3;
                        z5 = z7;
                        z6 = z8;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        z5 = z3;
                        z6 = z2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kh0
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return BasicTooltipKt.BasicTooltipBox$lambda$3(popupPositionProvider, bm3Var, basicTooltipState, modifier2, z5, z6, bm3Var2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                if ((i & 1572864) != 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        i8 = 1048576;
                    } else {
                        i8 = 524288;
                    }
                    i3 |= i8;
                }
                if ((599187 & i3) != 599186) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    if (i9 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i4 != 0) {
                        z7 = true;
                    } else {
                        z7 = z3;
                    }
                    if (i6 != 0) {
                        z8 = true;
                    } else {
                        z8 = z2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(196062260, i3, -1, "androidx.compose.foundation.BasicTooltipBox (BasicTooltip.kt:123)");
                    }
                    composer2 = composerStartRestartGroup;
                    BasicTooltipBox(popupPositionProvider, bm3Var, basicTooltipState, modifier3, z7, z8, false, bm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    z5 = z7;
                    z6 = z8;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z5 = z3;
                    z6 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kh0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BasicTooltipKt.BasicTooltipBox$lambda$3(popupPositionProvider, bm3Var, basicTooltipState, modifier2, z5, z6, bm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            z3 = z;
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                if ((i & 1572864) != 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        i8 = 1048576;
                    } else {
                        i8 = 524288;
                    }
                    i3 |= i8;
                }
                if ((599187 & i3) != 599186) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    if (i9 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i4 != 0) {
                        z7 = true;
                    } else {
                        z7 = z3;
                    }
                    if (i6 != 0) {
                        z8 = true;
                    } else {
                        z8 = z2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(196062260, i3, -1, "androidx.compose.foundation.BasicTooltipBox (BasicTooltip.kt:123)");
                    }
                    composer2 = composerStartRestartGroup;
                    BasicTooltipBox(popupPositionProvider, bm3Var, basicTooltipState, modifier3, z7, z8, false, bm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    z5 = z7;
                    z6 = z8;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z5 = z3;
                    z6 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kh0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BasicTooltipKt.BasicTooltipBox$lambda$3(popupPositionProvider, bm3Var, basicTooltipState, modifier2, z5, z6, bm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            if ((i & 1572864) != 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    i8 = 1048576;
                } else {
                    i8 = 524288;
                }
                i3 |= i8;
            }
            if ((599187 & i3) != 599186) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                if (i9 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i4 != 0) {
                    z7 = true;
                } else {
                    z7 = z3;
                }
                if (i6 != 0) {
                    z8 = true;
                } else {
                    z8 = z2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(196062260, i3, -1, "androidx.compose.foundation.BasicTooltipBox (BasicTooltip.kt:123)");
                }
                composer2 = composerStartRestartGroup;
                BasicTooltipBox(popupPositionProvider, bm3Var, basicTooltipState, modifier3, z7, z8, false, bm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier3;
                z5 = z7;
                z6 = z8;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                z5 = z3;
                z6 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kh0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return BasicTooltipKt.BasicTooltipBox$lambda$3(popupPositionProvider, bm3Var, basicTooltipState, modifier2, z5, z6, bm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        modifier2 = modifier;
        i4 = i2 & 16;
        if (i4 != 0) {
            if ((i & 24576) == 0) {
                z3 = z;
                if (composerStartRestartGroup.changed(z3)) {
                    i5 = 16384;
                } else {
                    i5 = 8192;
                }
                i3 |= i5;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                if ((i & 1572864) != 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        i8 = 1048576;
                    } else {
                        i8 = 524288;
                    }
                    i3 |= i8;
                }
                if ((599187 & i3) != 599186) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    if (i9 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i4 != 0) {
                        z7 = true;
                    } else {
                        z7 = z3;
                    }
                    if (i6 != 0) {
                        z8 = true;
                    } else {
                        z8 = z2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(196062260, i3, -1, "androidx.compose.foundation.BasicTooltipBox (BasicTooltip.kt:123)");
                    }
                    composer2 = composerStartRestartGroup;
                    BasicTooltipBox(popupPositionProvider, bm3Var, basicTooltipState, modifier3, z7, z8, false, bm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    z5 = z7;
                    z6 = z8;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z5 = z3;
                    z6 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kh0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BasicTooltipKt.BasicTooltipBox$lambda$3(popupPositionProvider, bm3Var, basicTooltipState, modifier2, z5, z6, bm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            if ((i & 1572864) != 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    i8 = 1048576;
                } else {
                    i8 = 524288;
                }
                i3 |= i8;
            }
            if ((599187 & i3) != 599186) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                if (i9 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i4 != 0) {
                    z7 = true;
                } else {
                    z7 = z3;
                }
                if (i6 != 0) {
                    z8 = true;
                } else {
                    z8 = z2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(196062260, i3, -1, "androidx.compose.foundation.BasicTooltipBox (BasicTooltip.kt:123)");
                }
                composer2 = composerStartRestartGroup;
                BasicTooltipBox(popupPositionProvider, bm3Var, basicTooltipState, modifier3, z7, z8, false, bm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier3;
                z5 = z7;
                z6 = z8;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                z5 = z3;
                z6 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kh0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return BasicTooltipKt.BasicTooltipBox$lambda$3(popupPositionProvider, bm3Var, basicTooltipState, modifier2, z5, z6, bm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        z3 = z;
        i6 = i2 & 32;
        if (i6 != 0) {
            if ((196608 & i) == 0) {
                if (composerStartRestartGroup.changed(z2)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i3 |= i7;
            }
            if ((i & 1572864) != 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    i8 = 1048576;
                } else {
                    i8 = 524288;
                }
                i3 |= i8;
            }
            if ((599187 & i3) != 599186) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                if (i9 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i4 != 0) {
                    z7 = true;
                } else {
                    z7 = z3;
                }
                if (i6 != 0) {
                    z8 = true;
                } else {
                    z8 = z2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(196062260, i3, -1, "androidx.compose.foundation.BasicTooltipBox (BasicTooltip.kt:123)");
                }
                composer2 = composerStartRestartGroup;
                BasicTooltipBox(popupPositionProvider, bm3Var, basicTooltipState, modifier3, z7, z8, false, bm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier3;
                z5 = z7;
                z6 = z8;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                z5 = z3;
                z6 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kh0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return BasicTooltipKt.BasicTooltipBox$lambda$3(popupPositionProvider, bm3Var, basicTooltipState, modifier2, z5, z6, bm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        if ((i & 1572864) != 0) {
            if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                i8 = 1048576;
            } else {
                i8 = 524288;
            }
            i3 |= i8;
        }
        if ((599187 & i3) != 599186) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
            if (i9 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i4 != 0) {
                z7 = true;
            } else {
                z7 = z3;
            }
            if (i6 != 0) {
                z8 = true;
            } else {
                z8 = z2;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(196062260, i3, -1, "androidx.compose.foundation.BasicTooltipBox (BasicTooltip.kt:123)");
            }
            composer2 = composerStartRestartGroup;
            BasicTooltipBox(popupPositionProvider, bm3Var, basicTooltipState, modifier3, z7, z8, false, bm3Var2, composer2, (i3 & 14) | 1572864 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | ((i3 << 3) & 29360128), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier2 = modifier3;
            z5 = z7;
            z6 = z8;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            z5 = z3;
            z6 = z2;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kh0
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return BasicTooltipKt.BasicTooltipBox$lambda$3(popupPositionProvider, bm3Var, basicTooltipState, modifier2, z5, z6, bm3Var2, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }
}
