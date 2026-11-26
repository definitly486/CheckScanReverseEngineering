package androidx.compose.material3;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.TimePickerDialogKt;
import androidx.compose.material3.tokens.DialogTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.window.AndroidDialog_androidKt;
import androidx.compose.ui.window.DialogProperties;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import com.tapjoy.TJAdUnitConstants;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.dm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class TimePickerDialogKt {
    public static final void TimePickerCustomLayout(final bm3<? super Composer, ? super Integer, j59> bm3Var, final bm3<? super Composer, ? super Integer, j59> bm3Var2, final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-493479138);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(bm3Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var2) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(dm3Var) ? 256 : 128;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 147) != 146, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-493479138, i2, -1, "androidx.compose.material3.TimePickerCustomLayout (TimePickerDialog.kt:130)");
            }
            ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(468305759, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerCustomLayout$content$1
                public final void invoke(Composer composer2, int i3) {
                    if (!composer2.shouldExecute((i3 & 3) != 2, i3 & 1)) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(468305759, i3, -1, "androidx.compose.material3.TimePickerCustomLayout.<anonymous> (TimePickerDialog.kt:133)");
                    }
                    Modifier.Companion companion = Modifier.Companion;
                    Modifier modifierLayoutId = LayoutIdKt.layoutId(companion, TJAdUnitConstants.String.TITLE);
                    bm3<Composer, Integer, j59> bm3Var3 = bm3Var;
                    Alignment.Companion companion2 = Alignment.Companion;
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion2.getTopStart(), false);
                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                    CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierLayoutId);
                    ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
                    ll3<ComposeUiNode> constructor = companion3.getConstructor();
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
                    bm3 bm3VarB = cc.b(companion3, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion3.getSetModifier());
                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                    bm3Var3.invoke(composer2, 0);
                    composer2.endNode();
                    Modifier modifierLayoutId2 = LayoutIdKt.layoutId(companion, "actions");
                    bm3<Composer, Integer, j59> bm3Var4 = bm3Var2;
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion2.getTopStart(), false);
                    int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                    CompositionLocalMap currentCompositionLocalMap2 = composer2.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer2, modifierLayoutId2);
                    ll3<ComposeUiNode> constructor2 = companion3.getConstructor();
                    if (composer2.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composer2.startReusableNode();
                    if (composer2.getInserting()) {
                        composer2.createNode(constructor2);
                    } else {
                        composer2.useNode();
                    }
                    Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer2);
                    bm3 bm3VarB2 = cc.b(companion3, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl2, currentCompositionLocalMap2);
                    if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                        dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion3.getSetModifier());
                    bm3Var4.invoke(composer2, 0);
                    composer2.endNode();
                    Modifier modifierLayoutId3 = LayoutIdKt.layoutId(companion, "timePickerContent");
                    dm3<ColumnScope, Composer, Integer, j59> dm3Var2 = dm3Var;
                    MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), companion2.getStart(), composer2, 0);
                    int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                    CompositionLocalMap currentCompositionLocalMap3 = composer2.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer2, modifierLayoutId3);
                    ll3<ComposeUiNode> constructor3 = companion3.getConstructor();
                    if (composer2.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composer2.startReusableNode();
                    if (composer2.getInserting()) {
                        composer2.createNode(constructor3);
                    } else {
                        composer2.useNode();
                    }
                    Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer2);
                    bm3 bm3VarB3 = cc.b(companion3, composerM5355constructorimpl3, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl3, currentCompositionLocalMap3);
                    if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                        dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion3.getSetModifier());
                    dm3Var2.invoke(ColumnScopeInstance.INSTANCE, composer2, 6);
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
            }, composerStartRestartGroup, 54);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = TimePickerDialogKt$TimePickerCustomLayout$measurePolicy$1$1.INSTANCE;
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) objRememberedValue;
            Modifier.Companion companion = Modifier.Companion;
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion);
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
            composableLambdaRememberComposableLambda.invoke(composerStartRestartGroup, 6);
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pu8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TimePickerDialogKt.TimePickerCustomLayout$lambda$3(bm3Var, bm3Var2, dm3Var, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TimePickerCustomLayout$lambda$3(bm3 bm3Var, bm3 bm3Var2, dm3 dm3Var, int i, Composer composer, int i2) {
        TimePickerCustomLayout(bm3Var, bm3Var2, dm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0116  */
    /* JADX WARN: Code duplicated, block: B:102:0x011d  */
    /* JADX WARN: Code duplicated, block: B:104:0x0121  */
    /* JADX WARN: Code duplicated, block: B:106:0x0129  */
    /* JADX WARN: Code duplicated, block: B:107:0x012c  */
    /* JADX WARN: Code duplicated, block: B:109:0x0131  */
    /* JADX WARN: Code duplicated, block: B:112:0x0140  */
    /* JADX WARN: Code duplicated, block: B:113:0x0142  */
    /* JADX WARN: Code duplicated, block: B:116:0x014b  */
    /* JADX WARN: Code duplicated, block: B:118:0x0158  */
    /* JADX WARN: Code duplicated, block: B:128:0x017b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:129:0x017d  */
    /* JADX WARN: Code duplicated, block: B:131:0x0182  */
    /* JADX WARN: Code duplicated, block: B:132:0x0192  */
    /* JADX WARN: Code duplicated, block: B:135:0x0197  */
    /* JADX WARN: Code duplicated, block: B:137:0x019a  */
    /* JADX WARN: Code duplicated, block: B:140:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:141:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:144:0x01af  */
    /* JADX WARN: Code duplicated, block: B:146:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:149:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:152:0x0210  */
    /* JADX WARN: Code duplicated, block: B:154:0x021f  */
    /* JADX WARN: Code duplicated, block: B:157:0x0231  */
    /* JADX WARN: Code duplicated, block: B:159:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0065  */
    /* JADX WARN: Code duplicated, block: B:38:0x006a  */
    /* JADX WARN: Code duplicated, block: B:40:0x006e  */
    /* JADX WARN: Code duplicated, block: B:42:0x0076  */
    /* JADX WARN: Code duplicated, block: B:43:0x0079  */
    /* JADX WARN: Code duplicated, block: B:47:0x0080  */
    /* JADX WARN: Code duplicated, block: B:49:0x0085  */
    /* JADX WARN: Code duplicated, block: B:51:0x0089  */
    /* JADX WARN: Code duplicated, block: B:53:0x0091  */
    /* JADX WARN: Code duplicated, block: B:54:0x0094  */
    /* JADX WARN: Code duplicated, block: B:58:0x009d  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:65:0x00af  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:71:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:73:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:76:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:80:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:82:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:85:0x00e3 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:88:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:91:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:93:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:96:0x0103  */
    /* JADX WARN: Code duplicated, block: B:98:0x0108  */
    /* JADX INFO: renamed from: TimePickerDialog-FItCLgY, reason: not valid java name */
    public static final void m4114TimePickerDialogFItCLgY(final ll3<j59> ll3Var, final bm3<? super Composer, ? super Integer, j59> bm3Var, final bm3<? super Composer, ? super Integer, j59> bm3Var2, Modifier modifier, DialogProperties dialogProperties, bm3<? super Composer, ? super Integer, j59> bm3Var3, bm3<? super Composer, ? super Integer, j59> bm3Var4, Shape shape, long j, final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var, Composer composer, final int i, final int i2) {
        int i3;
        final bm3<? super Composer, ? super Integer, j59> bm3Var5;
        bm3<? super Composer, ? super Integer, j59> bm3Var6;
        int i4;
        Modifier modifier2;
        int i5;
        int i6;
        DialogProperties dialogProperties2;
        int i7;
        int i8;
        bm3<? super Composer, ? super Integer, j59> bm3Var7;
        int i9;
        int i10;
        bm3<? super Composer, ? super Integer, j59> bm3Var8;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        boolean z;
        Composer composer2;
        final Modifier modifier3;
        final DialogProperties dialogProperties3;
        final bm3<? super Composer, ? super Integer, j59> bm3Var9;
        final bm3<? super Composer, ? super Integer, j59> bm3Var10;
        final Shape shape2;
        final long j2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        DialogProperties dialogProperties4;
        final Shape shape3;
        final long containerColor;
        final bm3<? super Composer, ? super Integer, j59> bm3Var11;
        int i16;
        final Modifier modifier4;
        final bm3<? super Composer, ? super Integer, j59> bm3Var12;
        int i17;
        Composer composerStartRestartGroup = composer.startRestartGroup(951250327);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changedInstance(ll3Var) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i2 & 2) != 0) {
            i3 |= 48;
            bm3Var5 = bm3Var;
        } else {
            bm3Var5 = bm3Var;
            if ((i & 48) == 0) {
                i3 |= composerStartRestartGroup.changedInstance(bm3Var5) ? 32 : 16;
            }
        }
        if ((i2 & 4) == 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                bm3Var6 = bm3Var2;
                i3 |= composerStartRestartGroup.changedInstance(bm3Var6) ? 256 : 128;
            }
            i4 = i2 & 8;
            if (i4 != 0) {
                if ((i & 3072) == 0) {
                    modifier2 = modifier;
                    if (composerStartRestartGroup.changed(modifier2)) {
                        i5 = 2048;
                    } else {
                        i5 = 1024;
                    }
                    i3 |= i5;
                }
                i6 = i2 & 16;
                if (i6 != 0) {
                    if ((i & 24576) == 0) {
                        dialogProperties2 = dialogProperties;
                        if (composerStartRestartGroup.changed(dialogProperties2)) {
                            i7 = 16384;
                        } else {
                            i7 = 8192;
                        }
                        i3 |= i7;
                    }
                    i8 = i2 & 32;
                    if (i8 != 0) {
                        if ((196608 & i) == 0) {
                            bm3Var7 = bm3Var3;
                            if (composerStartRestartGroup.changedInstance(bm3Var7)) {
                                i9 = 131072;
                            } else {
                                i9 = 65536;
                            }
                            i3 |= i9;
                        }
                        i10 = i2 & 64;
                        if (i10 != 0) {
                            if ((1572864 & i) == 0) {
                                bm3Var8 = bm3Var4;
                                if (composerStartRestartGroup.changedInstance(bm3Var8)) {
                                    i11 = 1048576;
                                } else {
                                    i11 = 524288;
                                }
                                i3 |= i11;
                            }
                            if ((i & 12582912) != 0) {
                                i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
                            }
                            if ((i & 100663296) == 0) {
                                int i18 = i3;
                                if ((i2 & 256) == 0 || !composerStartRestartGroup.changed(j)) {
                                    i17 = GroupFlagsKt.HasAuxSlotFlag;
                                } else {
                                    i17 = 67108864;
                                }
                                i12 = i18 | i17;
                            } else {
                                i12 = i3;
                            }
                            i13 = i12;
                            if ((i2 & 512) != 0) {
                                i14 = i13 | 805306368;
                            } else if ((i & 805306368) == 0) {
                                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                    i15 = 536870912;
                                } else {
                                    i15 = 268435456;
                                }
                                i14 = i13 | i15;
                            } else {
                                i14 = i13;
                            }
                            if ((i14 & 306783379) != 306783378) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                                composerStartRestartGroup.startDefaults();
                                if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                                    if (i4 != 0) {
                                        modifier2 = Modifier.Companion;
                                    }
                                    if (i6 != 0) {
                                        dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                                    } else {
                                        dialogProperties4 = dialogProperties2;
                                    }
                                    if (i8 != 0) {
                                        bm3Var7 = null;
                                    }
                                    if (i10 != 0) {
                                        bm3Var8 = null;
                                    }
                                    if ((i2 & 128) != 0) {
                                        shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                        i14 &= -29360129;
                                    } else {
                                        shape3 = shape;
                                    }
                                    if ((i2 & 256) != 0) {
                                        i14 &= -234881025;
                                        containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                    } else {
                                        containerColor = j;
                                    }
                                    bm3Var11 = bm3Var7;
                                    i16 = i14;
                                    dialogProperties2 = dialogProperties4;
                                    modifier4 = modifier2;
                                    bm3Var12 = bm3Var8;
                                } else {
                                    composerStartRestartGroup.skipToGroupEnd();
                                    if ((i2 & 128) != 0) {
                                        i14 &= -29360129;
                                    }
                                    if ((i2 & 256) != 0) {
                                        i14 &= -234881025;
                                    }
                                    shape3 = shape;
                                    containerColor = j;
                                    bm3Var11 = bm3Var7;
                                    bm3Var12 = bm3Var8;
                                    i16 = i14;
                                    modifier4 = modifier2;
                                }
                                composerStartRestartGroup.endDefaults();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                                }
                                final bm3<? super Composer, ? super Integer, j59> bm3Var13 = bm3Var6;
                                AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                                    public final void invoke(Composer composer3, int i19) {
                                        if (!composer3.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(296331566, i19, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                                        }
                                        TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var13, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                                composer2 = composerStartRestartGroup;
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                dialogProperties3 = dialogProperties2;
                                modifier3 = modifier4;
                                bm3Var9 = bm3Var11;
                                bm3Var10 = bm3Var12;
                                shape2 = shape3;
                                j2 = containerColor;
                            } else {
                                composer2 = composerStartRestartGroup;
                                composer2.skipToGroupEnd();
                                modifier3 = modifier2;
                                dialogProperties3 = dialogProperties2;
                                bm3Var9 = bm3Var7;
                                bm3Var10 = bm3Var8;
                                shape2 = shape;
                                j2 = j;
                            }
                            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                            if (scopeUpdateScopeEndRestartGroup != null) {
                                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        int iIntValue = ((Integer) obj2).intValue();
                                        return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                                    }
                                });
                            }
                        }
                        i3 |= 1572864;
                        bm3Var8 = bm3Var4;
                        if ((i & 12582912) != 0) {
                            i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
                        }
                        if ((i & 100663296) == 0) {
                            int i19 = i3;
                            if ((i2 & 256) == 0) {
                                i17 = GroupFlagsKt.HasAuxSlotFlag;
                            } else {
                                i17 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i12 = i19 | i17;
                        } else {
                            i12 = i3;
                        }
                        i13 = i12;
                        if ((i2 & 512) != 0) {
                            i14 = i13 | 805306368;
                        } else if ((i & 805306368) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i15 = 536870912;
                            } else {
                                i15 = 268435456;
                            }
                            i14 = i13 | i15;
                        } else {
                            i14 = i13;
                        }
                        if ((i14 & 306783379) != 306783378) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                                } else {
                                    dialogProperties4 = dialogProperties2;
                                }
                                if (i8 != 0) {
                                    bm3Var7 = null;
                                }
                                if (i10 != 0) {
                                    bm3Var8 = null;
                                }
                                if ((i2 & 128) != 0) {
                                    shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                    i14 &= -29360129;
                                } else {
                                    shape3 = shape;
                                }
                                if ((i2 & 256) != 0) {
                                    i14 &= -234881025;
                                    containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                } else {
                                    containerColor = j;
                                }
                                bm3Var11 = bm3Var7;
                                i16 = i14;
                                dialogProperties2 = dialogProperties4;
                                modifier4 = modifier2;
                                bm3Var12 = bm3Var8;
                            } else {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                                } else {
                                    dialogProperties4 = dialogProperties2;
                                }
                                if (i8 != 0) {
                                    bm3Var7 = null;
                                }
                                if (i10 != 0) {
                                    bm3Var8 = null;
                                }
                                if ((i2 & 128) != 0) {
                                    shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                    i14 &= -29360129;
                                } else {
                                    shape3 = shape;
                                }
                                if ((i2 & 256) != 0) {
                                    i14 &= -234881025;
                                    containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                } else {
                                    containerColor = j;
                                }
                                bm3Var11 = bm3Var7;
                                i16 = i14;
                                dialogProperties2 = dialogProperties4;
                                modifier4 = modifier2;
                                bm3Var12 = bm3Var8;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                            }
                            final bm3<? super Composer, ? super Integer, j59> bm3Var14 = bm3Var6;
                            AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                                public final void invoke(Composer composer3, int i110) {
                                    if (!composer3.shouldExecute((i110 & 3) != 2, i110 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(296331566, i110, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                                    }
                                    TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var14, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                            composer2 = composerStartRestartGroup;
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            dialogProperties3 = dialogProperties2;
                            modifier3 = modifier4;
                            bm3Var9 = bm3Var11;
                            bm3Var10 = bm3Var12;
                            shape2 = shape3;
                            j2 = containerColor;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            modifier3 = modifier2;
                            dialogProperties3 = dialogProperties2;
                            bm3Var9 = bm3Var7;
                            bm3Var10 = bm3Var8;
                            shape2 = shape;
                            j2 = j;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    bm3Var7 = bm3Var3;
                    i10 = i2 & 64;
                    if (i10 != 0) {
                        if ((1572864 & i) == 0) {
                            bm3Var8 = bm3Var4;
                            if (composerStartRestartGroup.changedInstance(bm3Var8)) {
                                i11 = 1048576;
                            } else {
                                i11 = 524288;
                            }
                            i3 |= i11;
                        }
                        if ((i & 12582912) != 0) {
                            i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
                        }
                        if ((i & 100663296) == 0) {
                            int i110 = i3;
                            if ((i2 & 256) == 0) {
                                i17 = GroupFlagsKt.HasAuxSlotFlag;
                            } else {
                                i17 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i12 = i110 | i17;
                        } else {
                            i12 = i3;
                        }
                        i13 = i12;
                        if ((i2 & 512) != 0) {
                            i14 = i13 | 805306368;
                        } else if ((i & 805306368) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i15 = 536870912;
                            } else {
                                i15 = 268435456;
                            }
                            i14 = i13 | i15;
                        } else {
                            i14 = i13;
                        }
                        if ((i14 & 306783379) != 306783378) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                                } else {
                                    dialogProperties4 = dialogProperties2;
                                }
                                if (i8 != 0) {
                                    bm3Var7 = null;
                                }
                                if (i10 != 0) {
                                    bm3Var8 = null;
                                }
                                if ((i2 & 128) != 0) {
                                    shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                    i14 &= -29360129;
                                } else {
                                    shape3 = shape;
                                }
                                if ((i2 & 256) != 0) {
                                    i14 &= -234881025;
                                    containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                } else {
                                    containerColor = j;
                                }
                                bm3Var11 = bm3Var7;
                                i16 = i14;
                                dialogProperties2 = dialogProperties4;
                                modifier4 = modifier2;
                                bm3Var12 = bm3Var8;
                            } else {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                                } else {
                                    dialogProperties4 = dialogProperties2;
                                }
                                if (i8 != 0) {
                                    bm3Var7 = null;
                                }
                                if (i10 != 0) {
                                    bm3Var8 = null;
                                }
                                if ((i2 & 128) != 0) {
                                    shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                    i14 &= -29360129;
                                } else {
                                    shape3 = shape;
                                }
                                if ((i2 & 256) != 0) {
                                    i14 &= -234881025;
                                    containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                } else {
                                    containerColor = j;
                                }
                                bm3Var11 = bm3Var7;
                                i16 = i14;
                                dialogProperties2 = dialogProperties4;
                                modifier4 = modifier2;
                                bm3Var12 = bm3Var8;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                            }
                            final bm3<? super Composer, ? super Integer, j59> bm3Var15 = bm3Var6;
                            AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                                public final void invoke(Composer composer3, int i111) {
                                    if (!composer3.shouldExecute((i111 & 3) != 2, i111 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(296331566, i111, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                                    }
                                    TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var15, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                            composer2 = composerStartRestartGroup;
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            dialogProperties3 = dialogProperties2;
                            modifier3 = modifier4;
                            bm3Var9 = bm3Var11;
                            bm3Var10 = bm3Var12;
                            shape2 = shape3;
                            j2 = containerColor;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            modifier3 = modifier2;
                            dialogProperties3 = dialogProperties2;
                            bm3Var9 = bm3Var7;
                            bm3Var10 = bm3Var8;
                            shape2 = shape;
                            j2 = j;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 1572864;
                    bm3Var8 = bm3Var4;
                    if ((i & 12582912) != 0) {
                        i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
                    }
                    if ((i & 100663296) == 0) {
                        int i111 = i3;
                        if ((i2 & 256) == 0) {
                            i17 = GroupFlagsKt.HasAuxSlotFlag;
                        } else {
                            i17 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i12 = i111 | i17;
                    } else {
                        i12 = i3;
                    }
                    i13 = i12;
                    if ((i2 & 512) != 0) {
                        i14 = i13 | 805306368;
                    } else if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i15 = 536870912;
                        } else {
                            i15 = 268435456;
                        }
                        i14 = i13 | i15;
                    } else {
                        i14 = i13;
                    }
                    if ((i14 & 306783379) != 306783378) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                            } else {
                                dialogProperties4 = dialogProperties2;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if (i10 != 0) {
                                bm3Var8 = null;
                            }
                            if ((i2 & 128) != 0) {
                                shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                i14 &= -29360129;
                            } else {
                                shape3 = shape;
                            }
                            if ((i2 & 256) != 0) {
                                i14 &= -234881025;
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            bm3Var11 = bm3Var7;
                            i16 = i14;
                            dialogProperties2 = dialogProperties4;
                            modifier4 = modifier2;
                            bm3Var12 = bm3Var8;
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                            } else {
                                dialogProperties4 = dialogProperties2;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if (i10 != 0) {
                                bm3Var8 = null;
                            }
                            if ((i2 & 128) != 0) {
                                shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                i14 &= -29360129;
                            } else {
                                shape3 = shape;
                            }
                            if ((i2 & 256) != 0) {
                                i14 &= -234881025;
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            bm3Var11 = bm3Var7;
                            i16 = i14;
                            dialogProperties2 = dialogProperties4;
                            modifier4 = modifier2;
                            bm3Var12 = bm3Var8;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                        }
                        final bm3<? super Composer, ? super Integer, j59> bm3Var16 = bm3Var6;
                        AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                            public final void invoke(Composer composer3, int i112) {
                                if (!composer3.shouldExecute((i112 & 3) != 2, i112 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(296331566, i112, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                                }
                                TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var16, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                        composer2 = composerStartRestartGroup;
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        dialogProperties3 = dialogProperties2;
                        modifier3 = modifier4;
                        bm3Var9 = bm3Var11;
                        bm3Var10 = bm3Var12;
                        shape2 = shape3;
                        j2 = containerColor;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        dialogProperties3 = dialogProperties2;
                        bm3Var9 = bm3Var7;
                        bm3Var10 = bm3Var8;
                        shape2 = shape;
                        j2 = j;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 24576;
                dialogProperties2 = dialogProperties;
                i8 = i2 & 32;
                if (i8 != 0) {
                    if ((196608 & i) == 0) {
                        bm3Var7 = bm3Var3;
                        if (composerStartRestartGroup.changedInstance(bm3Var7)) {
                            i9 = 131072;
                        } else {
                            i9 = 65536;
                        }
                        i3 |= i9;
                    }
                    i10 = i2 & 64;
                    if (i10 != 0) {
                        if ((1572864 & i) == 0) {
                            bm3Var8 = bm3Var4;
                            if (composerStartRestartGroup.changedInstance(bm3Var8)) {
                                i11 = 1048576;
                            } else {
                                i11 = 524288;
                            }
                            i3 |= i11;
                        }
                        if ((i & 12582912) != 0) {
                            i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
                        }
                        if ((i & 100663296) == 0) {
                            int i112 = i3;
                            if ((i2 & 256) == 0) {
                                i17 = GroupFlagsKt.HasAuxSlotFlag;
                            } else {
                                i17 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i12 = i112 | i17;
                        } else {
                            i12 = i3;
                        }
                        i13 = i12;
                        if ((i2 & 512) != 0) {
                            i14 = i13 | 805306368;
                        } else if ((i & 805306368) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i15 = 536870912;
                            } else {
                                i15 = 268435456;
                            }
                            i14 = i13 | i15;
                        } else {
                            i14 = i13;
                        }
                        if ((i14 & 306783379) != 306783378) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                                } else {
                                    dialogProperties4 = dialogProperties2;
                                }
                                if (i8 != 0) {
                                    bm3Var7 = null;
                                }
                                if (i10 != 0) {
                                    bm3Var8 = null;
                                }
                                if ((i2 & 128) != 0) {
                                    shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                    i14 &= -29360129;
                                } else {
                                    shape3 = shape;
                                }
                                if ((i2 & 256) != 0) {
                                    i14 &= -234881025;
                                    containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                } else {
                                    containerColor = j;
                                }
                                bm3Var11 = bm3Var7;
                                i16 = i14;
                                dialogProperties2 = dialogProperties4;
                                modifier4 = modifier2;
                                bm3Var12 = bm3Var8;
                            } else {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                                } else {
                                    dialogProperties4 = dialogProperties2;
                                }
                                if (i8 != 0) {
                                    bm3Var7 = null;
                                }
                                if (i10 != 0) {
                                    bm3Var8 = null;
                                }
                                if ((i2 & 128) != 0) {
                                    shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                    i14 &= -29360129;
                                } else {
                                    shape3 = shape;
                                }
                                if ((i2 & 256) != 0) {
                                    i14 &= -234881025;
                                    containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                } else {
                                    containerColor = j;
                                }
                                bm3Var11 = bm3Var7;
                                i16 = i14;
                                dialogProperties2 = dialogProperties4;
                                modifier4 = modifier2;
                                bm3Var12 = bm3Var8;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                            }
                            final bm3<? super Composer, ? super Integer, j59> bm3Var17 = bm3Var6;
                            AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                                public final void invoke(Composer composer3, int i113) {
                                    if (!composer3.shouldExecute((i113 & 3) != 2, i113 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(296331566, i113, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                                    }
                                    TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var17, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                            composer2 = composerStartRestartGroup;
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            dialogProperties3 = dialogProperties2;
                            modifier3 = modifier4;
                            bm3Var9 = bm3Var11;
                            bm3Var10 = bm3Var12;
                            shape2 = shape3;
                            j2 = containerColor;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            modifier3 = modifier2;
                            dialogProperties3 = dialogProperties2;
                            bm3Var9 = bm3Var7;
                            bm3Var10 = bm3Var8;
                            shape2 = shape;
                            j2 = j;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 1572864;
                    bm3Var8 = bm3Var4;
                    if ((i & 12582912) != 0) {
                        i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
                    }
                    if ((i & 100663296) == 0) {
                        int i113 = i3;
                        if ((i2 & 256) == 0) {
                            i17 = GroupFlagsKt.HasAuxSlotFlag;
                        } else {
                            i17 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i12 = i113 | i17;
                    } else {
                        i12 = i3;
                    }
                    i13 = i12;
                    if ((i2 & 512) != 0) {
                        i14 = i13 | 805306368;
                    } else if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i15 = 536870912;
                        } else {
                            i15 = 268435456;
                        }
                        i14 = i13 | i15;
                    } else {
                        i14 = i13;
                    }
                    if ((i14 & 306783379) != 306783378) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                            } else {
                                dialogProperties4 = dialogProperties2;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if (i10 != 0) {
                                bm3Var8 = null;
                            }
                            if ((i2 & 128) != 0) {
                                shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                i14 &= -29360129;
                            } else {
                                shape3 = shape;
                            }
                            if ((i2 & 256) != 0) {
                                i14 &= -234881025;
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            bm3Var11 = bm3Var7;
                            i16 = i14;
                            dialogProperties2 = dialogProperties4;
                            modifier4 = modifier2;
                            bm3Var12 = bm3Var8;
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                            } else {
                                dialogProperties4 = dialogProperties2;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if (i10 != 0) {
                                bm3Var8 = null;
                            }
                            if ((i2 & 128) != 0) {
                                shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                i14 &= -29360129;
                            } else {
                                shape3 = shape;
                            }
                            if ((i2 & 256) != 0) {
                                i14 &= -234881025;
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            bm3Var11 = bm3Var7;
                            i16 = i14;
                            dialogProperties2 = dialogProperties4;
                            modifier4 = modifier2;
                            bm3Var12 = bm3Var8;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                        }
                        final bm3<? super Composer, ? super Integer, j59> bm3Var18 = bm3Var6;
                        AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                            public final void invoke(Composer composer3, int i114) {
                                if (!composer3.shouldExecute((i114 & 3) != 2, i114 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(296331566, i114, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                                }
                                TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var18, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                        composer2 = composerStartRestartGroup;
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        dialogProperties3 = dialogProperties2;
                        modifier3 = modifier4;
                        bm3Var9 = bm3Var11;
                        bm3Var10 = bm3Var12;
                        shape2 = shape3;
                        j2 = containerColor;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        dialogProperties3 = dialogProperties2;
                        bm3Var9 = bm3Var7;
                        bm3Var10 = bm3Var8;
                        shape2 = shape;
                        j2 = j;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                bm3Var7 = bm3Var3;
                i10 = i2 & 64;
                if (i10 != 0) {
                    if ((1572864 & i) == 0) {
                        bm3Var8 = bm3Var4;
                        if (composerStartRestartGroup.changedInstance(bm3Var8)) {
                            i11 = 1048576;
                        } else {
                            i11 = 524288;
                        }
                        i3 |= i11;
                    }
                    if ((i & 12582912) != 0) {
                        i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
                    }
                    if ((i & 100663296) == 0) {
                        int i114 = i3;
                        if ((i2 & 256) == 0) {
                            i17 = GroupFlagsKt.HasAuxSlotFlag;
                        } else {
                            i17 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i12 = i114 | i17;
                    } else {
                        i12 = i3;
                    }
                    i13 = i12;
                    if ((i2 & 512) != 0) {
                        i14 = i13 | 805306368;
                    } else if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i15 = 536870912;
                        } else {
                            i15 = 268435456;
                        }
                        i14 = i13 | i15;
                    } else {
                        i14 = i13;
                    }
                    if ((i14 & 306783379) != 306783378) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                            } else {
                                dialogProperties4 = dialogProperties2;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if (i10 != 0) {
                                bm3Var8 = null;
                            }
                            if ((i2 & 128) != 0) {
                                shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                i14 &= -29360129;
                            } else {
                                shape3 = shape;
                            }
                            if ((i2 & 256) != 0) {
                                i14 &= -234881025;
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            bm3Var11 = bm3Var7;
                            i16 = i14;
                            dialogProperties2 = dialogProperties4;
                            modifier4 = modifier2;
                            bm3Var12 = bm3Var8;
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                            } else {
                                dialogProperties4 = dialogProperties2;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if (i10 != 0) {
                                bm3Var8 = null;
                            }
                            if ((i2 & 128) != 0) {
                                shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                i14 &= -29360129;
                            } else {
                                shape3 = shape;
                            }
                            if ((i2 & 256) != 0) {
                                i14 &= -234881025;
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            bm3Var11 = bm3Var7;
                            i16 = i14;
                            dialogProperties2 = dialogProperties4;
                            modifier4 = modifier2;
                            bm3Var12 = bm3Var8;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                        }
                        final bm3<? super Composer, ? super Integer, j59> bm3Var19 = bm3Var6;
                        AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                            public final void invoke(Composer composer3, int i115) {
                                if (!composer3.shouldExecute((i115 & 3) != 2, i115 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(296331566, i115, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                                }
                                TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var19, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                        composer2 = composerStartRestartGroup;
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        dialogProperties3 = dialogProperties2;
                        modifier3 = modifier4;
                        bm3Var9 = bm3Var11;
                        bm3Var10 = bm3Var12;
                        shape2 = shape3;
                        j2 = containerColor;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        dialogProperties3 = dialogProperties2;
                        bm3Var9 = bm3Var7;
                        bm3Var10 = bm3Var8;
                        shape2 = shape;
                        j2 = j;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                bm3Var8 = bm3Var4;
                if ((i & 12582912) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
                }
                if ((i & 100663296) == 0) {
                    int i115 = i3;
                    if ((i2 & 256) == 0) {
                        i17 = GroupFlagsKt.HasAuxSlotFlag;
                    } else {
                        i17 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i12 = i115 | i17;
                } else {
                    i12 = i3;
                }
                i13 = i12;
                if ((i2 & 512) != 0) {
                    i14 = i13 | 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i15 = 536870912;
                    } else {
                        i15 = 268435456;
                    }
                    i14 = i13 | i15;
                } else {
                    i14 = i13;
                }
                if ((i14 & 306783379) != 306783378) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                        } else {
                            dialogProperties4 = dialogProperties2;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if (i10 != 0) {
                            bm3Var8 = null;
                        }
                        if ((i2 & 128) != 0) {
                            shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            i14 &= -29360129;
                        } else {
                            shape3 = shape;
                        }
                        if ((i2 & 256) != 0) {
                            i14 &= -234881025;
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        bm3Var11 = bm3Var7;
                        i16 = i14;
                        dialogProperties2 = dialogProperties4;
                        modifier4 = modifier2;
                        bm3Var12 = bm3Var8;
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                        } else {
                            dialogProperties4 = dialogProperties2;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if (i10 != 0) {
                            bm3Var8 = null;
                        }
                        if ((i2 & 128) != 0) {
                            shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            i14 &= -29360129;
                        } else {
                            shape3 = shape;
                        }
                        if ((i2 & 256) != 0) {
                            i14 &= -234881025;
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        bm3Var11 = bm3Var7;
                        i16 = i14;
                        dialogProperties2 = dialogProperties4;
                        modifier4 = modifier2;
                        bm3Var12 = bm3Var8;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                    }
                    final bm3<? super Composer, ? super Integer, j59> bm3Var110 = bm3Var6;
                    AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                        public final void invoke(Composer composer3, int i116) {
                            if (!composer3.shouldExecute((i116 & 3) != 2, i116 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(296331566, i116, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                            }
                            TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var110, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                    composer2 = composerStartRestartGroup;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    dialogProperties3 = dialogProperties2;
                    modifier3 = modifier4;
                    bm3Var9 = bm3Var11;
                    bm3Var10 = bm3Var12;
                    shape2 = shape3;
                    j2 = containerColor;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    dialogProperties3 = dialogProperties2;
                    bm3Var9 = bm3Var7;
                    bm3Var10 = bm3Var8;
                    shape2 = shape;
                    j2 = j;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            modifier2 = modifier;
            i6 = i2 & 16;
            if (i6 != 0) {
                if ((i & 24576) == 0) {
                    dialogProperties2 = dialogProperties;
                    if (composerStartRestartGroup.changed(dialogProperties2)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 32;
                if (i8 != 0) {
                    if ((196608 & i) == 0) {
                        bm3Var7 = bm3Var3;
                        if (composerStartRestartGroup.changedInstance(bm3Var7)) {
                            i9 = 131072;
                        } else {
                            i9 = 65536;
                        }
                        i3 |= i9;
                    }
                    i10 = i2 & 64;
                    if (i10 != 0) {
                        if ((1572864 & i) == 0) {
                            bm3Var8 = bm3Var4;
                            if (composerStartRestartGroup.changedInstance(bm3Var8)) {
                                i11 = 1048576;
                            } else {
                                i11 = 524288;
                            }
                            i3 |= i11;
                        }
                        if ((i & 12582912) != 0) {
                            i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
                        }
                        if ((i & 100663296) == 0) {
                            int i116 = i3;
                            if ((i2 & 256) == 0) {
                                i17 = GroupFlagsKt.HasAuxSlotFlag;
                            } else {
                                i17 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i12 = i116 | i17;
                        } else {
                            i12 = i3;
                        }
                        i13 = i12;
                        if ((i2 & 512) != 0) {
                            i14 = i13 | 805306368;
                        } else if ((i & 805306368) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i15 = 536870912;
                            } else {
                                i15 = 268435456;
                            }
                            i14 = i13 | i15;
                        } else {
                            i14 = i13;
                        }
                        if ((i14 & 306783379) != 306783378) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                                } else {
                                    dialogProperties4 = dialogProperties2;
                                }
                                if (i8 != 0) {
                                    bm3Var7 = null;
                                }
                                if (i10 != 0) {
                                    bm3Var8 = null;
                                }
                                if ((i2 & 128) != 0) {
                                    shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                    i14 &= -29360129;
                                } else {
                                    shape3 = shape;
                                }
                                if ((i2 & 256) != 0) {
                                    i14 &= -234881025;
                                    containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                } else {
                                    containerColor = j;
                                }
                                bm3Var11 = bm3Var7;
                                i16 = i14;
                                dialogProperties2 = dialogProperties4;
                                modifier4 = modifier2;
                                bm3Var12 = bm3Var8;
                            } else {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                                } else {
                                    dialogProperties4 = dialogProperties2;
                                }
                                if (i8 != 0) {
                                    bm3Var7 = null;
                                }
                                if (i10 != 0) {
                                    bm3Var8 = null;
                                }
                                if ((i2 & 128) != 0) {
                                    shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                    i14 &= -29360129;
                                } else {
                                    shape3 = shape;
                                }
                                if ((i2 & 256) != 0) {
                                    i14 &= -234881025;
                                    containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                } else {
                                    containerColor = j;
                                }
                                bm3Var11 = bm3Var7;
                                i16 = i14;
                                dialogProperties2 = dialogProperties4;
                                modifier4 = modifier2;
                                bm3Var12 = bm3Var8;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                            }
                            final bm3<? super Composer, ? super Integer, j59> bm3Var111 = bm3Var6;
                            AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                                public final void invoke(Composer composer3, int i117) {
                                    if (!composer3.shouldExecute((i117 & 3) != 2, i117 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(296331566, i117, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                                    }
                                    TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var111, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                            composer2 = composerStartRestartGroup;
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            dialogProperties3 = dialogProperties2;
                            modifier3 = modifier4;
                            bm3Var9 = bm3Var11;
                            bm3Var10 = bm3Var12;
                            shape2 = shape3;
                            j2 = containerColor;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            modifier3 = modifier2;
                            dialogProperties3 = dialogProperties2;
                            bm3Var9 = bm3Var7;
                            bm3Var10 = bm3Var8;
                            shape2 = shape;
                            j2 = j;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 1572864;
                    bm3Var8 = bm3Var4;
                    if ((i & 12582912) != 0) {
                        i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
                    }
                    if ((i & 100663296) == 0) {
                        int i117 = i3;
                        if ((i2 & 256) == 0) {
                            i17 = GroupFlagsKt.HasAuxSlotFlag;
                        } else {
                            i17 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i12 = i117 | i17;
                    } else {
                        i12 = i3;
                    }
                    i13 = i12;
                    if ((i2 & 512) != 0) {
                        i14 = i13 | 805306368;
                    } else if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i15 = 536870912;
                        } else {
                            i15 = 268435456;
                        }
                        i14 = i13 | i15;
                    } else {
                        i14 = i13;
                    }
                    if ((i14 & 306783379) != 306783378) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                            } else {
                                dialogProperties4 = dialogProperties2;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if (i10 != 0) {
                                bm3Var8 = null;
                            }
                            if ((i2 & 128) != 0) {
                                shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                i14 &= -29360129;
                            } else {
                                shape3 = shape;
                            }
                            if ((i2 & 256) != 0) {
                                i14 &= -234881025;
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            bm3Var11 = bm3Var7;
                            i16 = i14;
                            dialogProperties2 = dialogProperties4;
                            modifier4 = modifier2;
                            bm3Var12 = bm3Var8;
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                            } else {
                                dialogProperties4 = dialogProperties2;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if (i10 != 0) {
                                bm3Var8 = null;
                            }
                            if ((i2 & 128) != 0) {
                                shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                i14 &= -29360129;
                            } else {
                                shape3 = shape;
                            }
                            if ((i2 & 256) != 0) {
                                i14 &= -234881025;
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            bm3Var11 = bm3Var7;
                            i16 = i14;
                            dialogProperties2 = dialogProperties4;
                            modifier4 = modifier2;
                            bm3Var12 = bm3Var8;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                        }
                        final bm3<? super Composer, ? super Integer, j59> bm3Var112 = bm3Var6;
                        AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                            public final void invoke(Composer composer3, int i118) {
                                if (!composer3.shouldExecute((i118 & 3) != 2, i118 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(296331566, i118, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                                }
                                TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var112, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                        composer2 = composerStartRestartGroup;
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        dialogProperties3 = dialogProperties2;
                        modifier3 = modifier4;
                        bm3Var9 = bm3Var11;
                        bm3Var10 = bm3Var12;
                        shape2 = shape3;
                        j2 = containerColor;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        dialogProperties3 = dialogProperties2;
                        bm3Var9 = bm3Var7;
                        bm3Var10 = bm3Var8;
                        shape2 = shape;
                        j2 = j;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                bm3Var7 = bm3Var3;
                i10 = i2 & 64;
                if (i10 != 0) {
                    if ((1572864 & i) == 0) {
                        bm3Var8 = bm3Var4;
                        if (composerStartRestartGroup.changedInstance(bm3Var8)) {
                            i11 = 1048576;
                        } else {
                            i11 = 524288;
                        }
                        i3 |= i11;
                    }
                    if ((i & 12582912) != 0) {
                        i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
                    }
                    if ((i & 100663296) == 0) {
                        int i118 = i3;
                        if ((i2 & 256) == 0) {
                            i17 = GroupFlagsKt.HasAuxSlotFlag;
                        } else {
                            i17 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i12 = i118 | i17;
                    } else {
                        i12 = i3;
                    }
                    i13 = i12;
                    if ((i2 & 512) != 0) {
                        i14 = i13 | 805306368;
                    } else if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i15 = 536870912;
                        } else {
                            i15 = 268435456;
                        }
                        i14 = i13 | i15;
                    } else {
                        i14 = i13;
                    }
                    if ((i14 & 306783379) != 306783378) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                            } else {
                                dialogProperties4 = dialogProperties2;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if (i10 != 0) {
                                bm3Var8 = null;
                            }
                            if ((i2 & 128) != 0) {
                                shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                i14 &= -29360129;
                            } else {
                                shape3 = shape;
                            }
                            if ((i2 & 256) != 0) {
                                i14 &= -234881025;
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            bm3Var11 = bm3Var7;
                            i16 = i14;
                            dialogProperties2 = dialogProperties4;
                            modifier4 = modifier2;
                            bm3Var12 = bm3Var8;
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                            } else {
                                dialogProperties4 = dialogProperties2;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if (i10 != 0) {
                                bm3Var8 = null;
                            }
                            if ((i2 & 128) != 0) {
                                shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                i14 &= -29360129;
                            } else {
                                shape3 = shape;
                            }
                            if ((i2 & 256) != 0) {
                                i14 &= -234881025;
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            bm3Var11 = bm3Var7;
                            i16 = i14;
                            dialogProperties2 = dialogProperties4;
                            modifier4 = modifier2;
                            bm3Var12 = bm3Var8;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                        }
                        final bm3<? super Composer, ? super Integer, j59> bm3Var113 = bm3Var6;
                        AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                            public final void invoke(Composer composer3, int i119) {
                                if (!composer3.shouldExecute((i119 & 3) != 2, i119 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(296331566, i119, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                                }
                                TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var113, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                        composer2 = composerStartRestartGroup;
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        dialogProperties3 = dialogProperties2;
                        modifier3 = modifier4;
                        bm3Var9 = bm3Var11;
                        bm3Var10 = bm3Var12;
                        shape2 = shape3;
                        j2 = containerColor;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        dialogProperties3 = dialogProperties2;
                        bm3Var9 = bm3Var7;
                        bm3Var10 = bm3Var8;
                        shape2 = shape;
                        j2 = j;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                bm3Var8 = bm3Var4;
                if ((i & 12582912) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
                }
                if ((i & 100663296) == 0) {
                    int i119 = i3;
                    if ((i2 & 256) == 0) {
                        i17 = GroupFlagsKt.HasAuxSlotFlag;
                    } else {
                        i17 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i12 = i119 | i17;
                } else {
                    i12 = i3;
                }
                i13 = i12;
                if ((i2 & 512) != 0) {
                    i14 = i13 | 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i15 = 536870912;
                    } else {
                        i15 = 268435456;
                    }
                    i14 = i13 | i15;
                } else {
                    i14 = i13;
                }
                if ((i14 & 306783379) != 306783378) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                        } else {
                            dialogProperties4 = dialogProperties2;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if (i10 != 0) {
                            bm3Var8 = null;
                        }
                        if ((i2 & 128) != 0) {
                            shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            i14 &= -29360129;
                        } else {
                            shape3 = shape;
                        }
                        if ((i2 & 256) != 0) {
                            i14 &= -234881025;
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        bm3Var11 = bm3Var7;
                        i16 = i14;
                        dialogProperties2 = dialogProperties4;
                        modifier4 = modifier2;
                        bm3Var12 = bm3Var8;
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                        } else {
                            dialogProperties4 = dialogProperties2;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if (i10 != 0) {
                            bm3Var8 = null;
                        }
                        if ((i2 & 128) != 0) {
                            shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            i14 &= -29360129;
                        } else {
                            shape3 = shape;
                        }
                        if ((i2 & 256) != 0) {
                            i14 &= -234881025;
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        bm3Var11 = bm3Var7;
                        i16 = i14;
                        dialogProperties2 = dialogProperties4;
                        modifier4 = modifier2;
                        bm3Var12 = bm3Var8;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                    }
                    final bm3<? super Composer, ? super Integer, j59> bm3Var114 = bm3Var6;
                    AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                        public final void invoke(Composer composer3, int i1110) {
                            if (!composer3.shouldExecute((i1110 & 3) != 2, i1110 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(296331566, i1110, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                            }
                            TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var114, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                    composer2 = composerStartRestartGroup;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    dialogProperties3 = dialogProperties2;
                    modifier3 = modifier4;
                    bm3Var9 = bm3Var11;
                    bm3Var10 = bm3Var12;
                    shape2 = shape3;
                    j2 = containerColor;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    dialogProperties3 = dialogProperties2;
                    bm3Var9 = bm3Var7;
                    bm3Var10 = bm3Var8;
                    shape2 = shape;
                    j2 = j;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            dialogProperties2 = dialogProperties;
            i8 = i2 & 32;
            if (i8 != 0) {
                if ((196608 & i) == 0) {
                    bm3Var7 = bm3Var3;
                    if (composerStartRestartGroup.changedInstance(bm3Var7)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i3 |= i9;
                }
                i10 = i2 & 64;
                if (i10 != 0) {
                    if ((1572864 & i) == 0) {
                        bm3Var8 = bm3Var4;
                        if (composerStartRestartGroup.changedInstance(bm3Var8)) {
                            i11 = 1048576;
                        } else {
                            i11 = 524288;
                        }
                        i3 |= i11;
                    }
                    if ((i & 12582912) != 0) {
                        i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
                    }
                    if ((i & 100663296) == 0) {
                        int i1110 = i3;
                        if ((i2 & 256) == 0) {
                            i17 = GroupFlagsKt.HasAuxSlotFlag;
                        } else {
                            i17 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i12 = i1110 | i17;
                    } else {
                        i12 = i3;
                    }
                    i13 = i12;
                    if ((i2 & 512) != 0) {
                        i14 = i13 | 805306368;
                    } else if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i15 = 536870912;
                        } else {
                            i15 = 268435456;
                        }
                        i14 = i13 | i15;
                    } else {
                        i14 = i13;
                    }
                    if ((i14 & 306783379) != 306783378) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                            } else {
                                dialogProperties4 = dialogProperties2;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if (i10 != 0) {
                                bm3Var8 = null;
                            }
                            if ((i2 & 128) != 0) {
                                shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                i14 &= -29360129;
                            } else {
                                shape3 = shape;
                            }
                            if ((i2 & 256) != 0) {
                                i14 &= -234881025;
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            bm3Var11 = bm3Var7;
                            i16 = i14;
                            dialogProperties2 = dialogProperties4;
                            modifier4 = modifier2;
                            bm3Var12 = bm3Var8;
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                            } else {
                                dialogProperties4 = dialogProperties2;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if (i10 != 0) {
                                bm3Var8 = null;
                            }
                            if ((i2 & 128) != 0) {
                                shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                i14 &= -29360129;
                            } else {
                                shape3 = shape;
                            }
                            if ((i2 & 256) != 0) {
                                i14 &= -234881025;
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            bm3Var11 = bm3Var7;
                            i16 = i14;
                            dialogProperties2 = dialogProperties4;
                            modifier4 = modifier2;
                            bm3Var12 = bm3Var8;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                        }
                        final bm3<? super Composer, ? super Integer, j59> bm3Var115 = bm3Var6;
                        AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                            public final void invoke(Composer composer3, int i1111) {
                                if (!composer3.shouldExecute((i1111 & 3) != 2, i1111 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(296331566, i1111, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                                }
                                TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var115, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                        composer2 = composerStartRestartGroup;
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        dialogProperties3 = dialogProperties2;
                        modifier3 = modifier4;
                        bm3Var9 = bm3Var11;
                        bm3Var10 = bm3Var12;
                        shape2 = shape3;
                        j2 = containerColor;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        dialogProperties3 = dialogProperties2;
                        bm3Var9 = bm3Var7;
                        bm3Var10 = bm3Var8;
                        shape2 = shape;
                        j2 = j;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                bm3Var8 = bm3Var4;
                if ((i & 12582912) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
                }
                if ((i & 100663296) == 0) {
                    int i1111 = i3;
                    if ((i2 & 256) == 0) {
                        i17 = GroupFlagsKt.HasAuxSlotFlag;
                    } else {
                        i17 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i12 = i1111 | i17;
                } else {
                    i12 = i3;
                }
                i13 = i12;
                if ((i2 & 512) != 0) {
                    i14 = i13 | 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i15 = 536870912;
                    } else {
                        i15 = 268435456;
                    }
                    i14 = i13 | i15;
                } else {
                    i14 = i13;
                }
                if ((i14 & 306783379) != 306783378) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                        } else {
                            dialogProperties4 = dialogProperties2;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if (i10 != 0) {
                            bm3Var8 = null;
                        }
                        if ((i2 & 128) != 0) {
                            shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            i14 &= -29360129;
                        } else {
                            shape3 = shape;
                        }
                        if ((i2 & 256) != 0) {
                            i14 &= -234881025;
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        bm3Var11 = bm3Var7;
                        i16 = i14;
                        dialogProperties2 = dialogProperties4;
                        modifier4 = modifier2;
                        bm3Var12 = bm3Var8;
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                        } else {
                            dialogProperties4 = dialogProperties2;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if (i10 != 0) {
                            bm3Var8 = null;
                        }
                        if ((i2 & 128) != 0) {
                            shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            i14 &= -29360129;
                        } else {
                            shape3 = shape;
                        }
                        if ((i2 & 256) != 0) {
                            i14 &= -234881025;
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        bm3Var11 = bm3Var7;
                        i16 = i14;
                        dialogProperties2 = dialogProperties4;
                        modifier4 = modifier2;
                        bm3Var12 = bm3Var8;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                    }
                    final bm3<? super Composer, ? super Integer, j59> bm3Var116 = bm3Var6;
                    AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                        public final void invoke(Composer composer3, int i1112) {
                            if (!composer3.shouldExecute((i1112 & 3) != 2, i1112 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(296331566, i1112, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                            }
                            TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var116, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                    composer2 = composerStartRestartGroup;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    dialogProperties3 = dialogProperties2;
                    modifier3 = modifier4;
                    bm3Var9 = bm3Var11;
                    bm3Var10 = bm3Var12;
                    shape2 = shape3;
                    j2 = containerColor;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    dialogProperties3 = dialogProperties2;
                    bm3Var9 = bm3Var7;
                    bm3Var10 = bm3Var8;
                    shape2 = shape;
                    j2 = j;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            bm3Var7 = bm3Var3;
            i10 = i2 & 64;
            if (i10 != 0) {
                if ((1572864 & i) == 0) {
                    bm3Var8 = bm3Var4;
                    if (composerStartRestartGroup.changedInstance(bm3Var8)) {
                        i11 = 1048576;
                    } else {
                        i11 = 524288;
                    }
                    i3 |= i11;
                }
                if ((i & 12582912) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
                }
                if ((i & 100663296) == 0) {
                    int i1112 = i3;
                    if ((i2 & 256) == 0) {
                        i17 = GroupFlagsKt.HasAuxSlotFlag;
                    } else {
                        i17 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i12 = i1112 | i17;
                } else {
                    i12 = i3;
                }
                i13 = i12;
                if ((i2 & 512) != 0) {
                    i14 = i13 | 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i15 = 536870912;
                    } else {
                        i15 = 268435456;
                    }
                    i14 = i13 | i15;
                } else {
                    i14 = i13;
                }
                if ((i14 & 306783379) != 306783378) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                        } else {
                            dialogProperties4 = dialogProperties2;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if (i10 != 0) {
                            bm3Var8 = null;
                        }
                        if ((i2 & 128) != 0) {
                            shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            i14 &= -29360129;
                        } else {
                            shape3 = shape;
                        }
                        if ((i2 & 256) != 0) {
                            i14 &= -234881025;
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        bm3Var11 = bm3Var7;
                        i16 = i14;
                        dialogProperties2 = dialogProperties4;
                        modifier4 = modifier2;
                        bm3Var12 = bm3Var8;
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                        } else {
                            dialogProperties4 = dialogProperties2;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if (i10 != 0) {
                            bm3Var8 = null;
                        }
                        if ((i2 & 128) != 0) {
                            shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            i14 &= -29360129;
                        } else {
                            shape3 = shape;
                        }
                        if ((i2 & 256) != 0) {
                            i14 &= -234881025;
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        bm3Var11 = bm3Var7;
                        i16 = i14;
                        dialogProperties2 = dialogProperties4;
                        modifier4 = modifier2;
                        bm3Var12 = bm3Var8;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                    }
                    final bm3<? super Composer, ? super Integer, j59> bm3Var117 = bm3Var6;
                    AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                        public final void invoke(Composer composer3, int i1113) {
                            if (!composer3.shouldExecute((i1113 & 3) != 2, i1113 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(296331566, i1113, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                            }
                            TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var117, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                    composer2 = composerStartRestartGroup;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    dialogProperties3 = dialogProperties2;
                    modifier3 = modifier4;
                    bm3Var9 = bm3Var11;
                    bm3Var10 = bm3Var12;
                    shape2 = shape3;
                    j2 = containerColor;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    dialogProperties3 = dialogProperties2;
                    bm3Var9 = bm3Var7;
                    bm3Var10 = bm3Var8;
                    shape2 = shape;
                    j2 = j;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 1572864;
            bm3Var8 = bm3Var4;
            if ((i & 12582912) != 0) {
                i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
            }
            if ((i & 100663296) == 0) {
                int i1113 = i3;
                if ((i2 & 256) == 0) {
                    i17 = GroupFlagsKt.HasAuxSlotFlag;
                } else {
                    i17 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i12 = i1113 | i17;
            } else {
                i12 = i3;
            }
            i13 = i12;
            if ((i2 & 512) != 0) {
                i14 = i13 | 805306368;
            } else if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i15 = 536870912;
                } else {
                    i15 = 268435456;
                }
                i14 = i13 | i15;
            } else {
                i14 = i13;
            }
            if ((i14 & 306783379) != 306783378) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                    } else {
                        dialogProperties4 = dialogProperties2;
                    }
                    if (i8 != 0) {
                        bm3Var7 = null;
                    }
                    if (i10 != 0) {
                        bm3Var8 = null;
                    }
                    if ((i2 & 128) != 0) {
                        shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        i14 &= -29360129;
                    } else {
                        shape3 = shape;
                    }
                    if ((i2 & 256) != 0) {
                        i14 &= -234881025;
                        containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    } else {
                        containerColor = j;
                    }
                    bm3Var11 = bm3Var7;
                    i16 = i14;
                    dialogProperties2 = dialogProperties4;
                    modifier4 = modifier2;
                    bm3Var12 = bm3Var8;
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                    } else {
                        dialogProperties4 = dialogProperties2;
                    }
                    if (i8 != 0) {
                        bm3Var7 = null;
                    }
                    if (i10 != 0) {
                        bm3Var8 = null;
                    }
                    if ((i2 & 128) != 0) {
                        shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        i14 &= -29360129;
                    } else {
                        shape3 = shape;
                    }
                    if ((i2 & 256) != 0) {
                        i14 &= -234881025;
                        containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    } else {
                        containerColor = j;
                    }
                    bm3Var11 = bm3Var7;
                    i16 = i14;
                    dialogProperties2 = dialogProperties4;
                    modifier4 = modifier2;
                    bm3Var12 = bm3Var8;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                }
                final bm3<? super Composer, ? super Integer, j59> bm3Var118 = bm3Var6;
                AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                    public final void invoke(Composer composer3, int i1114) {
                        if (!composer3.shouldExecute((i1114 & 3) != 2, i1114 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(296331566, i1114, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                        }
                        TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var118, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                composer2 = composerStartRestartGroup;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                dialogProperties3 = dialogProperties2;
                modifier3 = modifier4;
                bm3Var9 = bm3Var11;
                bm3Var10 = bm3Var12;
                shape2 = shape3;
                j2 = containerColor;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                dialogProperties3 = dialogProperties2;
                bm3Var9 = bm3Var7;
                bm3Var10 = bm3Var8;
                shape2 = shape;
                j2 = j;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        bm3Var6 = bm3Var2;
        i4 = i2 & 8;
        if (i4 != 0) {
            if ((i & 3072) == 0) {
                modifier2 = modifier;
                if (composerStartRestartGroup.changed(modifier2)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i3 |= i5;
            }
            i6 = i2 & 16;
            if (i6 != 0) {
                if ((i & 24576) == 0) {
                    dialogProperties2 = dialogProperties;
                    if (composerStartRestartGroup.changed(dialogProperties2)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 32;
                if (i8 != 0) {
                    if ((196608 & i) == 0) {
                        bm3Var7 = bm3Var3;
                        if (composerStartRestartGroup.changedInstance(bm3Var7)) {
                            i9 = 131072;
                        } else {
                            i9 = 65536;
                        }
                        i3 |= i9;
                    }
                    i10 = i2 & 64;
                    if (i10 != 0) {
                        if ((1572864 & i) == 0) {
                            bm3Var8 = bm3Var4;
                            if (composerStartRestartGroup.changedInstance(bm3Var8)) {
                                i11 = 1048576;
                            } else {
                                i11 = 524288;
                            }
                            i3 |= i11;
                        }
                        if ((i & 12582912) != 0) {
                            i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
                        }
                        if ((i & 100663296) == 0) {
                            int i1114 = i3;
                            if ((i2 & 256) == 0) {
                                i17 = GroupFlagsKt.HasAuxSlotFlag;
                            } else {
                                i17 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i12 = i1114 | i17;
                        } else {
                            i12 = i3;
                        }
                        i13 = i12;
                        if ((i2 & 512) != 0) {
                            i14 = i13 | 805306368;
                        } else if ((i & 805306368) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i15 = 536870912;
                            } else {
                                i15 = 268435456;
                            }
                            i14 = i13 | i15;
                        } else {
                            i14 = i13;
                        }
                        if ((i14 & 306783379) != 306783378) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                                } else {
                                    dialogProperties4 = dialogProperties2;
                                }
                                if (i8 != 0) {
                                    bm3Var7 = null;
                                }
                                if (i10 != 0) {
                                    bm3Var8 = null;
                                }
                                if ((i2 & 128) != 0) {
                                    shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                    i14 &= -29360129;
                                } else {
                                    shape3 = shape;
                                }
                                if ((i2 & 256) != 0) {
                                    i14 &= -234881025;
                                    containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                } else {
                                    containerColor = j;
                                }
                                bm3Var11 = bm3Var7;
                                i16 = i14;
                                dialogProperties2 = dialogProperties4;
                                modifier4 = modifier2;
                                bm3Var12 = bm3Var8;
                            } else {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                                } else {
                                    dialogProperties4 = dialogProperties2;
                                }
                                if (i8 != 0) {
                                    bm3Var7 = null;
                                }
                                if (i10 != 0) {
                                    bm3Var8 = null;
                                }
                                if ((i2 & 128) != 0) {
                                    shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                    i14 &= -29360129;
                                } else {
                                    shape3 = shape;
                                }
                                if ((i2 & 256) != 0) {
                                    i14 &= -234881025;
                                    containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                } else {
                                    containerColor = j;
                                }
                                bm3Var11 = bm3Var7;
                                i16 = i14;
                                dialogProperties2 = dialogProperties4;
                                modifier4 = modifier2;
                                bm3Var12 = bm3Var8;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                            }
                            final bm3<? super Composer, ? super Integer, j59> bm3Var119 = bm3Var6;
                            AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                                public final void invoke(Composer composer3, int i1115) {
                                    if (!composer3.shouldExecute((i1115 & 3) != 2, i1115 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(296331566, i1115, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                                    }
                                    TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var119, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                            composer2 = composerStartRestartGroup;
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            dialogProperties3 = dialogProperties2;
                            modifier3 = modifier4;
                            bm3Var9 = bm3Var11;
                            bm3Var10 = bm3Var12;
                            shape2 = shape3;
                            j2 = containerColor;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            modifier3 = modifier2;
                            dialogProperties3 = dialogProperties2;
                            bm3Var9 = bm3Var7;
                            bm3Var10 = bm3Var8;
                            shape2 = shape;
                            j2 = j;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 1572864;
                    bm3Var8 = bm3Var4;
                    if ((i & 12582912) != 0) {
                        i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
                    }
                    if ((i & 100663296) == 0) {
                        int i1115 = i3;
                        if ((i2 & 256) == 0) {
                            i17 = GroupFlagsKt.HasAuxSlotFlag;
                        } else {
                            i17 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i12 = i1115 | i17;
                    } else {
                        i12 = i3;
                    }
                    i13 = i12;
                    if ((i2 & 512) != 0) {
                        i14 = i13 | 805306368;
                    } else if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i15 = 536870912;
                        } else {
                            i15 = 268435456;
                        }
                        i14 = i13 | i15;
                    } else {
                        i14 = i13;
                    }
                    if ((i14 & 306783379) != 306783378) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                            } else {
                                dialogProperties4 = dialogProperties2;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if (i10 != 0) {
                                bm3Var8 = null;
                            }
                            if ((i2 & 128) != 0) {
                                shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                i14 &= -29360129;
                            } else {
                                shape3 = shape;
                            }
                            if ((i2 & 256) != 0) {
                                i14 &= -234881025;
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            bm3Var11 = bm3Var7;
                            i16 = i14;
                            dialogProperties2 = dialogProperties4;
                            modifier4 = modifier2;
                            bm3Var12 = bm3Var8;
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                            } else {
                                dialogProperties4 = dialogProperties2;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if (i10 != 0) {
                                bm3Var8 = null;
                            }
                            if ((i2 & 128) != 0) {
                                shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                i14 &= -29360129;
                            } else {
                                shape3 = shape;
                            }
                            if ((i2 & 256) != 0) {
                                i14 &= -234881025;
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            bm3Var11 = bm3Var7;
                            i16 = i14;
                            dialogProperties2 = dialogProperties4;
                            modifier4 = modifier2;
                            bm3Var12 = bm3Var8;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                        }
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1110 = bm3Var6;
                        AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                            public final void invoke(Composer composer3, int i1116) {
                                if (!composer3.shouldExecute((i1116 & 3) != 2, i1116 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(296331566, i1116, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                                }
                                TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var1110, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                        composer2 = composerStartRestartGroup;
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        dialogProperties3 = dialogProperties2;
                        modifier3 = modifier4;
                        bm3Var9 = bm3Var11;
                        bm3Var10 = bm3Var12;
                        shape2 = shape3;
                        j2 = containerColor;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        dialogProperties3 = dialogProperties2;
                        bm3Var9 = bm3Var7;
                        bm3Var10 = bm3Var8;
                        shape2 = shape;
                        j2 = j;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                bm3Var7 = bm3Var3;
                i10 = i2 & 64;
                if (i10 != 0) {
                    if ((1572864 & i) == 0) {
                        bm3Var8 = bm3Var4;
                        if (composerStartRestartGroup.changedInstance(bm3Var8)) {
                            i11 = 1048576;
                        } else {
                            i11 = 524288;
                        }
                        i3 |= i11;
                    }
                    if ((i & 12582912) != 0) {
                        i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
                    }
                    if ((i & 100663296) == 0) {
                        int i1116 = i3;
                        if ((i2 & 256) == 0) {
                            i17 = GroupFlagsKt.HasAuxSlotFlag;
                        } else {
                            i17 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i12 = i1116 | i17;
                    } else {
                        i12 = i3;
                    }
                    i13 = i12;
                    if ((i2 & 512) != 0) {
                        i14 = i13 | 805306368;
                    } else if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i15 = 536870912;
                        } else {
                            i15 = 268435456;
                        }
                        i14 = i13 | i15;
                    } else {
                        i14 = i13;
                    }
                    if ((i14 & 306783379) != 306783378) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                            } else {
                                dialogProperties4 = dialogProperties2;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if (i10 != 0) {
                                bm3Var8 = null;
                            }
                            if ((i2 & 128) != 0) {
                                shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                i14 &= -29360129;
                            } else {
                                shape3 = shape;
                            }
                            if ((i2 & 256) != 0) {
                                i14 &= -234881025;
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            bm3Var11 = bm3Var7;
                            i16 = i14;
                            dialogProperties2 = dialogProperties4;
                            modifier4 = modifier2;
                            bm3Var12 = bm3Var8;
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                            } else {
                                dialogProperties4 = dialogProperties2;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if (i10 != 0) {
                                bm3Var8 = null;
                            }
                            if ((i2 & 128) != 0) {
                                shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                i14 &= -29360129;
                            } else {
                                shape3 = shape;
                            }
                            if ((i2 & 256) != 0) {
                                i14 &= -234881025;
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            bm3Var11 = bm3Var7;
                            i16 = i14;
                            dialogProperties2 = dialogProperties4;
                            modifier4 = modifier2;
                            bm3Var12 = bm3Var8;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                        }
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1111 = bm3Var6;
                        AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                            public final void invoke(Composer composer3, int i1117) {
                                if (!composer3.shouldExecute((i1117 & 3) != 2, i1117 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(296331566, i1117, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                                }
                                TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var1111, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                        composer2 = composerStartRestartGroup;
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        dialogProperties3 = dialogProperties2;
                        modifier3 = modifier4;
                        bm3Var9 = bm3Var11;
                        bm3Var10 = bm3Var12;
                        shape2 = shape3;
                        j2 = containerColor;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        dialogProperties3 = dialogProperties2;
                        bm3Var9 = bm3Var7;
                        bm3Var10 = bm3Var8;
                        shape2 = shape;
                        j2 = j;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                bm3Var8 = bm3Var4;
                if ((i & 12582912) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
                }
                if ((i & 100663296) == 0) {
                    int i1117 = i3;
                    if ((i2 & 256) == 0) {
                        i17 = GroupFlagsKt.HasAuxSlotFlag;
                    } else {
                        i17 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i12 = i1117 | i17;
                } else {
                    i12 = i3;
                }
                i13 = i12;
                if ((i2 & 512) != 0) {
                    i14 = i13 | 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i15 = 536870912;
                    } else {
                        i15 = 268435456;
                    }
                    i14 = i13 | i15;
                } else {
                    i14 = i13;
                }
                if ((i14 & 306783379) != 306783378) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                        } else {
                            dialogProperties4 = dialogProperties2;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if (i10 != 0) {
                            bm3Var8 = null;
                        }
                        if ((i2 & 128) != 0) {
                            shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            i14 &= -29360129;
                        } else {
                            shape3 = shape;
                        }
                        if ((i2 & 256) != 0) {
                            i14 &= -234881025;
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        bm3Var11 = bm3Var7;
                        i16 = i14;
                        dialogProperties2 = dialogProperties4;
                        modifier4 = modifier2;
                        bm3Var12 = bm3Var8;
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                        } else {
                            dialogProperties4 = dialogProperties2;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if (i10 != 0) {
                            bm3Var8 = null;
                        }
                        if ((i2 & 128) != 0) {
                            shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            i14 &= -29360129;
                        } else {
                            shape3 = shape;
                        }
                        if ((i2 & 256) != 0) {
                            i14 &= -234881025;
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        bm3Var11 = bm3Var7;
                        i16 = i14;
                        dialogProperties2 = dialogProperties4;
                        modifier4 = modifier2;
                        bm3Var12 = bm3Var8;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                    }
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1112 = bm3Var6;
                    AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                        public final void invoke(Composer composer3, int i1118) {
                            if (!composer3.shouldExecute((i1118 & 3) != 2, i1118 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(296331566, i1118, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                            }
                            TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var1112, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                    composer2 = composerStartRestartGroup;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    dialogProperties3 = dialogProperties2;
                    modifier3 = modifier4;
                    bm3Var9 = bm3Var11;
                    bm3Var10 = bm3Var12;
                    shape2 = shape3;
                    j2 = containerColor;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    dialogProperties3 = dialogProperties2;
                    bm3Var9 = bm3Var7;
                    bm3Var10 = bm3Var8;
                    shape2 = shape;
                    j2 = j;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            dialogProperties2 = dialogProperties;
            i8 = i2 & 32;
            if (i8 != 0) {
                if ((196608 & i) == 0) {
                    bm3Var7 = bm3Var3;
                    if (composerStartRestartGroup.changedInstance(bm3Var7)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i3 |= i9;
                }
                i10 = i2 & 64;
                if (i10 != 0) {
                    if ((1572864 & i) == 0) {
                        bm3Var8 = bm3Var4;
                        if (composerStartRestartGroup.changedInstance(bm3Var8)) {
                            i11 = 1048576;
                        } else {
                            i11 = 524288;
                        }
                        i3 |= i11;
                    }
                    if ((i & 12582912) != 0) {
                        i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
                    }
                    if ((i & 100663296) == 0) {
                        int i1118 = i3;
                        if ((i2 & 256) == 0) {
                            i17 = GroupFlagsKt.HasAuxSlotFlag;
                        } else {
                            i17 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i12 = i1118 | i17;
                    } else {
                        i12 = i3;
                    }
                    i13 = i12;
                    if ((i2 & 512) != 0) {
                        i14 = i13 | 805306368;
                    } else if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i15 = 536870912;
                        } else {
                            i15 = 268435456;
                        }
                        i14 = i13 | i15;
                    } else {
                        i14 = i13;
                    }
                    if ((i14 & 306783379) != 306783378) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                            } else {
                                dialogProperties4 = dialogProperties2;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if (i10 != 0) {
                                bm3Var8 = null;
                            }
                            if ((i2 & 128) != 0) {
                                shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                i14 &= -29360129;
                            } else {
                                shape3 = shape;
                            }
                            if ((i2 & 256) != 0) {
                                i14 &= -234881025;
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            bm3Var11 = bm3Var7;
                            i16 = i14;
                            dialogProperties2 = dialogProperties4;
                            modifier4 = modifier2;
                            bm3Var12 = bm3Var8;
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                            } else {
                                dialogProperties4 = dialogProperties2;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if (i10 != 0) {
                                bm3Var8 = null;
                            }
                            if ((i2 & 128) != 0) {
                                shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                i14 &= -29360129;
                            } else {
                                shape3 = shape;
                            }
                            if ((i2 & 256) != 0) {
                                i14 &= -234881025;
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            bm3Var11 = bm3Var7;
                            i16 = i14;
                            dialogProperties2 = dialogProperties4;
                            modifier4 = modifier2;
                            bm3Var12 = bm3Var8;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                        }
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1113 = bm3Var6;
                        AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                            public final void invoke(Composer composer3, int i1119) {
                                if (!composer3.shouldExecute((i1119 & 3) != 2, i1119 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(296331566, i1119, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                                }
                                TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var1113, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                        composer2 = composerStartRestartGroup;
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        dialogProperties3 = dialogProperties2;
                        modifier3 = modifier4;
                        bm3Var9 = bm3Var11;
                        bm3Var10 = bm3Var12;
                        shape2 = shape3;
                        j2 = containerColor;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        dialogProperties3 = dialogProperties2;
                        bm3Var9 = bm3Var7;
                        bm3Var10 = bm3Var8;
                        shape2 = shape;
                        j2 = j;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                bm3Var8 = bm3Var4;
                if ((i & 12582912) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
                }
                if ((i & 100663296) == 0) {
                    int i1119 = i3;
                    if ((i2 & 256) == 0) {
                        i17 = GroupFlagsKt.HasAuxSlotFlag;
                    } else {
                        i17 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i12 = i1119 | i17;
                } else {
                    i12 = i3;
                }
                i13 = i12;
                if ((i2 & 512) != 0) {
                    i14 = i13 | 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i15 = 536870912;
                    } else {
                        i15 = 268435456;
                    }
                    i14 = i13 | i15;
                } else {
                    i14 = i13;
                }
                if ((i14 & 306783379) != 306783378) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                        } else {
                            dialogProperties4 = dialogProperties2;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if (i10 != 0) {
                            bm3Var8 = null;
                        }
                        if ((i2 & 128) != 0) {
                            shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            i14 &= -29360129;
                        } else {
                            shape3 = shape;
                        }
                        if ((i2 & 256) != 0) {
                            i14 &= -234881025;
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        bm3Var11 = bm3Var7;
                        i16 = i14;
                        dialogProperties2 = dialogProperties4;
                        modifier4 = modifier2;
                        bm3Var12 = bm3Var8;
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                        } else {
                            dialogProperties4 = dialogProperties2;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if (i10 != 0) {
                            bm3Var8 = null;
                        }
                        if ((i2 & 128) != 0) {
                            shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            i14 &= -29360129;
                        } else {
                            shape3 = shape;
                        }
                        if ((i2 & 256) != 0) {
                            i14 &= -234881025;
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        bm3Var11 = bm3Var7;
                        i16 = i14;
                        dialogProperties2 = dialogProperties4;
                        modifier4 = modifier2;
                        bm3Var12 = bm3Var8;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                    }
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1114 = bm3Var6;
                    AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                        public final void invoke(Composer composer3, int i11110) {
                            if (!composer3.shouldExecute((i11110 & 3) != 2, i11110 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(296331566, i11110, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                            }
                            TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var1114, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                    composer2 = composerStartRestartGroup;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    dialogProperties3 = dialogProperties2;
                    modifier3 = modifier4;
                    bm3Var9 = bm3Var11;
                    bm3Var10 = bm3Var12;
                    shape2 = shape3;
                    j2 = containerColor;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    dialogProperties3 = dialogProperties2;
                    bm3Var9 = bm3Var7;
                    bm3Var10 = bm3Var8;
                    shape2 = shape;
                    j2 = j;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            bm3Var7 = bm3Var3;
            i10 = i2 & 64;
            if (i10 != 0) {
                if ((1572864 & i) == 0) {
                    bm3Var8 = bm3Var4;
                    if (composerStartRestartGroup.changedInstance(bm3Var8)) {
                        i11 = 1048576;
                    } else {
                        i11 = 524288;
                    }
                    i3 |= i11;
                }
                if ((i & 12582912) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
                }
                if ((i & 100663296) == 0) {
                    int i11110 = i3;
                    if ((i2 & 256) == 0) {
                        i17 = GroupFlagsKt.HasAuxSlotFlag;
                    } else {
                        i17 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i12 = i11110 | i17;
                } else {
                    i12 = i3;
                }
                i13 = i12;
                if ((i2 & 512) != 0) {
                    i14 = i13 | 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i15 = 536870912;
                    } else {
                        i15 = 268435456;
                    }
                    i14 = i13 | i15;
                } else {
                    i14 = i13;
                }
                if ((i14 & 306783379) != 306783378) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                        } else {
                            dialogProperties4 = dialogProperties2;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if (i10 != 0) {
                            bm3Var8 = null;
                        }
                        if ((i2 & 128) != 0) {
                            shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            i14 &= -29360129;
                        } else {
                            shape3 = shape;
                        }
                        if ((i2 & 256) != 0) {
                            i14 &= -234881025;
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        bm3Var11 = bm3Var7;
                        i16 = i14;
                        dialogProperties2 = dialogProperties4;
                        modifier4 = modifier2;
                        bm3Var12 = bm3Var8;
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                        } else {
                            dialogProperties4 = dialogProperties2;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if (i10 != 0) {
                            bm3Var8 = null;
                        }
                        if ((i2 & 128) != 0) {
                            shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            i14 &= -29360129;
                        } else {
                            shape3 = shape;
                        }
                        if ((i2 & 256) != 0) {
                            i14 &= -234881025;
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        bm3Var11 = bm3Var7;
                        i16 = i14;
                        dialogProperties2 = dialogProperties4;
                        modifier4 = modifier2;
                        bm3Var12 = bm3Var8;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                    }
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1115 = bm3Var6;
                    AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                        public final void invoke(Composer composer3, int i11111) {
                            if (!composer3.shouldExecute((i11111 & 3) != 2, i11111 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(296331566, i11111, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                            }
                            TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var1115, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                    composer2 = composerStartRestartGroup;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    dialogProperties3 = dialogProperties2;
                    modifier3 = modifier4;
                    bm3Var9 = bm3Var11;
                    bm3Var10 = bm3Var12;
                    shape2 = shape3;
                    j2 = containerColor;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    dialogProperties3 = dialogProperties2;
                    bm3Var9 = bm3Var7;
                    bm3Var10 = bm3Var8;
                    shape2 = shape;
                    j2 = j;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 1572864;
            bm3Var8 = bm3Var4;
            if ((i & 12582912) != 0) {
                i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
            }
            if ((i & 100663296) == 0) {
                int i11111 = i3;
                if ((i2 & 256) == 0) {
                    i17 = GroupFlagsKt.HasAuxSlotFlag;
                } else {
                    i17 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i12 = i11111 | i17;
            } else {
                i12 = i3;
            }
            i13 = i12;
            if ((i2 & 512) != 0) {
                i14 = i13 | 805306368;
            } else if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i15 = 536870912;
                } else {
                    i15 = 268435456;
                }
                i14 = i13 | i15;
            } else {
                i14 = i13;
            }
            if ((i14 & 306783379) != 306783378) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                    } else {
                        dialogProperties4 = dialogProperties2;
                    }
                    if (i8 != 0) {
                        bm3Var7 = null;
                    }
                    if (i10 != 0) {
                        bm3Var8 = null;
                    }
                    if ((i2 & 128) != 0) {
                        shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        i14 &= -29360129;
                    } else {
                        shape3 = shape;
                    }
                    if ((i2 & 256) != 0) {
                        i14 &= -234881025;
                        containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    } else {
                        containerColor = j;
                    }
                    bm3Var11 = bm3Var7;
                    i16 = i14;
                    dialogProperties2 = dialogProperties4;
                    modifier4 = modifier2;
                    bm3Var12 = bm3Var8;
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                    } else {
                        dialogProperties4 = dialogProperties2;
                    }
                    if (i8 != 0) {
                        bm3Var7 = null;
                    }
                    if (i10 != 0) {
                        bm3Var8 = null;
                    }
                    if ((i2 & 128) != 0) {
                        shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        i14 &= -29360129;
                    } else {
                        shape3 = shape;
                    }
                    if ((i2 & 256) != 0) {
                        i14 &= -234881025;
                        containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    } else {
                        containerColor = j;
                    }
                    bm3Var11 = bm3Var7;
                    i16 = i14;
                    dialogProperties2 = dialogProperties4;
                    modifier4 = modifier2;
                    bm3Var12 = bm3Var8;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                }
                final bm3<? super Composer, ? super Integer, j59> bm3Var1116 = bm3Var6;
                AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                    public final void invoke(Composer composer3, int i11112) {
                        if (!composer3.shouldExecute((i11112 & 3) != 2, i11112 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(296331566, i11112, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                        }
                        TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var1116, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                composer2 = composerStartRestartGroup;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                dialogProperties3 = dialogProperties2;
                modifier3 = modifier4;
                bm3Var9 = bm3Var11;
                bm3Var10 = bm3Var12;
                shape2 = shape3;
                j2 = containerColor;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                dialogProperties3 = dialogProperties2;
                bm3Var9 = bm3Var7;
                bm3Var10 = bm3Var8;
                shape2 = shape;
                j2 = j;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        modifier2 = modifier;
        i6 = i2 & 16;
        if (i6 != 0) {
            if ((i & 24576) == 0) {
                dialogProperties2 = dialogProperties;
                if (composerStartRestartGroup.changed(dialogProperties2)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i3 |= i7;
            }
            i8 = i2 & 32;
            if (i8 != 0) {
                if ((196608 & i) == 0) {
                    bm3Var7 = bm3Var3;
                    if (composerStartRestartGroup.changedInstance(bm3Var7)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i3 |= i9;
                }
                i10 = i2 & 64;
                if (i10 != 0) {
                    if ((1572864 & i) == 0) {
                        bm3Var8 = bm3Var4;
                        if (composerStartRestartGroup.changedInstance(bm3Var8)) {
                            i11 = 1048576;
                        } else {
                            i11 = 524288;
                        }
                        i3 |= i11;
                    }
                    if ((i & 12582912) != 0) {
                        i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
                    }
                    if ((i & 100663296) == 0) {
                        int i11112 = i3;
                        if ((i2 & 256) == 0) {
                            i17 = GroupFlagsKt.HasAuxSlotFlag;
                        } else {
                            i17 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i12 = i11112 | i17;
                    } else {
                        i12 = i3;
                    }
                    i13 = i12;
                    if ((i2 & 512) != 0) {
                        i14 = i13 | 805306368;
                    } else if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i15 = 536870912;
                        } else {
                            i15 = 268435456;
                        }
                        i14 = i13 | i15;
                    } else {
                        i14 = i13;
                    }
                    if ((i14 & 306783379) != 306783378) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                            } else {
                                dialogProperties4 = dialogProperties2;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if (i10 != 0) {
                                bm3Var8 = null;
                            }
                            if ((i2 & 128) != 0) {
                                shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                i14 &= -29360129;
                            } else {
                                shape3 = shape;
                            }
                            if ((i2 & 256) != 0) {
                                i14 &= -234881025;
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            bm3Var11 = bm3Var7;
                            i16 = i14;
                            dialogProperties2 = dialogProperties4;
                            modifier4 = modifier2;
                            bm3Var12 = bm3Var8;
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                            } else {
                                dialogProperties4 = dialogProperties2;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if (i10 != 0) {
                                bm3Var8 = null;
                            }
                            if ((i2 & 128) != 0) {
                                shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                i14 &= -29360129;
                            } else {
                                shape3 = shape;
                            }
                            if ((i2 & 256) != 0) {
                                i14 &= -234881025;
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            bm3Var11 = bm3Var7;
                            i16 = i14;
                            dialogProperties2 = dialogProperties4;
                            modifier4 = modifier2;
                            bm3Var12 = bm3Var8;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                        }
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1117 = bm3Var6;
                        AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                            public final void invoke(Composer composer3, int i11113) {
                                if (!composer3.shouldExecute((i11113 & 3) != 2, i11113 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(296331566, i11113, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                                }
                                TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var1117, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                        composer2 = composerStartRestartGroup;
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        dialogProperties3 = dialogProperties2;
                        modifier3 = modifier4;
                        bm3Var9 = bm3Var11;
                        bm3Var10 = bm3Var12;
                        shape2 = shape3;
                        j2 = containerColor;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        dialogProperties3 = dialogProperties2;
                        bm3Var9 = bm3Var7;
                        bm3Var10 = bm3Var8;
                        shape2 = shape;
                        j2 = j;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                bm3Var8 = bm3Var4;
                if ((i & 12582912) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
                }
                if ((i & 100663296) == 0) {
                    int i11113 = i3;
                    if ((i2 & 256) == 0) {
                        i17 = GroupFlagsKt.HasAuxSlotFlag;
                    } else {
                        i17 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i12 = i11113 | i17;
                } else {
                    i12 = i3;
                }
                i13 = i12;
                if ((i2 & 512) != 0) {
                    i14 = i13 | 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i15 = 536870912;
                    } else {
                        i15 = 268435456;
                    }
                    i14 = i13 | i15;
                } else {
                    i14 = i13;
                }
                if ((i14 & 306783379) != 306783378) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                        } else {
                            dialogProperties4 = dialogProperties2;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if (i10 != 0) {
                            bm3Var8 = null;
                        }
                        if ((i2 & 128) != 0) {
                            shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            i14 &= -29360129;
                        } else {
                            shape3 = shape;
                        }
                        if ((i2 & 256) != 0) {
                            i14 &= -234881025;
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        bm3Var11 = bm3Var7;
                        i16 = i14;
                        dialogProperties2 = dialogProperties4;
                        modifier4 = modifier2;
                        bm3Var12 = bm3Var8;
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                        } else {
                            dialogProperties4 = dialogProperties2;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if (i10 != 0) {
                            bm3Var8 = null;
                        }
                        if ((i2 & 128) != 0) {
                            shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            i14 &= -29360129;
                        } else {
                            shape3 = shape;
                        }
                        if ((i2 & 256) != 0) {
                            i14 &= -234881025;
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        bm3Var11 = bm3Var7;
                        i16 = i14;
                        dialogProperties2 = dialogProperties4;
                        modifier4 = modifier2;
                        bm3Var12 = bm3Var8;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                    }
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1118 = bm3Var6;
                    AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                        public final void invoke(Composer composer3, int i11114) {
                            if (!composer3.shouldExecute((i11114 & 3) != 2, i11114 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(296331566, i11114, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                            }
                            TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var1118, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                    composer2 = composerStartRestartGroup;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    dialogProperties3 = dialogProperties2;
                    modifier3 = modifier4;
                    bm3Var9 = bm3Var11;
                    bm3Var10 = bm3Var12;
                    shape2 = shape3;
                    j2 = containerColor;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    dialogProperties3 = dialogProperties2;
                    bm3Var9 = bm3Var7;
                    bm3Var10 = bm3Var8;
                    shape2 = shape;
                    j2 = j;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            bm3Var7 = bm3Var3;
            i10 = i2 & 64;
            if (i10 != 0) {
                if ((1572864 & i) == 0) {
                    bm3Var8 = bm3Var4;
                    if (composerStartRestartGroup.changedInstance(bm3Var8)) {
                        i11 = 1048576;
                    } else {
                        i11 = 524288;
                    }
                    i3 |= i11;
                }
                if ((i & 12582912) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
                }
                if ((i & 100663296) == 0) {
                    int i11114 = i3;
                    if ((i2 & 256) == 0) {
                        i17 = GroupFlagsKt.HasAuxSlotFlag;
                    } else {
                        i17 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i12 = i11114 | i17;
                } else {
                    i12 = i3;
                }
                i13 = i12;
                if ((i2 & 512) != 0) {
                    i14 = i13 | 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i15 = 536870912;
                    } else {
                        i15 = 268435456;
                    }
                    i14 = i13 | i15;
                } else {
                    i14 = i13;
                }
                if ((i14 & 306783379) != 306783378) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                        } else {
                            dialogProperties4 = dialogProperties2;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if (i10 != 0) {
                            bm3Var8 = null;
                        }
                        if ((i2 & 128) != 0) {
                            shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            i14 &= -29360129;
                        } else {
                            shape3 = shape;
                        }
                        if ((i2 & 256) != 0) {
                            i14 &= -234881025;
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        bm3Var11 = bm3Var7;
                        i16 = i14;
                        dialogProperties2 = dialogProperties4;
                        modifier4 = modifier2;
                        bm3Var12 = bm3Var8;
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                        } else {
                            dialogProperties4 = dialogProperties2;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if (i10 != 0) {
                            bm3Var8 = null;
                        }
                        if ((i2 & 128) != 0) {
                            shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            i14 &= -29360129;
                        } else {
                            shape3 = shape;
                        }
                        if ((i2 & 256) != 0) {
                            i14 &= -234881025;
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        bm3Var11 = bm3Var7;
                        i16 = i14;
                        dialogProperties2 = dialogProperties4;
                        modifier4 = modifier2;
                        bm3Var12 = bm3Var8;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                    }
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1119 = bm3Var6;
                    AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                        public final void invoke(Composer composer3, int i11115) {
                            if (!composer3.shouldExecute((i11115 & 3) != 2, i11115 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(296331566, i11115, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                            }
                            TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var1119, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                    composer2 = composerStartRestartGroup;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    dialogProperties3 = dialogProperties2;
                    modifier3 = modifier4;
                    bm3Var9 = bm3Var11;
                    bm3Var10 = bm3Var12;
                    shape2 = shape3;
                    j2 = containerColor;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    dialogProperties3 = dialogProperties2;
                    bm3Var9 = bm3Var7;
                    bm3Var10 = bm3Var8;
                    shape2 = shape;
                    j2 = j;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 1572864;
            bm3Var8 = bm3Var4;
            if ((i & 12582912) != 0) {
                i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
            }
            if ((i & 100663296) == 0) {
                int i11115 = i3;
                if ((i2 & 256) == 0) {
                    i17 = GroupFlagsKt.HasAuxSlotFlag;
                } else {
                    i17 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i12 = i11115 | i17;
            } else {
                i12 = i3;
            }
            i13 = i12;
            if ((i2 & 512) != 0) {
                i14 = i13 | 805306368;
            } else if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i15 = 536870912;
                } else {
                    i15 = 268435456;
                }
                i14 = i13 | i15;
            } else {
                i14 = i13;
            }
            if ((i14 & 306783379) != 306783378) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                    } else {
                        dialogProperties4 = dialogProperties2;
                    }
                    if (i8 != 0) {
                        bm3Var7 = null;
                    }
                    if (i10 != 0) {
                        bm3Var8 = null;
                    }
                    if ((i2 & 128) != 0) {
                        shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        i14 &= -29360129;
                    } else {
                        shape3 = shape;
                    }
                    if ((i2 & 256) != 0) {
                        i14 &= -234881025;
                        containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    } else {
                        containerColor = j;
                    }
                    bm3Var11 = bm3Var7;
                    i16 = i14;
                    dialogProperties2 = dialogProperties4;
                    modifier4 = modifier2;
                    bm3Var12 = bm3Var8;
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                    } else {
                        dialogProperties4 = dialogProperties2;
                    }
                    if (i8 != 0) {
                        bm3Var7 = null;
                    }
                    if (i10 != 0) {
                        bm3Var8 = null;
                    }
                    if ((i2 & 128) != 0) {
                        shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        i14 &= -29360129;
                    } else {
                        shape3 = shape;
                    }
                    if ((i2 & 256) != 0) {
                        i14 &= -234881025;
                        containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    } else {
                        containerColor = j;
                    }
                    bm3Var11 = bm3Var7;
                    i16 = i14;
                    dialogProperties2 = dialogProperties4;
                    modifier4 = modifier2;
                    bm3Var12 = bm3Var8;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                }
                final bm3<? super Composer, ? super Integer, j59> bm3Var11110 = bm3Var6;
                AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                    public final void invoke(Composer composer3, int i11116) {
                        if (!composer3.shouldExecute((i11116 & 3) != 2, i11116 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(296331566, i11116, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                        }
                        TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var11110, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                composer2 = composerStartRestartGroup;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                dialogProperties3 = dialogProperties2;
                modifier3 = modifier4;
                bm3Var9 = bm3Var11;
                bm3Var10 = bm3Var12;
                shape2 = shape3;
                j2 = containerColor;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                dialogProperties3 = dialogProperties2;
                bm3Var9 = bm3Var7;
                bm3Var10 = bm3Var8;
                shape2 = shape;
                j2 = j;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        dialogProperties2 = dialogProperties;
        i8 = i2 & 32;
        if (i8 != 0) {
            if ((196608 & i) == 0) {
                bm3Var7 = bm3Var3;
                if (composerStartRestartGroup.changedInstance(bm3Var7)) {
                    i9 = 131072;
                } else {
                    i9 = 65536;
                }
                i3 |= i9;
            }
            i10 = i2 & 64;
            if (i10 != 0) {
                if ((1572864 & i) == 0) {
                    bm3Var8 = bm3Var4;
                    if (composerStartRestartGroup.changedInstance(bm3Var8)) {
                        i11 = 1048576;
                    } else {
                        i11 = 524288;
                    }
                    i3 |= i11;
                }
                if ((i & 12582912) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
                }
                if ((i & 100663296) == 0) {
                    int i11116 = i3;
                    if ((i2 & 256) == 0) {
                        i17 = GroupFlagsKt.HasAuxSlotFlag;
                    } else {
                        i17 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i12 = i11116 | i17;
                } else {
                    i12 = i3;
                }
                i13 = i12;
                if ((i2 & 512) != 0) {
                    i14 = i13 | 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i15 = 536870912;
                    } else {
                        i15 = 268435456;
                    }
                    i14 = i13 | i15;
                } else {
                    i14 = i13;
                }
                if ((i14 & 306783379) != 306783378) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                        } else {
                            dialogProperties4 = dialogProperties2;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if (i10 != 0) {
                            bm3Var8 = null;
                        }
                        if ((i2 & 128) != 0) {
                            shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            i14 &= -29360129;
                        } else {
                            shape3 = shape;
                        }
                        if ((i2 & 256) != 0) {
                            i14 &= -234881025;
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        bm3Var11 = bm3Var7;
                        i16 = i14;
                        dialogProperties2 = dialogProperties4;
                        modifier4 = modifier2;
                        bm3Var12 = bm3Var8;
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                        } else {
                            dialogProperties4 = dialogProperties2;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if (i10 != 0) {
                            bm3Var8 = null;
                        }
                        if ((i2 & 128) != 0) {
                            shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            i14 &= -29360129;
                        } else {
                            shape3 = shape;
                        }
                        if ((i2 & 256) != 0) {
                            i14 &= -234881025;
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        bm3Var11 = bm3Var7;
                        i16 = i14;
                        dialogProperties2 = dialogProperties4;
                        modifier4 = modifier2;
                        bm3Var12 = bm3Var8;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                    }
                    final bm3<? super Composer, ? super Integer, j59> bm3Var11111 = bm3Var6;
                    AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                        public final void invoke(Composer composer3, int i11117) {
                            if (!composer3.shouldExecute((i11117 & 3) != 2, i11117 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(296331566, i11117, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                            }
                            TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var11111, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                    composer2 = composerStartRestartGroup;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    dialogProperties3 = dialogProperties2;
                    modifier3 = modifier4;
                    bm3Var9 = bm3Var11;
                    bm3Var10 = bm3Var12;
                    shape2 = shape3;
                    j2 = containerColor;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    dialogProperties3 = dialogProperties2;
                    bm3Var9 = bm3Var7;
                    bm3Var10 = bm3Var8;
                    shape2 = shape;
                    j2 = j;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 1572864;
            bm3Var8 = bm3Var4;
            if ((i & 12582912) != 0) {
                i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
            }
            if ((i & 100663296) == 0) {
                int i11117 = i3;
                if ((i2 & 256) == 0) {
                    i17 = GroupFlagsKt.HasAuxSlotFlag;
                } else {
                    i17 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i12 = i11117 | i17;
            } else {
                i12 = i3;
            }
            i13 = i12;
            if ((i2 & 512) != 0) {
                i14 = i13 | 805306368;
            } else if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i15 = 536870912;
                } else {
                    i15 = 268435456;
                }
                i14 = i13 | i15;
            } else {
                i14 = i13;
            }
            if ((i14 & 306783379) != 306783378) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                    } else {
                        dialogProperties4 = dialogProperties2;
                    }
                    if (i8 != 0) {
                        bm3Var7 = null;
                    }
                    if (i10 != 0) {
                        bm3Var8 = null;
                    }
                    if ((i2 & 128) != 0) {
                        shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        i14 &= -29360129;
                    } else {
                        shape3 = shape;
                    }
                    if ((i2 & 256) != 0) {
                        i14 &= -234881025;
                        containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    } else {
                        containerColor = j;
                    }
                    bm3Var11 = bm3Var7;
                    i16 = i14;
                    dialogProperties2 = dialogProperties4;
                    modifier4 = modifier2;
                    bm3Var12 = bm3Var8;
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                    } else {
                        dialogProperties4 = dialogProperties2;
                    }
                    if (i8 != 0) {
                        bm3Var7 = null;
                    }
                    if (i10 != 0) {
                        bm3Var8 = null;
                    }
                    if ((i2 & 128) != 0) {
                        shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        i14 &= -29360129;
                    } else {
                        shape3 = shape;
                    }
                    if ((i2 & 256) != 0) {
                        i14 &= -234881025;
                        containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    } else {
                        containerColor = j;
                    }
                    bm3Var11 = bm3Var7;
                    i16 = i14;
                    dialogProperties2 = dialogProperties4;
                    modifier4 = modifier2;
                    bm3Var12 = bm3Var8;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                }
                final bm3<? super Composer, ? super Integer, j59> bm3Var11112 = bm3Var6;
                AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                    public final void invoke(Composer composer3, int i11118) {
                        if (!composer3.shouldExecute((i11118 & 3) != 2, i11118 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(296331566, i11118, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                        }
                        TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var11112, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                composer2 = composerStartRestartGroup;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                dialogProperties3 = dialogProperties2;
                modifier3 = modifier4;
                bm3Var9 = bm3Var11;
                bm3Var10 = bm3Var12;
                shape2 = shape3;
                j2 = containerColor;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                dialogProperties3 = dialogProperties2;
                bm3Var9 = bm3Var7;
                bm3Var10 = bm3Var8;
                shape2 = shape;
                j2 = j;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        bm3Var7 = bm3Var3;
        i10 = i2 & 64;
        if (i10 != 0) {
            if ((1572864 & i) == 0) {
                bm3Var8 = bm3Var4;
                if (composerStartRestartGroup.changedInstance(bm3Var8)) {
                    i11 = 1048576;
                } else {
                    i11 = 524288;
                }
                i3 |= i11;
            }
            if ((i & 12582912) != 0) {
                i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
            }
            if ((i & 100663296) == 0) {
                int i11118 = i3;
                if ((i2 & 256) == 0) {
                    i17 = GroupFlagsKt.HasAuxSlotFlag;
                } else {
                    i17 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i12 = i11118 | i17;
            } else {
                i12 = i3;
            }
            i13 = i12;
            if ((i2 & 512) != 0) {
                i14 = i13 | 805306368;
            } else if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i15 = 536870912;
                } else {
                    i15 = 268435456;
                }
                i14 = i13 | i15;
            } else {
                i14 = i13;
            }
            if ((i14 & 306783379) != 306783378) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                    } else {
                        dialogProperties4 = dialogProperties2;
                    }
                    if (i8 != 0) {
                        bm3Var7 = null;
                    }
                    if (i10 != 0) {
                        bm3Var8 = null;
                    }
                    if ((i2 & 128) != 0) {
                        shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        i14 &= -29360129;
                    } else {
                        shape3 = shape;
                    }
                    if ((i2 & 256) != 0) {
                        i14 &= -234881025;
                        containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    } else {
                        containerColor = j;
                    }
                    bm3Var11 = bm3Var7;
                    i16 = i14;
                    dialogProperties2 = dialogProperties4;
                    modifier4 = modifier2;
                    bm3Var12 = bm3Var8;
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                    } else {
                        dialogProperties4 = dialogProperties2;
                    }
                    if (i8 != 0) {
                        bm3Var7 = null;
                    }
                    if (i10 != 0) {
                        bm3Var8 = null;
                    }
                    if ((i2 & 128) != 0) {
                        shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        i14 &= -29360129;
                    } else {
                        shape3 = shape;
                    }
                    if ((i2 & 256) != 0) {
                        i14 &= -234881025;
                        containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    } else {
                        containerColor = j;
                    }
                    bm3Var11 = bm3Var7;
                    i16 = i14;
                    dialogProperties2 = dialogProperties4;
                    modifier4 = modifier2;
                    bm3Var12 = bm3Var8;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
                }
                final bm3<? super Composer, ? super Integer, j59> bm3Var11113 = bm3Var6;
                AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                    public final void invoke(Composer composer3, int i11119) {
                        if (!composer3.shouldExecute((i11119 & 3) != 2, i11119 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(296331566, i11119, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                        }
                        TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var11113, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                composer2 = composerStartRestartGroup;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                dialogProperties3 = dialogProperties2;
                modifier3 = modifier4;
                bm3Var9 = bm3Var11;
                bm3Var10 = bm3Var12;
                shape2 = shape3;
                j2 = containerColor;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                dialogProperties3 = dialogProperties2;
                bm3Var9 = bm3Var7;
                bm3Var10 = bm3Var8;
                shape2 = shape;
                j2 = j;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 1572864;
        bm3Var8 = bm3Var4;
        if ((i & 12582912) != 0) {
            i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(shape)) ? 4194304 : 8388608;
        }
        if ((i & 100663296) == 0) {
            int i11119 = i3;
            if ((i2 & 256) == 0) {
                i17 = GroupFlagsKt.HasAuxSlotFlag;
            } else {
                i17 = GroupFlagsKt.HasAuxSlotFlag;
            }
            i12 = i11119 | i17;
        } else {
            i12 = i3;
        }
        i13 = i12;
        if ((i2 & 512) != 0) {
            i14 = i13 | 805306368;
        } else if ((i & 805306368) == 0) {
            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                i15 = 536870912;
            } else {
                i15 = 268435456;
            }
            i14 = i13 | i15;
        } else {
            i14 = i13;
        }
        if ((i14 & 306783379) != 306783378) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i14 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i4 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i6 != 0) {
                    dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                } else {
                    dialogProperties4 = dialogProperties2;
                }
                if (i8 != 0) {
                    bm3Var7 = null;
                }
                if (i10 != 0) {
                    bm3Var8 = null;
                }
                if ((i2 & 128) != 0) {
                    shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    i14 &= -29360129;
                } else {
                    shape3 = shape;
                }
                if ((i2 & 256) != 0) {
                    i14 &= -234881025;
                    containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                } else {
                    containerColor = j;
                }
                bm3Var11 = bm3Var7;
                i16 = i14;
                dialogProperties2 = dialogProperties4;
                modifier4 = modifier2;
                bm3Var12 = bm3Var8;
            } else {
                if (i4 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i6 != 0) {
                    dialogProperties4 = new DialogProperties(false, false, false, 3, (jh2) null);
                } else {
                    dialogProperties4 = dialogProperties2;
                }
                if (i8 != 0) {
                    bm3Var7 = null;
                }
                if (i10 != 0) {
                    bm3Var8 = null;
                }
                if ((i2 & 128) != 0) {
                    shape3 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    i14 &= -29360129;
                } else {
                    shape3 = shape;
                }
                if ((i2 & 256) != 0) {
                    i14 &= -234881025;
                    containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                } else {
                    containerColor = j;
                }
                bm3Var11 = bm3Var7;
                i16 = i14;
                dialogProperties2 = dialogProperties4;
                modifier4 = modifier2;
                bm3Var12 = bm3Var8;
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(951250327, i16, -1, "androidx.compose.material3.TimePickerDialog (TimePickerDialog.kt:79)");
            }
            final bm3<? super Composer, ? super Integer, j59> bm3Var11114 = bm3Var6;
            AndroidDialog_androidKt.Dialog(ll3Var, dialogProperties2, ComposableLambdaKt.rememberComposableLambda(296331566, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialog$1
                public final void invoke(Composer composer3, int i111110) {
                    if (!composer3.shouldExecute((i111110 & 3) != 2, i111110 & 1)) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(296331566, i111110, -1, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)");
                    }
                    TimePickerDialogKt.m4115TimePickerDialogLayout3csKH6Y(bm3Var5, bm3Var11114, modifier4, bm3Var11, bm3Var12, shape3, containerColor, dm3Var, composer3, 0, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                    invoke(composer3, num.intValue());
                    return j59.a;
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i16 >> 9) & 112) | (i16 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
            composer2 = composerStartRestartGroup;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            dialogProperties3 = dialogProperties2;
            modifier3 = modifier4;
            bm3Var9 = bm3Var11;
            bm3Var10 = bm3Var12;
            shape2 = shape3;
            j2 = containerColor;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            modifier3 = modifier2;
            dialogProperties3 = dialogProperties2;
            bm3Var9 = bm3Var7;
            bm3Var10 = bm3Var8;
            shape2 = shape;
            j2 = j;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ru8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TimePickerDialogKt.TimePickerDialog_FItCLgY$lambda$0(ll3Var, bm3Var, bm3Var2, modifier3, dialogProperties3, bm3Var9, bm3Var10, shape2, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:108:0x012c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:109:0x012e  */
    /* JADX WARN: Code duplicated, block: B:112:0x0134  */
    /* JADX WARN: Code duplicated, block: B:114:0x0137  */
    /* JADX WARN: Code duplicated, block: B:117:0x013d  */
    /* JADX WARN: Code duplicated, block: B:118:0x0147  */
    /* JADX WARN: Code duplicated, block: B:121:0x014d  */
    /* JADX WARN: Code duplicated, block: B:122:0x0156  */
    /* JADX WARN: Code duplicated, block: B:125:0x0160  */
    /* JADX WARN: Code duplicated, block: B:128:0x01af  */
    /* JADX WARN: Code duplicated, block: B:131:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:134:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:136:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x004a  */
    /* JADX WARN: Code duplicated, block: B:28:0x004f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0053  */
    /* JADX WARN: Code duplicated, block: B:32:0x005b  */
    /* JADX WARN: Code duplicated, block: B:33:0x005e  */
    /* JADX WARN: Code duplicated, block: B:37:0x0065  */
    /* JADX WARN: Code duplicated, block: B:39:0x006a  */
    /* JADX WARN: Code duplicated, block: B:41:0x006e  */
    /* JADX WARN: Code duplicated, block: B:43:0x0076  */
    /* JADX WARN: Code duplicated, block: B:44:0x0079  */
    /* JADX WARN: Code duplicated, block: B:48:0x0080  */
    /* JADX WARN: Code duplicated, block: B:50:0x0085  */
    /* JADX WARN: Code duplicated, block: B:52:0x0089  */
    /* JADX WARN: Code duplicated, block: B:54:0x0091  */
    /* JADX WARN: Code duplicated, block: B:55:0x0094  */
    /* JADX WARN: Code duplicated, block: B:59:0x009c  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:70:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:72:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:78:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:81:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:83:0x00db  */
    /* JADX WARN: Code duplicated, block: B:85:0x00df  */
    /* JADX WARN: Code duplicated, block: B:87:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:88:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:92:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:93:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:96:0x0106  */
    /* JADX WARN: Code duplicated, block: B:98:0x0113  */
    /* JADX INFO: renamed from: TimePickerDialogLayout-3csKH6Y, reason: not valid java name */
    public static final void m4115TimePickerDialogLayout3csKH6Y(final bm3<? super Composer, ? super Integer, j59> bm3Var, final bm3<? super Composer, ? super Integer, j59> bm3Var2, Modifier modifier, bm3<? super Composer, ? super Integer, j59> bm3Var3, bm3<? super Composer, ? super Integer, j59> bm3Var4, Shape shape, long j, final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var, Composer composer, final int i, final int i2) {
        int i3;
        bm3<? super Composer, ? super Integer, j59> bm3Var5;
        int i4;
        Modifier modifier2;
        int i5;
        int i6;
        bm3<? super Composer, ? super Integer, j59> bm3Var6;
        int i7;
        int i8;
        bm3<? super Composer, ? super Integer, j59> bm3Var7;
        int i9;
        Shape shape2;
        long containerColor;
        int i10;
        int i11;
        boolean z;
        Composer composer2;
        final bm3<? super Composer, ? super Integer, j59> bm3Var8;
        final bm3<? super Composer, ? super Integer, j59> bm3Var9;
        final long j2;
        final Modifier modifier3;
        final Shape shape3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        int i12;
        int i13;
        Composer composerStartRestartGroup = composer.startRestartGroup(-401873644);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changedInstance(bm3Var) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i2 & 2) == 0) {
            if ((i & 48) == 0) {
                bm3Var5 = bm3Var2;
                i3 |= composerStartRestartGroup.changedInstance(bm3Var5) ? 32 : 16;
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
                        bm3Var6 = bm3Var3;
                        if (composerStartRestartGroup.changedInstance(bm3Var6)) {
                            i7 = 2048;
                        } else {
                            i7 = 1024;
                        }
                        i3 |= i7;
                    }
                    i8 = i2 & 16;
                    if (i8 != 0) {
                        if ((i & 24576) == 0) {
                            bm3Var7 = bm3Var4;
                            if (composerStartRestartGroup.changedInstance(bm3Var7)) {
                                i9 = 16384;
                            } else {
                                i9 = 8192;
                            }
                            i3 |= i9;
                        }
                        if ((196608 & i) == 0) {
                            if ((i2 & 32) == 0) {
                                shape2 = shape;
                                int i14 = composerStartRestartGroup.changed(shape2) ? 131072 : 65536;
                                i3 |= i14;
                            } else {
                                shape2 = shape;
                            }
                            i3 |= i14;
                        } else {
                            shape2 = shape;
                        }
                        if ((1572864 & i) == 0) {
                            if ((i2 & 64) == 0) {
                                containerColor = j;
                                int i15 = composerStartRestartGroup.changed(containerColor) ? 1048576 : 524288;
                                i3 |= i15;
                            } else {
                                containerColor = j;
                            }
                            i3 |= i15;
                        } else {
                            containerColor = j;
                        }
                        if ((i2 & 128) != 0) {
                            if ((i & 12582912) == 0) {
                                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                    i10 = 8388608;
                                } else {
                                    i10 = 4194304;
                                }
                                i3 |= i10;
                            }
                            i11 = i3;
                            if ((i3 & 4793491) != 4793490) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                                composerStartRestartGroup.startDefaults();
                                if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                                    if (i4 != 0) {
                                        modifier2 = Modifier.Companion;
                                    }
                                    if (i6 != 0) {
                                        bm3Var6 = null;
                                    }
                                    if (i8 != 0) {
                                        bm3Var7 = null;
                                    }
                                    if ((i2 & 32) != 0) {
                                        i12 = i11 & (-458753);
                                        shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                    } else {
                                        i12 = i11;
                                    }
                                    if ((i2 & 64) != 0) {
                                        containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                        i13 = i12 & (-3670017);
                                    } else {
                                        i13 = i12;
                                    }
                                } else {
                                    composerStartRestartGroup.skipToGroupEnd();
                                    i13 = (i2 & 32) != 0 ? i11 & (-458753) : i11;
                                    if ((i2 & 64) != 0) {
                                        i13 &= -3670017;
                                    }
                                }
                                composerStartRestartGroup.endDefaults();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                                }
                                final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var7;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var5;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var12 = bm3Var6;
                                long j3 = containerColor;
                                composer2 = composerStartRestartGroup;
                                SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                                    public final void invoke(Composer composer3, int i16) {
                                        if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                                        }
                                        bm3<Composer, Integer, j59> bm3Var13 = bm3Var11;
                                        final bm3<Composer, Integer, j59> bm3Var14 = bm3Var12;
                                        final bm3<Composer, Integer, j59> bm3Var15 = bm3Var10;
                                        final bm3<Composer, Integer, j59> bm3Var16 = bm3Var;
                                        TimePickerDialogKt.TimePickerCustomLayout(bm3Var13, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                                            public final void invoke(Composer composer4, int i17) {
                                                if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                                    composer4.skipToGroupEnd();
                                                    return;
                                                }
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                                }
                                                Modifier.Companion companion = Modifier.Companion;
                                                Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                                bm3<Composer, Integer, j59> bm3Var17 = bm3Var14;
                                                bm3<Composer, Integer, j59> bm3Var18 = bm3Var15;
                                                bm3<Composer, Integer, j59> bm3Var19 = bm3Var16;
                                                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                                CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                                ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                                ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                                if (composer4.getApplier() == null) {
                                                    ComposablesKt.invalidApplier();
                                                }
                                                composer4.startReusableNode();
                                                if (composer4.getInserting()) {
                                                    composer4.createNode(constructor);
                                                } else {
                                                    composer4.useNode();
                                                }
                                                Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                                bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                                if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                                }
                                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                                RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                                if (bm3Var17 == null) {
                                                    composer4.startReplaceGroup(675833080);
                                                } else {
                                                    composer4.startReplaceGroup(2100011049);
                                                    bm3Var17.invoke(composer4, 0);
                                                }
                                                composer4.endReplaceGroup();
                                                SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                                if (bm3Var18 == null) {
                                                    composer4.startReplaceGroup(675935256);
                                                } else {
                                                    composer4.startReplaceGroup(2100014345);
                                                    bm3Var18.invoke(composer4, 0);
                                                }
                                                composer4.endReplaceGroup();
                                                bm3Var19.invoke(composer4, 0);
                                                composer4.endNode();
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                }
                                            }

                                            @Override // defpackage.bm3
                                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                                invoke(composer4, num.intValue());
                                                return j59.a;
                                            }
                                        }, composer3, 54), dm3Var, composer3, 48);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                bm3Var8 = bm3Var6;
                                j2 = j3;
                                bm3Var9 = bm3Var10;
                            } else {
                                composer2 = composerStartRestartGroup;
                                composer2.skipToGroupEnd();
                                bm3Var8 = bm3Var6;
                                bm3Var9 = bm3Var7;
                                j2 = containerColor;
                            }
                            modifier3 = modifier2;
                            shape3 = shape2;
                            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                            if (scopeUpdateScopeEndRestartGroup != null) {
                                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        int iIntValue = ((Integer) obj2).intValue();
                                        return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                                    }
                                });
                            }
                        }
                        i3 |= 12582912;
                        i11 = i3;
                        if ((i3 & 4793491) != 4793490) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    bm3Var7 = null;
                                }
                                if ((i2 & 32) != 0) {
                                    i12 = i11 & (-458753);
                                    shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                } else {
                                    i12 = i11;
                                }
                                if ((i2 & 64) != 0) {
                                    containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                    i13 = i12 & (-3670017);
                                } else {
                                    i13 = i12;
                                }
                            } else {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    bm3Var7 = null;
                                }
                                if ((i2 & 32) != 0) {
                                    i12 = i11 & (-458753);
                                    shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                } else {
                                    i12 = i11;
                                }
                                if ((i2 & 64) != 0) {
                                    containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                    i13 = i12 & (-3670017);
                                } else {
                                    i13 = i12;
                                }
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                            }
                            final bm3<? super Composer, ? super Integer, j59> bm3Var13 = bm3Var7;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var14 = bm3Var5;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var15 = bm3Var6;
                            long j4 = containerColor;
                            composer2 = composerStartRestartGroup;
                            SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                                public final void invoke(Composer composer3, int i16) {
                                    if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                                    }
                                    bm3<Composer, Integer, j59> bm3Var16 = bm3Var14;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var17 = bm3Var15;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var18 = bm3Var13;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var19 = bm3Var;
                                    TimePickerDialogKt.TimePickerCustomLayout(bm3Var16, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                                        public final void invoke(Composer composer4, int i17) {
                                            if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                                composer4.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                            }
                                            Modifier.Companion companion = Modifier.Companion;
                                            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                            bm3<Composer, Integer, j59> bm3Var110 = bm3Var17;
                                            bm3<Composer, Integer, j59> bm3Var111 = bm3Var18;
                                            bm3<Composer, Integer, j59> bm3Var112 = bm3Var19;
                                            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                            CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                            ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                            if (composer4.getApplier() == null) {
                                                ComposablesKt.invalidApplier();
                                            }
                                            composer4.startReusableNode();
                                            if (composer4.getInserting()) {
                                                composer4.createNode(constructor);
                                            } else {
                                                composer4.useNode();
                                            }
                                            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                            bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                            }
                                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                            if (bm3Var110 == null) {
                                                composer4.startReplaceGroup(675833080);
                                            } else {
                                                composer4.startReplaceGroup(2100011049);
                                                bm3Var110.invoke(composer4, 0);
                                            }
                                            composer4.endReplaceGroup();
                                            SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                            if (bm3Var111 == null) {
                                                composer4.startReplaceGroup(675935256);
                                            } else {
                                                composer4.startReplaceGroup(2100014345);
                                                bm3Var111.invoke(composer4, 0);
                                            }
                                            composer4.endReplaceGroup();
                                            bm3Var112.invoke(composer4, 0);
                                            composer4.endNode();
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                            invoke(composer4, num.intValue());
                                            return j59.a;
                                        }
                                    }, composer3, 54), dm3Var, composer3, 48);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            bm3Var8 = bm3Var6;
                            j2 = j4;
                            bm3Var9 = bm3Var13;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            bm3Var8 = bm3Var6;
                            bm3Var9 = bm3Var7;
                            j2 = containerColor;
                        }
                        modifier3 = modifier2;
                        shape3 = shape2;
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 24576;
                    bm3Var7 = bm3Var4;
                    if ((196608 & i) == 0) {
                        if ((i2 & 32) == 0) {
                            shape2 = shape;
                            if (composerStartRestartGroup.changed(shape2)) {
                            }
                            i3 |= i14;
                        } else {
                            shape2 = shape;
                        }
                        i3 |= i14;
                    } else {
                        shape2 = shape;
                    }
                    if ((1572864 & i) == 0) {
                        if ((i2 & 64) == 0) {
                            containerColor = j;
                            if (composerStartRestartGroup.changed(containerColor)) {
                            }
                            i3 |= i15;
                        } else {
                            containerColor = j;
                        }
                        i3 |= i15;
                    } else {
                        containerColor = j;
                    }
                    if ((i2 & 128) != 0) {
                        if ((i & 12582912) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i10 = 8388608;
                            } else {
                                i10 = 4194304;
                            }
                            i3 |= i10;
                        }
                        i11 = i3;
                        if ((i3 & 4793491) != 4793490) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    bm3Var7 = null;
                                }
                                if ((i2 & 32) != 0) {
                                    i12 = i11 & (-458753);
                                    shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                } else {
                                    i12 = i11;
                                }
                                if ((i2 & 64) != 0) {
                                    containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                    i13 = i12 & (-3670017);
                                } else {
                                    i13 = i12;
                                }
                            } else {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    bm3Var7 = null;
                                }
                                if ((i2 & 32) != 0) {
                                    i12 = i11 & (-458753);
                                    shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                } else {
                                    i12 = i11;
                                }
                                if ((i2 & 64) != 0) {
                                    containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                    i13 = i12 & (-3670017);
                                } else {
                                    i13 = i12;
                                }
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                            }
                            final bm3<? super Composer, ? super Integer, j59> bm3Var16 = bm3Var7;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var17 = bm3Var5;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var18 = bm3Var6;
                            long j5 = containerColor;
                            composer2 = composerStartRestartGroup;
                            SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                                public final void invoke(Composer composer3, int i16) {
                                    if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                                    }
                                    bm3<Composer, Integer, j59> bm3Var19 = bm3Var17;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var110 = bm3Var18;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var111 = bm3Var16;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var112 = bm3Var;
                                    TimePickerDialogKt.TimePickerCustomLayout(bm3Var19, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                                        public final void invoke(Composer composer4, int i17) {
                                            if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                                composer4.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                            }
                                            Modifier.Companion companion = Modifier.Companion;
                                            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                            bm3<Composer, Integer, j59> bm3Var113 = bm3Var110;
                                            bm3<Composer, Integer, j59> bm3Var114 = bm3Var111;
                                            bm3<Composer, Integer, j59> bm3Var115 = bm3Var112;
                                            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                            CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                            ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                            if (composer4.getApplier() == null) {
                                                ComposablesKt.invalidApplier();
                                            }
                                            composer4.startReusableNode();
                                            if (composer4.getInserting()) {
                                                composer4.createNode(constructor);
                                            } else {
                                                composer4.useNode();
                                            }
                                            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                            bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                            }
                                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                            if (bm3Var113 == null) {
                                                composer4.startReplaceGroup(675833080);
                                            } else {
                                                composer4.startReplaceGroup(2100011049);
                                                bm3Var113.invoke(composer4, 0);
                                            }
                                            composer4.endReplaceGroup();
                                            SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                            if (bm3Var114 == null) {
                                                composer4.startReplaceGroup(675935256);
                                            } else {
                                                composer4.startReplaceGroup(2100014345);
                                                bm3Var114.invoke(composer4, 0);
                                            }
                                            composer4.endReplaceGroup();
                                            bm3Var115.invoke(composer4, 0);
                                            composer4.endNode();
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                            invoke(composer4, num.intValue());
                                            return j59.a;
                                        }
                                    }, composer3, 54), dm3Var, composer3, 48);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            bm3Var8 = bm3Var6;
                            j2 = j5;
                            bm3Var9 = bm3Var16;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            bm3Var8 = bm3Var6;
                            bm3Var9 = bm3Var7;
                            j2 = containerColor;
                        }
                        modifier3 = modifier2;
                        shape3 = shape2;
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 12582912;
                    i11 = i3;
                    if ((i3 & 4793491) != 4793490) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if ((i2 & 32) != 0) {
                                i12 = i11 & (-458753);
                                shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 64) != 0) {
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i13 = i12 & (-3670017);
                            } else {
                                i13 = i12;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if ((i2 & 32) != 0) {
                                i12 = i11 & (-458753);
                                shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 64) != 0) {
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i13 = i12 & (-3670017);
                            } else {
                                i13 = i12;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                        }
                        final bm3<? super Composer, ? super Integer, j59> bm3Var19 = bm3Var7;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var110 = bm3Var5;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var111 = bm3Var6;
                        long j6 = containerColor;
                        composer2 = composerStartRestartGroup;
                        SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                            public final void invoke(Composer composer3, int i16) {
                                if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                                }
                                bm3<Composer, Integer, j59> bm3Var112 = bm3Var110;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var113 = bm3Var111;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var114 = bm3Var19;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var115 = bm3Var;
                                TimePickerDialogKt.TimePickerCustomLayout(bm3Var112, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                                    public final void invoke(Composer composer4, int i17) {
                                        if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                            composer4.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                        }
                                        Modifier.Companion companion = Modifier.Companion;
                                        Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                        bm3<Composer, Integer, j59> bm3Var116 = bm3Var113;
                                        bm3<Composer, Integer, j59> bm3Var117 = bm3Var114;
                                        bm3<Composer, Integer, j59> bm3Var118 = bm3Var115;
                                        MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                        CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                        ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                        if (composer4.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer4.startReusableNode();
                                        if (composer4.getInserting()) {
                                            composer4.createNode(constructor);
                                        } else {
                                            composer4.useNode();
                                        }
                                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                        bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                        RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                        if (bm3Var116 == null) {
                                            composer4.startReplaceGroup(675833080);
                                        } else {
                                            composer4.startReplaceGroup(2100011049);
                                            bm3Var116.invoke(composer4, 0);
                                        }
                                        composer4.endReplaceGroup();
                                        SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                        if (bm3Var117 == null) {
                                            composer4.startReplaceGroup(675935256);
                                        } else {
                                            composer4.startReplaceGroup(2100014345);
                                            bm3Var117.invoke(composer4, 0);
                                        }
                                        composer4.endReplaceGroup();
                                        bm3Var118.invoke(composer4, 0);
                                        composer4.endNode();
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                        invoke(composer4, num.intValue());
                                        return j59.a;
                                    }
                                }, composer3, 54), dm3Var, composer3, 48);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        bm3Var8 = bm3Var6;
                        j2 = j6;
                        bm3Var9 = bm3Var19;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        bm3Var8 = bm3Var6;
                        bm3Var9 = bm3Var7;
                        j2 = containerColor;
                    }
                    modifier3 = modifier2;
                    shape3 = shape2;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 3072;
                bm3Var6 = bm3Var3;
                i8 = i2 & 16;
                if (i8 != 0) {
                    if ((i & 24576) == 0) {
                        bm3Var7 = bm3Var4;
                        if (composerStartRestartGroup.changedInstance(bm3Var7)) {
                            i9 = 16384;
                        } else {
                            i9 = 8192;
                        }
                        i3 |= i9;
                    }
                    if ((196608 & i) == 0) {
                        if ((i2 & 32) == 0) {
                            shape2 = shape;
                            if (composerStartRestartGroup.changed(shape2)) {
                            }
                            i3 |= i14;
                        } else {
                            shape2 = shape;
                        }
                        i3 |= i14;
                    } else {
                        shape2 = shape;
                    }
                    if ((1572864 & i) == 0) {
                        if ((i2 & 64) == 0) {
                            containerColor = j;
                            if (composerStartRestartGroup.changed(containerColor)) {
                            }
                            i3 |= i15;
                        } else {
                            containerColor = j;
                        }
                        i3 |= i15;
                    } else {
                        containerColor = j;
                    }
                    if ((i2 & 128) != 0) {
                        if ((i & 12582912) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i10 = 8388608;
                            } else {
                                i10 = 4194304;
                            }
                            i3 |= i10;
                        }
                        i11 = i3;
                        if ((i3 & 4793491) != 4793490) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    bm3Var7 = null;
                                }
                                if ((i2 & 32) != 0) {
                                    i12 = i11 & (-458753);
                                    shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                } else {
                                    i12 = i11;
                                }
                                if ((i2 & 64) != 0) {
                                    containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                    i13 = i12 & (-3670017);
                                } else {
                                    i13 = i12;
                                }
                            } else {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    bm3Var7 = null;
                                }
                                if ((i2 & 32) != 0) {
                                    i12 = i11 & (-458753);
                                    shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                } else {
                                    i12 = i11;
                                }
                                if ((i2 & 64) != 0) {
                                    containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                    i13 = i12 & (-3670017);
                                } else {
                                    i13 = i12;
                                }
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                            }
                            final bm3<? super Composer, ? super Integer, j59> bm3Var112 = bm3Var7;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var113 = bm3Var5;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var114 = bm3Var6;
                            long j7 = containerColor;
                            composer2 = composerStartRestartGroup;
                            SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                                public final void invoke(Composer composer3, int i16) {
                                    if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                                    }
                                    bm3<Composer, Integer, j59> bm3Var115 = bm3Var113;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var116 = bm3Var114;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var117 = bm3Var112;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var118 = bm3Var;
                                    TimePickerDialogKt.TimePickerCustomLayout(bm3Var115, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                                        public final void invoke(Composer composer4, int i17) {
                                            if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                                composer4.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                            }
                                            Modifier.Companion companion = Modifier.Companion;
                                            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                            bm3<Composer, Integer, j59> bm3Var119 = bm3Var116;
                                            bm3<Composer, Integer, j59> bm3Var1110 = bm3Var117;
                                            bm3<Composer, Integer, j59> bm3Var1111 = bm3Var118;
                                            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                            CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                            ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                            if (composer4.getApplier() == null) {
                                                ComposablesKt.invalidApplier();
                                            }
                                            composer4.startReusableNode();
                                            if (composer4.getInserting()) {
                                                composer4.createNode(constructor);
                                            } else {
                                                composer4.useNode();
                                            }
                                            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                            bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                            }
                                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                            if (bm3Var119 == null) {
                                                composer4.startReplaceGroup(675833080);
                                            } else {
                                                composer4.startReplaceGroup(2100011049);
                                                bm3Var119.invoke(composer4, 0);
                                            }
                                            composer4.endReplaceGroup();
                                            SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                            if (bm3Var1110 == null) {
                                                composer4.startReplaceGroup(675935256);
                                            } else {
                                                composer4.startReplaceGroup(2100014345);
                                                bm3Var1110.invoke(composer4, 0);
                                            }
                                            composer4.endReplaceGroup();
                                            bm3Var1111.invoke(composer4, 0);
                                            composer4.endNode();
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                            invoke(composer4, num.intValue());
                                            return j59.a;
                                        }
                                    }, composer3, 54), dm3Var, composer3, 48);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            bm3Var8 = bm3Var6;
                            j2 = j7;
                            bm3Var9 = bm3Var112;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            bm3Var8 = bm3Var6;
                            bm3Var9 = bm3Var7;
                            j2 = containerColor;
                        }
                        modifier3 = modifier2;
                        shape3 = shape2;
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 12582912;
                    i11 = i3;
                    if ((i3 & 4793491) != 4793490) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if ((i2 & 32) != 0) {
                                i12 = i11 & (-458753);
                                shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 64) != 0) {
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i13 = i12 & (-3670017);
                            } else {
                                i13 = i12;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if ((i2 & 32) != 0) {
                                i12 = i11 & (-458753);
                                shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 64) != 0) {
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i13 = i12 & (-3670017);
                            } else {
                                i13 = i12;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                        }
                        final bm3<? super Composer, ? super Integer, j59> bm3Var115 = bm3Var7;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var116 = bm3Var5;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var117 = bm3Var6;
                        long j8 = containerColor;
                        composer2 = composerStartRestartGroup;
                        SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                            public final void invoke(Composer composer3, int i16) {
                                if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                                }
                                bm3<Composer, Integer, j59> bm3Var118 = bm3Var116;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var119 = bm3Var117;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var1110 = bm3Var115;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var1111 = bm3Var;
                                TimePickerDialogKt.TimePickerCustomLayout(bm3Var118, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                                    public final void invoke(Composer composer4, int i17) {
                                        if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                            composer4.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                        }
                                        Modifier.Companion companion = Modifier.Companion;
                                        Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                        bm3<Composer, Integer, j59> bm3Var1112 = bm3Var119;
                                        bm3<Composer, Integer, j59> bm3Var1113 = bm3Var1110;
                                        bm3<Composer, Integer, j59> bm3Var1114 = bm3Var1111;
                                        MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                        CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                        ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                        if (composer4.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer4.startReusableNode();
                                        if (composer4.getInserting()) {
                                            composer4.createNode(constructor);
                                        } else {
                                            composer4.useNode();
                                        }
                                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                        bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                        RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                        if (bm3Var1112 == null) {
                                            composer4.startReplaceGroup(675833080);
                                        } else {
                                            composer4.startReplaceGroup(2100011049);
                                            bm3Var1112.invoke(composer4, 0);
                                        }
                                        composer4.endReplaceGroup();
                                        SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                        if (bm3Var1113 == null) {
                                            composer4.startReplaceGroup(675935256);
                                        } else {
                                            composer4.startReplaceGroup(2100014345);
                                            bm3Var1113.invoke(composer4, 0);
                                        }
                                        composer4.endReplaceGroup();
                                        bm3Var1114.invoke(composer4, 0);
                                        composer4.endNode();
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                        invoke(composer4, num.intValue());
                                        return j59.a;
                                    }
                                }, composer3, 54), dm3Var, composer3, 48);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        bm3Var8 = bm3Var6;
                        j2 = j8;
                        bm3Var9 = bm3Var115;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        bm3Var8 = bm3Var6;
                        bm3Var9 = bm3Var7;
                        j2 = containerColor;
                    }
                    modifier3 = modifier2;
                    shape3 = shape2;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 24576;
                bm3Var7 = bm3Var4;
                if ((196608 & i) == 0) {
                    if ((i2 & 32) == 0) {
                        shape2 = shape;
                        if (composerStartRestartGroup.changed(shape2)) {
                        }
                        i3 |= i14;
                    } else {
                        shape2 = shape;
                    }
                    i3 |= i14;
                } else {
                    shape2 = shape;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        containerColor = j;
                        if (composerStartRestartGroup.changed(containerColor)) {
                        }
                        i3 |= i15;
                    } else {
                        containerColor = j;
                    }
                    i3 |= i15;
                } else {
                    containerColor = j;
                }
                if ((i2 & 128) != 0) {
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i10 = 8388608;
                        } else {
                            i10 = 4194304;
                        }
                        i3 |= i10;
                    }
                    i11 = i3;
                    if ((i3 & 4793491) != 4793490) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if ((i2 & 32) != 0) {
                                i12 = i11 & (-458753);
                                shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 64) != 0) {
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i13 = i12 & (-3670017);
                            } else {
                                i13 = i12;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if ((i2 & 32) != 0) {
                                i12 = i11 & (-458753);
                                shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 64) != 0) {
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i13 = i12 & (-3670017);
                            } else {
                                i13 = i12;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                        }
                        final bm3<? super Composer, ? super Integer, j59> bm3Var118 = bm3Var7;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var119 = bm3Var5;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1110 = bm3Var6;
                        long j9 = containerColor;
                        composer2 = composerStartRestartGroup;
                        SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                            public final void invoke(Composer composer3, int i16) {
                                if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                                }
                                bm3<Composer, Integer, j59> bm3Var1111 = bm3Var119;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var1112 = bm3Var1110;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var1113 = bm3Var118;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var1114 = bm3Var;
                                TimePickerDialogKt.TimePickerCustomLayout(bm3Var1111, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                                    public final void invoke(Composer composer4, int i17) {
                                        if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                            composer4.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                        }
                                        Modifier.Companion companion = Modifier.Companion;
                                        Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                        bm3<Composer, Integer, j59> bm3Var1115 = bm3Var1112;
                                        bm3<Composer, Integer, j59> bm3Var1116 = bm3Var1113;
                                        bm3<Composer, Integer, j59> bm3Var1117 = bm3Var1114;
                                        MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                        CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                        ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                        if (composer4.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer4.startReusableNode();
                                        if (composer4.getInserting()) {
                                            composer4.createNode(constructor);
                                        } else {
                                            composer4.useNode();
                                        }
                                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                        bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                        RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                        if (bm3Var1115 == null) {
                                            composer4.startReplaceGroup(675833080);
                                        } else {
                                            composer4.startReplaceGroup(2100011049);
                                            bm3Var1115.invoke(composer4, 0);
                                        }
                                        composer4.endReplaceGroup();
                                        SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                        if (bm3Var1116 == null) {
                                            composer4.startReplaceGroup(675935256);
                                        } else {
                                            composer4.startReplaceGroup(2100014345);
                                            bm3Var1116.invoke(composer4, 0);
                                        }
                                        composer4.endReplaceGroup();
                                        bm3Var1117.invoke(composer4, 0);
                                        composer4.endNode();
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                        invoke(composer4, num.intValue());
                                        return j59.a;
                                    }
                                }, composer3, 54), dm3Var, composer3, 48);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        bm3Var8 = bm3Var6;
                        j2 = j9;
                        bm3Var9 = bm3Var118;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        bm3Var8 = bm3Var6;
                        bm3Var9 = bm3Var7;
                        j2 = containerColor;
                    }
                    modifier3 = modifier2;
                    shape3 = shape2;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                i11 = i3;
                if ((i3 & 4793491) != 4793490) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if ((i2 & 32) != 0) {
                            i12 = i11 & (-458753);
                            shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 64) != 0) {
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i13 = i12 & (-3670017);
                        } else {
                            i13 = i12;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if ((i2 & 32) != 0) {
                            i12 = i11 & (-458753);
                            shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 64) != 0) {
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i13 = i12 & (-3670017);
                        } else {
                            i13 = i12;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                    }
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111 = bm3Var7;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1112 = bm3Var5;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1113 = bm3Var6;
                    long j10 = containerColor;
                    composer2 = composerStartRestartGroup;
                    SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                        public final void invoke(Composer composer3, int i16) {
                            if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                            }
                            bm3<Composer, Integer, j59> bm3Var1114 = bm3Var1112;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var1115 = bm3Var1113;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var1116 = bm3Var1111;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var1117 = bm3Var;
                            TimePickerDialogKt.TimePickerCustomLayout(bm3Var1114, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                                public final void invoke(Composer composer4, int i17) {
                                    if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                        composer4.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                    }
                                    Modifier.Companion companion = Modifier.Companion;
                                    Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                    bm3<Composer, Integer, j59> bm3Var1118 = bm3Var1115;
                                    bm3<Composer, Integer, j59> bm3Var1119 = bm3Var1116;
                                    bm3<Composer, Integer, j59> bm3Var11110 = bm3Var1117;
                                    MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                    CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                    ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                    ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                    if (composer4.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer4.startReusableNode();
                                    if (composer4.getInserting()) {
                                        composer4.createNode(constructor);
                                    } else {
                                        composer4.useNode();
                                    }
                                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                    bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                    RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                    if (bm3Var1118 == null) {
                                        composer4.startReplaceGroup(675833080);
                                    } else {
                                        composer4.startReplaceGroup(2100011049);
                                        bm3Var1118.invoke(composer4, 0);
                                    }
                                    composer4.endReplaceGroup();
                                    SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                    if (bm3Var1119 == null) {
                                        composer4.startReplaceGroup(675935256);
                                    } else {
                                        composer4.startReplaceGroup(2100014345);
                                        bm3Var1119.invoke(composer4, 0);
                                    }
                                    composer4.endReplaceGroup();
                                    bm3Var11110.invoke(composer4, 0);
                                    composer4.endNode();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                    invoke(composer4, num.intValue());
                                    return j59.a;
                                }
                            }, composer3, 54), dm3Var, composer3, 48);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    bm3Var8 = bm3Var6;
                    j2 = j10;
                    bm3Var9 = bm3Var1111;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    bm3Var8 = bm3Var6;
                    bm3Var9 = bm3Var7;
                    j2 = containerColor;
                }
                modifier3 = modifier2;
                shape3 = shape2;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
            i6 = i2 & 8;
            if (i6 != 0) {
                if ((i & 3072) == 0) {
                    bm3Var6 = bm3Var3;
                    if (composerStartRestartGroup.changedInstance(bm3Var6)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 16;
                if (i8 != 0) {
                    if ((i & 24576) == 0) {
                        bm3Var7 = bm3Var4;
                        if (composerStartRestartGroup.changedInstance(bm3Var7)) {
                            i9 = 16384;
                        } else {
                            i9 = 8192;
                        }
                        i3 |= i9;
                    }
                    if ((196608 & i) == 0) {
                        if ((i2 & 32) == 0) {
                            shape2 = shape;
                            if (composerStartRestartGroup.changed(shape2)) {
                            }
                            i3 |= i14;
                        } else {
                            shape2 = shape;
                        }
                        i3 |= i14;
                    } else {
                        shape2 = shape;
                    }
                    if ((1572864 & i) == 0) {
                        if ((i2 & 64) == 0) {
                            containerColor = j;
                            if (composerStartRestartGroup.changed(containerColor)) {
                            }
                            i3 |= i15;
                        } else {
                            containerColor = j;
                        }
                        i3 |= i15;
                    } else {
                        containerColor = j;
                    }
                    if ((i2 & 128) != 0) {
                        if ((i & 12582912) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i10 = 8388608;
                            } else {
                                i10 = 4194304;
                            }
                            i3 |= i10;
                        }
                        i11 = i3;
                        if ((i3 & 4793491) != 4793490) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    bm3Var7 = null;
                                }
                                if ((i2 & 32) != 0) {
                                    i12 = i11 & (-458753);
                                    shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                } else {
                                    i12 = i11;
                                }
                                if ((i2 & 64) != 0) {
                                    containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                    i13 = i12 & (-3670017);
                                } else {
                                    i13 = i12;
                                }
                            } else {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    bm3Var7 = null;
                                }
                                if ((i2 & 32) != 0) {
                                    i12 = i11 & (-458753);
                                    shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                } else {
                                    i12 = i11;
                                }
                                if ((i2 & 64) != 0) {
                                    containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                    i13 = i12 & (-3670017);
                                } else {
                                    i13 = i12;
                                }
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                            }
                            final bm3<? super Composer, ? super Integer, j59> bm3Var1114 = bm3Var7;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var1115 = bm3Var5;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var1116 = bm3Var6;
                            long j11 = containerColor;
                            composer2 = composerStartRestartGroup;
                            SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                                public final void invoke(Composer composer3, int i16) {
                                    if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                                    }
                                    bm3<Composer, Integer, j59> bm3Var1117 = bm3Var1115;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var1118 = bm3Var1116;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var1119 = bm3Var1114;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var11110 = bm3Var;
                                    TimePickerDialogKt.TimePickerCustomLayout(bm3Var1117, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                                        public final void invoke(Composer composer4, int i17) {
                                            if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                                composer4.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                            }
                                            Modifier.Companion companion = Modifier.Companion;
                                            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                            bm3<Composer, Integer, j59> bm3Var11111 = bm3Var1118;
                                            bm3<Composer, Integer, j59> bm3Var11112 = bm3Var1119;
                                            bm3<Composer, Integer, j59> bm3Var11113 = bm3Var11110;
                                            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                            CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                            ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                            if (composer4.getApplier() == null) {
                                                ComposablesKt.invalidApplier();
                                            }
                                            composer4.startReusableNode();
                                            if (composer4.getInserting()) {
                                                composer4.createNode(constructor);
                                            } else {
                                                composer4.useNode();
                                            }
                                            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                            bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                            }
                                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                            if (bm3Var11111 == null) {
                                                composer4.startReplaceGroup(675833080);
                                            } else {
                                                composer4.startReplaceGroup(2100011049);
                                                bm3Var11111.invoke(composer4, 0);
                                            }
                                            composer4.endReplaceGroup();
                                            SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                            if (bm3Var11112 == null) {
                                                composer4.startReplaceGroup(675935256);
                                            } else {
                                                composer4.startReplaceGroup(2100014345);
                                                bm3Var11112.invoke(composer4, 0);
                                            }
                                            composer4.endReplaceGroup();
                                            bm3Var11113.invoke(composer4, 0);
                                            composer4.endNode();
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                            invoke(composer4, num.intValue());
                                            return j59.a;
                                        }
                                    }, composer3, 54), dm3Var, composer3, 48);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            bm3Var8 = bm3Var6;
                            j2 = j11;
                            bm3Var9 = bm3Var1114;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            bm3Var8 = bm3Var6;
                            bm3Var9 = bm3Var7;
                            j2 = containerColor;
                        }
                        modifier3 = modifier2;
                        shape3 = shape2;
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 12582912;
                    i11 = i3;
                    if ((i3 & 4793491) != 4793490) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if ((i2 & 32) != 0) {
                                i12 = i11 & (-458753);
                                shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 64) != 0) {
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i13 = i12 & (-3670017);
                            } else {
                                i13 = i12;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if ((i2 & 32) != 0) {
                                i12 = i11 & (-458753);
                                shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 64) != 0) {
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i13 = i12 & (-3670017);
                            } else {
                                i13 = i12;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                        }
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1117 = bm3Var7;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1118 = bm3Var5;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1119 = bm3Var6;
                        long j12 = containerColor;
                        composer2 = composerStartRestartGroup;
                        SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                            public final void invoke(Composer composer3, int i16) {
                                if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                                }
                                bm3<Composer, Integer, j59> bm3Var11110 = bm3Var1118;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var11111 = bm3Var1119;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var11112 = bm3Var1117;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var11113 = bm3Var;
                                TimePickerDialogKt.TimePickerCustomLayout(bm3Var11110, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                                    public final void invoke(Composer composer4, int i17) {
                                        if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                            composer4.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                        }
                                        Modifier.Companion companion = Modifier.Companion;
                                        Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                        bm3<Composer, Integer, j59> bm3Var11114 = bm3Var11111;
                                        bm3<Composer, Integer, j59> bm3Var11115 = bm3Var11112;
                                        bm3<Composer, Integer, j59> bm3Var11116 = bm3Var11113;
                                        MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                        CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                        ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                        if (composer4.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer4.startReusableNode();
                                        if (composer4.getInserting()) {
                                            composer4.createNode(constructor);
                                        } else {
                                            composer4.useNode();
                                        }
                                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                        bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                        RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                        if (bm3Var11114 == null) {
                                            composer4.startReplaceGroup(675833080);
                                        } else {
                                            composer4.startReplaceGroup(2100011049);
                                            bm3Var11114.invoke(composer4, 0);
                                        }
                                        composer4.endReplaceGroup();
                                        SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                        if (bm3Var11115 == null) {
                                            composer4.startReplaceGroup(675935256);
                                        } else {
                                            composer4.startReplaceGroup(2100014345);
                                            bm3Var11115.invoke(composer4, 0);
                                        }
                                        composer4.endReplaceGroup();
                                        bm3Var11116.invoke(composer4, 0);
                                        composer4.endNode();
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                        invoke(composer4, num.intValue());
                                        return j59.a;
                                    }
                                }, composer3, 54), dm3Var, composer3, 48);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        bm3Var8 = bm3Var6;
                        j2 = j12;
                        bm3Var9 = bm3Var1117;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        bm3Var8 = bm3Var6;
                        bm3Var9 = bm3Var7;
                        j2 = containerColor;
                    }
                    modifier3 = modifier2;
                    shape3 = shape2;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 24576;
                bm3Var7 = bm3Var4;
                if ((196608 & i) == 0) {
                    if ((i2 & 32) == 0) {
                        shape2 = shape;
                        if (composerStartRestartGroup.changed(shape2)) {
                        }
                        i3 |= i14;
                    } else {
                        shape2 = shape;
                    }
                    i3 |= i14;
                } else {
                    shape2 = shape;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        containerColor = j;
                        if (composerStartRestartGroup.changed(containerColor)) {
                        }
                        i3 |= i15;
                    } else {
                        containerColor = j;
                    }
                    i3 |= i15;
                } else {
                    containerColor = j;
                }
                if ((i2 & 128) != 0) {
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i10 = 8388608;
                        } else {
                            i10 = 4194304;
                        }
                        i3 |= i10;
                    }
                    i11 = i3;
                    if ((i3 & 4793491) != 4793490) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if ((i2 & 32) != 0) {
                                i12 = i11 & (-458753);
                                shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 64) != 0) {
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i13 = i12 & (-3670017);
                            } else {
                                i13 = i12;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if ((i2 & 32) != 0) {
                                i12 = i11 & (-458753);
                                shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 64) != 0) {
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i13 = i12 & (-3670017);
                            } else {
                                i13 = i12;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                        }
                        final bm3<? super Composer, ? super Integer, j59> bm3Var11110 = bm3Var7;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var11111 = bm3Var5;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var11112 = bm3Var6;
                        long j13 = containerColor;
                        composer2 = composerStartRestartGroup;
                        SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                            public final void invoke(Composer composer3, int i16) {
                                if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                                }
                                bm3<Composer, Integer, j59> bm3Var11113 = bm3Var11111;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var11114 = bm3Var11112;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var11115 = bm3Var11110;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var11116 = bm3Var;
                                TimePickerDialogKt.TimePickerCustomLayout(bm3Var11113, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                                    public final void invoke(Composer composer4, int i17) {
                                        if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                            composer4.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                        }
                                        Modifier.Companion companion = Modifier.Companion;
                                        Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                        bm3<Composer, Integer, j59> bm3Var11117 = bm3Var11114;
                                        bm3<Composer, Integer, j59> bm3Var11118 = bm3Var11115;
                                        bm3<Composer, Integer, j59> bm3Var11119 = bm3Var11116;
                                        MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                        CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                        ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                        if (composer4.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer4.startReusableNode();
                                        if (composer4.getInserting()) {
                                            composer4.createNode(constructor);
                                        } else {
                                            composer4.useNode();
                                        }
                                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                        bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                        RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                        if (bm3Var11117 == null) {
                                            composer4.startReplaceGroup(675833080);
                                        } else {
                                            composer4.startReplaceGroup(2100011049);
                                            bm3Var11117.invoke(composer4, 0);
                                        }
                                        composer4.endReplaceGroup();
                                        SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                        if (bm3Var11118 == null) {
                                            composer4.startReplaceGroup(675935256);
                                        } else {
                                            composer4.startReplaceGroup(2100014345);
                                            bm3Var11118.invoke(composer4, 0);
                                        }
                                        composer4.endReplaceGroup();
                                        bm3Var11119.invoke(composer4, 0);
                                        composer4.endNode();
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                        invoke(composer4, num.intValue());
                                        return j59.a;
                                    }
                                }, composer3, 54), dm3Var, composer3, 48);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        bm3Var8 = bm3Var6;
                        j2 = j13;
                        bm3Var9 = bm3Var11110;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        bm3Var8 = bm3Var6;
                        bm3Var9 = bm3Var7;
                        j2 = containerColor;
                    }
                    modifier3 = modifier2;
                    shape3 = shape2;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                i11 = i3;
                if ((i3 & 4793491) != 4793490) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if ((i2 & 32) != 0) {
                            i12 = i11 & (-458753);
                            shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 64) != 0) {
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i13 = i12 & (-3670017);
                        } else {
                            i13 = i12;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if ((i2 & 32) != 0) {
                            i12 = i11 & (-458753);
                            shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 64) != 0) {
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i13 = i12 & (-3670017);
                        } else {
                            i13 = i12;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                    }
                    final bm3<? super Composer, ? super Integer, j59> bm3Var11113 = bm3Var7;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var11114 = bm3Var5;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var11115 = bm3Var6;
                    long j14 = containerColor;
                    composer2 = composerStartRestartGroup;
                    SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                        public final void invoke(Composer composer3, int i16) {
                            if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                            }
                            bm3<Composer, Integer, j59> bm3Var11116 = bm3Var11114;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var11117 = bm3Var11115;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var11118 = bm3Var11113;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var11119 = bm3Var;
                            TimePickerDialogKt.TimePickerCustomLayout(bm3Var11116, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                                public final void invoke(Composer composer4, int i17) {
                                    if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                        composer4.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                    }
                                    Modifier.Companion companion = Modifier.Companion;
                                    Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                    bm3<Composer, Integer, j59> bm3Var111110 = bm3Var11117;
                                    bm3<Composer, Integer, j59> bm3Var111111 = bm3Var11118;
                                    bm3<Composer, Integer, j59> bm3Var111112 = bm3Var11119;
                                    MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                    CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                    ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                    ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                    if (composer4.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer4.startReusableNode();
                                    if (composer4.getInserting()) {
                                        composer4.createNode(constructor);
                                    } else {
                                        composer4.useNode();
                                    }
                                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                    bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                    RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                    if (bm3Var111110 == null) {
                                        composer4.startReplaceGroup(675833080);
                                    } else {
                                        composer4.startReplaceGroup(2100011049);
                                        bm3Var111110.invoke(composer4, 0);
                                    }
                                    composer4.endReplaceGroup();
                                    SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                    if (bm3Var111111 == null) {
                                        composer4.startReplaceGroup(675935256);
                                    } else {
                                        composer4.startReplaceGroup(2100014345);
                                        bm3Var111111.invoke(composer4, 0);
                                    }
                                    composer4.endReplaceGroup();
                                    bm3Var111112.invoke(composer4, 0);
                                    composer4.endNode();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                    invoke(composer4, num.intValue());
                                    return j59.a;
                                }
                            }, composer3, 54), dm3Var, composer3, 48);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    bm3Var8 = bm3Var6;
                    j2 = j14;
                    bm3Var9 = bm3Var11113;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    bm3Var8 = bm3Var6;
                    bm3Var9 = bm3Var7;
                    j2 = containerColor;
                }
                modifier3 = modifier2;
                shape3 = shape2;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            bm3Var6 = bm3Var3;
            i8 = i2 & 16;
            if (i8 != 0) {
                if ((i & 24576) == 0) {
                    bm3Var7 = bm3Var4;
                    if (composerStartRestartGroup.changedInstance(bm3Var7)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i3 |= i9;
                }
                if ((196608 & i) == 0) {
                    if ((i2 & 32) == 0) {
                        shape2 = shape;
                        if (composerStartRestartGroup.changed(shape2)) {
                        }
                        i3 |= i14;
                    } else {
                        shape2 = shape;
                    }
                    i3 |= i14;
                } else {
                    shape2 = shape;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        containerColor = j;
                        if (composerStartRestartGroup.changed(containerColor)) {
                        }
                        i3 |= i15;
                    } else {
                        containerColor = j;
                    }
                    i3 |= i15;
                } else {
                    containerColor = j;
                }
                if ((i2 & 128) != 0) {
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i10 = 8388608;
                        } else {
                            i10 = 4194304;
                        }
                        i3 |= i10;
                    }
                    i11 = i3;
                    if ((i3 & 4793491) != 4793490) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if ((i2 & 32) != 0) {
                                i12 = i11 & (-458753);
                                shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 64) != 0) {
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i13 = i12 & (-3670017);
                            } else {
                                i13 = i12;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if ((i2 & 32) != 0) {
                                i12 = i11 & (-458753);
                                shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 64) != 0) {
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i13 = i12 & (-3670017);
                            } else {
                                i13 = i12;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                        }
                        final bm3<? super Composer, ? super Integer, j59> bm3Var11116 = bm3Var7;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var11117 = bm3Var5;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var11118 = bm3Var6;
                        long j15 = containerColor;
                        composer2 = composerStartRestartGroup;
                        SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                            public final void invoke(Composer composer3, int i16) {
                                if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                                }
                                bm3<Composer, Integer, j59> bm3Var11119 = bm3Var11117;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var111110 = bm3Var11118;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var111111 = bm3Var11116;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var111112 = bm3Var;
                                TimePickerDialogKt.TimePickerCustomLayout(bm3Var11119, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                                    public final void invoke(Composer composer4, int i17) {
                                        if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                            composer4.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                        }
                                        Modifier.Companion companion = Modifier.Companion;
                                        Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                        bm3<Composer, Integer, j59> bm3Var111113 = bm3Var111110;
                                        bm3<Composer, Integer, j59> bm3Var111114 = bm3Var111111;
                                        bm3<Composer, Integer, j59> bm3Var111115 = bm3Var111112;
                                        MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                        CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                        ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                        if (composer4.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer4.startReusableNode();
                                        if (composer4.getInserting()) {
                                            composer4.createNode(constructor);
                                        } else {
                                            composer4.useNode();
                                        }
                                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                        bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                        RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                        if (bm3Var111113 == null) {
                                            composer4.startReplaceGroup(675833080);
                                        } else {
                                            composer4.startReplaceGroup(2100011049);
                                            bm3Var111113.invoke(composer4, 0);
                                        }
                                        composer4.endReplaceGroup();
                                        SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                        if (bm3Var111114 == null) {
                                            composer4.startReplaceGroup(675935256);
                                        } else {
                                            composer4.startReplaceGroup(2100014345);
                                            bm3Var111114.invoke(composer4, 0);
                                        }
                                        composer4.endReplaceGroup();
                                        bm3Var111115.invoke(composer4, 0);
                                        composer4.endNode();
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                        invoke(composer4, num.intValue());
                                        return j59.a;
                                    }
                                }, composer3, 54), dm3Var, composer3, 48);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        bm3Var8 = bm3Var6;
                        j2 = j15;
                        bm3Var9 = bm3Var11116;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        bm3Var8 = bm3Var6;
                        bm3Var9 = bm3Var7;
                        j2 = containerColor;
                    }
                    modifier3 = modifier2;
                    shape3 = shape2;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                i11 = i3;
                if ((i3 & 4793491) != 4793490) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if ((i2 & 32) != 0) {
                            i12 = i11 & (-458753);
                            shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 64) != 0) {
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i13 = i12 & (-3670017);
                        } else {
                            i13 = i12;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if ((i2 & 32) != 0) {
                            i12 = i11 & (-458753);
                            shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 64) != 0) {
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i13 = i12 & (-3670017);
                        } else {
                            i13 = i12;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                    }
                    final bm3<? super Composer, ? super Integer, j59> bm3Var11119 = bm3Var7;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var111110 = bm3Var5;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var111111 = bm3Var6;
                    long j16 = containerColor;
                    composer2 = composerStartRestartGroup;
                    SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                        public final void invoke(Composer composer3, int i16) {
                            if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                            }
                            bm3<Composer, Integer, j59> bm3Var111112 = bm3Var111110;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var111113 = bm3Var111111;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var111114 = bm3Var11119;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var111115 = bm3Var;
                            TimePickerDialogKt.TimePickerCustomLayout(bm3Var111112, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                                public final void invoke(Composer composer4, int i17) {
                                    if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                        composer4.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                    }
                                    Modifier.Companion companion = Modifier.Companion;
                                    Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                    bm3<Composer, Integer, j59> bm3Var111116 = bm3Var111113;
                                    bm3<Composer, Integer, j59> bm3Var111117 = bm3Var111114;
                                    bm3<Composer, Integer, j59> bm3Var111118 = bm3Var111115;
                                    MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                    CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                    ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                    ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                    if (composer4.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer4.startReusableNode();
                                    if (composer4.getInserting()) {
                                        composer4.createNode(constructor);
                                    } else {
                                        composer4.useNode();
                                    }
                                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                    bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                    RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                    if (bm3Var111116 == null) {
                                        composer4.startReplaceGroup(675833080);
                                    } else {
                                        composer4.startReplaceGroup(2100011049);
                                        bm3Var111116.invoke(composer4, 0);
                                    }
                                    composer4.endReplaceGroup();
                                    SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                    if (bm3Var111117 == null) {
                                        composer4.startReplaceGroup(675935256);
                                    } else {
                                        composer4.startReplaceGroup(2100014345);
                                        bm3Var111117.invoke(composer4, 0);
                                    }
                                    composer4.endReplaceGroup();
                                    bm3Var111118.invoke(composer4, 0);
                                    composer4.endNode();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                    invoke(composer4, num.intValue());
                                    return j59.a;
                                }
                            }, composer3, 54), dm3Var, composer3, 48);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    bm3Var8 = bm3Var6;
                    j2 = j16;
                    bm3Var9 = bm3Var11119;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    bm3Var8 = bm3Var6;
                    bm3Var9 = bm3Var7;
                    j2 = containerColor;
                }
                modifier3 = modifier2;
                shape3 = shape2;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            bm3Var7 = bm3Var4;
            if ((196608 & i) == 0) {
                if ((i2 & 32) == 0) {
                    shape2 = shape;
                    if (composerStartRestartGroup.changed(shape2)) {
                    }
                    i3 |= i14;
                } else {
                    shape2 = shape;
                }
                i3 |= i14;
            } else {
                shape2 = shape;
            }
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    containerColor = j;
                    if (composerStartRestartGroup.changed(containerColor)) {
                    }
                    i3 |= i15;
                } else {
                    containerColor = j;
                }
                i3 |= i15;
            } else {
                containerColor = j;
            }
            if ((i2 & 128) != 0) {
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i10 = 8388608;
                    } else {
                        i10 = 4194304;
                    }
                    i3 |= i10;
                }
                i11 = i3;
                if ((i3 & 4793491) != 4793490) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if ((i2 & 32) != 0) {
                            i12 = i11 & (-458753);
                            shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 64) != 0) {
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i13 = i12 & (-3670017);
                        } else {
                            i13 = i12;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if ((i2 & 32) != 0) {
                            i12 = i11 & (-458753);
                            shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 64) != 0) {
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i13 = i12 & (-3670017);
                        } else {
                            i13 = i12;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                    }
                    final bm3<? super Composer, ? super Integer, j59> bm3Var111112 = bm3Var7;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var111113 = bm3Var5;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var111114 = bm3Var6;
                    long j17 = containerColor;
                    composer2 = composerStartRestartGroup;
                    SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                        public final void invoke(Composer composer3, int i16) {
                            if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                            }
                            bm3<Composer, Integer, j59> bm3Var111115 = bm3Var111113;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var111116 = bm3Var111114;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var111117 = bm3Var111112;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var111118 = bm3Var;
                            TimePickerDialogKt.TimePickerCustomLayout(bm3Var111115, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                                public final void invoke(Composer composer4, int i17) {
                                    if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                        composer4.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                    }
                                    Modifier.Companion companion = Modifier.Companion;
                                    Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                    bm3<Composer, Integer, j59> bm3Var111119 = bm3Var111116;
                                    bm3<Composer, Integer, j59> bm3Var1111110 = bm3Var111117;
                                    bm3<Composer, Integer, j59> bm3Var1111111 = bm3Var111118;
                                    MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                    CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                    ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                    ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                    if (composer4.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer4.startReusableNode();
                                    if (composer4.getInserting()) {
                                        composer4.createNode(constructor);
                                    } else {
                                        composer4.useNode();
                                    }
                                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                    bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                    RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                    if (bm3Var111119 == null) {
                                        composer4.startReplaceGroup(675833080);
                                    } else {
                                        composer4.startReplaceGroup(2100011049);
                                        bm3Var111119.invoke(composer4, 0);
                                    }
                                    composer4.endReplaceGroup();
                                    SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                    if (bm3Var1111110 == null) {
                                        composer4.startReplaceGroup(675935256);
                                    } else {
                                        composer4.startReplaceGroup(2100014345);
                                        bm3Var1111110.invoke(composer4, 0);
                                    }
                                    composer4.endReplaceGroup();
                                    bm3Var1111111.invoke(composer4, 0);
                                    composer4.endNode();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                    invoke(composer4, num.intValue());
                                    return j59.a;
                                }
                            }, composer3, 54), dm3Var, composer3, 48);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    bm3Var8 = bm3Var6;
                    j2 = j17;
                    bm3Var9 = bm3Var111112;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    bm3Var8 = bm3Var6;
                    bm3Var9 = bm3Var7;
                    j2 = containerColor;
                }
                modifier3 = modifier2;
                shape3 = shape2;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            i11 = i3;
            if ((i3 & 4793491) != 4793490) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        bm3Var6 = null;
                    }
                    if (i8 != 0) {
                        bm3Var7 = null;
                    }
                    if ((i2 & 32) != 0) {
                        i12 = i11 & (-458753);
                        shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    } else {
                        i12 = i11;
                    }
                    if ((i2 & 64) != 0) {
                        containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i13 = i12 & (-3670017);
                    } else {
                        i13 = i12;
                    }
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        bm3Var6 = null;
                    }
                    if (i8 != 0) {
                        bm3Var7 = null;
                    }
                    if ((i2 & 32) != 0) {
                        i12 = i11 & (-458753);
                        shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    } else {
                        i12 = i11;
                    }
                    if ((i2 & 64) != 0) {
                        containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i13 = i12 & (-3670017);
                    } else {
                        i13 = i12;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                }
                final bm3<? super Composer, ? super Integer, j59> bm3Var111115 = bm3Var7;
                final bm3<? super Composer, ? super Integer, j59> bm3Var111116 = bm3Var5;
                final bm3<? super Composer, ? super Integer, j59> bm3Var111117 = bm3Var6;
                long j18 = containerColor;
                composer2 = composerStartRestartGroup;
                SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                    public final void invoke(Composer composer3, int i16) {
                        if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                        }
                        bm3<Composer, Integer, j59> bm3Var111118 = bm3Var111116;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var111119 = bm3Var111117;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1111110 = bm3Var111115;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1111111 = bm3Var;
                        TimePickerDialogKt.TimePickerCustomLayout(bm3Var111118, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                            public final void invoke(Composer composer4, int i17) {
                                if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                    composer4.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                }
                                Modifier.Companion companion = Modifier.Companion;
                                Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                bm3<Composer, Integer, j59> bm3Var1111112 = bm3Var111119;
                                bm3<Composer, Integer, j59> bm3Var1111113 = bm3Var1111110;
                                bm3<Composer, Integer, j59> bm3Var1111114 = bm3Var1111111;
                                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                if (composer4.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer4.startReusableNode();
                                if (composer4.getInserting()) {
                                    composer4.createNode(constructor);
                                } else {
                                    composer4.useNode();
                                }
                                Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                if (bm3Var1111112 == null) {
                                    composer4.startReplaceGroup(675833080);
                                } else {
                                    composer4.startReplaceGroup(2100011049);
                                    bm3Var1111112.invoke(composer4, 0);
                                }
                                composer4.endReplaceGroup();
                                SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                if (bm3Var1111113 == null) {
                                    composer4.startReplaceGroup(675935256);
                                } else {
                                    composer4.startReplaceGroup(2100014345);
                                    bm3Var1111113.invoke(composer4, 0);
                                }
                                composer4.endReplaceGroup();
                                bm3Var1111114.invoke(composer4, 0);
                                composer4.endNode();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                invoke(composer4, num.intValue());
                                return j59.a;
                            }
                        }, composer3, 54), dm3Var, composer3, 48);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                bm3Var8 = bm3Var6;
                j2 = j18;
                bm3Var9 = bm3Var111115;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                bm3Var8 = bm3Var6;
                bm3Var9 = bm3Var7;
                j2 = containerColor;
            }
            modifier3 = modifier2;
            shape3 = shape2;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        bm3Var5 = bm3Var2;
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
                    bm3Var6 = bm3Var3;
                    if (composerStartRestartGroup.changedInstance(bm3Var6)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 16;
                if (i8 != 0) {
                    if ((i & 24576) == 0) {
                        bm3Var7 = bm3Var4;
                        if (composerStartRestartGroup.changedInstance(bm3Var7)) {
                            i9 = 16384;
                        } else {
                            i9 = 8192;
                        }
                        i3 |= i9;
                    }
                    if ((196608 & i) == 0) {
                        if ((i2 & 32) == 0) {
                            shape2 = shape;
                            if (composerStartRestartGroup.changed(shape2)) {
                            }
                            i3 |= i14;
                        } else {
                            shape2 = shape;
                        }
                        i3 |= i14;
                    } else {
                        shape2 = shape;
                    }
                    if ((1572864 & i) == 0) {
                        if ((i2 & 64) == 0) {
                            containerColor = j;
                            if (composerStartRestartGroup.changed(containerColor)) {
                            }
                            i3 |= i15;
                        } else {
                            containerColor = j;
                        }
                        i3 |= i15;
                    } else {
                        containerColor = j;
                    }
                    if ((i2 & 128) != 0) {
                        if ((i & 12582912) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i10 = 8388608;
                            } else {
                                i10 = 4194304;
                            }
                            i3 |= i10;
                        }
                        i11 = i3;
                        if ((i3 & 4793491) != 4793490) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    bm3Var7 = null;
                                }
                                if ((i2 & 32) != 0) {
                                    i12 = i11 & (-458753);
                                    shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                } else {
                                    i12 = i11;
                                }
                                if ((i2 & 64) != 0) {
                                    containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                    i13 = i12 & (-3670017);
                                } else {
                                    i13 = i12;
                                }
                            } else {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    bm3Var7 = null;
                                }
                                if ((i2 & 32) != 0) {
                                    i12 = i11 & (-458753);
                                    shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                } else {
                                    i12 = i11;
                                }
                                if ((i2 & 64) != 0) {
                                    containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                    i13 = i12 & (-3670017);
                                } else {
                                    i13 = i12;
                                }
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                            }
                            final bm3<? super Composer, ? super Integer, j59> bm3Var111118 = bm3Var7;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var111119 = bm3Var5;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var1111110 = bm3Var6;
                            long j19 = containerColor;
                            composer2 = composerStartRestartGroup;
                            SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                                public final void invoke(Composer composer3, int i16) {
                                    if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                                    }
                                    bm3<Composer, Integer, j59> bm3Var1111111 = bm3Var111119;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111112 = bm3Var1111110;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111113 = bm3Var111118;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111114 = bm3Var;
                                    TimePickerDialogKt.TimePickerCustomLayout(bm3Var1111111, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                                        public final void invoke(Composer composer4, int i17) {
                                            if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                                composer4.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                            }
                                            Modifier.Companion companion = Modifier.Companion;
                                            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                            bm3<Composer, Integer, j59> bm3Var1111115 = bm3Var1111112;
                                            bm3<Composer, Integer, j59> bm3Var1111116 = bm3Var1111113;
                                            bm3<Composer, Integer, j59> bm3Var1111117 = bm3Var1111114;
                                            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                            CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                            ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                            if (composer4.getApplier() == null) {
                                                ComposablesKt.invalidApplier();
                                            }
                                            composer4.startReusableNode();
                                            if (composer4.getInserting()) {
                                                composer4.createNode(constructor);
                                            } else {
                                                composer4.useNode();
                                            }
                                            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                            bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                            }
                                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                            if (bm3Var1111115 == null) {
                                                composer4.startReplaceGroup(675833080);
                                            } else {
                                                composer4.startReplaceGroup(2100011049);
                                                bm3Var1111115.invoke(composer4, 0);
                                            }
                                            composer4.endReplaceGroup();
                                            SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                            if (bm3Var1111116 == null) {
                                                composer4.startReplaceGroup(675935256);
                                            } else {
                                                composer4.startReplaceGroup(2100014345);
                                                bm3Var1111116.invoke(composer4, 0);
                                            }
                                            composer4.endReplaceGroup();
                                            bm3Var1111117.invoke(composer4, 0);
                                            composer4.endNode();
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                            invoke(composer4, num.intValue());
                                            return j59.a;
                                        }
                                    }, composer3, 54), dm3Var, composer3, 48);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            bm3Var8 = bm3Var6;
                            j2 = j19;
                            bm3Var9 = bm3Var111118;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            bm3Var8 = bm3Var6;
                            bm3Var9 = bm3Var7;
                            j2 = containerColor;
                        }
                        modifier3 = modifier2;
                        shape3 = shape2;
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 12582912;
                    i11 = i3;
                    if ((i3 & 4793491) != 4793490) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if ((i2 & 32) != 0) {
                                i12 = i11 & (-458753);
                                shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 64) != 0) {
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i13 = i12 & (-3670017);
                            } else {
                                i13 = i12;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if ((i2 & 32) != 0) {
                                i12 = i11 & (-458753);
                                shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 64) != 0) {
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i13 = i12 & (-3670017);
                            } else {
                                i13 = i12;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                        }
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1111111 = bm3Var7;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1111112 = bm3Var5;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1111113 = bm3Var6;
                        long j110 = containerColor;
                        composer2 = composerStartRestartGroup;
                        SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                            public final void invoke(Composer composer3, int i16) {
                                if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                                }
                                bm3<Composer, Integer, j59> bm3Var1111114 = bm3Var1111112;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var1111115 = bm3Var1111113;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var1111116 = bm3Var1111111;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var1111117 = bm3Var;
                                TimePickerDialogKt.TimePickerCustomLayout(bm3Var1111114, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                                    public final void invoke(Composer composer4, int i17) {
                                        if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                            composer4.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                        }
                                        Modifier.Companion companion = Modifier.Companion;
                                        Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                        bm3<Composer, Integer, j59> bm3Var1111118 = bm3Var1111115;
                                        bm3<Composer, Integer, j59> bm3Var1111119 = bm3Var1111116;
                                        bm3<Composer, Integer, j59> bm3Var11111110 = bm3Var1111117;
                                        MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                        CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                        ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                        if (composer4.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer4.startReusableNode();
                                        if (composer4.getInserting()) {
                                            composer4.createNode(constructor);
                                        } else {
                                            composer4.useNode();
                                        }
                                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                        bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                        RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                        if (bm3Var1111118 == null) {
                                            composer4.startReplaceGroup(675833080);
                                        } else {
                                            composer4.startReplaceGroup(2100011049);
                                            bm3Var1111118.invoke(composer4, 0);
                                        }
                                        composer4.endReplaceGroup();
                                        SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                        if (bm3Var1111119 == null) {
                                            composer4.startReplaceGroup(675935256);
                                        } else {
                                            composer4.startReplaceGroup(2100014345);
                                            bm3Var1111119.invoke(composer4, 0);
                                        }
                                        composer4.endReplaceGroup();
                                        bm3Var11111110.invoke(composer4, 0);
                                        composer4.endNode();
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                        invoke(composer4, num.intValue());
                                        return j59.a;
                                    }
                                }, composer3, 54), dm3Var, composer3, 48);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        bm3Var8 = bm3Var6;
                        j2 = j110;
                        bm3Var9 = bm3Var1111111;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        bm3Var8 = bm3Var6;
                        bm3Var9 = bm3Var7;
                        j2 = containerColor;
                    }
                    modifier3 = modifier2;
                    shape3 = shape2;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 24576;
                bm3Var7 = bm3Var4;
                if ((196608 & i) == 0) {
                    if ((i2 & 32) == 0) {
                        shape2 = shape;
                        if (composerStartRestartGroup.changed(shape2)) {
                        }
                        i3 |= i14;
                    } else {
                        shape2 = shape;
                    }
                    i3 |= i14;
                } else {
                    shape2 = shape;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        containerColor = j;
                        if (composerStartRestartGroup.changed(containerColor)) {
                        }
                        i3 |= i15;
                    } else {
                        containerColor = j;
                    }
                    i3 |= i15;
                } else {
                    containerColor = j;
                }
                if ((i2 & 128) != 0) {
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i10 = 8388608;
                        } else {
                            i10 = 4194304;
                        }
                        i3 |= i10;
                    }
                    i11 = i3;
                    if ((i3 & 4793491) != 4793490) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if ((i2 & 32) != 0) {
                                i12 = i11 & (-458753);
                                shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 64) != 0) {
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i13 = i12 & (-3670017);
                            } else {
                                i13 = i12;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if ((i2 & 32) != 0) {
                                i12 = i11 & (-458753);
                                shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 64) != 0) {
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i13 = i12 & (-3670017);
                            } else {
                                i13 = i12;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                        }
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1111114 = bm3Var7;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1111115 = bm3Var5;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1111116 = bm3Var6;
                        long j111 = containerColor;
                        composer2 = composerStartRestartGroup;
                        SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                            public final void invoke(Composer composer3, int i16) {
                                if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                                }
                                bm3<Composer, Integer, j59> bm3Var1111117 = bm3Var1111115;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var1111118 = bm3Var1111116;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var1111119 = bm3Var1111114;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var11111110 = bm3Var;
                                TimePickerDialogKt.TimePickerCustomLayout(bm3Var1111117, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                                    public final void invoke(Composer composer4, int i17) {
                                        if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                            composer4.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                        }
                                        Modifier.Companion companion = Modifier.Companion;
                                        Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                        bm3<Composer, Integer, j59> bm3Var11111111 = bm3Var1111118;
                                        bm3<Composer, Integer, j59> bm3Var11111112 = bm3Var1111119;
                                        bm3<Composer, Integer, j59> bm3Var11111113 = bm3Var11111110;
                                        MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                        CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                        ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                        if (composer4.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer4.startReusableNode();
                                        if (composer4.getInserting()) {
                                            composer4.createNode(constructor);
                                        } else {
                                            composer4.useNode();
                                        }
                                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                        bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                        RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                        if (bm3Var11111111 == null) {
                                            composer4.startReplaceGroup(675833080);
                                        } else {
                                            composer4.startReplaceGroup(2100011049);
                                            bm3Var11111111.invoke(composer4, 0);
                                        }
                                        composer4.endReplaceGroup();
                                        SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                        if (bm3Var11111112 == null) {
                                            composer4.startReplaceGroup(675935256);
                                        } else {
                                            composer4.startReplaceGroup(2100014345);
                                            bm3Var11111112.invoke(composer4, 0);
                                        }
                                        composer4.endReplaceGroup();
                                        bm3Var11111113.invoke(composer4, 0);
                                        composer4.endNode();
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                        invoke(composer4, num.intValue());
                                        return j59.a;
                                    }
                                }, composer3, 54), dm3Var, composer3, 48);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        bm3Var8 = bm3Var6;
                        j2 = j111;
                        bm3Var9 = bm3Var1111114;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        bm3Var8 = bm3Var6;
                        bm3Var9 = bm3Var7;
                        j2 = containerColor;
                    }
                    modifier3 = modifier2;
                    shape3 = shape2;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                i11 = i3;
                if ((i3 & 4793491) != 4793490) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if ((i2 & 32) != 0) {
                            i12 = i11 & (-458753);
                            shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 64) != 0) {
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i13 = i12 & (-3670017);
                        } else {
                            i13 = i12;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if ((i2 & 32) != 0) {
                            i12 = i11 & (-458753);
                            shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 64) != 0) {
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i13 = i12 & (-3670017);
                        } else {
                            i13 = i12;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                    }
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111117 = bm3Var7;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111118 = bm3Var5;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111119 = bm3Var6;
                    long j112 = containerColor;
                    composer2 = composerStartRestartGroup;
                    SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                        public final void invoke(Composer composer3, int i16) {
                            if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                            }
                            bm3<Composer, Integer, j59> bm3Var11111110 = bm3Var1111118;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var11111111 = bm3Var1111119;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var11111112 = bm3Var1111117;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var11111113 = bm3Var;
                            TimePickerDialogKt.TimePickerCustomLayout(bm3Var11111110, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                                public final void invoke(Composer composer4, int i17) {
                                    if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                        composer4.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                    }
                                    Modifier.Companion companion = Modifier.Companion;
                                    Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                    bm3<Composer, Integer, j59> bm3Var11111114 = bm3Var11111111;
                                    bm3<Composer, Integer, j59> bm3Var11111115 = bm3Var11111112;
                                    bm3<Composer, Integer, j59> bm3Var11111116 = bm3Var11111113;
                                    MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                    CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                    ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                    ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                    if (composer4.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer4.startReusableNode();
                                    if (composer4.getInserting()) {
                                        composer4.createNode(constructor);
                                    } else {
                                        composer4.useNode();
                                    }
                                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                    bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                    RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                    if (bm3Var11111114 == null) {
                                        composer4.startReplaceGroup(675833080);
                                    } else {
                                        composer4.startReplaceGroup(2100011049);
                                        bm3Var11111114.invoke(composer4, 0);
                                    }
                                    composer4.endReplaceGroup();
                                    SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                    if (bm3Var11111115 == null) {
                                        composer4.startReplaceGroup(675935256);
                                    } else {
                                        composer4.startReplaceGroup(2100014345);
                                        bm3Var11111115.invoke(composer4, 0);
                                    }
                                    composer4.endReplaceGroup();
                                    bm3Var11111116.invoke(composer4, 0);
                                    composer4.endNode();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                    invoke(composer4, num.intValue());
                                    return j59.a;
                                }
                            }, composer3, 54), dm3Var, composer3, 48);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    bm3Var8 = bm3Var6;
                    j2 = j112;
                    bm3Var9 = bm3Var1111117;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    bm3Var8 = bm3Var6;
                    bm3Var9 = bm3Var7;
                    j2 = containerColor;
                }
                modifier3 = modifier2;
                shape3 = shape2;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            bm3Var6 = bm3Var3;
            i8 = i2 & 16;
            if (i8 != 0) {
                if ((i & 24576) == 0) {
                    bm3Var7 = bm3Var4;
                    if (composerStartRestartGroup.changedInstance(bm3Var7)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i3 |= i9;
                }
                if ((196608 & i) == 0) {
                    if ((i2 & 32) == 0) {
                        shape2 = shape;
                        if (composerStartRestartGroup.changed(shape2)) {
                        }
                        i3 |= i14;
                    } else {
                        shape2 = shape;
                    }
                    i3 |= i14;
                } else {
                    shape2 = shape;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        containerColor = j;
                        if (composerStartRestartGroup.changed(containerColor)) {
                        }
                        i3 |= i15;
                    } else {
                        containerColor = j;
                    }
                    i3 |= i15;
                } else {
                    containerColor = j;
                }
                if ((i2 & 128) != 0) {
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i10 = 8388608;
                        } else {
                            i10 = 4194304;
                        }
                        i3 |= i10;
                    }
                    i11 = i3;
                    if ((i3 & 4793491) != 4793490) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if ((i2 & 32) != 0) {
                                i12 = i11 & (-458753);
                                shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 64) != 0) {
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i13 = i12 & (-3670017);
                            } else {
                                i13 = i12;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if ((i2 & 32) != 0) {
                                i12 = i11 & (-458753);
                                shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 64) != 0) {
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i13 = i12 & (-3670017);
                            } else {
                                i13 = i12;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                        }
                        final bm3<? super Composer, ? super Integer, j59> bm3Var11111110 = bm3Var7;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var11111111 = bm3Var5;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var11111112 = bm3Var6;
                        long j113 = containerColor;
                        composer2 = composerStartRestartGroup;
                        SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                            public final void invoke(Composer composer3, int i16) {
                                if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                                }
                                bm3<Composer, Integer, j59> bm3Var11111113 = bm3Var11111111;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var11111114 = bm3Var11111112;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var11111115 = bm3Var11111110;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var11111116 = bm3Var;
                                TimePickerDialogKt.TimePickerCustomLayout(bm3Var11111113, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                                    public final void invoke(Composer composer4, int i17) {
                                        if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                            composer4.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                        }
                                        Modifier.Companion companion = Modifier.Companion;
                                        Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                        bm3<Composer, Integer, j59> bm3Var11111117 = bm3Var11111114;
                                        bm3<Composer, Integer, j59> bm3Var11111118 = bm3Var11111115;
                                        bm3<Composer, Integer, j59> bm3Var11111119 = bm3Var11111116;
                                        MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                        CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                        ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                        if (composer4.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer4.startReusableNode();
                                        if (composer4.getInserting()) {
                                            composer4.createNode(constructor);
                                        } else {
                                            composer4.useNode();
                                        }
                                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                        bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                        RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                        if (bm3Var11111117 == null) {
                                            composer4.startReplaceGroup(675833080);
                                        } else {
                                            composer4.startReplaceGroup(2100011049);
                                            bm3Var11111117.invoke(composer4, 0);
                                        }
                                        composer4.endReplaceGroup();
                                        SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                        if (bm3Var11111118 == null) {
                                            composer4.startReplaceGroup(675935256);
                                        } else {
                                            composer4.startReplaceGroup(2100014345);
                                            bm3Var11111118.invoke(composer4, 0);
                                        }
                                        composer4.endReplaceGroup();
                                        bm3Var11111119.invoke(composer4, 0);
                                        composer4.endNode();
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                        invoke(composer4, num.intValue());
                                        return j59.a;
                                    }
                                }, composer3, 54), dm3Var, composer3, 48);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        bm3Var8 = bm3Var6;
                        j2 = j113;
                        bm3Var9 = bm3Var11111110;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        bm3Var8 = bm3Var6;
                        bm3Var9 = bm3Var7;
                        j2 = containerColor;
                    }
                    modifier3 = modifier2;
                    shape3 = shape2;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                i11 = i3;
                if ((i3 & 4793491) != 4793490) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if ((i2 & 32) != 0) {
                            i12 = i11 & (-458753);
                            shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 64) != 0) {
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i13 = i12 & (-3670017);
                        } else {
                            i13 = i12;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if ((i2 & 32) != 0) {
                            i12 = i11 & (-458753);
                            shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 64) != 0) {
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i13 = i12 & (-3670017);
                        } else {
                            i13 = i12;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                    }
                    final bm3<? super Composer, ? super Integer, j59> bm3Var11111113 = bm3Var7;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var11111114 = bm3Var5;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var11111115 = bm3Var6;
                    long j114 = containerColor;
                    composer2 = composerStartRestartGroup;
                    SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                        public final void invoke(Composer composer3, int i16) {
                            if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                            }
                            bm3<Composer, Integer, j59> bm3Var11111116 = bm3Var11111114;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var11111117 = bm3Var11111115;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var11111118 = bm3Var11111113;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var11111119 = bm3Var;
                            TimePickerDialogKt.TimePickerCustomLayout(bm3Var11111116, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                                public final void invoke(Composer composer4, int i17) {
                                    if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                        composer4.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                    }
                                    Modifier.Companion companion = Modifier.Companion;
                                    Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                    bm3<Composer, Integer, j59> bm3Var111111110 = bm3Var11111117;
                                    bm3<Composer, Integer, j59> bm3Var111111111 = bm3Var11111118;
                                    bm3<Composer, Integer, j59> bm3Var111111112 = bm3Var11111119;
                                    MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                    CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                    ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                    ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                    if (composer4.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer4.startReusableNode();
                                    if (composer4.getInserting()) {
                                        composer4.createNode(constructor);
                                    } else {
                                        composer4.useNode();
                                    }
                                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                    bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                    RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                    if (bm3Var111111110 == null) {
                                        composer4.startReplaceGroup(675833080);
                                    } else {
                                        composer4.startReplaceGroup(2100011049);
                                        bm3Var111111110.invoke(composer4, 0);
                                    }
                                    composer4.endReplaceGroup();
                                    SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                    if (bm3Var111111111 == null) {
                                        composer4.startReplaceGroup(675935256);
                                    } else {
                                        composer4.startReplaceGroup(2100014345);
                                        bm3Var111111111.invoke(composer4, 0);
                                    }
                                    composer4.endReplaceGroup();
                                    bm3Var111111112.invoke(composer4, 0);
                                    composer4.endNode();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                    invoke(composer4, num.intValue());
                                    return j59.a;
                                }
                            }, composer3, 54), dm3Var, composer3, 48);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    bm3Var8 = bm3Var6;
                    j2 = j114;
                    bm3Var9 = bm3Var11111113;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    bm3Var8 = bm3Var6;
                    bm3Var9 = bm3Var7;
                    j2 = containerColor;
                }
                modifier3 = modifier2;
                shape3 = shape2;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            bm3Var7 = bm3Var4;
            if ((196608 & i) == 0) {
                if ((i2 & 32) == 0) {
                    shape2 = shape;
                    if (composerStartRestartGroup.changed(shape2)) {
                    }
                    i3 |= i14;
                } else {
                    shape2 = shape;
                }
                i3 |= i14;
            } else {
                shape2 = shape;
            }
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    containerColor = j;
                    if (composerStartRestartGroup.changed(containerColor)) {
                    }
                    i3 |= i15;
                } else {
                    containerColor = j;
                }
                i3 |= i15;
            } else {
                containerColor = j;
            }
            if ((i2 & 128) != 0) {
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i10 = 8388608;
                    } else {
                        i10 = 4194304;
                    }
                    i3 |= i10;
                }
                i11 = i3;
                if ((i3 & 4793491) != 4793490) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if ((i2 & 32) != 0) {
                            i12 = i11 & (-458753);
                            shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 64) != 0) {
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i13 = i12 & (-3670017);
                        } else {
                            i13 = i12;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if ((i2 & 32) != 0) {
                            i12 = i11 & (-458753);
                            shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 64) != 0) {
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i13 = i12 & (-3670017);
                        } else {
                            i13 = i12;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                    }
                    final bm3<? super Composer, ? super Integer, j59> bm3Var11111116 = bm3Var7;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var11111117 = bm3Var5;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var11111118 = bm3Var6;
                    long j115 = containerColor;
                    composer2 = composerStartRestartGroup;
                    SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                        public final void invoke(Composer composer3, int i16) {
                            if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                            }
                            bm3<Composer, Integer, j59> bm3Var11111119 = bm3Var11111117;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var111111110 = bm3Var11111118;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var111111111 = bm3Var11111116;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var111111112 = bm3Var;
                            TimePickerDialogKt.TimePickerCustomLayout(bm3Var11111119, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                                public final void invoke(Composer composer4, int i17) {
                                    if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                        composer4.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                    }
                                    Modifier.Companion companion = Modifier.Companion;
                                    Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                    bm3<Composer, Integer, j59> bm3Var111111113 = bm3Var111111110;
                                    bm3<Composer, Integer, j59> bm3Var111111114 = bm3Var111111111;
                                    bm3<Composer, Integer, j59> bm3Var111111115 = bm3Var111111112;
                                    MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                    CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                    ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                    ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                    if (composer4.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer4.startReusableNode();
                                    if (composer4.getInserting()) {
                                        composer4.createNode(constructor);
                                    } else {
                                        composer4.useNode();
                                    }
                                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                    bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                    RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                    if (bm3Var111111113 == null) {
                                        composer4.startReplaceGroup(675833080);
                                    } else {
                                        composer4.startReplaceGroup(2100011049);
                                        bm3Var111111113.invoke(composer4, 0);
                                    }
                                    composer4.endReplaceGroup();
                                    SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                    if (bm3Var111111114 == null) {
                                        composer4.startReplaceGroup(675935256);
                                    } else {
                                        composer4.startReplaceGroup(2100014345);
                                        bm3Var111111114.invoke(composer4, 0);
                                    }
                                    composer4.endReplaceGroup();
                                    bm3Var111111115.invoke(composer4, 0);
                                    composer4.endNode();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                    invoke(composer4, num.intValue());
                                    return j59.a;
                                }
                            }, composer3, 54), dm3Var, composer3, 48);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    bm3Var8 = bm3Var6;
                    j2 = j115;
                    bm3Var9 = bm3Var11111116;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    bm3Var8 = bm3Var6;
                    bm3Var9 = bm3Var7;
                    j2 = containerColor;
                }
                modifier3 = modifier2;
                shape3 = shape2;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            i11 = i3;
            if ((i3 & 4793491) != 4793490) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        bm3Var6 = null;
                    }
                    if (i8 != 0) {
                        bm3Var7 = null;
                    }
                    if ((i2 & 32) != 0) {
                        i12 = i11 & (-458753);
                        shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    } else {
                        i12 = i11;
                    }
                    if ((i2 & 64) != 0) {
                        containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i13 = i12 & (-3670017);
                    } else {
                        i13 = i12;
                    }
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        bm3Var6 = null;
                    }
                    if (i8 != 0) {
                        bm3Var7 = null;
                    }
                    if ((i2 & 32) != 0) {
                        i12 = i11 & (-458753);
                        shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    } else {
                        i12 = i11;
                    }
                    if ((i2 & 64) != 0) {
                        containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i13 = i12 & (-3670017);
                    } else {
                        i13 = i12;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                }
                final bm3<? super Composer, ? super Integer, j59> bm3Var11111119 = bm3Var7;
                final bm3<? super Composer, ? super Integer, j59> bm3Var111111110 = bm3Var5;
                final bm3<? super Composer, ? super Integer, j59> bm3Var111111111 = bm3Var6;
                long j116 = containerColor;
                composer2 = composerStartRestartGroup;
                SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                    public final void invoke(Composer composer3, int i16) {
                        if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                        }
                        bm3<Composer, Integer, j59> bm3Var111111112 = bm3Var111111110;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var111111113 = bm3Var111111111;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var111111114 = bm3Var11111119;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var111111115 = bm3Var;
                        TimePickerDialogKt.TimePickerCustomLayout(bm3Var111111112, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                            public final void invoke(Composer composer4, int i17) {
                                if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                    composer4.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                }
                                Modifier.Companion companion = Modifier.Companion;
                                Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                bm3<Composer, Integer, j59> bm3Var111111116 = bm3Var111111113;
                                bm3<Composer, Integer, j59> bm3Var111111117 = bm3Var111111114;
                                bm3<Composer, Integer, j59> bm3Var111111118 = bm3Var111111115;
                                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                if (composer4.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer4.startReusableNode();
                                if (composer4.getInserting()) {
                                    composer4.createNode(constructor);
                                } else {
                                    composer4.useNode();
                                }
                                Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                if (bm3Var111111116 == null) {
                                    composer4.startReplaceGroup(675833080);
                                } else {
                                    composer4.startReplaceGroup(2100011049);
                                    bm3Var111111116.invoke(composer4, 0);
                                }
                                composer4.endReplaceGroup();
                                SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                if (bm3Var111111117 == null) {
                                    composer4.startReplaceGroup(675935256);
                                } else {
                                    composer4.startReplaceGroup(2100014345);
                                    bm3Var111111117.invoke(composer4, 0);
                                }
                                composer4.endReplaceGroup();
                                bm3Var111111118.invoke(composer4, 0);
                                composer4.endNode();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                invoke(composer4, num.intValue());
                                return j59.a;
                            }
                        }, composer3, 54), dm3Var, composer3, 48);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                bm3Var8 = bm3Var6;
                j2 = j116;
                bm3Var9 = bm3Var11111119;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                bm3Var8 = bm3Var6;
                bm3Var9 = bm3Var7;
                j2 = containerColor;
            }
            modifier3 = modifier2;
            shape3 = shape2;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        modifier2 = modifier;
        i6 = i2 & 8;
        if (i6 != 0) {
            if ((i & 3072) == 0) {
                bm3Var6 = bm3Var3;
                if (composerStartRestartGroup.changedInstance(bm3Var6)) {
                    i7 = 2048;
                } else {
                    i7 = 1024;
                }
                i3 |= i7;
            }
            i8 = i2 & 16;
            if (i8 != 0) {
                if ((i & 24576) == 0) {
                    bm3Var7 = bm3Var4;
                    if (composerStartRestartGroup.changedInstance(bm3Var7)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i3 |= i9;
                }
                if ((196608 & i) == 0) {
                    if ((i2 & 32) == 0) {
                        shape2 = shape;
                        if (composerStartRestartGroup.changed(shape2)) {
                        }
                        i3 |= i14;
                    } else {
                        shape2 = shape;
                    }
                    i3 |= i14;
                } else {
                    shape2 = shape;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        containerColor = j;
                        if (composerStartRestartGroup.changed(containerColor)) {
                        }
                        i3 |= i15;
                    } else {
                        containerColor = j;
                    }
                    i3 |= i15;
                } else {
                    containerColor = j;
                }
                if ((i2 & 128) != 0) {
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i10 = 8388608;
                        } else {
                            i10 = 4194304;
                        }
                        i3 |= i10;
                    }
                    i11 = i3;
                    if ((i3 & 4793491) != 4793490) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if ((i2 & 32) != 0) {
                                i12 = i11 & (-458753);
                                shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 64) != 0) {
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i13 = i12 & (-3670017);
                            } else {
                                i13 = i12;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                bm3Var7 = null;
                            }
                            if ((i2 & 32) != 0) {
                                i12 = i11 & (-458753);
                                shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 64) != 0) {
                                containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i13 = i12 & (-3670017);
                            } else {
                                i13 = i12;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                        }
                        final bm3<? super Composer, ? super Integer, j59> bm3Var111111112 = bm3Var7;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var111111113 = bm3Var5;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var111111114 = bm3Var6;
                        long j117 = containerColor;
                        composer2 = composerStartRestartGroup;
                        SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                            public final void invoke(Composer composer3, int i16) {
                                if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                                }
                                bm3<Composer, Integer, j59> bm3Var111111115 = bm3Var111111113;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var111111116 = bm3Var111111114;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var111111117 = bm3Var111111112;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var111111118 = bm3Var;
                                TimePickerDialogKt.TimePickerCustomLayout(bm3Var111111115, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                                    public final void invoke(Composer composer4, int i17) {
                                        if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                            composer4.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                        }
                                        Modifier.Companion companion = Modifier.Companion;
                                        Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                        bm3<Composer, Integer, j59> bm3Var111111119 = bm3Var111111116;
                                        bm3<Composer, Integer, j59> bm3Var1111111110 = bm3Var111111117;
                                        bm3<Composer, Integer, j59> bm3Var1111111111 = bm3Var111111118;
                                        MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                        CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                        ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                        if (composer4.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer4.startReusableNode();
                                        if (composer4.getInserting()) {
                                            composer4.createNode(constructor);
                                        } else {
                                            composer4.useNode();
                                        }
                                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                        bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                        RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                        if (bm3Var111111119 == null) {
                                            composer4.startReplaceGroup(675833080);
                                        } else {
                                            composer4.startReplaceGroup(2100011049);
                                            bm3Var111111119.invoke(composer4, 0);
                                        }
                                        composer4.endReplaceGroup();
                                        SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                        if (bm3Var1111111110 == null) {
                                            composer4.startReplaceGroup(675935256);
                                        } else {
                                            composer4.startReplaceGroup(2100014345);
                                            bm3Var1111111110.invoke(composer4, 0);
                                        }
                                        composer4.endReplaceGroup();
                                        bm3Var1111111111.invoke(composer4, 0);
                                        composer4.endNode();
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                        invoke(composer4, num.intValue());
                                        return j59.a;
                                    }
                                }, composer3, 54), dm3Var, composer3, 48);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        bm3Var8 = bm3Var6;
                        j2 = j117;
                        bm3Var9 = bm3Var111111112;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        bm3Var8 = bm3Var6;
                        bm3Var9 = bm3Var7;
                        j2 = containerColor;
                    }
                    modifier3 = modifier2;
                    shape3 = shape2;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                i11 = i3;
                if ((i3 & 4793491) != 4793490) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if ((i2 & 32) != 0) {
                            i12 = i11 & (-458753);
                            shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 64) != 0) {
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i13 = i12 & (-3670017);
                        } else {
                            i13 = i12;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if ((i2 & 32) != 0) {
                            i12 = i11 & (-458753);
                            shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 64) != 0) {
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i13 = i12 & (-3670017);
                        } else {
                            i13 = i12;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                    }
                    final bm3<? super Composer, ? super Integer, j59> bm3Var111111115 = bm3Var7;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var111111116 = bm3Var5;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var111111117 = bm3Var6;
                    long j118 = containerColor;
                    composer2 = composerStartRestartGroup;
                    SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                        public final void invoke(Composer composer3, int i16) {
                            if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                            }
                            bm3<Composer, Integer, j59> bm3Var111111118 = bm3Var111111116;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var111111119 = bm3Var111111117;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var1111111110 = bm3Var111111115;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var1111111111 = bm3Var;
                            TimePickerDialogKt.TimePickerCustomLayout(bm3Var111111118, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                                public final void invoke(Composer composer4, int i17) {
                                    if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                        composer4.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                    }
                                    Modifier.Companion companion = Modifier.Companion;
                                    Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                    bm3<Composer, Integer, j59> bm3Var1111111112 = bm3Var111111119;
                                    bm3<Composer, Integer, j59> bm3Var1111111113 = bm3Var1111111110;
                                    bm3<Composer, Integer, j59> bm3Var1111111114 = bm3Var1111111111;
                                    MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                    CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                    ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                    ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                    if (composer4.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer4.startReusableNode();
                                    if (composer4.getInserting()) {
                                        composer4.createNode(constructor);
                                    } else {
                                        composer4.useNode();
                                    }
                                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                    bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                    RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                    if (bm3Var1111111112 == null) {
                                        composer4.startReplaceGroup(675833080);
                                    } else {
                                        composer4.startReplaceGroup(2100011049);
                                        bm3Var1111111112.invoke(composer4, 0);
                                    }
                                    composer4.endReplaceGroup();
                                    SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                    if (bm3Var1111111113 == null) {
                                        composer4.startReplaceGroup(675935256);
                                    } else {
                                        composer4.startReplaceGroup(2100014345);
                                        bm3Var1111111113.invoke(composer4, 0);
                                    }
                                    composer4.endReplaceGroup();
                                    bm3Var1111111114.invoke(composer4, 0);
                                    composer4.endNode();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                    invoke(composer4, num.intValue());
                                    return j59.a;
                                }
                            }, composer3, 54), dm3Var, composer3, 48);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    bm3Var8 = bm3Var6;
                    j2 = j118;
                    bm3Var9 = bm3Var111111115;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    bm3Var8 = bm3Var6;
                    bm3Var9 = bm3Var7;
                    j2 = containerColor;
                }
                modifier3 = modifier2;
                shape3 = shape2;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            bm3Var7 = bm3Var4;
            if ((196608 & i) == 0) {
                if ((i2 & 32) == 0) {
                    shape2 = shape;
                    if (composerStartRestartGroup.changed(shape2)) {
                    }
                    i3 |= i14;
                } else {
                    shape2 = shape;
                }
                i3 |= i14;
            } else {
                shape2 = shape;
            }
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    containerColor = j;
                    if (composerStartRestartGroup.changed(containerColor)) {
                    }
                    i3 |= i15;
                } else {
                    containerColor = j;
                }
                i3 |= i15;
            } else {
                containerColor = j;
            }
            if ((i2 & 128) != 0) {
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i10 = 8388608;
                    } else {
                        i10 = 4194304;
                    }
                    i3 |= i10;
                }
                i11 = i3;
                if ((i3 & 4793491) != 4793490) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if ((i2 & 32) != 0) {
                            i12 = i11 & (-458753);
                            shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 64) != 0) {
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i13 = i12 & (-3670017);
                        } else {
                            i13 = i12;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if ((i2 & 32) != 0) {
                            i12 = i11 & (-458753);
                            shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 64) != 0) {
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i13 = i12 & (-3670017);
                        } else {
                            i13 = i12;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                    }
                    final bm3<? super Composer, ? super Integer, j59> bm3Var111111118 = bm3Var7;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var111111119 = bm3Var5;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111111110 = bm3Var6;
                    long j119 = containerColor;
                    composer2 = composerStartRestartGroup;
                    SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                        public final void invoke(Composer composer3, int i16) {
                            if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                            }
                            bm3<Composer, Integer, j59> bm3Var1111111111 = bm3Var111111119;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var1111111112 = bm3Var1111111110;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var1111111113 = bm3Var111111118;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var1111111114 = bm3Var;
                            TimePickerDialogKt.TimePickerCustomLayout(bm3Var1111111111, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                                public final void invoke(Composer composer4, int i17) {
                                    if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                        composer4.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                    }
                                    Modifier.Companion companion = Modifier.Companion;
                                    Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                    bm3<Composer, Integer, j59> bm3Var1111111115 = bm3Var1111111112;
                                    bm3<Composer, Integer, j59> bm3Var1111111116 = bm3Var1111111113;
                                    bm3<Composer, Integer, j59> bm3Var1111111117 = bm3Var1111111114;
                                    MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                    CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                    ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                    ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                    if (composer4.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer4.startReusableNode();
                                    if (composer4.getInserting()) {
                                        composer4.createNode(constructor);
                                    } else {
                                        composer4.useNode();
                                    }
                                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                    bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                    RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                    if (bm3Var1111111115 == null) {
                                        composer4.startReplaceGroup(675833080);
                                    } else {
                                        composer4.startReplaceGroup(2100011049);
                                        bm3Var1111111115.invoke(composer4, 0);
                                    }
                                    composer4.endReplaceGroup();
                                    SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                    if (bm3Var1111111116 == null) {
                                        composer4.startReplaceGroup(675935256);
                                    } else {
                                        composer4.startReplaceGroup(2100014345);
                                        bm3Var1111111116.invoke(composer4, 0);
                                    }
                                    composer4.endReplaceGroup();
                                    bm3Var1111111117.invoke(composer4, 0);
                                    composer4.endNode();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                    invoke(composer4, num.intValue());
                                    return j59.a;
                                }
                            }, composer3, 54), dm3Var, composer3, 48);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    bm3Var8 = bm3Var6;
                    j2 = j119;
                    bm3Var9 = bm3Var111111118;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    bm3Var8 = bm3Var6;
                    bm3Var9 = bm3Var7;
                    j2 = containerColor;
                }
                modifier3 = modifier2;
                shape3 = shape2;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            i11 = i3;
            if ((i3 & 4793491) != 4793490) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        bm3Var6 = null;
                    }
                    if (i8 != 0) {
                        bm3Var7 = null;
                    }
                    if ((i2 & 32) != 0) {
                        i12 = i11 & (-458753);
                        shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    } else {
                        i12 = i11;
                    }
                    if ((i2 & 64) != 0) {
                        containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i13 = i12 & (-3670017);
                    } else {
                        i13 = i12;
                    }
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        bm3Var6 = null;
                    }
                    if (i8 != 0) {
                        bm3Var7 = null;
                    }
                    if ((i2 & 32) != 0) {
                        i12 = i11 & (-458753);
                        shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    } else {
                        i12 = i11;
                    }
                    if ((i2 & 64) != 0) {
                        containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i13 = i12 & (-3670017);
                    } else {
                        i13 = i12;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                }
                final bm3<? super Composer, ? super Integer, j59> bm3Var1111111111 = bm3Var7;
                final bm3<? super Composer, ? super Integer, j59> bm3Var1111111112 = bm3Var5;
                final bm3<? super Composer, ? super Integer, j59> bm3Var1111111113 = bm3Var6;
                long j1110 = containerColor;
                composer2 = composerStartRestartGroup;
                SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                    public final void invoke(Composer composer3, int i16) {
                        if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                        }
                        bm3<Composer, Integer, j59> bm3Var1111111114 = bm3Var1111111112;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1111111115 = bm3Var1111111113;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1111111116 = bm3Var1111111111;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1111111117 = bm3Var;
                        TimePickerDialogKt.TimePickerCustomLayout(bm3Var1111111114, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                            public final void invoke(Composer composer4, int i17) {
                                if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                    composer4.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                }
                                Modifier.Companion companion = Modifier.Companion;
                                Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                bm3<Composer, Integer, j59> bm3Var1111111118 = bm3Var1111111115;
                                bm3<Composer, Integer, j59> bm3Var1111111119 = bm3Var1111111116;
                                bm3<Composer, Integer, j59> bm3Var11111111110 = bm3Var1111111117;
                                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                if (composer4.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer4.startReusableNode();
                                if (composer4.getInserting()) {
                                    composer4.createNode(constructor);
                                } else {
                                    composer4.useNode();
                                }
                                Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                if (bm3Var1111111118 == null) {
                                    composer4.startReplaceGroup(675833080);
                                } else {
                                    composer4.startReplaceGroup(2100011049);
                                    bm3Var1111111118.invoke(composer4, 0);
                                }
                                composer4.endReplaceGroup();
                                SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                if (bm3Var1111111119 == null) {
                                    composer4.startReplaceGroup(675935256);
                                } else {
                                    composer4.startReplaceGroup(2100014345);
                                    bm3Var1111111119.invoke(composer4, 0);
                                }
                                composer4.endReplaceGroup();
                                bm3Var11111111110.invoke(composer4, 0);
                                composer4.endNode();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                invoke(composer4, num.intValue());
                                return j59.a;
                            }
                        }, composer3, 54), dm3Var, composer3, 48);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                bm3Var8 = bm3Var6;
                j2 = j1110;
                bm3Var9 = bm3Var1111111111;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                bm3Var8 = bm3Var6;
                bm3Var9 = bm3Var7;
                j2 = containerColor;
            }
            modifier3 = modifier2;
            shape3 = shape2;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        bm3Var6 = bm3Var3;
        i8 = i2 & 16;
        if (i8 != 0) {
            if ((i & 24576) == 0) {
                bm3Var7 = bm3Var4;
                if (composerStartRestartGroup.changedInstance(bm3Var7)) {
                    i9 = 16384;
                } else {
                    i9 = 8192;
                }
                i3 |= i9;
            }
            if ((196608 & i) == 0) {
                if ((i2 & 32) == 0) {
                    shape2 = shape;
                    if (composerStartRestartGroup.changed(shape2)) {
                    }
                    i3 |= i14;
                } else {
                    shape2 = shape;
                }
                i3 |= i14;
            } else {
                shape2 = shape;
            }
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    containerColor = j;
                    if (composerStartRestartGroup.changed(containerColor)) {
                    }
                    i3 |= i15;
                } else {
                    containerColor = j;
                }
                i3 |= i15;
            } else {
                containerColor = j;
            }
            if ((i2 & 128) != 0) {
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i10 = 8388608;
                    } else {
                        i10 = 4194304;
                    }
                    i3 |= i10;
                }
                i11 = i3;
                if ((i3 & 4793491) != 4793490) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if ((i2 & 32) != 0) {
                            i12 = i11 & (-458753);
                            shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 64) != 0) {
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i13 = i12 & (-3670017);
                        } else {
                            i13 = i12;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            bm3Var7 = null;
                        }
                        if ((i2 & 32) != 0) {
                            i12 = i11 & (-458753);
                            shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 64) != 0) {
                            containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i13 = i12 & (-3670017);
                        } else {
                            i13 = i12;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                    }
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111111114 = bm3Var7;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111111115 = bm3Var5;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111111116 = bm3Var6;
                    long j1111 = containerColor;
                    composer2 = composerStartRestartGroup;
                    SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                        public final void invoke(Composer composer3, int i16) {
                            if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                            }
                            bm3<Composer, Integer, j59> bm3Var1111111117 = bm3Var1111111115;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var1111111118 = bm3Var1111111116;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var1111111119 = bm3Var1111111114;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var11111111110 = bm3Var;
                            TimePickerDialogKt.TimePickerCustomLayout(bm3Var1111111117, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                                public final void invoke(Composer composer4, int i17) {
                                    if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                        composer4.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                    }
                                    Modifier.Companion companion = Modifier.Companion;
                                    Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                    bm3<Composer, Integer, j59> bm3Var11111111111 = bm3Var1111111118;
                                    bm3<Composer, Integer, j59> bm3Var11111111112 = bm3Var1111111119;
                                    bm3<Composer, Integer, j59> bm3Var11111111113 = bm3Var11111111110;
                                    MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                    CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                    ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                    ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                    if (composer4.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer4.startReusableNode();
                                    if (composer4.getInserting()) {
                                        composer4.createNode(constructor);
                                    } else {
                                        composer4.useNode();
                                    }
                                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                    bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                    RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                    if (bm3Var11111111111 == null) {
                                        composer4.startReplaceGroup(675833080);
                                    } else {
                                        composer4.startReplaceGroup(2100011049);
                                        bm3Var11111111111.invoke(composer4, 0);
                                    }
                                    composer4.endReplaceGroup();
                                    SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                    if (bm3Var11111111112 == null) {
                                        composer4.startReplaceGroup(675935256);
                                    } else {
                                        composer4.startReplaceGroup(2100014345);
                                        bm3Var11111111112.invoke(composer4, 0);
                                    }
                                    composer4.endReplaceGroup();
                                    bm3Var11111111113.invoke(composer4, 0);
                                    composer4.endNode();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                    invoke(composer4, num.intValue());
                                    return j59.a;
                                }
                            }, composer3, 54), dm3Var, composer3, 48);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    bm3Var8 = bm3Var6;
                    j2 = j1111;
                    bm3Var9 = bm3Var1111111114;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    bm3Var8 = bm3Var6;
                    bm3Var9 = bm3Var7;
                    j2 = containerColor;
                }
                modifier3 = modifier2;
                shape3 = shape2;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            i11 = i3;
            if ((i3 & 4793491) != 4793490) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        bm3Var6 = null;
                    }
                    if (i8 != 0) {
                        bm3Var7 = null;
                    }
                    if ((i2 & 32) != 0) {
                        i12 = i11 & (-458753);
                        shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    } else {
                        i12 = i11;
                    }
                    if ((i2 & 64) != 0) {
                        containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i13 = i12 & (-3670017);
                    } else {
                        i13 = i12;
                    }
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        bm3Var6 = null;
                    }
                    if (i8 != 0) {
                        bm3Var7 = null;
                    }
                    if ((i2 & 32) != 0) {
                        i12 = i11 & (-458753);
                        shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    } else {
                        i12 = i11;
                    }
                    if ((i2 & 64) != 0) {
                        containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i13 = i12 & (-3670017);
                    } else {
                        i13 = i12;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                }
                final bm3<? super Composer, ? super Integer, j59> bm3Var1111111117 = bm3Var7;
                final bm3<? super Composer, ? super Integer, j59> bm3Var1111111118 = bm3Var5;
                final bm3<? super Composer, ? super Integer, j59> bm3Var1111111119 = bm3Var6;
                long j1112 = containerColor;
                composer2 = composerStartRestartGroup;
                SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                    public final void invoke(Composer composer3, int i16) {
                        if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                        }
                        bm3<Composer, Integer, j59> bm3Var11111111110 = bm3Var1111111118;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var11111111111 = bm3Var1111111119;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var11111111112 = bm3Var1111111117;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var11111111113 = bm3Var;
                        TimePickerDialogKt.TimePickerCustomLayout(bm3Var11111111110, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                            public final void invoke(Composer composer4, int i17) {
                                if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                    composer4.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                }
                                Modifier.Companion companion = Modifier.Companion;
                                Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                bm3<Composer, Integer, j59> bm3Var11111111114 = bm3Var11111111111;
                                bm3<Composer, Integer, j59> bm3Var11111111115 = bm3Var11111111112;
                                bm3<Composer, Integer, j59> bm3Var11111111116 = bm3Var11111111113;
                                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                if (composer4.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer4.startReusableNode();
                                if (composer4.getInserting()) {
                                    composer4.createNode(constructor);
                                } else {
                                    composer4.useNode();
                                }
                                Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                if (bm3Var11111111114 == null) {
                                    composer4.startReplaceGroup(675833080);
                                } else {
                                    composer4.startReplaceGroup(2100011049);
                                    bm3Var11111111114.invoke(composer4, 0);
                                }
                                composer4.endReplaceGroup();
                                SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                if (bm3Var11111111115 == null) {
                                    composer4.startReplaceGroup(675935256);
                                } else {
                                    composer4.startReplaceGroup(2100014345);
                                    bm3Var11111111115.invoke(composer4, 0);
                                }
                                composer4.endReplaceGroup();
                                bm3Var11111111116.invoke(composer4, 0);
                                composer4.endNode();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                invoke(composer4, num.intValue());
                                return j59.a;
                            }
                        }, composer3, 54), dm3Var, composer3, 48);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                bm3Var8 = bm3Var6;
                j2 = j1112;
                bm3Var9 = bm3Var1111111117;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                bm3Var8 = bm3Var6;
                bm3Var9 = bm3Var7;
                j2 = containerColor;
            }
            modifier3 = modifier2;
            shape3 = shape2;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        bm3Var7 = bm3Var4;
        if ((196608 & i) == 0) {
            if ((i2 & 32) == 0) {
                shape2 = shape;
                if (composerStartRestartGroup.changed(shape2)) {
                }
                i3 |= i14;
            } else {
                shape2 = shape;
            }
            i3 |= i14;
        } else {
            shape2 = shape;
        }
        if ((1572864 & i) == 0) {
            if ((i2 & 64) == 0) {
                containerColor = j;
                if (composerStartRestartGroup.changed(containerColor)) {
                }
                i3 |= i15;
            } else {
                containerColor = j;
            }
            i3 |= i15;
        } else {
            containerColor = j;
        }
        if ((i2 & 128) != 0) {
            if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i10 = 8388608;
                } else {
                    i10 = 4194304;
                }
                i3 |= i10;
            }
            i11 = i3;
            if ((i3 & 4793491) != 4793490) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        bm3Var6 = null;
                    }
                    if (i8 != 0) {
                        bm3Var7 = null;
                    }
                    if ((i2 & 32) != 0) {
                        i12 = i11 & (-458753);
                        shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    } else {
                        i12 = i11;
                    }
                    if ((i2 & 64) != 0) {
                        containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i13 = i12 & (-3670017);
                    } else {
                        i13 = i12;
                    }
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        bm3Var6 = null;
                    }
                    if (i8 != 0) {
                        bm3Var7 = null;
                    }
                    if ((i2 & 32) != 0) {
                        i12 = i11 & (-458753);
                        shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    } else {
                        i12 = i11;
                    }
                    if ((i2 & 64) != 0) {
                        containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i13 = i12 & (-3670017);
                    } else {
                        i13 = i12;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
                }
                final bm3<? super Composer, ? super Integer, j59> bm3Var11111111110 = bm3Var7;
                final bm3<? super Composer, ? super Integer, j59> bm3Var11111111111 = bm3Var5;
                final bm3<? super Composer, ? super Integer, j59> bm3Var11111111112 = bm3Var6;
                long j1113 = containerColor;
                composer2 = composerStartRestartGroup;
                SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                    public final void invoke(Composer composer3, int i16) {
                        if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                        }
                        bm3<Composer, Integer, j59> bm3Var11111111113 = bm3Var11111111111;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var11111111114 = bm3Var11111111112;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var11111111115 = bm3Var11111111110;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var11111111116 = bm3Var;
                        TimePickerDialogKt.TimePickerCustomLayout(bm3Var11111111113, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                            public final void invoke(Composer composer4, int i17) {
                                if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                    composer4.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                                }
                                Modifier.Companion companion = Modifier.Companion;
                                Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                                bm3<Composer, Integer, j59> bm3Var11111111117 = bm3Var11111111114;
                                bm3<Composer, Integer, j59> bm3Var11111111118 = bm3Var11111111115;
                                bm3<Composer, Integer, j59> bm3Var11111111119 = bm3Var11111111116;
                                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                                ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                ll3<ComposeUiNode> constructor = companion2.getConstructor();
                                if (composer4.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer4.startReusableNode();
                                if (composer4.getInserting()) {
                                    composer4.createNode(constructor);
                                } else {
                                    composer4.useNode();
                                }
                                Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                                bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                if (bm3Var11111111117 == null) {
                                    composer4.startReplaceGroup(675833080);
                                } else {
                                    composer4.startReplaceGroup(2100011049);
                                    bm3Var11111111117.invoke(composer4, 0);
                                }
                                composer4.endReplaceGroup();
                                SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                                if (bm3Var11111111118 == null) {
                                    composer4.startReplaceGroup(675935256);
                                } else {
                                    composer4.startReplaceGroup(2100014345);
                                    bm3Var11111111118.invoke(composer4, 0);
                                }
                                composer4.endReplaceGroup();
                                bm3Var11111111119.invoke(composer4, 0);
                                composer4.endNode();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                invoke(composer4, num.intValue());
                                return j59.a;
                            }
                        }, composer3, 54), dm3Var, composer3, 48);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                bm3Var8 = bm3Var6;
                j2 = j1113;
                bm3Var9 = bm3Var11111111110;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                bm3Var8 = bm3Var6;
                bm3Var9 = bm3Var7;
                j2 = containerColor;
            }
            modifier3 = modifier2;
            shape3 = shape2;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 12582912;
        i11 = i3;
        if ((i3 & 4793491) != 4793490) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i11 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i4 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i6 != 0) {
                    bm3Var6 = null;
                }
                if (i8 != 0) {
                    bm3Var7 = null;
                }
                if ((i2 & 32) != 0) {
                    i12 = i11 & (-458753);
                    shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                } else {
                    i12 = i11;
                }
                if ((i2 & 64) != 0) {
                    containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    i13 = i12 & (-3670017);
                } else {
                    i13 = i12;
                }
            } else {
                if (i4 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i6 != 0) {
                    bm3Var6 = null;
                }
                if (i8 != 0) {
                    bm3Var7 = null;
                }
                if ((i2 & 32) != 0) {
                    i12 = i11 & (-458753);
                    shape2 = TimePickerDialogDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                } else {
                    i12 = i11;
                }
                if ((i2 & 64) != 0) {
                    containerColor = TimePickerDialogDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    i13 = i12 & (-3670017);
                } else {
                    i13 = i12;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-401873644, i13, -1, "androidx.compose.material3.TimePickerDialogLayout (TimePickerDialog.kt:104)");
            }
            final bm3<? super Composer, ? super Integer, j59> bm3Var11111111113 = bm3Var7;
            final bm3<? super Composer, ? super Integer, j59> bm3Var11111111114 = bm3Var5;
            final bm3<? super Composer, ? super Integer, j59> bm3Var11111111115 = bm3Var6;
            long j1114 = containerColor;
            composer2 = composerStartRestartGroup;
            SurfaceKt.m3942SurfaceT9BRK9s(BackgroundKt.m1288backgroundbw27NRU(modifier2, containerColor, shape2), shape2, 0L, 0L, DialogTokens.INSTANCE.m4702getContainerElevationD9Ej5fM(), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1522143641, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1
                public final void invoke(Composer composer3, int i16) {
                    if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1522143641, i16, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous> (TimePickerDialog.kt:110)");
                    }
                    bm3<Composer, Integer, j59> bm3Var11111111116 = bm3Var11111111114;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var11111111117 = bm3Var11111111115;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var11111111118 = bm3Var11111111113;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var11111111119 = bm3Var;
                    TimePickerDialogKt.TimePickerCustomLayout(bm3Var11111111116, ComposableLambdaKt.rememberComposableLambda(2122920701, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogKt$TimePickerDialogLayout$1.1
                        public final void invoke(Composer composer4, int i17) {
                            if (!composer4.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                composer4.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(2122920701, i17, -1, "androidx.compose.material3.TimePickerDialogLayout.<anonymous>.<anonymous> (TimePickerDialog.kt:113)");
                            }
                            Modifier.Companion companion = Modifier.Companion;
                            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                            bm3<Composer, Integer, j59> bm3Var111111111110 = bm3Var11111111117;
                            bm3<Composer, Integer, j59> bm3Var111111111111 = bm3Var11111111118;
                            bm3<Composer, Integer, j59> bm3Var111111111112 = bm3Var11111111119;
                            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer4, 0);
                            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                            CompositionLocalMap currentCompositionLocalMap = composer4.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer4, modifierFillMaxWidth$default);
                            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                            ll3<ComposeUiNode> constructor = companion2.getConstructor();
                            if (composer4.getApplier() == null) {
                                ComposablesKt.invalidApplier();
                            }
                            composer4.startReusableNode();
                            if (composer4.getInserting()) {
                                composer4.createNode(constructor);
                            } else {
                                composer4.useNode();
                            }
                            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer4);
                            bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                            if (bm3Var111111111110 == null) {
                                composer4.startReplaceGroup(675833080);
                            } else {
                                composer4.startReplaceGroup(2100011049);
                                bm3Var111111111110.invoke(composer4, 0);
                            }
                            composer4.endReplaceGroup();
                            SpacerKt.Spacer(RowScope.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer4, 0);
                            if (bm3Var111111111111 == null) {
                                composer4.startReplaceGroup(675935256);
                            } else {
                                composer4.startReplaceGroup(2100014345);
                                bm3Var111111111111.invoke(composer4, 0);
                            }
                            composer4.endReplaceGroup();
                            bm3Var111111111112.invoke(composer4, 0);
                            composer4.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                            invoke(composer4, num.intValue());
                            return j59.a;
                        }
                    }, composer3, 54), dm3Var, composer3, 48);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                    invoke(composer3, num.intValue());
                    return j59.a;
                }
            }, composerStartRestartGroup, 54), composer2, ((i13 >> 12) & 112) | 12607488, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            bm3Var8 = bm3Var6;
            j2 = j1114;
            bm3Var9 = bm3Var11111111113;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            bm3Var8 = bm3Var6;
            bm3Var9 = bm3Var7;
            j2 = containerColor;
        }
        modifier3 = modifier2;
        shape3 = shape2;
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qu8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TimePickerDialogKt.TimePickerDialogLayout_3csKH6Y$lambda$1(bm3Var, bm3Var2, modifier3, bm3Var8, bm3Var9, shape3, j2, dm3Var, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TimePickerDialogLayout_3csKH6Y$lambda$1(bm3 bm3Var, bm3 bm3Var2, Modifier modifier, bm3 bm3Var3, bm3 bm3Var4, Shape shape, long j, dm3 dm3Var, int i, int i2, Composer composer, int i3) {
        m4115TimePickerDialogLayout3csKH6Y(bm3Var, bm3Var2, modifier, bm3Var3, bm3Var4, shape, j, dm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TimePickerDialog_FItCLgY$lambda$0(ll3 ll3Var, bm3 bm3Var, bm3 bm3Var2, Modifier modifier, DialogProperties dialogProperties, bm3 bm3Var3, bm3 bm3Var4, Shape shape, long j, dm3 dm3Var, int i, int i2, Composer composer, int i3) {
        m4114TimePickerDialogFItCLgY(ll3Var, bm3Var, bm3Var2, modifier, dialogProperties, bm3Var3, bm3Var4, shape, j, dm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }
}
