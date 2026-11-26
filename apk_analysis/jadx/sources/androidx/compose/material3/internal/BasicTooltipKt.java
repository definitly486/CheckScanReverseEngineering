package androidx.compose.material3.internal;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.material3.TooltipState;
import androidx.compose.material3.internal.BasicTooltipKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusChangedModifierKt;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
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
import androidx.media3.muxer.WebmConstants;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.e02;
import defpackage.f57;
import defpackage.gx2;
import defpackage.j59;
import defpackage.jh0;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.oh0;
import defpackage.pg8;
import defpackage.r57;
import defpackage.sh0;
import defpackage.uh0;
import defpackage.wh0;
import defpackage.xg5;
import defpackage.y22;
import defpackage.yh0;
import defpackage.z22;

/* JADX INFO: loaded from: classes2.dex */
public final class BasicTooltipKt {
    /* JADX WARN: Code duplicated, block: B:102:0x0126  */
    /* JADX WARN: Code duplicated, block: B:103:0x0129  */
    /* JADX WARN: Code duplicated, block: B:106:0x0132 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:107:0x0134  */
    /* JADX WARN: Code duplicated, block: B:108:0x0139  */
    /* JADX WARN: Code duplicated, block: B:111:0x013e  */
    /* JADX WARN: Code duplicated, block: B:112:0x0140  */
    /* JADX WARN: Code duplicated, block: B:114:0x0143  */
    /* JADX WARN: Code duplicated, block: B:116:0x0146  */
    /* JADX WARN: Code duplicated, block: B:117:0x0149  */
    /* JADX WARN: Code duplicated, block: B:119:0x014d  */
    /* JADX WARN: Code duplicated, block: B:120:0x014f  */
    /* JADX WARN: Code duplicated, block: B:123:0x0157  */
    /* JADX WARN: Code duplicated, block: B:126:0x016c  */
    /* JADX WARN: Code duplicated, block: B:129:0x0182  */
    /* JADX WARN: Code duplicated, block: B:132:0x0190  */
    /* JADX WARN: Code duplicated, block: B:137:0x01af  */
    /* JADX WARN: Code duplicated, block: B:140:0x01da  */
    /* JADX WARN: Code duplicated, block: B:143:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:144:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:147:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:150:0x020c  */
    /* JADX WARN: Code duplicated, block: B:154:0x0220  */
    /* JADX WARN: Code duplicated, block: B:156:0x0228 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:159:0x022e  */
    /* JADX WARN: Code duplicated, block: B:161:0x0259  */
    /* JADX WARN: Code duplicated, block: B:164:0x0299  */
    /* JADX WARN: Code duplicated, block: B:172:0x02ac  */
    /* JADX WARN: Code duplicated, block: B:174:0x02b2  */
    /* JADX WARN: Code duplicated, block: B:177:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:180:0x02d4  */
    /* JADX WARN: Code duplicated, block: B:183:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:185:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x004c  */
    /* JADX WARN: Code duplicated, block: B:27:0x004f  */
    /* JADX WARN: Code duplicated, block: B:29:0x0053  */
    /* JADX WARN: Code duplicated, block: B:31:0x0057  */
    /* JADX WARN: Code duplicated, block: B:32:0x005c  */
    /* JADX WARN: Code duplicated, block: B:34:0x0062  */
    /* JADX WARN: Code duplicated, block: B:35:0x0065  */
    /* JADX WARN: Code duplicated, block: B:39:0x006c  */
    /* JADX WARN: Code duplicated, block: B:41:0x0071  */
    /* JADX WARN: Code duplicated, block: B:43:0x0075  */
    /* JADX WARN: Code duplicated, block: B:45:0x007d  */
    /* JADX WARN: Code duplicated, block: B:46:0x0080  */
    /* JADX WARN: Code duplicated, block: B:50:0x0087  */
    /* JADX WARN: Code duplicated, block: B:52:0x008c  */
    /* JADX WARN: Code duplicated, block: B:54:0x0090  */
    /* JADX WARN: Code duplicated, block: B:56:0x0098  */
    /* JADX WARN: Code duplicated, block: B:57:0x009b  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:62:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:67:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:72:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:84:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:87:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:91:0x0101  */
    /* JADX WARN: Code duplicated, block: B:93:0x0106  */
    /* JADX WARN: Code duplicated, block: B:95:0x010a  */
    /* JADX WARN: Code duplicated, block: B:97:0x0112  */
    /* JADX WARN: Code duplicated, block: B:98:0x0115  */
    public static final void BasicTooltipBox(final PopupPositionProvider popupPositionProvider, final bm3<? super Composer, ? super Integer, j59> bm3Var, TooltipState tooltipState, Modifier modifier, ll3<j59> ll3Var, boolean z, boolean z2, boolean z3, final bm3<? super Composer, ? super Integer, j59> bm3Var2, Composer composer, final int i, final int i2) {
        int i3;
        bm3<? super Composer, ? super Integer, j59> bm3Var3;
        boolean zChangedInstance;
        int i4;
        int i5;
        Modifier modifier2;
        int i6;
        int i7;
        ll3<j59> ll3Var2;
        int i8;
        int i9;
        int i10;
        boolean z4;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        boolean z5;
        boolean z6;
        TooltipState tooltipState2;
        final boolean z7;
        final Modifier modifier3;
        final ll3<j59> ll3Var3;
        final boolean z8;
        final boolean z9;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        ll3<j59> ll3Var4;
        boolean z10;
        boolean z11;
        Object objRememberedValue;
        Composer.Companion companion;
        y22 y22Var;
        Object objRememberedValue2;
        MutableState mutableState;
        boolean z12;
        int currentCompositeKeyHash;
        ComposeUiNode.Companion companion2;
        ll3<j59> ll3Var5;
        ll3<ComposeUiNode> constructor;
        Composer composerM5355constructorimpl;
        ComposeUiNode.Companion companion3;
        MutableState mutableState2;
        Object objRememberedValue3;
        boolean z13;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1221877520);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(popupPositionProvider) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i2 & 2) == 0) {
            if ((i & 48) == 0) {
                bm3Var3 = bm3Var;
                i3 |= composerStartRestartGroup.changedInstance(bm3Var3) ? 32 : 16;
            }
            if ((i2 & 4) != 0) {
                i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            } else if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if ((i & 512) == 0) {
                    zChangedInstance = composerStartRestartGroup.changed(tooltipState);
                } else {
                    zChangedInstance = composerStartRestartGroup.changedInstance(tooltipState);
                }
                if (zChangedInstance) {
                    i4 = 256;
                } else {
                    i4 = 128;
                }
                i3 |= i4;
            }
            i5 = i2 & 8;
            if (i5 != 0) {
                if ((i & 3072) == 0) {
                    modifier2 = modifier;
                    if (composerStartRestartGroup.changed(modifier2)) {
                        i6 = 2048;
                    } else {
                        i6 = 1024;
                    }
                    i3 |= i6;
                }
                i7 = i2 & 16;
                if (i7 != 0) {
                    if ((i & 24576) == 0) {
                        ll3Var2 = ll3Var;
                        if (composerStartRestartGroup.changedInstance(ll3Var2)) {
                            i8 = 16384;
                        } else {
                            i8 = 8192;
                        }
                        i3 |= i8;
                    }
                    i9 = i2 & 32;
                    if (i9 != 0) {
                        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        i10 = 196608;
                        z4 = z;
                    } else {
                        i10 = 196608;
                        z4 = z;
                        if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                            if (composerStartRestartGroup.changed(z4)) {
                                i11 = 131072;
                            } else {
                                i11 = 65536;
                            }
                            i3 |= i11;
                        }
                    }
                    i12 = i2 & 64;
                    if (i12 != 0) {
                        i3 |= 1572864;
                    } else if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i13 = 1048576;
                        } else {
                            i13 = 524288;
                        }
                        i3 |= i13;
                    }
                    i14 = i2 & 128;
                    if (i14 != 0) {
                        i3 |= 12582912;
                    } else if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(z3)) {
                            i15 = 8388608;
                        } else {
                            i15 = 4194304;
                        }
                        i3 |= i15;
                    }
                    if ((i2 & 256) != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                                i16 = 67108864;
                            } else {
                                i16 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i16;
                        }
                        z5 = true;
                        if ((i3 & 38347923) != 38347922) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z6, i3 & 1)) {
                            if (i5 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if (i7 != 0) {
                                ll3Var4 = null;
                            } else {
                                ll3Var4 = ll3Var2;
                            }
                            if (i9 != 0) {
                                z4 = false;
                            }
                            if (i12 != 0) {
                                z10 = true;
                            } else {
                                z10 = z2;
                            }
                            if (i14 != 0) {
                                z11 = false;
                            } else {
                                z11 = z3;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1221877520, i3, -1, "androidx.compose.material3.internal.BasicTooltipBox (BasicTooltip.kt:103)");
                            }
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            companion = Composer.Companion;
                            if (objRememberedValue == companion.getEmpty()) {
                                objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            y22Var = (y22) objRememberedValue;
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == companion.getEmpty()) {
                                objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            mutableState = (MutableState) objRememberedValue2;
                            if (z11 || !(rememberTouchExplorationOrSwitchAccessServiceState(composerStartRestartGroup, 0).getValue().booleanValue() || ((Boolean) mutableState.getValue()).booleanValue())) {
                                z12 = false;
                            } else {
                                z12 = true;
                            }
                            Modifier.Companion companion4 = Modifier.Companion;
                            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                            boolean z14 = z12;
                            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion4);
                            companion2 = ComposeUiNode.Companion;
                            ll3Var5 = ll3Var4;
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
                            composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                            bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                            if (composerM5355constructorimpl.getInserting()) {
                                companion3 = companion2;
                            } else {
                                companion3 = companion2;
                                if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion3.getSetModifier());
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                if (tooltipState.isVisible()) {
                                    composerStartRestartGroup.startReplaceGroup(-1891243071);
                                    if (!z4 || z14) {
                                        z13 = true;
                                    } else {
                                        z13 = false;
                                    }
                                    bm3<? super Composer, ? super Integer, j59> bm3Var4 = bm3Var3;
                                    mutableState2 = mutableState;
                                    TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var4, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                                    composerStartRestartGroup = composerStartRestartGroup;
                                    composerStartRestartGroup.endReplaceGroup();
                                } else {
                                    mutableState2 = mutableState;
                                    composerStartRestartGroup.startReplaceGroup(-1890863476);
                                    composerStartRestartGroup.endReplaceGroup();
                                }
                                int i17 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                                tooltipState2 = tooltipState;
                                boolean z15 = z10;
                                boolean z16 = z11;
                                modifier3 = modifier4;
                                WrappedAnchor(z15, tooltipState2, mutableState2, z16, modifier3, bm3Var2, composerStartRestartGroup, i17, 0);
                                composerStartRestartGroup.endNode();
                                if ((i3 & 896) != 256 && ((i3 & 512) == 0 || !composerStartRestartGroup.changedInstance(tooltipState2))) {
                                    z5 = false;
                                }
                                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                                if (z5 || objRememberedValue3 == companion.getEmpty()) {
                                    objRememberedValue3 = new oh0(tooltipState2, 0);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                                }
                                EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                z7 = z15;
                                z8 = z16;
                                ll3Var3 = ll3Var5;
                            }
                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion3.getSetModifier());
                            BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                            if (tooltipState.isVisible()) {
                                composerStartRestartGroup.startReplaceGroup(-1891243071);
                                if (z4) {
                                    z13 = true;
                                } else {
                                    z13 = true;
                                }
                                bm3<? super Composer, ? super Integer, j59> bm3Var5 = bm3Var3;
                                mutableState2 = mutableState;
                                TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var5, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                                composerStartRestartGroup = composerStartRestartGroup;
                                composerStartRestartGroup.endReplaceGroup();
                            } else {
                                mutableState2 = mutableState;
                                composerStartRestartGroup.startReplaceGroup(-1890863476);
                                composerStartRestartGroup.endReplaceGroup();
                            }
                            int i18 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                            tooltipState2 = tooltipState;
                            boolean z17 = z10;
                            boolean z18 = z11;
                            modifier3 = modifier4;
                            WrappedAnchor(z17, tooltipState2, mutableState2, z18, modifier3, bm3Var2, composerStartRestartGroup, i18, 0);
                            composerStartRestartGroup.endNode();
                            if ((i3 & 896) != 256) {
                                z5 = false;
                            }
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (z5) {
                                objRememberedValue3 = new oh0(tooltipState2, 0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new oh0(tooltipState2, 0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            z7 = z17;
                            z8 = z18;
                            ll3Var3 = ll3Var5;
                        } else {
                            tooltipState2 = tooltipState;
                            composerStartRestartGroup.skipToGroupEnd();
                            z7 = z2;
                            modifier3 = modifier2;
                            ll3Var3 = ll3Var2;
                            z8 = z3;
                        }
                        Composer composer2 = composerStartRestartGroup;
                        z9 = z4;
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            final TooltipState tooltipState3 = tooltipState2;
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qh0
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return BasicTooltipKt.BasicTooltipBox$lambda$5(popupPositionProvider, bm3Var, tooltipState3, modifier3, ll3Var3, z9, z7, z8, bm3Var2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    z5 = true;
                    if ((i3 & 38347923) != 38347922) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z6, i3 & 1)) {
                        if (i5 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i7 != 0) {
                            ll3Var4 = null;
                        } else {
                            ll3Var4 = ll3Var2;
                        }
                        if (i9 != 0) {
                            z4 = false;
                        }
                        if (i12 != 0) {
                            z10 = true;
                        } else {
                            z10 = z2;
                        }
                        if (i14 != 0) {
                            z11 = false;
                        } else {
                            z11 = z3;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1221877520, i3, -1, "androidx.compose.material3.internal.BasicTooltipBox (BasicTooltip.kt:103)");
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        y22Var = (y22) objRememberedValue;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == companion.getEmpty()) {
                            objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        mutableState = (MutableState) objRememberedValue2;
                        if (z11) {
                            z12 = false;
                        } else {
                            z12 = false;
                        }
                        Modifier.Companion companion5 = Modifier.Companion;
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                        boolean z19 = z12;
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion5);
                        companion2 = ComposeUiNode.Companion;
                        ll3Var5 = ll3Var4;
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
                        composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3 bm3VarB2 = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl, currentCompositionLocalMap2);
                        if (composerM5355constructorimpl.getInserting()) {
                            companion3 = companion2;
                            if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier2, companion3.getSetModifier());
                            BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                            if (tooltipState.isVisible()) {
                                composerStartRestartGroup.startReplaceGroup(-1891243071);
                                if (z4) {
                                    z13 = true;
                                } else {
                                    z13 = true;
                                }
                                bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var3;
                                mutableState2 = mutableState;
                                TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var6, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                                composerStartRestartGroup = composerStartRestartGroup;
                                composerStartRestartGroup.endReplaceGroup();
                            } else {
                                mutableState2 = mutableState;
                                composerStartRestartGroup.startReplaceGroup(-1890863476);
                                composerStartRestartGroup.endReplaceGroup();
                            }
                            int i19 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                            tooltipState2 = tooltipState;
                            boolean z110 = z10;
                            boolean z111 = z11;
                            modifier3 = modifier4;
                            WrappedAnchor(z110, tooltipState2, mutableState2, z111, modifier3, bm3Var2, composerStartRestartGroup, i19, 0);
                            composerStartRestartGroup.endNode();
                            if ((i3 & 896) != 256) {
                                z5 = false;
                            }
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (z5) {
                                objRememberedValue3 = new oh0(tooltipState2, 0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new oh0(tooltipState2, 0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            z7 = z110;
                            z8 = z111;
                            ll3Var3 = ll3Var5;
                        } else {
                            companion3 = companion2;
                        }
                        dc.b(bm3VarB2, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier2, companion3.getSetModifier());
                        BoxScopeInstance boxScopeInstance4 = BoxScopeInstance.INSTANCE;
                        if (tooltipState.isVisible()) {
                            composerStartRestartGroup.startReplaceGroup(-1891243071);
                            if (z4) {
                                z13 = true;
                            } else {
                                z13 = true;
                            }
                            bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var3;
                            mutableState2 = mutableState;
                            TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var7, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                            composerStartRestartGroup = composerStartRestartGroup;
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            mutableState2 = mutableState;
                            composerStartRestartGroup.startReplaceGroup(-1890863476);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        int i110 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                        tooltipState2 = tooltipState;
                        boolean z112 = z10;
                        boolean z113 = z11;
                        modifier3 = modifier4;
                        WrappedAnchor(z112, tooltipState2, mutableState2, z113, modifier3, bm3Var2, composerStartRestartGroup, i110, 0);
                        composerStartRestartGroup.endNode();
                        if ((i3 & 896) != 256) {
                            z5 = false;
                        }
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z5) {
                            objRememberedValue3 = new oh0(tooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new oh0(tooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z7 = z112;
                        z8 = z113;
                        ll3Var3 = ll3Var5;
                    } else {
                        tooltipState2 = tooltipState;
                        composerStartRestartGroup.skipToGroupEnd();
                        z7 = z2;
                        modifier3 = modifier2;
                        ll3Var3 = ll3Var2;
                        z8 = z3;
                    }
                    Composer composer3 = composerStartRestartGroup;
                    z9 = z4;
                    scopeUpdateScopeEndRestartGroup = composer3.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        final TooltipState tooltipState4 = tooltipState2;
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qh0
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return BasicTooltipKt.BasicTooltipBox$lambda$5(popupPositionProvider, bm3Var, tooltipState4, modifier3, ll3Var3, z9, z7, z8, bm3Var2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 24576;
                ll3Var2 = ll3Var;
                i9 = i2 & 32;
                if (i9 != 0) {
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i10 = 196608;
                    z4 = z;
                } else {
                    i10 = 196608;
                    z4 = z;
                    if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(z4)) {
                            i11 = 131072;
                        } else {
                            i11 = 65536;
                        }
                        i3 |= i11;
                    }
                }
                i12 = i2 & 64;
                if (i12 != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i13 = 1048576;
                    } else {
                        i13 = 524288;
                    }
                    i3 |= i13;
                }
                i14 = i2 & 128;
                if (i14 != 0) {
                    i3 |= 12582912;
                } else if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(z3)) {
                        i15 = 8388608;
                    } else {
                        i15 = 4194304;
                    }
                    i3 |= i15;
                }
                if ((i2 & 256) != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                            i16 = 67108864;
                        } else {
                            i16 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i16;
                    }
                    z5 = true;
                    if ((i3 & 38347923) != 38347922) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z6, i3 & 1)) {
                        if (i5 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i7 != 0) {
                            ll3Var4 = null;
                        } else {
                            ll3Var4 = ll3Var2;
                        }
                        if (i9 != 0) {
                            z4 = false;
                        }
                        if (i12 != 0) {
                            z10 = true;
                        } else {
                            z10 = z2;
                        }
                        if (i14 != 0) {
                            z11 = false;
                        } else {
                            z11 = z3;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1221877520, i3, -1, "androidx.compose.material3.internal.BasicTooltipBox (BasicTooltip.kt:103)");
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        y22Var = (y22) objRememberedValue;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == companion.getEmpty()) {
                            objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        mutableState = (MutableState) objRememberedValue2;
                        if (z11) {
                            z12 = false;
                        } else {
                            z12 = false;
                        }
                        Modifier.Companion companion6 = Modifier.Companion;
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                        boolean z114 = z12;
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion6);
                        companion2 = ComposeUiNode.Companion;
                        ll3Var5 = ll3Var4;
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
                        composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3 bm3VarB3 = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy3, composerM5355constructorimpl, currentCompositionLocalMap3);
                        if (composerM5355constructorimpl.getInserting()) {
                            companion3 = companion2;
                            if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier3, companion3.getSetModifier());
                            BoxScopeInstance boxScopeInstance5 = BoxScopeInstance.INSTANCE;
                            if (tooltipState.isVisible()) {
                                composerStartRestartGroup.startReplaceGroup(-1891243071);
                                if (z4) {
                                    z13 = true;
                                } else {
                                    z13 = true;
                                }
                                bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var3;
                                mutableState2 = mutableState;
                                TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var8, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                                composerStartRestartGroup = composerStartRestartGroup;
                                composerStartRestartGroup.endReplaceGroup();
                            } else {
                                mutableState2 = mutableState;
                                composerStartRestartGroup.startReplaceGroup(-1890863476);
                                composerStartRestartGroup.endReplaceGroup();
                            }
                            int i111 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                            tooltipState2 = tooltipState;
                            boolean z115 = z10;
                            boolean z116 = z11;
                            modifier3 = modifier4;
                            WrappedAnchor(z115, tooltipState2, mutableState2, z116, modifier3, bm3Var2, composerStartRestartGroup, i111, 0);
                            composerStartRestartGroup.endNode();
                            if ((i3 & 896) != 256) {
                                z5 = false;
                            }
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (z5) {
                                objRememberedValue3 = new oh0(tooltipState2, 0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new oh0(tooltipState2, 0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            z7 = z115;
                            z8 = z116;
                            ll3Var3 = ll3Var5;
                        } else {
                            companion3 = companion2;
                        }
                        dc.b(bm3VarB3, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier3, companion3.getSetModifier());
                        BoxScopeInstance boxScopeInstance6 = BoxScopeInstance.INSTANCE;
                        if (tooltipState.isVisible()) {
                            composerStartRestartGroup.startReplaceGroup(-1891243071);
                            if (z4) {
                                z13 = true;
                            } else {
                                z13 = true;
                            }
                            bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var3;
                            mutableState2 = mutableState;
                            TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var9, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                            composerStartRestartGroup = composerStartRestartGroup;
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            mutableState2 = mutableState;
                            composerStartRestartGroup.startReplaceGroup(-1890863476);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        int i112 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                        tooltipState2 = tooltipState;
                        boolean z117 = z10;
                        boolean z118 = z11;
                        modifier3 = modifier4;
                        WrappedAnchor(z117, tooltipState2, mutableState2, z118, modifier3, bm3Var2, composerStartRestartGroup, i112, 0);
                        composerStartRestartGroup.endNode();
                        if ((i3 & 896) != 256) {
                            z5 = false;
                        }
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z5) {
                            objRememberedValue3 = new oh0(tooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new oh0(tooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z7 = z117;
                        z8 = z118;
                        ll3Var3 = ll3Var5;
                    } else {
                        tooltipState2 = tooltipState;
                        composerStartRestartGroup.skipToGroupEnd();
                        z7 = z2;
                        modifier3 = modifier2;
                        ll3Var3 = ll3Var2;
                        z8 = z3;
                    }
                    Composer composer4 = composerStartRestartGroup;
                    z9 = z4;
                    scopeUpdateScopeEndRestartGroup = composer4.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        final TooltipState tooltipState5 = tooltipState2;
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qh0
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return BasicTooltipKt.BasicTooltipBox$lambda$5(popupPositionProvider, bm3Var, tooltipState5, modifier3, ll3Var3, z9, z7, z8, bm3Var2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                z5 = true;
                if ((i3 & 38347923) != 38347922) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i3 & 1)) {
                    if (i5 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i7 != 0) {
                        ll3Var4 = null;
                    } else {
                        ll3Var4 = ll3Var2;
                    }
                    if (i9 != 0) {
                        z4 = false;
                    }
                    if (i12 != 0) {
                        z10 = true;
                    } else {
                        z10 = z2;
                    }
                    if (i14 != 0) {
                        z11 = false;
                    } else {
                        z11 = z3;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1221877520, i3, -1, "androidx.compose.material3.internal.BasicTooltipBox (BasicTooltip.kt:103)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    y22Var = (y22) objRememberedValue;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    mutableState = (MutableState) objRememberedValue2;
                    if (z11) {
                        z12 = false;
                    } else {
                        z12 = false;
                    }
                    Modifier.Companion companion7 = Modifier.Companion;
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy4 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                    boolean z119 = z12;
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap4 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion7);
                    companion2 = ComposeUiNode.Companion;
                    ll3Var5 = ll3Var4;
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
                    composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3 bm3VarB4 = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy4, composerM5355constructorimpl, currentCompositionLocalMap4);
                    if (composerM5355constructorimpl.getInserting()) {
                        companion3 = companion2;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier4, companion3.getSetModifier());
                        BoxScopeInstance boxScopeInstance7 = BoxScopeInstance.INSTANCE;
                        if (tooltipState.isVisible()) {
                            composerStartRestartGroup.startReplaceGroup(-1891243071);
                            if (z4) {
                                z13 = true;
                            } else {
                                z13 = true;
                            }
                            bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var3;
                            mutableState2 = mutableState;
                            TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var10, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                            composerStartRestartGroup = composerStartRestartGroup;
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            mutableState2 = mutableState;
                            composerStartRestartGroup.startReplaceGroup(-1890863476);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        int i113 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                        tooltipState2 = tooltipState;
                        boolean z1110 = z10;
                        boolean z1111 = z11;
                        modifier3 = modifier4;
                        WrappedAnchor(z1110, tooltipState2, mutableState2, z1111, modifier3, bm3Var2, composerStartRestartGroup, i113, 0);
                        composerStartRestartGroup.endNode();
                        if ((i3 & 896) != 256) {
                            z5 = false;
                        }
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z5) {
                            objRememberedValue3 = new oh0(tooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new oh0(tooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z7 = z1110;
                        z8 = z1111;
                        ll3Var3 = ll3Var5;
                    } else {
                        companion3 = companion2;
                    }
                    dc.b(bm3VarB4, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier4, companion3.getSetModifier());
                    BoxScopeInstance boxScopeInstance8 = BoxScopeInstance.INSTANCE;
                    if (tooltipState.isVisible()) {
                        composerStartRestartGroup.startReplaceGroup(-1891243071);
                        if (z4) {
                            z13 = true;
                        } else {
                            z13 = true;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var3;
                        mutableState2 = mutableState;
                        TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var11, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                        composerStartRestartGroup = composerStartRestartGroup;
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        mutableState2 = mutableState;
                        composerStartRestartGroup.startReplaceGroup(-1890863476);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    int i114 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                    tooltipState2 = tooltipState;
                    boolean z1112 = z10;
                    boolean z1113 = z11;
                    modifier3 = modifier4;
                    WrappedAnchor(z1112, tooltipState2, mutableState2, z1113, modifier3, bm3Var2, composerStartRestartGroup, i114, 0);
                    composerStartRestartGroup.endNode();
                    if ((i3 & 896) != 256) {
                        z5 = false;
                    }
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        objRememberedValue3 = new oh0(tooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new oh0(tooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z7 = z1112;
                    z8 = z1113;
                    ll3Var3 = ll3Var5;
                } else {
                    tooltipState2 = tooltipState;
                    composerStartRestartGroup.skipToGroupEnd();
                    z7 = z2;
                    modifier3 = modifier2;
                    ll3Var3 = ll3Var2;
                    z8 = z3;
                }
                Composer composer5 = composerStartRestartGroup;
                z9 = z4;
                scopeUpdateScopeEndRestartGroup = composer5.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final TooltipState tooltipState6 = tooltipState2;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qh0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BasicTooltipKt.BasicTooltipBox$lambda$5(popupPositionProvider, bm3Var, tooltipState6, modifier3, ll3Var3, z9, z7, z8, bm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            modifier2 = modifier;
            i7 = i2 & 16;
            if (i7 != 0) {
                if ((i & 24576) == 0) {
                    ll3Var2 = ll3Var;
                    if (composerStartRestartGroup.changedInstance(ll3Var2)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i3 |= i8;
                }
                i9 = i2 & 32;
                if (i9 != 0) {
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i10 = 196608;
                    z4 = z;
                } else {
                    i10 = 196608;
                    z4 = z;
                    if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(z4)) {
                            i11 = 131072;
                        } else {
                            i11 = 65536;
                        }
                        i3 |= i11;
                    }
                }
                i12 = i2 & 64;
                if (i12 != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i13 = 1048576;
                    } else {
                        i13 = 524288;
                    }
                    i3 |= i13;
                }
                i14 = i2 & 128;
                if (i14 != 0) {
                    i3 |= 12582912;
                } else if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(z3)) {
                        i15 = 8388608;
                    } else {
                        i15 = 4194304;
                    }
                    i3 |= i15;
                }
                if ((i2 & 256) != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                            i16 = 67108864;
                        } else {
                            i16 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i16;
                    }
                    z5 = true;
                    if ((i3 & 38347923) != 38347922) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z6, i3 & 1)) {
                        if (i5 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i7 != 0) {
                            ll3Var4 = null;
                        } else {
                            ll3Var4 = ll3Var2;
                        }
                        if (i9 != 0) {
                            z4 = false;
                        }
                        if (i12 != 0) {
                            z10 = true;
                        } else {
                            z10 = z2;
                        }
                        if (i14 != 0) {
                            z11 = false;
                        } else {
                            z11 = z3;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1221877520, i3, -1, "androidx.compose.material3.internal.BasicTooltipBox (BasicTooltip.kt:103)");
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        y22Var = (y22) objRememberedValue;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == companion.getEmpty()) {
                            objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        mutableState = (MutableState) objRememberedValue2;
                        if (z11) {
                            z12 = false;
                        } else {
                            z12 = false;
                        }
                        Modifier.Companion companion8 = Modifier.Companion;
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy5 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                        boolean z1114 = z12;
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap5 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier5 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion8);
                        companion2 = ComposeUiNode.Companion;
                        ll3Var5 = ll3Var4;
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
                        composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3 bm3VarB5 = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy5, composerM5355constructorimpl, currentCompositionLocalMap5);
                        if (composerM5355constructorimpl.getInserting()) {
                            companion3 = companion2;
                            if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier5, companion3.getSetModifier());
                            BoxScopeInstance boxScopeInstance9 = BoxScopeInstance.INSTANCE;
                            if (tooltipState.isVisible()) {
                                composerStartRestartGroup.startReplaceGroup(-1891243071);
                                if (z4) {
                                    z13 = true;
                                } else {
                                    z13 = true;
                                }
                                bm3<? super Composer, ? super Integer, j59> bm3Var12 = bm3Var3;
                                mutableState2 = mutableState;
                                TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var12, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                                composerStartRestartGroup = composerStartRestartGroup;
                                composerStartRestartGroup.endReplaceGroup();
                            } else {
                                mutableState2 = mutableState;
                                composerStartRestartGroup.startReplaceGroup(-1890863476);
                                composerStartRestartGroup.endReplaceGroup();
                            }
                            int i115 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                            tooltipState2 = tooltipState;
                            boolean z1115 = z10;
                            boolean z1116 = z11;
                            modifier3 = modifier4;
                            WrappedAnchor(z1115, tooltipState2, mutableState2, z1116, modifier3, bm3Var2, composerStartRestartGroup, i115, 0);
                            composerStartRestartGroup.endNode();
                            if ((i3 & 896) != 256) {
                                z5 = false;
                            }
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (z5) {
                                objRememberedValue3 = new oh0(tooltipState2, 0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new oh0(tooltipState2, 0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            z7 = z1115;
                            z8 = z1116;
                            ll3Var3 = ll3Var5;
                        } else {
                            companion3 = companion2;
                        }
                        dc.b(bm3VarB5, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier5, companion3.getSetModifier());
                        BoxScopeInstance boxScopeInstance10 = BoxScopeInstance.INSTANCE;
                        if (tooltipState.isVisible()) {
                            composerStartRestartGroup.startReplaceGroup(-1891243071);
                            if (z4) {
                                z13 = true;
                            } else {
                                z13 = true;
                            }
                            bm3<? super Composer, ? super Integer, j59> bm3Var13 = bm3Var3;
                            mutableState2 = mutableState;
                            TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var13, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                            composerStartRestartGroup = composerStartRestartGroup;
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            mutableState2 = mutableState;
                            composerStartRestartGroup.startReplaceGroup(-1890863476);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        int i116 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                        tooltipState2 = tooltipState;
                        boolean z1117 = z10;
                        boolean z1118 = z11;
                        modifier3 = modifier4;
                        WrappedAnchor(z1117, tooltipState2, mutableState2, z1118, modifier3, bm3Var2, composerStartRestartGroup, i116, 0);
                        composerStartRestartGroup.endNode();
                        if ((i3 & 896) != 256) {
                            z5 = false;
                        }
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z5) {
                            objRememberedValue3 = new oh0(tooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new oh0(tooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z7 = z1117;
                        z8 = z1118;
                        ll3Var3 = ll3Var5;
                    } else {
                        tooltipState2 = tooltipState;
                        composerStartRestartGroup.skipToGroupEnd();
                        z7 = z2;
                        modifier3 = modifier2;
                        ll3Var3 = ll3Var2;
                        z8 = z3;
                    }
                    Composer composer6 = composerStartRestartGroup;
                    z9 = z4;
                    scopeUpdateScopeEndRestartGroup = composer6.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        final TooltipState tooltipState7 = tooltipState2;
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qh0
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return BasicTooltipKt.BasicTooltipBox$lambda$5(popupPositionProvider, bm3Var, tooltipState7, modifier3, ll3Var3, z9, z7, z8, bm3Var2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                z5 = true;
                if ((i3 & 38347923) != 38347922) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i3 & 1)) {
                    if (i5 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i7 != 0) {
                        ll3Var4 = null;
                    } else {
                        ll3Var4 = ll3Var2;
                    }
                    if (i9 != 0) {
                        z4 = false;
                    }
                    if (i12 != 0) {
                        z10 = true;
                    } else {
                        z10 = z2;
                    }
                    if (i14 != 0) {
                        z11 = false;
                    } else {
                        z11 = z3;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1221877520, i3, -1, "androidx.compose.material3.internal.BasicTooltipBox (BasicTooltip.kt:103)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    y22Var = (y22) objRememberedValue;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    mutableState = (MutableState) objRememberedValue2;
                    if (z11) {
                        z12 = false;
                    } else {
                        z12 = false;
                    }
                    Modifier.Companion companion9 = Modifier.Companion;
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy6 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                    boolean z1119 = z12;
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap6 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier6 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion9);
                    companion2 = ComposeUiNode.Companion;
                    ll3Var5 = ll3Var4;
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
                    composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3 bm3VarB6 = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy6, composerM5355constructorimpl, currentCompositionLocalMap6);
                    if (composerM5355constructorimpl.getInserting()) {
                        companion3 = companion2;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier6, companion3.getSetModifier());
                        BoxScopeInstance boxScopeInstance11 = BoxScopeInstance.INSTANCE;
                        if (tooltipState.isVisible()) {
                            composerStartRestartGroup.startReplaceGroup(-1891243071);
                            if (z4) {
                                z13 = true;
                            } else {
                                z13 = true;
                            }
                            bm3<? super Composer, ? super Integer, j59> bm3Var14 = bm3Var3;
                            mutableState2 = mutableState;
                            TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var14, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                            composerStartRestartGroup = composerStartRestartGroup;
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            mutableState2 = mutableState;
                            composerStartRestartGroup.startReplaceGroup(-1890863476);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        int i117 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                        tooltipState2 = tooltipState;
                        boolean z11110 = z10;
                        boolean z11111 = z11;
                        modifier3 = modifier4;
                        WrappedAnchor(z11110, tooltipState2, mutableState2, z11111, modifier3, bm3Var2, composerStartRestartGroup, i117, 0);
                        composerStartRestartGroup.endNode();
                        if ((i3 & 896) != 256) {
                            z5 = false;
                        }
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z5) {
                            objRememberedValue3 = new oh0(tooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new oh0(tooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z7 = z11110;
                        z8 = z11111;
                        ll3Var3 = ll3Var5;
                    } else {
                        companion3 = companion2;
                    }
                    dc.b(bm3VarB6, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier6, companion3.getSetModifier());
                    BoxScopeInstance boxScopeInstance12 = BoxScopeInstance.INSTANCE;
                    if (tooltipState.isVisible()) {
                        composerStartRestartGroup.startReplaceGroup(-1891243071);
                        if (z4) {
                            z13 = true;
                        } else {
                            z13 = true;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var15 = bm3Var3;
                        mutableState2 = mutableState;
                        TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var15, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                        composerStartRestartGroup = composerStartRestartGroup;
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        mutableState2 = mutableState;
                        composerStartRestartGroup.startReplaceGroup(-1890863476);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    int i118 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                    tooltipState2 = tooltipState;
                    boolean z11112 = z10;
                    boolean z11113 = z11;
                    modifier3 = modifier4;
                    WrappedAnchor(z11112, tooltipState2, mutableState2, z11113, modifier3, bm3Var2, composerStartRestartGroup, i118, 0);
                    composerStartRestartGroup.endNode();
                    if ((i3 & 896) != 256) {
                        z5 = false;
                    }
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        objRememberedValue3 = new oh0(tooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new oh0(tooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z7 = z11112;
                    z8 = z11113;
                    ll3Var3 = ll3Var5;
                } else {
                    tooltipState2 = tooltipState;
                    composerStartRestartGroup.skipToGroupEnd();
                    z7 = z2;
                    modifier3 = modifier2;
                    ll3Var3 = ll3Var2;
                    z8 = z3;
                }
                Composer composer7 = composerStartRestartGroup;
                z9 = z4;
                scopeUpdateScopeEndRestartGroup = composer7.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final TooltipState tooltipState8 = tooltipState2;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qh0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BasicTooltipKt.BasicTooltipBox$lambda$5(popupPositionProvider, bm3Var, tooltipState8, modifier3, ll3Var3, z9, z7, z8, bm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            ll3Var2 = ll3Var;
            i9 = i2 & 32;
            if (i9 != 0) {
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i10 = 196608;
                z4 = z;
            } else {
                i10 = 196608;
                z4 = z;
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(z4)) {
                        i11 = 131072;
                    } else {
                        i11 = 65536;
                    }
                    i3 |= i11;
                }
            }
            i12 = i2 & 64;
            if (i12 != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changed(z2)) {
                    i13 = 1048576;
                } else {
                    i13 = 524288;
                }
                i3 |= i13;
            }
            i14 = i2 & 128;
            if (i14 != 0) {
                i3 |= 12582912;
            } else if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(z3)) {
                    i15 = 8388608;
                } else {
                    i15 = 4194304;
                }
                i3 |= i15;
            }
            if ((i2 & 256) != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        i16 = 67108864;
                    } else {
                        i16 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i16;
                }
                z5 = true;
                if ((i3 & 38347923) != 38347922) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i3 & 1)) {
                    if (i5 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i7 != 0) {
                        ll3Var4 = null;
                    } else {
                        ll3Var4 = ll3Var2;
                    }
                    if (i9 != 0) {
                        z4 = false;
                    }
                    if (i12 != 0) {
                        z10 = true;
                    } else {
                        z10 = z2;
                    }
                    if (i14 != 0) {
                        z11 = false;
                    } else {
                        z11 = z3;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1221877520, i3, -1, "androidx.compose.material3.internal.BasicTooltipBox (BasicTooltip.kt:103)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    y22Var = (y22) objRememberedValue;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    mutableState = (MutableState) objRememberedValue2;
                    if (z11) {
                        z12 = false;
                    } else {
                        z12 = false;
                    }
                    Modifier.Companion companion10 = Modifier.Companion;
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy7 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                    boolean z11114 = z12;
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap7 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier7 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion10);
                    companion2 = ComposeUiNode.Companion;
                    ll3Var5 = ll3Var4;
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
                    composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3 bm3VarB7 = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy7, composerM5355constructorimpl, currentCompositionLocalMap7);
                    if (composerM5355constructorimpl.getInserting()) {
                        companion3 = companion2;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier7, companion3.getSetModifier());
                        BoxScopeInstance boxScopeInstance13 = BoxScopeInstance.INSTANCE;
                        if (tooltipState.isVisible()) {
                            composerStartRestartGroup.startReplaceGroup(-1891243071);
                            if (z4) {
                                z13 = true;
                            } else {
                                z13 = true;
                            }
                            bm3<? super Composer, ? super Integer, j59> bm3Var16 = bm3Var3;
                            mutableState2 = mutableState;
                            TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var16, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                            composerStartRestartGroup = composerStartRestartGroup;
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            mutableState2 = mutableState;
                            composerStartRestartGroup.startReplaceGroup(-1890863476);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        int i119 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                        tooltipState2 = tooltipState;
                        boolean z11115 = z10;
                        boolean z11116 = z11;
                        modifier3 = modifier4;
                        WrappedAnchor(z11115, tooltipState2, mutableState2, z11116, modifier3, bm3Var2, composerStartRestartGroup, i119, 0);
                        composerStartRestartGroup.endNode();
                        if ((i3 & 896) != 256) {
                            z5 = false;
                        }
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z5) {
                            objRememberedValue3 = new oh0(tooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new oh0(tooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z7 = z11115;
                        z8 = z11116;
                        ll3Var3 = ll3Var5;
                    } else {
                        companion3 = companion2;
                    }
                    dc.b(bm3VarB7, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier7, companion3.getSetModifier());
                    BoxScopeInstance boxScopeInstance14 = BoxScopeInstance.INSTANCE;
                    if (tooltipState.isVisible()) {
                        composerStartRestartGroup.startReplaceGroup(-1891243071);
                        if (z4) {
                            z13 = true;
                        } else {
                            z13 = true;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var17 = bm3Var3;
                        mutableState2 = mutableState;
                        TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var17, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                        composerStartRestartGroup = composerStartRestartGroup;
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        mutableState2 = mutableState;
                        composerStartRestartGroup.startReplaceGroup(-1890863476);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    int i1110 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                    tooltipState2 = tooltipState;
                    boolean z11117 = z10;
                    boolean z11118 = z11;
                    modifier3 = modifier4;
                    WrappedAnchor(z11117, tooltipState2, mutableState2, z11118, modifier3, bm3Var2, composerStartRestartGroup, i1110, 0);
                    composerStartRestartGroup.endNode();
                    if ((i3 & 896) != 256) {
                        z5 = false;
                    }
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        objRememberedValue3 = new oh0(tooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new oh0(tooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z7 = z11117;
                    z8 = z11118;
                    ll3Var3 = ll3Var5;
                } else {
                    tooltipState2 = tooltipState;
                    composerStartRestartGroup.skipToGroupEnd();
                    z7 = z2;
                    modifier3 = modifier2;
                    ll3Var3 = ll3Var2;
                    z8 = z3;
                }
                Composer composer8 = composerStartRestartGroup;
                z9 = z4;
                scopeUpdateScopeEndRestartGroup = composer8.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final TooltipState tooltipState9 = tooltipState2;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qh0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BasicTooltipKt.BasicTooltipBox$lambda$5(popupPositionProvider, bm3Var, tooltipState9, modifier3, ll3Var3, z9, z7, z8, bm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            z5 = true;
            if ((i3 & 38347923) != 38347922) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z6, i3 & 1)) {
                if (i5 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i7 != 0) {
                    ll3Var4 = null;
                } else {
                    ll3Var4 = ll3Var2;
                }
                if (i9 != 0) {
                    z4 = false;
                }
                if (i12 != 0) {
                    z10 = true;
                } else {
                    z10 = z2;
                }
                if (i14 != 0) {
                    z11 = false;
                } else {
                    z11 = z3;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1221877520, i3, -1, "androidx.compose.material3.internal.BasicTooltipBox (BasicTooltip.kt:103)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                y22Var = (y22) objRememberedValue;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                mutableState = (MutableState) objRememberedValue2;
                if (z11) {
                    z12 = false;
                } else {
                    z12 = false;
                }
                Modifier.Companion companion11 = Modifier.Companion;
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy8 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                boolean z11119 = z12;
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap8 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier8 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion11);
                companion2 = ComposeUiNode.Companion;
                ll3Var5 = ll3Var4;
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
                composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3 bm3VarB8 = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy8, composerM5355constructorimpl, currentCompositionLocalMap8);
                if (composerM5355constructorimpl.getInserting()) {
                    companion3 = companion2;
                    if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier8, companion3.getSetModifier());
                    BoxScopeInstance boxScopeInstance15 = BoxScopeInstance.INSTANCE;
                    if (tooltipState.isVisible()) {
                        composerStartRestartGroup.startReplaceGroup(-1891243071);
                        if (z4) {
                            z13 = true;
                        } else {
                            z13 = true;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var18 = bm3Var3;
                        mutableState2 = mutableState;
                        TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var18, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                        composerStartRestartGroup = composerStartRestartGroup;
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        mutableState2 = mutableState;
                        composerStartRestartGroup.startReplaceGroup(-1890863476);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    int i1111 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                    tooltipState2 = tooltipState;
                    boolean z111110 = z10;
                    boolean z111111 = z11;
                    modifier3 = modifier4;
                    WrappedAnchor(z111110, tooltipState2, mutableState2, z111111, modifier3, bm3Var2, composerStartRestartGroup, i1111, 0);
                    composerStartRestartGroup.endNode();
                    if ((i3 & 896) != 256) {
                        z5 = false;
                    }
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        objRememberedValue3 = new oh0(tooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new oh0(tooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z7 = z111110;
                    z8 = z111111;
                    ll3Var3 = ll3Var5;
                } else {
                    companion3 = companion2;
                }
                dc.b(bm3VarB8, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier8, companion3.getSetModifier());
                BoxScopeInstance boxScopeInstance16 = BoxScopeInstance.INSTANCE;
                if (tooltipState.isVisible()) {
                    composerStartRestartGroup.startReplaceGroup(-1891243071);
                    if (z4) {
                        z13 = true;
                    } else {
                        z13 = true;
                    }
                    bm3<? super Composer, ? super Integer, j59> bm3Var19 = bm3Var3;
                    mutableState2 = mutableState;
                    TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var19, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                    composerStartRestartGroup = composerStartRestartGroup;
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    mutableState2 = mutableState;
                    composerStartRestartGroup.startReplaceGroup(-1890863476);
                    composerStartRestartGroup.endReplaceGroup();
                }
                int i1112 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                tooltipState2 = tooltipState;
                boolean z111112 = z10;
                boolean z111113 = z11;
                modifier3 = modifier4;
                WrappedAnchor(z111112, tooltipState2, mutableState2, z111113, modifier3, bm3Var2, composerStartRestartGroup, i1112, 0);
                composerStartRestartGroup.endNode();
                if ((i3 & 896) != 256) {
                    z5 = false;
                }
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (z5) {
                    objRememberedValue3 = new oh0(tooltipState2, 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new oh0(tooltipState2, 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z7 = z111112;
                z8 = z111113;
                ll3Var3 = ll3Var5;
            } else {
                tooltipState2 = tooltipState;
                composerStartRestartGroup.skipToGroupEnd();
                z7 = z2;
                modifier3 = modifier2;
                ll3Var3 = ll3Var2;
                z8 = z3;
            }
            Composer composer9 = composerStartRestartGroup;
            z9 = z4;
            scopeUpdateScopeEndRestartGroup = composer9.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final TooltipState tooltipState10 = tooltipState2;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qh0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return BasicTooltipKt.BasicTooltipBox$lambda$5(popupPositionProvider, bm3Var, tooltipState10, modifier3, ll3Var3, z9, z7, z8, bm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        bm3Var3 = bm3Var;
        if ((i2 & 4) != 0) {
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i & 512) == 0) {
                zChangedInstance = composerStartRestartGroup.changed(tooltipState);
            } else {
                zChangedInstance = composerStartRestartGroup.changedInstance(tooltipState);
            }
            if (zChangedInstance) {
                i4 = 256;
            } else {
                i4 = 128;
            }
            i3 |= i4;
        }
        i5 = i2 & 8;
        if (i5 != 0) {
            if ((i & 3072) == 0) {
                modifier2 = modifier;
                if (composerStartRestartGroup.changed(modifier2)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i3 |= i6;
            }
            i7 = i2 & 16;
            if (i7 != 0) {
                if ((i & 24576) == 0) {
                    ll3Var2 = ll3Var;
                    if (composerStartRestartGroup.changedInstance(ll3Var2)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i3 |= i8;
                }
                i9 = i2 & 32;
                if (i9 != 0) {
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i10 = 196608;
                    z4 = z;
                } else {
                    i10 = 196608;
                    z4 = z;
                    if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(z4)) {
                            i11 = 131072;
                        } else {
                            i11 = 65536;
                        }
                        i3 |= i11;
                    }
                }
                i12 = i2 & 64;
                if (i12 != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i13 = 1048576;
                    } else {
                        i13 = 524288;
                    }
                    i3 |= i13;
                }
                i14 = i2 & 128;
                if (i14 != 0) {
                    i3 |= 12582912;
                } else if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(z3)) {
                        i15 = 8388608;
                    } else {
                        i15 = 4194304;
                    }
                    i3 |= i15;
                }
                if ((i2 & 256) != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                            i16 = 67108864;
                        } else {
                            i16 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i16;
                    }
                    z5 = true;
                    if ((i3 & 38347923) != 38347922) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z6, i3 & 1)) {
                        if (i5 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i7 != 0) {
                            ll3Var4 = null;
                        } else {
                            ll3Var4 = ll3Var2;
                        }
                        if (i9 != 0) {
                            z4 = false;
                        }
                        if (i12 != 0) {
                            z10 = true;
                        } else {
                            z10 = z2;
                        }
                        if (i14 != 0) {
                            z11 = false;
                        } else {
                            z11 = z3;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1221877520, i3, -1, "androidx.compose.material3.internal.BasicTooltipBox (BasicTooltip.kt:103)");
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        y22Var = (y22) objRememberedValue;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == companion.getEmpty()) {
                            objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        mutableState = (MutableState) objRememberedValue2;
                        if (z11) {
                            z12 = false;
                        } else {
                            z12 = false;
                        }
                        Modifier.Companion companion12 = Modifier.Companion;
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy9 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                        boolean z111114 = z12;
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap9 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier9 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion12);
                        companion2 = ComposeUiNode.Companion;
                        ll3Var5 = ll3Var4;
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
                        composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3 bm3VarB9 = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy9, composerM5355constructorimpl, currentCompositionLocalMap9);
                        if (composerM5355constructorimpl.getInserting()) {
                            companion3 = companion2;
                            if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier9, companion3.getSetModifier());
                            BoxScopeInstance boxScopeInstance17 = BoxScopeInstance.INSTANCE;
                            if (tooltipState.isVisible()) {
                                composerStartRestartGroup.startReplaceGroup(-1891243071);
                                if (z4) {
                                    z13 = true;
                                } else {
                                    z13 = true;
                                }
                                bm3<? super Composer, ? super Integer, j59> bm3Var110 = bm3Var3;
                                mutableState2 = mutableState;
                                TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var110, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                                composerStartRestartGroup = composerStartRestartGroup;
                                composerStartRestartGroup.endReplaceGroup();
                            } else {
                                mutableState2 = mutableState;
                                composerStartRestartGroup.startReplaceGroup(-1890863476);
                                composerStartRestartGroup.endReplaceGroup();
                            }
                            int i1113 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                            tooltipState2 = tooltipState;
                            boolean z111115 = z10;
                            boolean z111116 = z11;
                            modifier3 = modifier4;
                            WrappedAnchor(z111115, tooltipState2, mutableState2, z111116, modifier3, bm3Var2, composerStartRestartGroup, i1113, 0);
                            composerStartRestartGroup.endNode();
                            if ((i3 & 896) != 256) {
                                z5 = false;
                            }
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (z5) {
                                objRememberedValue3 = new oh0(tooltipState2, 0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new oh0(tooltipState2, 0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            z7 = z111115;
                            z8 = z111116;
                            ll3Var3 = ll3Var5;
                        } else {
                            companion3 = companion2;
                        }
                        dc.b(bm3VarB9, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier9, companion3.getSetModifier());
                        BoxScopeInstance boxScopeInstance18 = BoxScopeInstance.INSTANCE;
                        if (tooltipState.isVisible()) {
                            composerStartRestartGroup.startReplaceGroup(-1891243071);
                            if (z4) {
                                z13 = true;
                            } else {
                                z13 = true;
                            }
                            bm3<? super Composer, ? super Integer, j59> bm3Var111 = bm3Var3;
                            mutableState2 = mutableState;
                            TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var111, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                            composerStartRestartGroup = composerStartRestartGroup;
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            mutableState2 = mutableState;
                            composerStartRestartGroup.startReplaceGroup(-1890863476);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        int i1114 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                        tooltipState2 = tooltipState;
                        boolean z111117 = z10;
                        boolean z111118 = z11;
                        modifier3 = modifier4;
                        WrappedAnchor(z111117, tooltipState2, mutableState2, z111118, modifier3, bm3Var2, composerStartRestartGroup, i1114, 0);
                        composerStartRestartGroup.endNode();
                        if ((i3 & 896) != 256) {
                            z5 = false;
                        }
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z5) {
                            objRememberedValue3 = new oh0(tooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new oh0(tooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z7 = z111117;
                        z8 = z111118;
                        ll3Var3 = ll3Var5;
                    } else {
                        tooltipState2 = tooltipState;
                        composerStartRestartGroup.skipToGroupEnd();
                        z7 = z2;
                        modifier3 = modifier2;
                        ll3Var3 = ll3Var2;
                        z8 = z3;
                    }
                    Composer composer10 = composerStartRestartGroup;
                    z9 = z4;
                    scopeUpdateScopeEndRestartGroup = composer10.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        final TooltipState tooltipState11 = tooltipState2;
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qh0
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return BasicTooltipKt.BasicTooltipBox$lambda$5(popupPositionProvider, bm3Var, tooltipState11, modifier3, ll3Var3, z9, z7, z8, bm3Var2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                z5 = true;
                if ((i3 & 38347923) != 38347922) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i3 & 1)) {
                    if (i5 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i7 != 0) {
                        ll3Var4 = null;
                    } else {
                        ll3Var4 = ll3Var2;
                    }
                    if (i9 != 0) {
                        z4 = false;
                    }
                    if (i12 != 0) {
                        z10 = true;
                    } else {
                        z10 = z2;
                    }
                    if (i14 != 0) {
                        z11 = false;
                    } else {
                        z11 = z3;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1221877520, i3, -1, "androidx.compose.material3.internal.BasicTooltipBox (BasicTooltip.kt:103)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    y22Var = (y22) objRememberedValue;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    mutableState = (MutableState) objRememberedValue2;
                    if (z11) {
                        z12 = false;
                    } else {
                        z12 = false;
                    }
                    Modifier.Companion companion13 = Modifier.Companion;
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy10 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                    boolean z111119 = z12;
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap10 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier10 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion13);
                    companion2 = ComposeUiNode.Companion;
                    ll3Var5 = ll3Var4;
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
                    composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3 bm3VarB10 = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy10, composerM5355constructorimpl, currentCompositionLocalMap10);
                    if (composerM5355constructorimpl.getInserting()) {
                        companion3 = companion2;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier10, companion3.getSetModifier());
                        BoxScopeInstance boxScopeInstance19 = BoxScopeInstance.INSTANCE;
                        if (tooltipState.isVisible()) {
                            composerStartRestartGroup.startReplaceGroup(-1891243071);
                            if (z4) {
                                z13 = true;
                            } else {
                                z13 = true;
                            }
                            bm3<? super Composer, ? super Integer, j59> bm3Var112 = bm3Var3;
                            mutableState2 = mutableState;
                            TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var112, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                            composerStartRestartGroup = composerStartRestartGroup;
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            mutableState2 = mutableState;
                            composerStartRestartGroup.startReplaceGroup(-1890863476);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        int i1115 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                        tooltipState2 = tooltipState;
                        boolean z1111110 = z10;
                        boolean z1111111 = z11;
                        modifier3 = modifier4;
                        WrappedAnchor(z1111110, tooltipState2, mutableState2, z1111111, modifier3, bm3Var2, composerStartRestartGroup, i1115, 0);
                        composerStartRestartGroup.endNode();
                        if ((i3 & 896) != 256) {
                            z5 = false;
                        }
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z5) {
                            objRememberedValue3 = new oh0(tooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new oh0(tooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z7 = z1111110;
                        z8 = z1111111;
                        ll3Var3 = ll3Var5;
                    } else {
                        companion3 = companion2;
                    }
                    dc.b(bm3VarB10, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier10, companion3.getSetModifier());
                    BoxScopeInstance boxScopeInstance110 = BoxScopeInstance.INSTANCE;
                    if (tooltipState.isVisible()) {
                        composerStartRestartGroup.startReplaceGroup(-1891243071);
                        if (z4) {
                            z13 = true;
                        } else {
                            z13 = true;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var113 = bm3Var3;
                        mutableState2 = mutableState;
                        TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var113, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                        composerStartRestartGroup = composerStartRestartGroup;
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        mutableState2 = mutableState;
                        composerStartRestartGroup.startReplaceGroup(-1890863476);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    int i1116 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                    tooltipState2 = tooltipState;
                    boolean z1111112 = z10;
                    boolean z1111113 = z11;
                    modifier3 = modifier4;
                    WrappedAnchor(z1111112, tooltipState2, mutableState2, z1111113, modifier3, bm3Var2, composerStartRestartGroup, i1116, 0);
                    composerStartRestartGroup.endNode();
                    if ((i3 & 896) != 256) {
                        z5 = false;
                    }
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        objRememberedValue3 = new oh0(tooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new oh0(tooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z7 = z1111112;
                    z8 = z1111113;
                    ll3Var3 = ll3Var5;
                } else {
                    tooltipState2 = tooltipState;
                    composerStartRestartGroup.skipToGroupEnd();
                    z7 = z2;
                    modifier3 = modifier2;
                    ll3Var3 = ll3Var2;
                    z8 = z3;
                }
                Composer composer11 = composerStartRestartGroup;
                z9 = z4;
                scopeUpdateScopeEndRestartGroup = composer11.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final TooltipState tooltipState12 = tooltipState2;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qh0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BasicTooltipKt.BasicTooltipBox$lambda$5(popupPositionProvider, bm3Var, tooltipState12, modifier3, ll3Var3, z9, z7, z8, bm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            ll3Var2 = ll3Var;
            i9 = i2 & 32;
            if (i9 != 0) {
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i10 = 196608;
                z4 = z;
            } else {
                i10 = 196608;
                z4 = z;
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(z4)) {
                        i11 = 131072;
                    } else {
                        i11 = 65536;
                    }
                    i3 |= i11;
                }
            }
            i12 = i2 & 64;
            if (i12 != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changed(z2)) {
                    i13 = 1048576;
                } else {
                    i13 = 524288;
                }
                i3 |= i13;
            }
            i14 = i2 & 128;
            if (i14 != 0) {
                i3 |= 12582912;
            } else if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(z3)) {
                    i15 = 8388608;
                } else {
                    i15 = 4194304;
                }
                i3 |= i15;
            }
            if ((i2 & 256) != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        i16 = 67108864;
                    } else {
                        i16 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i16;
                }
                z5 = true;
                if ((i3 & 38347923) != 38347922) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i3 & 1)) {
                    if (i5 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i7 != 0) {
                        ll3Var4 = null;
                    } else {
                        ll3Var4 = ll3Var2;
                    }
                    if (i9 != 0) {
                        z4 = false;
                    }
                    if (i12 != 0) {
                        z10 = true;
                    } else {
                        z10 = z2;
                    }
                    if (i14 != 0) {
                        z11 = false;
                    } else {
                        z11 = z3;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1221877520, i3, -1, "androidx.compose.material3.internal.BasicTooltipBox (BasicTooltip.kt:103)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    y22Var = (y22) objRememberedValue;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    mutableState = (MutableState) objRememberedValue2;
                    if (z11) {
                        z12 = false;
                    } else {
                        z12 = false;
                    }
                    Modifier.Companion companion14 = Modifier.Companion;
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy11 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                    boolean z1111114 = z12;
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap11 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier11 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion14);
                    companion2 = ComposeUiNode.Companion;
                    ll3Var5 = ll3Var4;
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
                    composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3 bm3VarB11 = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy11, composerM5355constructorimpl, currentCompositionLocalMap11);
                    if (composerM5355constructorimpl.getInserting()) {
                        companion3 = companion2;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier11, companion3.getSetModifier());
                        BoxScopeInstance boxScopeInstance111 = BoxScopeInstance.INSTANCE;
                        if (tooltipState.isVisible()) {
                            composerStartRestartGroup.startReplaceGroup(-1891243071);
                            if (z4) {
                                z13 = true;
                            } else {
                                z13 = true;
                            }
                            bm3<? super Composer, ? super Integer, j59> bm3Var114 = bm3Var3;
                            mutableState2 = mutableState;
                            TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var114, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                            composerStartRestartGroup = composerStartRestartGroup;
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            mutableState2 = mutableState;
                            composerStartRestartGroup.startReplaceGroup(-1890863476);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        int i1117 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                        tooltipState2 = tooltipState;
                        boolean z1111115 = z10;
                        boolean z1111116 = z11;
                        modifier3 = modifier4;
                        WrappedAnchor(z1111115, tooltipState2, mutableState2, z1111116, modifier3, bm3Var2, composerStartRestartGroup, i1117, 0);
                        composerStartRestartGroup.endNode();
                        if ((i3 & 896) != 256) {
                            z5 = false;
                        }
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z5) {
                            objRememberedValue3 = new oh0(tooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new oh0(tooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z7 = z1111115;
                        z8 = z1111116;
                        ll3Var3 = ll3Var5;
                    } else {
                        companion3 = companion2;
                    }
                    dc.b(bm3VarB11, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier11, companion3.getSetModifier());
                    BoxScopeInstance boxScopeInstance112 = BoxScopeInstance.INSTANCE;
                    if (tooltipState.isVisible()) {
                        composerStartRestartGroup.startReplaceGroup(-1891243071);
                        if (z4) {
                            z13 = true;
                        } else {
                            z13 = true;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var115 = bm3Var3;
                        mutableState2 = mutableState;
                        TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var115, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                        composerStartRestartGroup = composerStartRestartGroup;
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        mutableState2 = mutableState;
                        composerStartRestartGroup.startReplaceGroup(-1890863476);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    int i1118 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                    tooltipState2 = tooltipState;
                    boolean z1111117 = z10;
                    boolean z1111118 = z11;
                    modifier3 = modifier4;
                    WrappedAnchor(z1111117, tooltipState2, mutableState2, z1111118, modifier3, bm3Var2, composerStartRestartGroup, i1118, 0);
                    composerStartRestartGroup.endNode();
                    if ((i3 & 896) != 256) {
                        z5 = false;
                    }
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        objRememberedValue3 = new oh0(tooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new oh0(tooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z7 = z1111117;
                    z8 = z1111118;
                    ll3Var3 = ll3Var5;
                } else {
                    tooltipState2 = tooltipState;
                    composerStartRestartGroup.skipToGroupEnd();
                    z7 = z2;
                    modifier3 = modifier2;
                    ll3Var3 = ll3Var2;
                    z8 = z3;
                }
                Composer composer12 = composerStartRestartGroup;
                z9 = z4;
                scopeUpdateScopeEndRestartGroup = composer12.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final TooltipState tooltipState13 = tooltipState2;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qh0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BasicTooltipKt.BasicTooltipBox$lambda$5(popupPositionProvider, bm3Var, tooltipState13, modifier3, ll3Var3, z9, z7, z8, bm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            z5 = true;
            if ((i3 & 38347923) != 38347922) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z6, i3 & 1)) {
                if (i5 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i7 != 0) {
                    ll3Var4 = null;
                } else {
                    ll3Var4 = ll3Var2;
                }
                if (i9 != 0) {
                    z4 = false;
                }
                if (i12 != 0) {
                    z10 = true;
                } else {
                    z10 = z2;
                }
                if (i14 != 0) {
                    z11 = false;
                } else {
                    z11 = z3;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1221877520, i3, -1, "androidx.compose.material3.internal.BasicTooltipBox (BasicTooltip.kt:103)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                y22Var = (y22) objRememberedValue;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                mutableState = (MutableState) objRememberedValue2;
                if (z11) {
                    z12 = false;
                } else {
                    z12 = false;
                }
                Modifier.Companion companion15 = Modifier.Companion;
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy12 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                boolean z1111119 = z12;
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap12 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier12 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion15);
                companion2 = ComposeUiNode.Companion;
                ll3Var5 = ll3Var4;
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
                composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3 bm3VarB12 = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy12, composerM5355constructorimpl, currentCompositionLocalMap12);
                if (composerM5355constructorimpl.getInserting()) {
                    companion3 = companion2;
                    if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier12, companion3.getSetModifier());
                    BoxScopeInstance boxScopeInstance113 = BoxScopeInstance.INSTANCE;
                    if (tooltipState.isVisible()) {
                        composerStartRestartGroup.startReplaceGroup(-1891243071);
                        if (z4) {
                            z13 = true;
                        } else {
                            z13 = true;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var116 = bm3Var3;
                        mutableState2 = mutableState;
                        TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var116, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                        composerStartRestartGroup = composerStartRestartGroup;
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        mutableState2 = mutableState;
                        composerStartRestartGroup.startReplaceGroup(-1890863476);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    int i1119 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                    tooltipState2 = tooltipState;
                    boolean z11111110 = z10;
                    boolean z11111111 = z11;
                    modifier3 = modifier4;
                    WrappedAnchor(z11111110, tooltipState2, mutableState2, z11111111, modifier3, bm3Var2, composerStartRestartGroup, i1119, 0);
                    composerStartRestartGroup.endNode();
                    if ((i3 & 896) != 256) {
                        z5 = false;
                    }
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        objRememberedValue3 = new oh0(tooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new oh0(tooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z7 = z11111110;
                    z8 = z11111111;
                    ll3Var3 = ll3Var5;
                } else {
                    companion3 = companion2;
                }
                dc.b(bm3VarB12, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier12, companion3.getSetModifier());
                BoxScopeInstance boxScopeInstance114 = BoxScopeInstance.INSTANCE;
                if (tooltipState.isVisible()) {
                    composerStartRestartGroup.startReplaceGroup(-1891243071);
                    if (z4) {
                        z13 = true;
                    } else {
                        z13 = true;
                    }
                    bm3<? super Composer, ? super Integer, j59> bm3Var117 = bm3Var3;
                    mutableState2 = mutableState;
                    TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var117, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                    composerStartRestartGroup = composerStartRestartGroup;
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    mutableState2 = mutableState;
                    composerStartRestartGroup.startReplaceGroup(-1890863476);
                    composerStartRestartGroup.endReplaceGroup();
                }
                int i11110 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                tooltipState2 = tooltipState;
                boolean z11111112 = z10;
                boolean z11111113 = z11;
                modifier3 = modifier4;
                WrappedAnchor(z11111112, tooltipState2, mutableState2, z11111113, modifier3, bm3Var2, composerStartRestartGroup, i11110, 0);
                composerStartRestartGroup.endNode();
                if ((i3 & 896) != 256) {
                    z5 = false;
                }
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (z5) {
                    objRememberedValue3 = new oh0(tooltipState2, 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new oh0(tooltipState2, 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z7 = z11111112;
                z8 = z11111113;
                ll3Var3 = ll3Var5;
            } else {
                tooltipState2 = tooltipState;
                composerStartRestartGroup.skipToGroupEnd();
                z7 = z2;
                modifier3 = modifier2;
                ll3Var3 = ll3Var2;
                z8 = z3;
            }
            Composer composer13 = composerStartRestartGroup;
            z9 = z4;
            scopeUpdateScopeEndRestartGroup = composer13.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final TooltipState tooltipState14 = tooltipState2;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qh0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return BasicTooltipKt.BasicTooltipBox$lambda$5(popupPositionProvider, bm3Var, tooltipState14, modifier3, ll3Var3, z9, z7, z8, bm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        modifier2 = modifier;
        i7 = i2 & 16;
        if (i7 != 0) {
            if ((i & 24576) == 0) {
                ll3Var2 = ll3Var;
                if (composerStartRestartGroup.changedInstance(ll3Var2)) {
                    i8 = 16384;
                } else {
                    i8 = 8192;
                }
                i3 |= i8;
            }
            i9 = i2 & 32;
            if (i9 != 0) {
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i10 = 196608;
                z4 = z;
            } else {
                i10 = 196608;
                z4 = z;
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(z4)) {
                        i11 = 131072;
                    } else {
                        i11 = 65536;
                    }
                    i3 |= i11;
                }
            }
            i12 = i2 & 64;
            if (i12 != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changed(z2)) {
                    i13 = 1048576;
                } else {
                    i13 = 524288;
                }
                i3 |= i13;
            }
            i14 = i2 & 128;
            if (i14 != 0) {
                i3 |= 12582912;
            } else if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(z3)) {
                    i15 = 8388608;
                } else {
                    i15 = 4194304;
                }
                i3 |= i15;
            }
            if ((i2 & 256) != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        i16 = 67108864;
                    } else {
                        i16 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i16;
                }
                z5 = true;
                if ((i3 & 38347923) != 38347922) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i3 & 1)) {
                    if (i5 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i7 != 0) {
                        ll3Var4 = null;
                    } else {
                        ll3Var4 = ll3Var2;
                    }
                    if (i9 != 0) {
                        z4 = false;
                    }
                    if (i12 != 0) {
                        z10 = true;
                    } else {
                        z10 = z2;
                    }
                    if (i14 != 0) {
                        z11 = false;
                    } else {
                        z11 = z3;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1221877520, i3, -1, "androidx.compose.material3.internal.BasicTooltipBox (BasicTooltip.kt:103)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    y22Var = (y22) objRememberedValue;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    mutableState = (MutableState) objRememberedValue2;
                    if (z11) {
                        z12 = false;
                    } else {
                        z12 = false;
                    }
                    Modifier.Companion companion16 = Modifier.Companion;
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy13 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                    boolean z11111114 = z12;
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap13 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier13 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion16);
                    companion2 = ComposeUiNode.Companion;
                    ll3Var5 = ll3Var4;
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
                    composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3 bm3VarB13 = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy13, composerM5355constructorimpl, currentCompositionLocalMap13);
                    if (composerM5355constructorimpl.getInserting()) {
                        companion3 = companion2;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier13, companion3.getSetModifier());
                        BoxScopeInstance boxScopeInstance115 = BoxScopeInstance.INSTANCE;
                        if (tooltipState.isVisible()) {
                            composerStartRestartGroup.startReplaceGroup(-1891243071);
                            if (z4) {
                                z13 = true;
                            } else {
                                z13 = true;
                            }
                            bm3<? super Composer, ? super Integer, j59> bm3Var118 = bm3Var3;
                            mutableState2 = mutableState;
                            TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var118, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                            composerStartRestartGroup = composerStartRestartGroup;
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            mutableState2 = mutableState;
                            composerStartRestartGroup.startReplaceGroup(-1890863476);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        int i11111 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                        tooltipState2 = tooltipState;
                        boolean z11111115 = z10;
                        boolean z11111116 = z11;
                        modifier3 = modifier4;
                        WrappedAnchor(z11111115, tooltipState2, mutableState2, z11111116, modifier3, bm3Var2, composerStartRestartGroup, i11111, 0);
                        composerStartRestartGroup.endNode();
                        if ((i3 & 896) != 256) {
                            z5 = false;
                        }
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z5) {
                            objRememberedValue3 = new oh0(tooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new oh0(tooltipState2, 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z7 = z11111115;
                        z8 = z11111116;
                        ll3Var3 = ll3Var5;
                    } else {
                        companion3 = companion2;
                    }
                    dc.b(bm3VarB13, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier13, companion3.getSetModifier());
                    BoxScopeInstance boxScopeInstance116 = BoxScopeInstance.INSTANCE;
                    if (tooltipState.isVisible()) {
                        composerStartRestartGroup.startReplaceGroup(-1891243071);
                        if (z4) {
                            z13 = true;
                        } else {
                            z13 = true;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var119 = bm3Var3;
                        mutableState2 = mutableState;
                        TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var119, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                        composerStartRestartGroup = composerStartRestartGroup;
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        mutableState2 = mutableState;
                        composerStartRestartGroup.startReplaceGroup(-1890863476);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    int i11112 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                    tooltipState2 = tooltipState;
                    boolean z11111117 = z10;
                    boolean z11111118 = z11;
                    modifier3 = modifier4;
                    WrappedAnchor(z11111117, tooltipState2, mutableState2, z11111118, modifier3, bm3Var2, composerStartRestartGroup, i11112, 0);
                    composerStartRestartGroup.endNode();
                    if ((i3 & 896) != 256) {
                        z5 = false;
                    }
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        objRememberedValue3 = new oh0(tooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new oh0(tooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z7 = z11111117;
                    z8 = z11111118;
                    ll3Var3 = ll3Var5;
                } else {
                    tooltipState2 = tooltipState;
                    composerStartRestartGroup.skipToGroupEnd();
                    z7 = z2;
                    modifier3 = modifier2;
                    ll3Var3 = ll3Var2;
                    z8 = z3;
                }
                Composer composer14 = composerStartRestartGroup;
                z9 = z4;
                scopeUpdateScopeEndRestartGroup = composer14.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final TooltipState tooltipState15 = tooltipState2;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qh0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BasicTooltipKt.BasicTooltipBox$lambda$5(popupPositionProvider, bm3Var, tooltipState15, modifier3, ll3Var3, z9, z7, z8, bm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            z5 = true;
            if ((i3 & 38347923) != 38347922) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z6, i3 & 1)) {
                if (i5 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i7 != 0) {
                    ll3Var4 = null;
                } else {
                    ll3Var4 = ll3Var2;
                }
                if (i9 != 0) {
                    z4 = false;
                }
                if (i12 != 0) {
                    z10 = true;
                } else {
                    z10 = z2;
                }
                if (i14 != 0) {
                    z11 = false;
                } else {
                    z11 = z3;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1221877520, i3, -1, "androidx.compose.material3.internal.BasicTooltipBox (BasicTooltip.kt:103)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                y22Var = (y22) objRememberedValue;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                mutableState = (MutableState) objRememberedValue2;
                if (z11) {
                    z12 = false;
                } else {
                    z12 = false;
                }
                Modifier.Companion companion17 = Modifier.Companion;
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy14 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                boolean z11111119 = z12;
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap14 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier14 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion17);
                companion2 = ComposeUiNode.Companion;
                ll3Var5 = ll3Var4;
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
                composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3 bm3VarB14 = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy14, composerM5355constructorimpl, currentCompositionLocalMap14);
                if (composerM5355constructorimpl.getInserting()) {
                    companion3 = companion2;
                    if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier14, companion3.getSetModifier());
                    BoxScopeInstance boxScopeInstance117 = BoxScopeInstance.INSTANCE;
                    if (tooltipState.isVisible()) {
                        composerStartRestartGroup.startReplaceGroup(-1891243071);
                        if (z4) {
                            z13 = true;
                        } else {
                            z13 = true;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var1110 = bm3Var3;
                        mutableState2 = mutableState;
                        TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var1110, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                        composerStartRestartGroup = composerStartRestartGroup;
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        mutableState2 = mutableState;
                        composerStartRestartGroup.startReplaceGroup(-1890863476);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    int i11113 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                    tooltipState2 = tooltipState;
                    boolean z111111110 = z10;
                    boolean z111111111 = z11;
                    modifier3 = modifier4;
                    WrappedAnchor(z111111110, tooltipState2, mutableState2, z111111111, modifier3, bm3Var2, composerStartRestartGroup, i11113, 0);
                    composerStartRestartGroup.endNode();
                    if ((i3 & 896) != 256) {
                        z5 = false;
                    }
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        objRememberedValue3 = new oh0(tooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new oh0(tooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z7 = z111111110;
                    z8 = z111111111;
                    ll3Var3 = ll3Var5;
                } else {
                    companion3 = companion2;
                }
                dc.b(bm3VarB14, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier14, companion3.getSetModifier());
                BoxScopeInstance boxScopeInstance118 = BoxScopeInstance.INSTANCE;
                if (tooltipState.isVisible()) {
                    composerStartRestartGroup.startReplaceGroup(-1891243071);
                    if (z4) {
                        z13 = true;
                    } else {
                        z13 = true;
                    }
                    bm3<? super Composer, ? super Integer, j59> bm3Var1111 = bm3Var3;
                    mutableState2 = mutableState;
                    TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var1111, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                    composerStartRestartGroup = composerStartRestartGroup;
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    mutableState2 = mutableState;
                    composerStartRestartGroup.startReplaceGroup(-1890863476);
                    composerStartRestartGroup.endReplaceGroup();
                }
                int i11114 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                tooltipState2 = tooltipState;
                boolean z111111112 = z10;
                boolean z111111113 = z11;
                modifier3 = modifier4;
                WrappedAnchor(z111111112, tooltipState2, mutableState2, z111111113, modifier3, bm3Var2, composerStartRestartGroup, i11114, 0);
                composerStartRestartGroup.endNode();
                if ((i3 & 896) != 256) {
                    z5 = false;
                }
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (z5) {
                    objRememberedValue3 = new oh0(tooltipState2, 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new oh0(tooltipState2, 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z7 = z111111112;
                z8 = z111111113;
                ll3Var3 = ll3Var5;
            } else {
                tooltipState2 = tooltipState;
                composerStartRestartGroup.skipToGroupEnd();
                z7 = z2;
                modifier3 = modifier2;
                ll3Var3 = ll3Var2;
                z8 = z3;
            }
            Composer composer15 = composerStartRestartGroup;
            z9 = z4;
            scopeUpdateScopeEndRestartGroup = composer15.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final TooltipState tooltipState16 = tooltipState2;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qh0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return BasicTooltipKt.BasicTooltipBox$lambda$5(popupPositionProvider, bm3Var, tooltipState16, modifier3, ll3Var3, z9, z7, z8, bm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        ll3Var2 = ll3Var;
        i9 = i2 & 32;
        if (i9 != 0) {
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i10 = 196608;
            z4 = z;
        } else {
            i10 = 196608;
            z4 = z;
            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(z4)) {
                    i11 = 131072;
                } else {
                    i11 = 65536;
                }
                i3 |= i11;
            }
        }
        i12 = i2 & 64;
        if (i12 != 0) {
            i3 |= 1572864;
        } else if ((i & 1572864) == 0) {
            if (composerStartRestartGroup.changed(z2)) {
                i13 = 1048576;
            } else {
                i13 = 524288;
            }
            i3 |= i13;
        }
        i14 = i2 & 128;
        if (i14 != 0) {
            i3 |= 12582912;
        } else if ((i & 12582912) == 0) {
            if (composerStartRestartGroup.changed(z3)) {
                i15 = 8388608;
            } else {
                i15 = 4194304;
            }
            i3 |= i15;
        }
        if ((i2 & 256) != 0) {
            if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    i16 = 67108864;
                } else {
                    i16 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i16;
            }
            z5 = true;
            if ((i3 & 38347923) != 38347922) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z6, i3 & 1)) {
                if (i5 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i7 != 0) {
                    ll3Var4 = null;
                } else {
                    ll3Var4 = ll3Var2;
                }
                if (i9 != 0) {
                    z4 = false;
                }
                if (i12 != 0) {
                    z10 = true;
                } else {
                    z10 = z2;
                }
                if (i14 != 0) {
                    z11 = false;
                } else {
                    z11 = z3;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1221877520, i3, -1, "androidx.compose.material3.internal.BasicTooltipBox (BasicTooltip.kt:103)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                y22Var = (y22) objRememberedValue;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                mutableState = (MutableState) objRememberedValue2;
                if (z11) {
                    z12 = false;
                } else {
                    z12 = false;
                }
                Modifier.Companion companion18 = Modifier.Companion;
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy15 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                boolean z111111114 = z12;
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap15 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier15 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion18);
                companion2 = ComposeUiNode.Companion;
                ll3Var5 = ll3Var4;
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
                composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3 bm3VarB15 = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy15, composerM5355constructorimpl, currentCompositionLocalMap15);
                if (composerM5355constructorimpl.getInserting()) {
                    companion3 = companion2;
                    if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier15, companion3.getSetModifier());
                    BoxScopeInstance boxScopeInstance119 = BoxScopeInstance.INSTANCE;
                    if (tooltipState.isVisible()) {
                        composerStartRestartGroup.startReplaceGroup(-1891243071);
                        if (z4) {
                            z13 = true;
                        } else {
                            z13 = true;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var1112 = bm3Var3;
                        mutableState2 = mutableState;
                        TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var1112, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                        composerStartRestartGroup = composerStartRestartGroup;
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        mutableState2 = mutableState;
                        composerStartRestartGroup.startReplaceGroup(-1890863476);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    int i11115 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                    tooltipState2 = tooltipState;
                    boolean z111111115 = z10;
                    boolean z111111116 = z11;
                    modifier3 = modifier4;
                    WrappedAnchor(z111111115, tooltipState2, mutableState2, z111111116, modifier3, bm3Var2, composerStartRestartGroup, i11115, 0);
                    composerStartRestartGroup.endNode();
                    if ((i3 & 896) != 256) {
                        z5 = false;
                    }
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        objRememberedValue3 = new oh0(tooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new oh0(tooltipState2, 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z7 = z111111115;
                    z8 = z111111116;
                    ll3Var3 = ll3Var5;
                } else {
                    companion3 = companion2;
                }
                dc.b(bm3VarB15, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier15, companion3.getSetModifier());
                BoxScopeInstance boxScopeInstance1110 = BoxScopeInstance.INSTANCE;
                if (tooltipState.isVisible()) {
                    composerStartRestartGroup.startReplaceGroup(-1891243071);
                    if (z4) {
                        z13 = true;
                    } else {
                        z13 = true;
                    }
                    bm3<? super Composer, ? super Integer, j59> bm3Var1113 = bm3Var3;
                    mutableState2 = mutableState;
                    TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var1113, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                    composerStartRestartGroup = composerStartRestartGroup;
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    mutableState2 = mutableState;
                    composerStartRestartGroup.startReplaceGroup(-1890863476);
                    composerStartRestartGroup.endReplaceGroup();
                }
                int i11116 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                tooltipState2 = tooltipState;
                boolean z111111117 = z10;
                boolean z111111118 = z11;
                modifier3 = modifier4;
                WrappedAnchor(z111111117, tooltipState2, mutableState2, z111111118, modifier3, bm3Var2, composerStartRestartGroup, i11116, 0);
                composerStartRestartGroup.endNode();
                if ((i3 & 896) != 256) {
                    z5 = false;
                }
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (z5) {
                    objRememberedValue3 = new oh0(tooltipState2, 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new oh0(tooltipState2, 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z7 = z111111117;
                z8 = z111111118;
                ll3Var3 = ll3Var5;
            } else {
                tooltipState2 = tooltipState;
                composerStartRestartGroup.skipToGroupEnd();
                z7 = z2;
                modifier3 = modifier2;
                ll3Var3 = ll3Var2;
                z8 = z3;
            }
            Composer composer16 = composerStartRestartGroup;
            z9 = z4;
            scopeUpdateScopeEndRestartGroup = composer16.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final TooltipState tooltipState17 = tooltipState2;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qh0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return BasicTooltipKt.BasicTooltipBox$lambda$5(popupPositionProvider, bm3Var, tooltipState17, modifier3, ll3Var3, z9, z7, z8, bm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 100663296;
        z5 = true;
        if ((i3 & 38347923) != 38347922) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z6, i3 & 1)) {
            if (i5 != 0) {
                modifier4 = Modifier.Companion;
            } else {
                modifier4 = modifier2;
            }
            if (i7 != 0) {
                ll3Var4 = null;
            } else {
                ll3Var4 = ll3Var2;
            }
            if (i9 != 0) {
                z4 = false;
            }
            if (i12 != 0) {
                z10 = true;
            } else {
                z10 = z2;
            }
            if (i14 != 0) {
                z11 = false;
            } else {
                z11 = z3;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1221877520, i3, -1, "androidx.compose.material3.internal.BasicTooltipBox (BasicTooltip.kt:103)");
            }
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            y22Var = (y22) objRememberedValue;
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue2 == companion.getEmpty()) {
                objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            mutableState = (MutableState) objRememberedValue2;
            if (z11) {
                z12 = false;
            } else {
                z12 = false;
            }
            Modifier.Companion companion19 = Modifier.Companion;
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy16 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
            boolean z111111119 = z12;
            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap16 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier16 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion19);
            companion2 = ComposeUiNode.Companion;
            ll3Var5 = ll3Var4;
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
            composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
            bm3 bm3VarB16 = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy16, composerM5355constructorimpl, currentCompositionLocalMap16);
            if (composerM5355constructorimpl.getInserting()) {
                companion3 = companion2;
                if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier16, companion3.getSetModifier());
                BoxScopeInstance boxScopeInstance1111 = BoxScopeInstance.INSTANCE;
                if (tooltipState.isVisible()) {
                    composerStartRestartGroup.startReplaceGroup(-1891243071);
                    if (z4) {
                        z13 = true;
                    } else {
                        z13 = true;
                    }
                    bm3<? super Composer, ? super Integer, j59> bm3Var1114 = bm3Var3;
                    mutableState2 = mutableState;
                    TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var1114, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                    composerStartRestartGroup = composerStartRestartGroup;
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    mutableState2 = mutableState;
                    composerStartRestartGroup.startReplaceGroup(-1890863476);
                    composerStartRestartGroup.endReplaceGroup();
                }
                int i11117 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
                tooltipState2 = tooltipState;
                boolean z1111111110 = z10;
                boolean z1111111111 = z11;
                modifier3 = modifier4;
                WrappedAnchor(z1111111110, tooltipState2, mutableState2, z1111111111, modifier3, bm3Var2, composerStartRestartGroup, i11117, 0);
                composerStartRestartGroup.endNode();
                if ((i3 & 896) != 256) {
                    z5 = false;
                }
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (z5) {
                    objRememberedValue3 = new oh0(tooltipState2, 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new oh0(tooltipState2, 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z7 = z1111111110;
                z8 = z1111111111;
                ll3Var3 = ll3Var5;
            } else {
                companion3 = companion2;
            }
            dc.b(bm3VarB16, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier16, companion3.getSetModifier());
            BoxScopeInstance boxScopeInstance1112 = BoxScopeInstance.INSTANCE;
            if (tooltipState.isVisible()) {
                composerStartRestartGroup.startReplaceGroup(-1891243071);
                if (z4) {
                    z13 = true;
                } else {
                    z13 = true;
                }
                bm3<? super Composer, ? super Integer, j59> bm3Var1115 = bm3Var3;
                mutableState2 = mutableState;
                TooltipPopup(popupPositionProvider, tooltipState, ll3Var5, y22Var, z13, mutableState2, bm3Var1115, composerStartRestartGroup, (i3 & 14) | i10 | ((i3 >> 3) & 112) | ((i3 >> 6) & 896) | ((i3 << 15) & 3670016));
                composerStartRestartGroup = composerStartRestartGroup;
                composerStartRestartGroup.endReplaceGroup();
            } else {
                mutableState2 = mutableState;
                composerStartRestartGroup.startReplaceGroup(-1890863476);
                composerStartRestartGroup.endReplaceGroup();
            }
            int i11118 = ((i3 >> 18) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 3) & 112) | ((i3 >> 12) & 7168) | (57344 & (i3 << 3)) | ((i3 >> 9) & 458752);
            tooltipState2 = tooltipState;
            boolean z1111111112 = z10;
            boolean z1111111113 = z11;
            modifier3 = modifier4;
            WrappedAnchor(z1111111112, tooltipState2, mutableState2, z1111111113, modifier3, bm3Var2, composerStartRestartGroup, i11118, 0);
            composerStartRestartGroup.endNode();
            if ((i3 & 896) != 256) {
                z5 = false;
            }
            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (z5) {
                objRememberedValue3 = new oh0(tooltipState2, 0);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            } else {
                objRememberedValue3 = new oh0(tooltipState2, 0);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            EffectsKt.DisposableEffect(tooltipState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, (i3 >> 6) & 14);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            z7 = z1111111112;
            z8 = z1111111113;
            ll3Var3 = ll3Var5;
        } else {
            tooltipState2 = tooltipState;
            composerStartRestartGroup.skipToGroupEnd();
            z7 = z2;
            modifier3 = modifier2;
            ll3Var3 = ll3Var2;
            z8 = z3;
        }
        Composer composer17 = composerStartRestartGroup;
        z9 = z4;
        scopeUpdateScopeEndRestartGroup = composer17.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final TooltipState tooltipState18 = tooltipState2;
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qh0
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return BasicTooltipKt.BasicTooltipBox$lambda$5(popupPositionProvider, bm3Var, tooltipState18, modifier3, ll3Var3, z9, z7, z8, bm3Var2, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisposableEffectResult BasicTooltipBox$lambda$4$lambda$3(final TooltipState tooltipState, DisposableEffectScope disposableEffectScope) {
        return new DisposableEffectResult() { // from class: androidx.compose.material3.internal.BasicTooltipKt$BasicTooltipBox$lambda$4$lambda$3$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                tooltipState.onDispose();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 BasicTooltipBox$lambda$5(PopupPositionProvider popupPositionProvider, bm3 bm3Var, TooltipState tooltipState, Modifier modifier, ll3 ll3Var, boolean z, boolean z2, boolean z3, bm3 bm3Var2, int i, int i2, Composer composer, int i3) {
        BasicTooltipBox(popupPositionProvider, bm3Var, tooltipState, modifier, ll3Var, z, z2, z3, bm3Var2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    public static final TooltipState BasicTooltipState(boolean z, boolean z2, MutatorMutex mutatorMutex) {
        return new BasicTooltipStateImpl(z, z2, mutatorMutex);
    }

    public static /* synthetic */ TooltipState BasicTooltipState$default(boolean z, boolean z2, MutatorMutex mutatorMutex, int i, Object obj) {
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

    private static final void TooltipPopup(final PopupPositionProvider popupPositionProvider, final TooltipState tooltipState, final ll3<j59> ll3Var, final y22 y22Var, final boolean z, final MutableState<Boolean> mutableState, final bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, final int i) {
        int i2;
        Object obj;
        Object obj2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1413720282);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(popupPositionProvider) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? composerStartRestartGroup.changed(tooltipState) : composerStartRestartGroup.changedInstance(tooltipState) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            obj = ll3Var;
            i2 |= composerStartRestartGroup.changedInstance(obj) ? 256 : 128;
        } else {
            obj = ll3Var;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(y22Var) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= composerStartRestartGroup.changed(z) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            obj2 = mutableState;
            i2 |= composerStartRestartGroup.changed(obj2) ? 131072 : 65536;
        } else {
            obj2 = mutableState;
        }
        if ((1572864 & i) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var) ? 1048576 : 524288;
        }
        int i3 = i2;
        if (composerStartRestartGroup.shouldExecute((599187 & i3) != 599186, i3 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1413720282, i3, -1, "androidx.compose.material3.internal.TooltipPopup (BasicTooltip.kt:169)");
            }
            String strDescription = BasicTooltipStrings.INSTANCE.description(composerStartRestartGroup, 6);
            boolean zChangedInstance = ((i3 & 896) == 256) | ((i3 & 112) == 32 || ((i3 & 64) != 0 && composerStartRestartGroup.changedInstance(tooltipState))) | composerStartRestartGroup.changedInstance(y22Var) | ((458752 & i3) == 131072);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
                jh0 jh0Var = new jh0(obj, tooltipState, y22Var, obj2, 0);
                composerStartRestartGroup.updateRememberedValue(jh0Var);
                objRememberedValue = jh0Var;
            }
            AndroidPopup_androidKt.Popup(popupPositionProvider, (ll3) objRememberedValue, new PopupProperties(z, false, false, false, 14, (jh2) null), ComposableLambdaKt.rememberComposableLambda(-1287705660, true, new AnonymousClass2(strDescription, bm3Var), composerStartRestartGroup, 54), composerStartRestartGroup, (i3 & 14) | 3072, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nh0
                @Override // defpackage.bm3
                public final Object invoke(Object obj3, Object obj4) {
                    int iIntValue = ((Integer) obj4).intValue();
                    return BasicTooltipKt.TooltipPopup$lambda$10(popupPositionProvider, tooltipState, ll3Var, y22Var, z, mutableState, bm3Var, i, (Composer) obj3, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TooltipPopup$lambda$10(PopupPositionProvider popupPositionProvider, TooltipState tooltipState, ll3 ll3Var, y22 y22Var, boolean z, MutableState mutableState, bm3 bm3Var, int i, Composer composer, int i2) {
        TooltipPopup(popupPositionProvider, tooltipState, ll3Var, y22Var, z, mutableState, bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TooltipPopup$lambda$9$lambda$8(ll3 ll3Var, TooltipState tooltipState, y22 y22Var, MutableState mutableState) {
        if (ll3Var != null) {
            ll3Var.invoke();
        } else if (tooltipState.isVisible()) {
            av0.c(y22Var, null, null, new BasicTooltipKt$TooltipPopup$1$1$1(tooltipState, null), 3);
            mutableState.setValue(Boolean.FALSE);
        }
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0178  */
    /* JADX WARN: Code duplicated, block: B:104:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x007e  */
    /* JADX WARN: Code duplicated, block: B:51:0x0083  */
    /* JADX WARN: Code duplicated, block: B:53:0x0087  */
    /* JADX WARN: Code duplicated, block: B:55:0x008f  */
    /* JADX WARN: Code duplicated, block: B:56:0x0092  */
    /* JADX WARN: Code duplicated, block: B:60:0x009b  */
    /* JADX WARN: Code duplicated, block: B:62:0x009e  */
    /* JADX WARN: Code duplicated, block: B:64:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:66:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:71:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:72:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:76:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:79:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:85:0x0124  */
    /* JADX WARN: Code duplicated, block: B:88:0x0130  */
    /* JADX WARN: Code duplicated, block: B:89:0x0134  */
    /* JADX WARN: Code duplicated, block: B:92:0x0145  */
    /* JADX WARN: Code duplicated, block: B:94:0x0153  */
    /* JADX WARN: Code duplicated, block: B:97:0x0169  */
    /* JADX WARN: Code duplicated, block: B:99:0x016e  */
    private static final void WrappedAnchor(boolean z, TooltipState tooltipState, MutableState<Boolean> mutableState, boolean z2, Modifier modifier, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i, int i2) {
        int i3;
        MutableState<Boolean> mutableState2;
        boolean z3;
        int i4;
        Modifier modifier2;
        int i5;
        int i6;
        int i7;
        boolean z4;
        Modifier modifier3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Object objRememberedValue;
        int currentCompositeKeyHash;
        ll3<ComposeUiNode> constructor;
        Composer composerM5355constructorimpl;
        bm3 bm3VarB;
        Composer composerStartRestartGroup = composer.startRestartGroup(1873232064);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(z) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i2 & 2) != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= (i & 64) == 0 ? composerStartRestartGroup.changed(tooltipState) : composerStartRestartGroup.changedInstance(tooltipState) ? 32 : 16;
        }
        if ((i2 & 4) != 0) {
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            mutableState2 = mutableState;
        } else {
            mutableState2 = mutableState;
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                i3 |= composerStartRestartGroup.changed(mutableState2) ? 256 : 128;
            }
        }
        if ((i2 & 8) == 0) {
            if ((i & 3072) == 0) {
                z3 = z2;
                i3 |= composerStartRestartGroup.changed(z3) ? 2048 : 1024;
            }
            i4 = i2 & 16;
            if (i4 != 0) {
                if ((i & 24576) == 0) {
                    modifier2 = modifier;
                    if (composerStartRestartGroup.changed(modifier2)) {
                        i5 = 16384;
                    } else {
                        i5 = 8192;
                    }
                    i3 |= i5;
                }
                if ((i2 & 32) != 0) {
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var)) {
                        i6 = 131072;
                    } else {
                        i6 = 65536;
                    }
                    i3 |= i6;
                }
                i7 = i3;
                if ((74899 & i7) != 74898) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i7 & 1)) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1873232064, i7, -1, "androidx.compose.material3.internal.WrappedAnchor (BasicTooltip.kt:146)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    y22 y22Var = (y22) objRememberedValue;
                    Modifier modifierKeyboardBehavior = keyboardBehavior(anchorSemantics(handleGestures(modifier2, z, tooltipState), BasicTooltipStrings.INSTANCE.label(composerStartRestartGroup, 6), z, tooltipState, y22Var), z, tooltipState, y22Var, z3, mutableState2);
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierKeyboardBehavior);
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
                    bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                    if (cc.f(bm3Var, composerStartRestartGroup, (i7 >> 15) & 14)) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                }
                modifier3 = modifier2;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new yh0(z, tooltipState, mutableState, z2, modifier3, bm3Var, i, i2));
                }
            }
            i3 |= 24576;
            modifier2 = modifier;
            if ((i2 & 32) != 0) {
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var)) {
                    i6 = 131072;
                } else {
                    i6 = 65536;
                }
                i3 |= i6;
            }
            i7 = i3;
            if ((74899 & i7) != 74898) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i7 & 1)) {
                if (i4 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1873232064, i7, -1, "androidx.compose.material3.internal.WrappedAnchor (BasicTooltip.kt:146)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                y22 y22Var2 = (y22) objRememberedValue;
                Modifier modifierKeyboardBehavior2 = keyboardBehavior(anchorSemantics(handleGestures(modifier2, z, tooltipState), BasicTooltipStrings.INSTANCE.label(composerStartRestartGroup, 6), z, tooltipState, y22Var2), z, tooltipState, y22Var2, z3, mutableState2);
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierKeyboardBehavior2);
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
                composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl, currentCompositionLocalMap2);
                if (composerM5355constructorimpl.getInserting()) {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                } else {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier2, companion2.getSetModifier());
                BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                if (cc.f(bm3Var, composerStartRestartGroup, (i7 >> 15) & 14)) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
            }
            modifier3 = modifier2;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new yh0(z, tooltipState, mutableState, z2, modifier3, bm3Var, i, i2));
            }
        }
        i3 |= 3072;
        z3 = z2;
        i4 = i2 & 16;
        if (i4 != 0) {
            if ((i & 24576) == 0) {
                modifier2 = modifier;
                if (composerStartRestartGroup.changed(modifier2)) {
                    i5 = 16384;
                } else {
                    i5 = 8192;
                }
                i3 |= i5;
            }
            if ((i2 & 32) != 0) {
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var)) {
                    i6 = 131072;
                } else {
                    i6 = 65536;
                }
                i3 |= i6;
            }
            i7 = i3;
            if ((74899 & i7) != 74898) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i7 & 1)) {
                if (i4 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1873232064, i7, -1, "androidx.compose.material3.internal.WrappedAnchor (BasicTooltip.kt:146)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                y22 y22Var3 = (y22) objRememberedValue;
                Modifier modifierKeyboardBehavior3 = keyboardBehavior(anchorSemantics(handleGestures(modifier2, z, tooltipState), BasicTooltipStrings.INSTANCE.label(composerStartRestartGroup, 6), z, tooltipState, y22Var3), z, tooltipState, y22Var3, z3, mutableState2);
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierKeyboardBehavior3);
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
                bm3VarB = cc.b(companion3, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy3, composerM5355constructorimpl, currentCompositionLocalMap3);
                if (composerM5355constructorimpl.getInserting()) {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                } else {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier3, companion3.getSetModifier());
                BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                if (cc.f(bm3Var, composerStartRestartGroup, (i7 >> 15) & 14)) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
            }
            modifier3 = modifier2;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new yh0(z, tooltipState, mutableState, z2, modifier3, bm3Var, i, i2));
            }
        }
        i3 |= 24576;
        modifier2 = modifier;
        if ((i2 & 32) != 0) {
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            if (composerStartRestartGroup.changedInstance(bm3Var)) {
                i6 = 131072;
            } else {
                i6 = 65536;
            }
            i3 |= i6;
        }
        i7 = i3;
        if ((74899 & i7) != 74898) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z4, i7 & 1)) {
            if (i4 != 0) {
                modifier2 = Modifier.Companion;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1873232064, i7, -1, "androidx.compose.material3.internal.WrappedAnchor (BasicTooltip.kt:146)");
            }
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            y22 y22Var4 = (y22) objRememberedValue;
            Modifier modifierKeyboardBehavior4 = keyboardBehavior(anchorSemantics(handleGestures(modifier2, z, tooltipState), BasicTooltipStrings.INSTANCE.label(composerStartRestartGroup, 6), z, tooltipState, y22Var4), z, tooltipState, y22Var4, z3, mutableState2);
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy4 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap4 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierKeyboardBehavior4);
            ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
            constructor = companion4.getConstructor();
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
            bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy4, composerM5355constructorimpl, currentCompositionLocalMap4);
            if (composerM5355constructorimpl.getInserting()) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            } else {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier4, companion4.getSetModifier());
            BoxScopeInstance boxScopeInstance4 = BoxScopeInstance.INSTANCE;
            if (cc.f(bm3Var, composerStartRestartGroup, (i7 >> 15) & 14)) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        modifier3 = modifier2;
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new yh0(z, tooltipState, mutableState, z2, modifier3, bm3Var, i, i2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 WrappedAnchor$lambda$7(boolean z, TooltipState tooltipState, MutableState mutableState, boolean z2, Modifier modifier, bm3 bm3Var, int i, int i2, Composer composer, int i3) {
        WrappedAnchor(z, tooltipState, mutableState, z2, modifier, bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    private static final Modifier anchorSemantics(Modifier modifier, String str, boolean z, TooltipState tooltipState, y22 y22Var) {
        return z ? ChildParentSemanticsKt.parentSemantics(modifier, new uh0(str, y22Var, tooltipState, 0)) : modifier;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 anchorSemantics$lambda$12(String str, y22 y22Var, TooltipState tooltipState, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.onLongClick(semanticsPropertyReceiver, str, new wh0(0, y22Var, tooltipState));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean anchorSemantics$lambda$12$lambda$11(y22 y22Var, TooltipState tooltipState) {
        av0.c(y22Var, null, null, new BasicTooltipKt$anchorSemantics$1$1$1(tooltipState, null), 3);
        return true;
    }

    private static final Modifier handleGestures(Modifier modifier, boolean z, final TooltipState tooltipState) {
        return z ? SuspendingPointerInputFilterKt.pointerInput(SuspendingPointerInputFilterKt.pointerInput(modifier, tooltipState, new PointerInputEventHandler() { // from class: androidx.compose.material3.internal.BasicTooltipKt.handleGestures.1
            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
            public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
                Object objC = z22.c(new C00751(pointerInputScope, tooltipState, null), e02Var);
                return objC == a32.COROUTINE_SUSPENDED ? objC : j59.a;
            }

            /* JADX INFO: renamed from: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1, reason: invalid class name and collision with other inner class name */
            @bd2(c = "androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1", f = "BasicTooltip.kt", l = {ComposerKt.providerValuesKey}, m = "invokeSuspend")
            public static final class C00751 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                final /* synthetic */ TooltipState $state;
                final /* synthetic */ PointerInputScope $this_pointerInput;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C00751(PointerInputScope pointerInputScope, TooltipState tooltipState, e02<? super C00751> e02Var) {
                    super(2, e02Var);
                    this.$this_pointerInput = pointerInputScope;
                    this.$state = tooltipState;
                }

                @Override // defpackage.cd0
                public final e02<j59> create(Object obj, e02<?> e02Var) {
                    C00751 c00751 = new C00751(this.$this_pointerInput, this.$state, e02Var);
                    c00751.L$0 = obj;
                    return c00751;
                }

                @Override // defpackage.bm3
                public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                    return ((C00751) create(y22Var, e02Var)).invokeSuspend(j59.a);
                }

                @Override // defpackage.cd0
                public final Object invokeSuspend(Object obj) {
                    a32 a32Var = a32.COROUTINE_SUSPENDED;
                    int i = this.label;
                    if (i == 0) {
                        r57.b(obj);
                        y22 y22Var = (y22) this.L$0;
                        PointerInputScope pointerInputScope = this.$this_pointerInput;
                        C00761 c00761 = new C00761(y22Var, this.$state, null);
                        this.label = 1;
                        if (ForEachGestureKt.awaitEachGesture(pointerInputScope, c00761, this) == a32Var) {
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

                /* JADX INFO: renamed from: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1, reason: invalid class name and collision with other inner class name */
                @bd2(c = "androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1", f = "BasicTooltip.kt", l = {210, 216, WebmConstants.MkvEbmlElement.BLOCK_ADD_ID}, m = "invokeSuspend")
                public static final class C00761 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
                    final /* synthetic */ y22 $$this$coroutineScope;
                    final /* synthetic */ TooltipState $state;
                    long J$0;
                    private /* synthetic */ Object L$0;
                    Object L$1;
                    Object L$2;
                    int label;

                    /* JADX INFO: renamed from: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1$1, reason: invalid class name and collision with other inner class name */
                    @bd2(c = "androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1$1", f = "BasicTooltip.kt", l = {217}, m = "invokeSuspend")
                    public static final class C00771 extends f57 implements bm3<AwaitPointerEventScope, e02<? super PointerInputChange>, Object> {
                        final /* synthetic */ PointerEventPass $pass;
                        private /* synthetic */ Object L$0;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public C00771(PointerEventPass pointerEventPass, e02<? super C00771> e02Var) {
                            super(2, e02Var);
                            this.$pass = pointerEventPass;
                        }

                        @Override // defpackage.cd0
                        public final e02<j59> create(Object obj, e02<?> e02Var) {
                            C00771 c00771 = new C00771(this.$pass, e02Var);
                            c00771.L$0 = obj;
                            return c00771;
                        }

                        @Override // defpackage.bm3
                        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super PointerInputChange> e02Var) {
                            return ((C00771) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
                        }

                        @Override // defpackage.cd0
                        public final Object invokeSuspend(Object obj) {
                            a32 a32Var = a32.COROUTINE_SUSPENDED;
                            int i = this.label;
                            if (i != 0) {
                                if (i == 1) {
                                    r57.b(obj);
                                    return obj;
                                }
                                ah.f("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            r57.b(obj);
                            AwaitPointerEventScope awaitPointerEventScope = (AwaitPointerEventScope) this.L$0;
                            PointerEventPass pointerEventPass = this.$pass;
                            this.label = 1;
                            Object objWaitForUpOrCancellation = TapGestureDetectorKt.waitForUpOrCancellation(awaitPointerEventScope, pointerEventPass, this);
                            return objWaitForUpOrCancellation == a32Var ? a32Var : objWaitForUpOrCancellation;
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C00761(y22 y22Var, TooltipState tooltipState, e02<? super C00761> e02Var) {
                        super(2, e02Var);
                        this.$$this$coroutineScope = y22Var;
                        this.$state = tooltipState;
                    }

                    @Override // defpackage.cd0
                    public final e02<j59> create(Object obj, e02<?> e02Var) {
                        C00761 c00761 = new C00761(this.$$this$coroutineScope, this.$state, e02Var);
                        c00761.L$0 = obj;
                        return c00761;
                    }

                    @Override // defpackage.bm3
                    public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
                        return ((C00761) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
                    }

                    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d5, code lost:
                    
                        if (r15 == r0) goto L36;
                     */
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r14v0, types: [androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1] */
                    /* JADX WARN: Type inference failed for: r14v1 */
                    /* JADX WARN: Type inference failed for: r14v11 */
                    /* JADX WARN: Type inference failed for: r14v16 */
                    /* JADX WARN: Type inference failed for: r14v17 */
                    /* JADX WARN: Type inference failed for: r14v18 */
                    /* JADX WARN: Type inference failed for: r14v2, types: [vg5] */
                    /* JADX WARN: Type inference failed for: r14v9, types: [vg5] */
                    /* JADX WARN: Type inference failed for: r9v0, types: [e02] */
                    /* JADX WARN: Type inference failed for: r9v1, types: [androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1, e02] */
                    /* JADX WARN: Type inference failed for: r9v2, types: [androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1, e02] */
                    /* JADX WARN: Type inference failed for: r9v5 */
                    /* JADX WARN: Type inference failed for: r9v6 */
                    /* JADX WARN: Type inference failed for: r9v7 */
                    @Override // defpackage.cd0
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object invokeSuspend(java.lang.Object r15) throws java.lang.Throwable {
                        /*
                            Method dump skipped, instruction units count: 237
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.BasicTooltipKt.AnonymousClass1.C00751.C00761.invokeSuspend(java.lang.Object):java.lang.Object");
                    }

                    /* JADX INFO: renamed from: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1$3, reason: invalid class name */
                    @bd2(c = "androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1$3", f = "BasicTooltip.kt", l = {224, 227, 227}, m = "invokeSuspend")
                    public static final class AnonymousClass3 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                        final /* synthetic */ xg5<Boolean> $isLongPressedFlow;
                        final /* synthetic */ TooltipState $state;
                        Object L$0;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public AnonymousClass3(xg5<Boolean> xg5Var, TooltipState tooltipState, e02<? super AnonymousClass3> e02Var) {
                            super(2, e02Var);
                            this.$isLongPressedFlow = xg5Var;
                            this.$state = tooltipState;
                        }

                        @Override // defpackage.cd0
                        public final e02<j59> create(Object obj, e02<?> e02Var) {
                            return new AnonymousClass3(this.$isLongPressedFlow, this.$state, e02Var);
                        }

                        @Override // defpackage.bm3
                        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                            return ((AnonymousClass3) create(y22Var, e02Var)).invokeSuspend(j59.a);
                        }

                        /* JADX WARN: Code restructure failed: missing block: B:22:0x0056, code lost:
                        
                            if (defpackage.px.c(r7, r1, r6) == r0) goto L30;
                         */
                        @Override // defpackage.cd0
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final java.lang.Object invokeSuspend(java.lang.Object r7) throws java.lang.Throwable {
                            /*
                                r6 = this;
                                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                                int r1 = r6.label
                                r2 = 0
                                r3 = 3
                                r4 = 2
                                r5 = 1
                                if (r1 == 0) goto L28
                                if (r1 == r5) goto L22
                                if (r1 == r4) goto L1e
                                if (r1 == r3) goto L16
                                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                                defpackage.ah.f(r6)
                                return r2
                            L16:
                                java.lang.Object r6 = r6.L$0
                                java.lang.Throwable r6 = (java.lang.Throwable) r6
                                defpackage.r57.b(r7)
                                goto L79
                            L1e:
                                defpackage.r57.b(r7)
                                goto L59
                            L22:
                                defpackage.r57.b(r7)     // Catch: java.lang.Throwable -> L26
                                goto L3f
                            L26:
                                r7 = move-exception
                                goto L5c
                            L28:
                                defpackage.r57.b(r7)
                                xg5<java.lang.Boolean> r7 = r6.$isLongPressedFlow     // Catch: java.lang.Throwable -> L26
                                java.lang.Boolean r1 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L26
                                r7.e(r1)     // Catch: java.lang.Throwable -> L26
                                androidx.compose.material3.TooltipState r7 = r6.$state     // Catch: java.lang.Throwable -> L26
                                androidx.compose.foundation.MutatePriority r1 = androidx.compose.foundation.MutatePriority.PreventUserInput     // Catch: java.lang.Throwable -> L26
                                r6.label = r5     // Catch: java.lang.Throwable -> L26
                                java.lang.Object r7 = r7.show(r1, r6)     // Catch: java.lang.Throwable -> L26
                                if (r7 != r0) goto L3f
                                goto L77
                            L3f:
                                androidx.compose.material3.TooltipState r7 = r6.$state
                                boolean r7 = r7.isVisible()
                                if (r7 == 0) goto L59
                                xg5<java.lang.Boolean> r7 = r6.$isLongPressedFlow
                                androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1$3$1 r1 = new androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1$3$1
                                androidx.compose.material3.TooltipState r3 = r6.$state
                                r1.<init>(r3, r2)
                                r6.label = r4
                                java.lang.Object r6 = defpackage.px.c(r7, r1, r6)
                                if (r6 != r0) goto L59
                                goto L77
                            L59:
                                j59 r6 = defpackage.j59.a
                                return r6
                            L5c:
                                androidx.compose.material3.TooltipState r1 = r6.$state
                                boolean r1 = r1.isVisible()
                                if (r1 == 0) goto L7a
                                xg5<java.lang.Boolean> r1 = r6.$isLongPressedFlow
                                androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1$3$1 r4 = new androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1$3$1
                                androidx.compose.material3.TooltipState r5 = r6.$state
                                r4.<init>(r5, r2)
                                r6.L$0 = r7
                                r6.label = r3
                                java.lang.Object r6 = defpackage.px.c(r1, r4, r6)
                                if (r6 != r0) goto L78
                            L77:
                                return r0
                            L78:
                                r6 = r7
                            L79:
                                r7 = r6
                            L7a:
                                throw r7
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.BasicTooltipKt.AnonymousClass1.C00751.C00761.AnonymousClass3.invokeSuspend(java.lang.Object):java.lang.Object");
                        }

                        /* JADX INFO: renamed from: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1$3$1, reason: invalid class name and collision with other inner class name */
                        @bd2(c = "androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1$3$1", f = "BasicTooltip.kt", l = {}, m = "invokeSuspend")
                        public static final class C00781 extends pg8 implements bm3<Boolean, e02<? super j59>, Object> {
                            final /* synthetic */ TooltipState $state;
                            /* synthetic */ boolean Z$0;
                            int label;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            public C00781(TooltipState tooltipState, e02<? super C00781> e02Var) {
                                super(2, e02Var);
                                this.$state = tooltipState;
                            }

                            @Override // defpackage.cd0
                            public final e02<j59> create(Object obj, e02<?> e02Var) {
                                C00781 c00781 = new C00781(this.$state, e02Var);
                                c00781.Z$0 = ((Boolean) obj).booleanValue();
                                return c00781;
                            }

                            public final Object invoke(boolean z, e02<? super j59> e02Var) {
                                return ((C00781) create(Boolean.valueOf(z), e02Var)).invokeSuspend(j59.a);
                            }

                            @Override // defpackage.cd0
                            public final Object invokeSuspend(Object obj) {
                                a32 a32Var = a32.COROUTINE_SUSPENDED;
                                if (this.label != 0) {
                                    ah.f("call to 'resume' before 'invoke' with coroutine");
                                    return null;
                                }
                                r57.b(obj);
                                if (!this.Z$0) {
                                    this.$state.dismiss();
                                }
                                return j59.a;
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ Object invoke(Boolean bool, e02<? super j59> e02Var) {
                                return invoke(bool.booleanValue(), e02Var);
                            }
                        }
                    }
                }
            }
        }), tooltipState, new PointerInputEventHandler() { // from class: androidx.compose.material3.internal.BasicTooltipKt.handleGestures.2

            /* JADX INFO: renamed from: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$2$1, reason: invalid class name */
            @bd2(c = "androidx.compose.material3.internal.BasicTooltipKt$handleGestures$2$1", f = "BasicTooltip.kt", l = {249}, m = "invokeSuspend")
            public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                final /* synthetic */ TooltipState $state;
                final /* synthetic */ PointerInputScope $this_pointerInput;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX INFO: renamed from: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$2$1$1, reason: invalid class name and collision with other inner class name */
                @bd2(c = "androidx.compose.material3.internal.BasicTooltipKt$handleGestures$2$1$1", f = "BasicTooltip.kt", l = {253}, m = "invokeSuspend")
                public static final class C00791 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
                    final /* synthetic */ y22 $$this$coroutineScope;
                    final /* synthetic */ TooltipState $state;
                    private /* synthetic */ Object L$0;
                    Object L$1;
                    int label;

                    /* JADX INFO: renamed from: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$2$1$1$1, reason: invalid class name and collision with other inner class name */
                    @bd2(c = "androidx.compose.material3.internal.BasicTooltipKt$handleGestures$2$1$1$1", f = "BasicTooltip.kt", l = {258}, m = "invokeSuspend")
                    public static final class C00801 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                        final /* synthetic */ TooltipState $state;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public C00801(TooltipState tooltipState, e02<? super C00801> e02Var) {
                            super(2, e02Var);
                            this.$state = tooltipState;
                        }

                        @Override // defpackage.cd0
                        public final e02<j59> create(Object obj, e02<?> e02Var) {
                            return new C00801(this.$state, e02Var);
                        }

                        @Override // defpackage.bm3
                        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                            return ((C00801) create(y22Var, e02Var)).invokeSuspend(j59.a);
                        }

                        @Override // defpackage.cd0
                        public final Object invokeSuspend(Object obj) {
                            a32 a32Var = a32.COROUTINE_SUSPENDED;
                            int i = this.label;
                            if (i == 0) {
                                r57.b(obj);
                                TooltipState tooltipState = this.$state;
                                MutatePriority mutatePriority = MutatePriority.UserInput;
                                this.label = 1;
                                if (tooltipState.show(mutatePriority, this) == a32Var) {
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
                    public C00791(y22 y22Var, TooltipState tooltipState, e02<? super C00791> e02Var) {
                        super(2, e02Var);
                        this.$$this$coroutineScope = y22Var;
                        this.$state = tooltipState;
                    }

                    @Override // defpackage.cd0
                    public final e02<j59> create(Object obj, e02<?> e02Var) {
                        C00791 c00791 = new C00791(this.$$this$coroutineScope, this.$state, e02Var);
                        c00791.L$0 = obj;
                        return c00791;
                    }

                    @Override // defpackage.bm3
                    public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
                        return ((C00791) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
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
                            androidx.compose.material3.internal.BasicTooltipKt$handleGestures$2$1$1$1 r5 = new androidx.compose.material3.internal.BasicTooltipKt$handleGestures$2$1$1$1
                            androidx.compose.material3.TooltipState r6 = r7.$state
                            r5.<init>(r6, r2)
                            r6 = 3
                            defpackage.av0.c(r8, r2, r2, r5, r6)
                            goto L26
                        L6e:
                            int r5 = r5.m7514getExit7fucELk()
                            boolean r8 = androidx.compose.ui.input.pointer.PointerEventType.m7509equalsimpl0(r8, r5)
                            if (r8 == 0) goto L26
                            androidx.compose.material3.TooltipState r8 = r7.$state
                            r8.dismiss()
                            goto L26
                        */
                        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.BasicTooltipKt.C06112.AnonymousClass1.C00791.invokeSuspend(java.lang.Object):java.lang.Object");
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass1(PointerInputScope pointerInputScope, TooltipState tooltipState, e02<? super AnonymousClass1> e02Var) {
                    super(2, e02Var);
                    this.$this_pointerInput = pointerInputScope;
                    this.$state = tooltipState;
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
                        C00791 c00791 = new C00791(y22Var, this.$state, null);
                        this.label = 1;
                        if (pointerInputScope.awaitPointerEventScope(c00791, this) == a32Var) {
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
                Object objC = z22.c(new AnonymousClass1(pointerInputScope, tooltipState, null), e02Var);
                return objC == a32.COROUTINE_SUSPENDED ? objC : j59.a;
            }
        }) : modifier;
    }

    private static final Modifier keyboardBehavior(Modifier modifier, boolean z, final TooltipState tooltipState, y22 y22Var, final boolean z2, final MutableState<Boolean> mutableState) {
        if (z) {
            return KeyInputModifierKt.onPreviewKeyEvent(FocusChangedModifierKt.onFocusChanged(modifier, new sh0(0, y22Var, tooltipState)), new nl3<KeyEvent, Boolean>() { // from class: androidx.compose.material3.internal.BasicTooltipKt.keyboardBehavior.2
                @Override // defpackage.nl3
                public /* bridge */ /* synthetic */ Boolean invoke(KeyEvent keyEvent) {
                    return m4367invokeZmokQxo(keyEvent.m7390unboximpl());
                }

                /* JADX INFO: renamed from: invoke-ZmokQxo, reason: not valid java name */
                public final Boolean m4367invokeZmokQxo(android.view.KeyEvent keyEvent) {
                    if (!tooltipState.isVisible()) {
                        mutableState.setValue(Boolean.FALSE);
                    }
                    if (!z2 || !KeyEventType.m7394equalsimpl0(KeyEvent_androidKt.m7402getTypeZmokQxo(keyEvent), KeyEventType.Companion.m7398getKeyDownCS__XNY()) || !Key.m7081equalsimpl0(KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent), Key.Companion.m7329getTabEK5gGoQ()) || !tooltipState.isVisible()) {
                        return Boolean.FALSE;
                    }
                    MutableState<Boolean> mutableState2 = mutableState;
                    Boolean bool = Boolean.TRUE;
                    mutableState2.setValue(bool);
                    return bool;
                }
            });
        }
        mutableState.setValue(Boolean.FALSE);
        return modifier;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 keyboardBehavior$lambda$13(y22 y22Var, TooltipState tooltipState, FocusState focusState) {
        av0.c(y22Var, null, null, new BasicTooltipKt$keyboardBehavior$1$1(focusState, tooltipState, null), 3);
        return j59.a;
    }

    public static final TooltipState rememberBasicTooltipState(boolean z, boolean z2, MutatorMutex mutatorMutex, Composer composer, int i, int i2) {
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
            ComposerKt.traceEventStart(-1483057531, i, -1, "androidx.compose.material3.internal.rememberBasicTooltipState (BasicTooltip.kt:346)");
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

    private static final State<Boolean> rememberTouchExplorationOrSwitchAccessServiceState(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1960751094, i, -1, "androidx.compose.material3.internal.rememberTouchExplorationOrSwitchAccessServiceState (BasicTooltip.kt:456)");
        }
        State<Boolean> stateRememberAccessibilityServiceState = AccessibilityServiceStateProvider_androidKt.rememberAccessibilityServiceState(true, true, false, composer, 438, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return stateRememberAccessibilityServiceState;
    }

    /* JADX INFO: renamed from: androidx.compose.material3.internal.BasicTooltipKt$TooltipPopup$2, reason: invalid class name */
    public static final class AnonymousClass2 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ bm3<Composer, Integer, j59> $content;
        final /* synthetic */ String $tooltipDescription;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(String str, bm3<? super Composer, ? super Integer, j59> bm3Var) {
            this.$tooltipDescription = str;
            this.$content = bm3Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invoke$lambda$1$lambda$0(String str, SemanticsPropertyReceiver semanticsPropertyReceiver) {
            SemanticsPropertiesKt.m8279setLiveRegionhR3wRGc(semanticsPropertyReceiver, LiveRegionMode.Companion.m8252getAssertive0phEisY());
            SemanticsPropertiesKt.setPaneTitle(semanticsPropertyReceiver, str);
            return j59.a;
        }

        public final void invoke(Composer composer, int i) {
            if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1287705660, i, -1, "androidx.compose.material3.internal.TooltipPopup.<anonymous> (BasicTooltip.kt:186)");
            }
            Modifier.Companion companion = Modifier.Companion;
            boolean zChanged = composer.changed(this.$tooltipDescription);
            final String str = this.$tooltipDescription;
            Object objRememberedValue = composer.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new nl3() { // from class: androidx.compose.material3.internal.i
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return BasicTooltipKt.AnonymousClass2.invoke$lambda$1$lambda$0(str, (SemanticsPropertyReceiver) obj);
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(companion, false, (nl3) objRememberedValue, 1, null);
            bm3<Composer, Integer, j59> bm3Var = this.$content;
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
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
            bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            if (cc.f(bm3Var, composer, 0)) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }
    }
}
