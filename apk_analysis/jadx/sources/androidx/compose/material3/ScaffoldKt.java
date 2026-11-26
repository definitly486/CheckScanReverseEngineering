package androidx.compose.material3;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsPaddingKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.internal.MutableWindowInsets;
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
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.aa4;
import defpackage.bg1;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.dm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.qn1;
import defpackage.u31;

/* JADX INFO: loaded from: classes2.dex */
public final class ScaffoldKt {
    private static final float FabSpacing = Dp.m9042constructorimpl(16.0f);

    /* JADX WARN: Code duplicated, block: B:100:0x0116  */
    /* JADX WARN: Code duplicated, block: B:102:0x011b  */
    /* JADX WARN: Code duplicated, block: B:104:0x011f  */
    /* JADX WARN: Code duplicated, block: B:106:0x0127  */
    /* JADX WARN: Code duplicated, block: B:107:0x012a  */
    /* JADX WARN: Code duplicated, block: B:111:0x0138  */
    /* JADX WARN: Code duplicated, block: B:112:0x013a  */
    /* JADX WARN: Code duplicated, block: B:115:0x0143  */
    /* JADX WARN: Code duplicated, block: B:117:0x0153  */
    /* JADX WARN: Code duplicated, block: B:130:0x0181 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:131:0x0183  */
    /* JADX WARN: Code duplicated, block: B:132:0x0186  */
    /* JADX WARN: Code duplicated, block: B:134:0x018a  */
    /* JADX WARN: Code duplicated, block: B:135:0x0191  */
    /* JADX WARN: Code duplicated, block: B:137:0x0194  */
    /* JADX WARN: Code duplicated, block: B:138:0x019b  */
    /* JADX WARN: Code duplicated, block: B:140:0x019e  */
    /* JADX WARN: Code duplicated, block: B:141:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:143:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:144:0x01af  */
    /* JADX WARN: Code duplicated, block: B:146:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:147:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:150:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:151:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:154:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:155:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:158:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:160:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:163:0x0201  */
    /* JADX WARN: Code duplicated, block: B:164:0x020d  */
    /* JADX WARN: Code duplicated, block: B:167:0x0218  */
    /* JADX WARN: Code duplicated, block: B:169:0x021e  */
    /* JADX WARN: Code duplicated, block: B:175:0x022b  */
    /* JADX WARN: Code duplicated, block: B:177:0x0233  */
    /* JADX WARN: Code duplicated, block: B:180:0x0247  */
    /* JADX WARN: Code duplicated, block: B:182:0x024d  */
    /* JADX WARN: Code duplicated, block: B:188:0x025c  */
    /* JADX WARN: Code duplicated, block: B:192:0x0267  */
    /* JADX WARN: Code duplicated, block: B:195:0x02b6  */
    /* JADX WARN: Code duplicated, block: B:197:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:200:0x02de  */
    /* JADX WARN: Code duplicated, block: B:202:? A[RETURN, SYNTHETIC] */
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
    /* JADX WARN: Code duplicated, block: B:59:0x009d  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:69:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:74:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:79:0x00db  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:84:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:86:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:91:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:94:0x0107 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:97:0x010e  */
    /* JADX INFO: renamed from: Scaffold-TvnljyQ, reason: not valid java name */
    public static final void m3778ScaffoldTvnljyQ(Modifier modifier, bm3<? super Composer, ? super Integer, j59> bm3Var, bm3<? super Composer, ? super Integer, j59> bm3Var2, bm3<? super Composer, ? super Integer, j59> bm3Var3, bm3<? super Composer, ? super Integer, j59> bm3Var4, int i, long j, long j2, WindowInsets windowInsets, final dm3<? super PaddingValues, ? super Composer, ? super Integer, j59> dm3Var, Composer composer, final int i2, final int i3) {
        int i4;
        bm3<? super Composer, ? super Integer, j59> bm3Var5;
        int i5;
        bm3<? super Composer, ? super Integer, j59> bm3Var6;
        int i6;
        int i7;
        bm3<? super Composer, ? super Integer, j59> bm3Var7;
        int i8;
        int i9;
        bm3<? super Composer, ? super Integer, j59> bm3Var8;
        int i10;
        int i11;
        int i12;
        int i13;
        boolean z;
        Composer composer2;
        final Modifier modifier2;
        final WindowInsets windowInsets2;
        final bm3<? super Composer, ? super Integer, j59> bm3Var9;
        final bm3<? super Composer, ? super Integer, j59> bm3Var10;
        final bm3<? super Composer, ? super Integer, j59> bm3Var11;
        final bm3<? super Composer, ? super Integer, j59> bm3Var12;
        final int i14;
        final long j3;
        final long j4;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier3;
        bm3<? super Composer, ? super Integer, j59> bm3VarM3316getLambda$39202156$material3;
        bm3<? super Composer, ? super Integer, j59> lambda$1582488484$material3;
        bm3<? super Composer, ? super Integer, j59> lambda$414328099$material3;
        bm3<? super Composer, ? super Integer, j59> bm3VarM3315getLambda$1514016380$material3;
        int iM3466getEndERTFSPs;
        long jM3225getBackground0d7_KjU;
        long jM3275contentColorForek8zF_U;
        WindowInsets contentWindowInsets;
        long j5;
        boolean z2;
        Object objRememberedValue;
        final MutableWindowInsets mutableWindowInsets;
        boolean zChanged;
        Object objRememberedValue2;
        boolean z3;
        int i15;
        int i16;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1211482744);
        int i17 = i3 & 1;
        if (i17 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i18 = i3 & 2;
        if (i18 == 0) {
            if ((i2 & 48) == 0) {
                bm3Var5 = bm3Var;
                i4 |= composerStartRestartGroup.changedInstance(bm3Var5) ? 32 : 16;
            }
            i5 = i3 & 4;
            if (i5 != 0) {
                if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    bm3Var6 = bm3Var2;
                    if (composerStartRestartGroup.changedInstance(bm3Var6)) {
                        i6 = 256;
                    } else {
                        i6 = 128;
                    }
                    i4 |= i6;
                }
                i7 = i3 & 8;
                if (i7 != 0) {
                    if ((i2 & 3072) == 0) {
                        bm3Var7 = bm3Var3;
                        if (composerStartRestartGroup.changedInstance(bm3Var7)) {
                            i8 = 2048;
                        } else {
                            i8 = 1024;
                        }
                        i4 |= i8;
                    }
                    i9 = i3 & 16;
                    if (i9 != 0) {
                        if ((i2 & 24576) == 0) {
                            bm3Var8 = bm3Var4;
                            if (composerStartRestartGroup.changedInstance(bm3Var8)) {
                                i10 = 16384;
                            } else {
                                i10 = 8192;
                            }
                            i4 |= i10;
                        }
                        i11 = i3 & 32;
                        if (i11 != 0) {
                            i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        } else if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                            if (composerStartRestartGroup.changed(i)) {
                                i12 = 131072;
                            } else {
                                i12 = 65536;
                            }
                            i4 |= i12;
                        }
                        if ((i2 & 1572864) != 0) {
                            if ((i3 & 64) == 0 || !composerStartRestartGroup.changed(j)) {
                                i16 = 524288;
                            } else {
                                i16 = 1048576;
                            }
                            i4 |= i16;
                        }
                        if ((i2 & 12582912) != 0) {
                            if ((i3 & 128) == 0 || !composerStartRestartGroup.changed(j2)) {
                                i15 = 4194304;
                            } else {
                                i15 = 8388608;
                            }
                            i4 |= i15;
                        }
                        if ((i2 & 100663296) != 0) {
                            i4 |= ((i3 & 256) == 0 || !composerStartRestartGroup.changed(windowInsets)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                        }
                        if ((i3 & 512) != 0) {
                            if ((i2 & 805306368) == 0) {
                                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                    i13 = 536870912;
                                } else {
                                    i13 = 268435456;
                                }
                                i4 |= i13;
                            }
                            if ((i4 & 306783379) != 306783378) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                                composerStartRestartGroup.startDefaults();
                                if ((i2 & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                                    if (i17 != 0) {
                                        modifier3 = Modifier.Companion;
                                    } else {
                                        modifier3 = modifier;
                                    }
                                    if (i18 != 0) {
                                        bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                                    } else {
                                        bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                                    }
                                    if (i5 != 0) {
                                        lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                                    } else {
                                        lambda$1582488484$material3 = bm3Var6;
                                    }
                                    if (i7 != 0) {
                                        lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                                    } else {
                                        lambda$414328099$material3 = bm3Var7;
                                    }
                                    if (i9 != 0) {
                                        bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                                    } else {
                                        bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                                    }
                                    if (i11 != 0) {
                                        iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                                    } else {
                                        iM3466getEndERTFSPs = i;
                                    }
                                    if ((i3 & 64) != 0) {
                                        i4 &= -3670017;
                                        jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                                    } else {
                                        jM3225getBackground0d7_KjU = j;
                                    }
                                    if ((i3 & 128) != 0) {
                                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                        i4 &= -29360129;
                                    } else {
                                        jM3275contentColorForek8zF_U = j2;
                                    }
                                    if ((i3 & 256) != 0) {
                                        contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                        i4 &= -234881025;
                                    } else {
                                        contentWindowInsets = windowInsets;
                                    }
                                    j5 = jM3275contentColorForek8zF_U;
                                } else {
                                    composerStartRestartGroup.skipToGroupEnd();
                                    if ((i3 & 64) != 0) {
                                        i4 &= -3670017;
                                    }
                                    if ((i3 & 128) != 0) {
                                        i4 &= -29360129;
                                    }
                                    if ((i3 & 256) != 0) {
                                        i4 &= -234881025;
                                    }
                                    modifier3 = modifier;
                                    iM3466getEndERTFSPs = i;
                                    jM3225getBackground0d7_KjU = j;
                                    bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                                    lambda$1582488484$material3 = bm3Var6;
                                    lambda$414328099$material3 = bm3Var7;
                                    bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                                    j5 = j2;
                                    contentWindowInsets = windowInsets;
                                }
                                composerStartRestartGroup.endDefaults();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                                }
                                int i19 = (234881024 & i4) ^ r19;
                                z2 = (i19 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & r19) == 67108864;
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (z2 || objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                                long j6 = jM3225getBackground0d7_KjU;
                                zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i19 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (!zChanged || objRememberedValue2 == Composer.Companion.getEmpty()) {
                                    z3 = true;
                                    objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                } else {
                                    z3 = true;
                                }
                                Modifier modifierOnConsumedWindowInsetsChanged = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                                final bm3<? super Composer, ? super Integer, j59> bm3Var13 = bm3VarM3316getLambda$39202156$material3;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var14 = lambda$1582488484$material3;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var15 = lambda$414328099$material3;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var16 = bm3VarM3315getLambda$1514016380$material3;
                                final int i20 = iM3466getEndERTFSPs;
                                ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                                    public final void invoke(Composer composer3, int i21) {
                                        if (!composer3.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(848889571, i21, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                                        }
                                        ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i20, bm3Var13, dm3Var, bm3Var15, bm3Var16, mutableWindowInsets, bm3Var14, composer3, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54);
                                int i21 = i4 >> 12;
                                composer2 = composerStartRestartGroup;
                                SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged, null, j6, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda, composer2, (i21 & 896) | 12582912 | (i21 & 7168), 114);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                modifier2 = modifier3;
                                bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                                bm3Var10 = lambda$1582488484$material3;
                                bm3Var11 = lambda$414328099$material3;
                                bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                                i14 = iM3466getEndERTFSPs;
                                windowInsets2 = contentWindowInsets;
                                j3 = j6;
                                j4 = j5;
                            } else {
                                composer2 = composerStartRestartGroup;
                                composer2.skipToGroupEnd();
                                modifier2 = modifier;
                                windowInsets2 = windowInsets;
                                bm3Var9 = bm3Var5;
                                bm3Var10 = bm3Var6;
                                bm3Var11 = bm3Var7;
                                bm3Var12 = bm3Var8;
                                i14 = i;
                                j3 = j;
                                j4 = j2;
                            }
                            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                            if (scopeUpdateScopeEndRestartGroup != null) {
                                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        int iIntValue = ((Integer) obj2).intValue();
                                        return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                                    }
                                });
                            }
                        }
                        i4 |= 805306368;
                        if ((i4 & 306783379) != 306783378) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i2 & 1) != 0) {
                                if (i17 != 0) {
                                    modifier3 = Modifier.Companion;
                                } else {
                                    modifier3 = modifier;
                                }
                                if (i18 != 0) {
                                    bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                                } else {
                                    bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                                }
                                if (i5 != 0) {
                                    lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                                } else {
                                    lambda$1582488484$material3 = bm3Var6;
                                }
                                if (i7 != 0) {
                                    lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                                } else {
                                    lambda$414328099$material3 = bm3Var7;
                                }
                                if (i9 != 0) {
                                    bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                                } else {
                                    bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                                }
                                if (i11 != 0) {
                                    iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                                } else {
                                    iM3466getEndERTFSPs = i;
                                }
                                if ((i3 & 64) != 0) {
                                    i4 &= -3670017;
                                    jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                                } else {
                                    jM3225getBackground0d7_KjU = j;
                                }
                                if ((i3 & 128) != 0) {
                                    jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                    i4 &= -29360129;
                                } else {
                                    jM3275contentColorForek8zF_U = j2;
                                }
                                if ((i3 & 256) != 0) {
                                    contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                    i4 &= -234881025;
                                } else {
                                    contentWindowInsets = windowInsets;
                                }
                                j5 = jM3275contentColorForek8zF_U;
                            } else {
                                if (i17 != 0) {
                                    modifier3 = Modifier.Companion;
                                } else {
                                    modifier3 = modifier;
                                }
                                if (i18 != 0) {
                                    bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                                } else {
                                    bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                                }
                                if (i5 != 0) {
                                    lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                                } else {
                                    lambda$1582488484$material3 = bm3Var6;
                                }
                                if (i7 != 0) {
                                    lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                                } else {
                                    lambda$414328099$material3 = bm3Var7;
                                }
                                if (i9 != 0) {
                                    bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                                } else {
                                    bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                                }
                                if (i11 != 0) {
                                    iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                                } else {
                                    iM3466getEndERTFSPs = i;
                                }
                                if ((i3 & 64) != 0) {
                                    i4 &= -3670017;
                                    jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                                } else {
                                    jM3225getBackground0d7_KjU = j;
                                }
                                if ((i3 & 128) != 0) {
                                    jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                    i4 &= -29360129;
                                } else {
                                    jM3275contentColorForek8zF_U = j2;
                                }
                                if ((i3 & 256) != 0) {
                                    contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                    i4 &= -234881025;
                                } else {
                                    contentWindowInsets = windowInsets;
                                }
                                j5 = jM3275contentColorForek8zF_U;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                            }
                            int i110 = (234881024 & i4) ^ r19;
                            if (i110 <= 67108864) {
                            }
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (z2) {
                                objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            } else {
                                objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                            long j7 = jM3225getBackground0d7_KjU;
                            zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i110 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (zChanged) {
                                z3 = true;
                                objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                z3 = true;
                                objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            Modifier modifierOnConsumedWindowInsetsChanged2 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                            final bm3<? super Composer, ? super Integer, j59> bm3Var17 = bm3VarM3316getLambda$39202156$material3;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var18 = lambda$1582488484$material3;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var19 = lambda$414328099$material3;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var110 = bm3VarM3315getLambda$1514016380$material3;
                            final int i22 = iM3466getEndERTFSPs;
                            ComposableLambda composableLambdaRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                                public final void invoke(Composer composer3, int i23) {
                                    if (!composer3.shouldExecute((i23 & 3) != 2, i23 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(848889571, i23, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                                    }
                                    ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i22, bm3Var17, dm3Var, bm3Var19, bm3Var110, mutableWindowInsets, bm3Var18, composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            int i23 = i4 >> 12;
                            composer2 = composerStartRestartGroup;
                            SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged2, null, j7, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda2, composer2, (i23 & 896) | 12582912 | (i23 & 7168), 114);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier2 = modifier3;
                            bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                            bm3Var10 = lambda$1582488484$material3;
                            bm3Var11 = lambda$414328099$material3;
                            bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                            i14 = iM3466getEndERTFSPs;
                            windowInsets2 = contentWindowInsets;
                            j3 = j7;
                            j4 = j5;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            modifier2 = modifier;
                            windowInsets2 = windowInsets;
                            bm3Var9 = bm3Var5;
                            bm3Var10 = bm3Var6;
                            bm3Var11 = bm3Var7;
                            bm3Var12 = bm3Var8;
                            i14 = i;
                            j3 = j;
                            j4 = j2;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i4 |= 24576;
                    bm3Var8 = bm3Var4;
                    i11 = i3 & 32;
                    if (i11 != 0) {
                        i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(i)) {
                            i12 = 131072;
                        } else {
                            i12 = 65536;
                        }
                        i4 |= i12;
                    }
                    if ((i2 & 1572864) != 0) {
                        if ((i3 & 64) == 0) {
                            i16 = 524288;
                        } else {
                            i16 = 524288;
                        }
                        i4 |= i16;
                    }
                    if ((i2 & 12582912) != 0) {
                        if ((i3 & 128) == 0) {
                            i15 = 4194304;
                        } else {
                            i15 = 4194304;
                        }
                        i4 |= i15;
                    }
                    if ((i2 & 100663296) != 0) {
                        i4 |= ((i3 & 256) == 0 || !composerStartRestartGroup.changed(windowInsets)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                    }
                    if ((i3 & 512) != 0) {
                        if ((i2 & 805306368) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i13 = 536870912;
                            } else {
                                i13 = 268435456;
                            }
                            i4 |= i13;
                        }
                        if ((i4 & 306783379) != 306783378) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i2 & 1) != 0) {
                                if (i17 != 0) {
                                    modifier3 = Modifier.Companion;
                                } else {
                                    modifier3 = modifier;
                                }
                                if (i18 != 0) {
                                    bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                                } else {
                                    bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                                }
                                if (i5 != 0) {
                                    lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                                } else {
                                    lambda$1582488484$material3 = bm3Var6;
                                }
                                if (i7 != 0) {
                                    lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                                } else {
                                    lambda$414328099$material3 = bm3Var7;
                                }
                                if (i9 != 0) {
                                    bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                                } else {
                                    bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                                }
                                if (i11 != 0) {
                                    iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                                } else {
                                    iM3466getEndERTFSPs = i;
                                }
                                if ((i3 & 64) != 0) {
                                    i4 &= -3670017;
                                    jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                                } else {
                                    jM3225getBackground0d7_KjU = j;
                                }
                                if ((i3 & 128) != 0) {
                                    jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                    i4 &= -29360129;
                                } else {
                                    jM3275contentColorForek8zF_U = j2;
                                }
                                if ((i3 & 256) != 0) {
                                    contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                    i4 &= -234881025;
                                } else {
                                    contentWindowInsets = windowInsets;
                                }
                                j5 = jM3275contentColorForek8zF_U;
                            } else {
                                if (i17 != 0) {
                                    modifier3 = Modifier.Companion;
                                } else {
                                    modifier3 = modifier;
                                }
                                if (i18 != 0) {
                                    bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                                } else {
                                    bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                                }
                                if (i5 != 0) {
                                    lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                                } else {
                                    lambda$1582488484$material3 = bm3Var6;
                                }
                                if (i7 != 0) {
                                    lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                                } else {
                                    lambda$414328099$material3 = bm3Var7;
                                }
                                if (i9 != 0) {
                                    bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                                } else {
                                    bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                                }
                                if (i11 != 0) {
                                    iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                                } else {
                                    iM3466getEndERTFSPs = i;
                                }
                                if ((i3 & 64) != 0) {
                                    i4 &= -3670017;
                                    jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                                } else {
                                    jM3225getBackground0d7_KjU = j;
                                }
                                if ((i3 & 128) != 0) {
                                    jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                    i4 &= -29360129;
                                } else {
                                    jM3275contentColorForek8zF_U = j2;
                                }
                                if ((i3 & 256) != 0) {
                                    contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                    i4 &= -234881025;
                                } else {
                                    contentWindowInsets = windowInsets;
                                }
                                j5 = jM3275contentColorForek8zF_U;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                            }
                            int i111 = (234881024 & i4) ^ r19;
                            if (i111 <= 67108864) {
                            }
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (z2) {
                                objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            } else {
                                objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                            long j8 = jM3225getBackground0d7_KjU;
                            zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i111 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (zChanged) {
                                z3 = true;
                                objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                z3 = true;
                                objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            Modifier modifierOnConsumedWindowInsetsChanged3 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                            final bm3<? super Composer, ? super Integer, j59> bm3Var111 = bm3VarM3316getLambda$39202156$material3;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var112 = lambda$1582488484$material3;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var113 = lambda$414328099$material3;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var114 = bm3VarM3315getLambda$1514016380$material3;
                            final int i24 = iM3466getEndERTFSPs;
                            ComposableLambda composableLambdaRememberComposableLambda3 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                                public final void invoke(Composer composer3, int i25) {
                                    if (!composer3.shouldExecute((i25 & 3) != 2, i25 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(848889571, i25, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                                    }
                                    ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i24, bm3Var111, dm3Var, bm3Var113, bm3Var114, mutableWindowInsets, bm3Var112, composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            int i25 = i4 >> 12;
                            composer2 = composerStartRestartGroup;
                            SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged3, null, j8, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda3, composer2, (i25 & 896) | 12582912 | (i25 & 7168), 114);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier2 = modifier3;
                            bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                            bm3Var10 = lambda$1582488484$material3;
                            bm3Var11 = lambda$414328099$material3;
                            bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                            i14 = iM3466getEndERTFSPs;
                            windowInsets2 = contentWindowInsets;
                            j3 = j8;
                            j4 = j5;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            modifier2 = modifier;
                            windowInsets2 = windowInsets;
                            bm3Var9 = bm3Var5;
                            bm3Var10 = bm3Var6;
                            bm3Var11 = bm3Var7;
                            bm3Var12 = bm3Var8;
                            i14 = i;
                            j3 = j;
                            j4 = j2;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i4 |= 805306368;
                    if ((i4 & 306783379) != 306783378) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if (i18 != 0) {
                                bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                            } else {
                                bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                            }
                            if (i5 != 0) {
                                lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                            } else {
                                lambda$1582488484$material3 = bm3Var6;
                            }
                            if (i7 != 0) {
                                lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                            } else {
                                lambda$414328099$material3 = bm3Var7;
                            }
                            if (i9 != 0) {
                                bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                            } else {
                                bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                            }
                            if (i11 != 0) {
                                iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                            } else {
                                iM3466getEndERTFSPs = i;
                            }
                            if ((i3 & 64) != 0) {
                                i4 &= -3670017;
                                jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                            } else {
                                jM3225getBackground0d7_KjU = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if ((i3 & 256) != 0) {
                                contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                contentWindowInsets = windowInsets;
                            }
                            j5 = jM3275contentColorForek8zF_U;
                        } else {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if (i18 != 0) {
                                bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                            } else {
                                bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                            }
                            if (i5 != 0) {
                                lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                            } else {
                                lambda$1582488484$material3 = bm3Var6;
                            }
                            if (i7 != 0) {
                                lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                            } else {
                                lambda$414328099$material3 = bm3Var7;
                            }
                            if (i9 != 0) {
                                bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                            } else {
                                bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                            }
                            if (i11 != 0) {
                                iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                            } else {
                                iM3466getEndERTFSPs = i;
                            }
                            if ((i3 & 64) != 0) {
                                i4 &= -3670017;
                                jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                            } else {
                                jM3225getBackground0d7_KjU = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if ((i3 & 256) != 0) {
                                contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                contentWindowInsets = windowInsets;
                            }
                            j5 = jM3275contentColorForek8zF_U;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                        }
                        int i112 = (234881024 & i4) ^ r19;
                        if (i112 <= 67108864) {
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                        long j9 = jM3225getBackground0d7_KjU;
                        zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i112 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            z3 = true;
                            objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            z3 = true;
                            objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        Modifier modifierOnConsumedWindowInsetsChanged4 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                        final bm3<? super Composer, ? super Integer, j59> bm3Var115 = bm3VarM3316getLambda$39202156$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var116 = lambda$1582488484$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var117 = lambda$414328099$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var118 = bm3VarM3315getLambda$1514016380$material3;
                        final int i26 = iM3466getEndERTFSPs;
                        ComposableLambda composableLambdaRememberComposableLambda4 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                            public final void invoke(Composer composer3, int i27) {
                                if (!composer3.shouldExecute((i27 & 3) != 2, i27 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(848889571, i27, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                                }
                                ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i26, bm3Var115, dm3Var, bm3Var117, bm3Var118, mutableWindowInsets, bm3Var116, composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        int i27 = i4 >> 12;
                        composer2 = composerStartRestartGroup;
                        SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged4, null, j9, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda4, composer2, (i27 & 896) | 12582912 | (i27 & 7168), 114);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier3;
                        bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                        bm3Var10 = lambda$1582488484$material3;
                        bm3Var11 = lambda$414328099$material3;
                        bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                        i14 = iM3466getEndERTFSPs;
                        windowInsets2 = contentWindowInsets;
                        j3 = j9;
                        j4 = j5;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        windowInsets2 = windowInsets;
                        bm3Var9 = bm3Var5;
                        bm3Var10 = bm3Var6;
                        bm3Var11 = bm3Var7;
                        bm3Var12 = bm3Var8;
                        i14 = i;
                        j3 = j;
                        j4 = j2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 3072;
                bm3Var7 = bm3Var3;
                i9 = i3 & 16;
                if (i9 != 0) {
                    if ((i2 & 24576) == 0) {
                        bm3Var8 = bm3Var4;
                        if (composerStartRestartGroup.changedInstance(bm3Var8)) {
                            i10 = 16384;
                        } else {
                            i10 = 8192;
                        }
                        i4 |= i10;
                    }
                    i11 = i3 & 32;
                    if (i11 != 0) {
                        i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(i)) {
                            i12 = 131072;
                        } else {
                            i12 = 65536;
                        }
                        i4 |= i12;
                    }
                    if ((i2 & 1572864) != 0) {
                        if ((i3 & 64) == 0) {
                            i16 = 524288;
                        } else {
                            i16 = 524288;
                        }
                        i4 |= i16;
                    }
                    if ((i2 & 12582912) != 0) {
                        if ((i3 & 128) == 0) {
                            i15 = 4194304;
                        } else {
                            i15 = 4194304;
                        }
                        i4 |= i15;
                    }
                    if ((i2 & 100663296) != 0) {
                        i4 |= ((i3 & 256) == 0 || !composerStartRestartGroup.changed(windowInsets)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                    }
                    if ((i3 & 512) != 0) {
                        if ((i2 & 805306368) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i13 = 536870912;
                            } else {
                                i13 = 268435456;
                            }
                            i4 |= i13;
                        }
                        if ((i4 & 306783379) != 306783378) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i2 & 1) != 0) {
                                if (i17 != 0) {
                                    modifier3 = Modifier.Companion;
                                } else {
                                    modifier3 = modifier;
                                }
                                if (i18 != 0) {
                                    bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                                } else {
                                    bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                                }
                                if (i5 != 0) {
                                    lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                                } else {
                                    lambda$1582488484$material3 = bm3Var6;
                                }
                                if (i7 != 0) {
                                    lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                                } else {
                                    lambda$414328099$material3 = bm3Var7;
                                }
                                if (i9 != 0) {
                                    bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                                } else {
                                    bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                                }
                                if (i11 != 0) {
                                    iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                                } else {
                                    iM3466getEndERTFSPs = i;
                                }
                                if ((i3 & 64) != 0) {
                                    i4 &= -3670017;
                                    jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                                } else {
                                    jM3225getBackground0d7_KjU = j;
                                }
                                if ((i3 & 128) != 0) {
                                    jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                    i4 &= -29360129;
                                } else {
                                    jM3275contentColorForek8zF_U = j2;
                                }
                                if ((i3 & 256) != 0) {
                                    contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                    i4 &= -234881025;
                                } else {
                                    contentWindowInsets = windowInsets;
                                }
                                j5 = jM3275contentColorForek8zF_U;
                            } else {
                                if (i17 != 0) {
                                    modifier3 = Modifier.Companion;
                                } else {
                                    modifier3 = modifier;
                                }
                                if (i18 != 0) {
                                    bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                                } else {
                                    bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                                }
                                if (i5 != 0) {
                                    lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                                } else {
                                    lambda$1582488484$material3 = bm3Var6;
                                }
                                if (i7 != 0) {
                                    lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                                } else {
                                    lambda$414328099$material3 = bm3Var7;
                                }
                                if (i9 != 0) {
                                    bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                                } else {
                                    bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                                }
                                if (i11 != 0) {
                                    iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                                } else {
                                    iM3466getEndERTFSPs = i;
                                }
                                if ((i3 & 64) != 0) {
                                    i4 &= -3670017;
                                    jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                                } else {
                                    jM3225getBackground0d7_KjU = j;
                                }
                                if ((i3 & 128) != 0) {
                                    jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                    i4 &= -29360129;
                                } else {
                                    jM3275contentColorForek8zF_U = j2;
                                }
                                if ((i3 & 256) != 0) {
                                    contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                    i4 &= -234881025;
                                } else {
                                    contentWindowInsets = windowInsets;
                                }
                                j5 = jM3275contentColorForek8zF_U;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                            }
                            int i113 = (234881024 & i4) ^ r19;
                            if (i113 <= 67108864) {
                            }
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (z2) {
                                objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            } else {
                                objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                            long j10 = jM3225getBackground0d7_KjU;
                            zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i113 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (zChanged) {
                                z3 = true;
                                objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                z3 = true;
                                objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            Modifier modifierOnConsumedWindowInsetsChanged5 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                            final bm3<? super Composer, ? super Integer, j59> bm3Var119 = bm3VarM3316getLambda$39202156$material3;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var1110 = lambda$1582488484$material3;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var1111 = lambda$414328099$material3;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var1112 = bm3VarM3315getLambda$1514016380$material3;
                            final int i28 = iM3466getEndERTFSPs;
                            ComposableLambda composableLambdaRememberComposableLambda5 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                                public final void invoke(Composer composer3, int i29) {
                                    if (!composer3.shouldExecute((i29 & 3) != 2, i29 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(848889571, i29, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                                    }
                                    ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i28, bm3Var119, dm3Var, bm3Var1111, bm3Var1112, mutableWindowInsets, bm3Var1110, composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            int i29 = i4 >> 12;
                            composer2 = composerStartRestartGroup;
                            SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged5, null, j10, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda5, composer2, (i29 & 896) | 12582912 | (i29 & 7168), 114);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier2 = modifier3;
                            bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                            bm3Var10 = lambda$1582488484$material3;
                            bm3Var11 = lambda$414328099$material3;
                            bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                            i14 = iM3466getEndERTFSPs;
                            windowInsets2 = contentWindowInsets;
                            j3 = j10;
                            j4 = j5;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            modifier2 = modifier;
                            windowInsets2 = windowInsets;
                            bm3Var9 = bm3Var5;
                            bm3Var10 = bm3Var6;
                            bm3Var11 = bm3Var7;
                            bm3Var12 = bm3Var8;
                            i14 = i;
                            j3 = j;
                            j4 = j2;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i4 |= 805306368;
                    if ((i4 & 306783379) != 306783378) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if (i18 != 0) {
                                bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                            } else {
                                bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                            }
                            if (i5 != 0) {
                                lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                            } else {
                                lambda$1582488484$material3 = bm3Var6;
                            }
                            if (i7 != 0) {
                                lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                            } else {
                                lambda$414328099$material3 = bm3Var7;
                            }
                            if (i9 != 0) {
                                bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                            } else {
                                bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                            }
                            if (i11 != 0) {
                                iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                            } else {
                                iM3466getEndERTFSPs = i;
                            }
                            if ((i3 & 64) != 0) {
                                i4 &= -3670017;
                                jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                            } else {
                                jM3225getBackground0d7_KjU = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if ((i3 & 256) != 0) {
                                contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                contentWindowInsets = windowInsets;
                            }
                            j5 = jM3275contentColorForek8zF_U;
                        } else {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if (i18 != 0) {
                                bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                            } else {
                                bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                            }
                            if (i5 != 0) {
                                lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                            } else {
                                lambda$1582488484$material3 = bm3Var6;
                            }
                            if (i7 != 0) {
                                lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                            } else {
                                lambda$414328099$material3 = bm3Var7;
                            }
                            if (i9 != 0) {
                                bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                            } else {
                                bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                            }
                            if (i11 != 0) {
                                iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                            } else {
                                iM3466getEndERTFSPs = i;
                            }
                            if ((i3 & 64) != 0) {
                                i4 &= -3670017;
                                jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                            } else {
                                jM3225getBackground0d7_KjU = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if ((i3 & 256) != 0) {
                                contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                contentWindowInsets = windowInsets;
                            }
                            j5 = jM3275contentColorForek8zF_U;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                        }
                        int i114 = (234881024 & i4) ^ r19;
                        if (i114 <= 67108864) {
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                        long j11 = jM3225getBackground0d7_KjU;
                        zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i114 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            z3 = true;
                            objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            z3 = true;
                            objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        Modifier modifierOnConsumedWindowInsetsChanged6 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1113 = bm3VarM3316getLambda$39202156$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1114 = lambda$1582488484$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1115 = lambda$414328099$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1116 = bm3VarM3315getLambda$1514016380$material3;
                        final int i210 = iM3466getEndERTFSPs;
                        ComposableLambda composableLambdaRememberComposableLambda6 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                            public final void invoke(Composer composer3, int i211) {
                                if (!composer3.shouldExecute((i211 & 3) != 2, i211 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(848889571, i211, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                                }
                                ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i210, bm3Var1113, dm3Var, bm3Var1115, bm3Var1116, mutableWindowInsets, bm3Var1114, composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        int i211 = i4 >> 12;
                        composer2 = composerStartRestartGroup;
                        SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged6, null, j11, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda6, composer2, (i211 & 896) | 12582912 | (i211 & 7168), 114);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier3;
                        bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                        bm3Var10 = lambda$1582488484$material3;
                        bm3Var11 = lambda$414328099$material3;
                        bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                        i14 = iM3466getEndERTFSPs;
                        windowInsets2 = contentWindowInsets;
                        j3 = j11;
                        j4 = j5;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        windowInsets2 = windowInsets;
                        bm3Var9 = bm3Var5;
                        bm3Var10 = bm3Var6;
                        bm3Var11 = bm3Var7;
                        bm3Var12 = bm3Var8;
                        i14 = i;
                        j3 = j;
                        j4 = j2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 24576;
                bm3Var8 = bm3Var4;
                i11 = i3 & 32;
                if (i11 != 0) {
                    i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(i)) {
                        i12 = 131072;
                    } else {
                        i12 = 65536;
                    }
                    i4 |= i12;
                }
                if ((i2 & 1572864) != 0) {
                    if ((i3 & 64) == 0) {
                        i16 = 524288;
                    } else {
                        i16 = 524288;
                    }
                    i4 |= i16;
                }
                if ((i2 & 12582912) != 0) {
                    if ((i3 & 128) == 0) {
                        i15 = 4194304;
                    } else {
                        i15 = 4194304;
                    }
                    i4 |= i15;
                }
                if ((i2 & 100663296) != 0) {
                    i4 |= ((i3 & 256) == 0 || !composerStartRestartGroup.changed(windowInsets)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                }
                if ((i3 & 512) != 0) {
                    if ((i2 & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i13 = 536870912;
                        } else {
                            i13 = 268435456;
                        }
                        i4 |= i13;
                    }
                    if ((i4 & 306783379) != 306783378) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if (i18 != 0) {
                                bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                            } else {
                                bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                            }
                            if (i5 != 0) {
                                lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                            } else {
                                lambda$1582488484$material3 = bm3Var6;
                            }
                            if (i7 != 0) {
                                lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                            } else {
                                lambda$414328099$material3 = bm3Var7;
                            }
                            if (i9 != 0) {
                                bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                            } else {
                                bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                            }
                            if (i11 != 0) {
                                iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                            } else {
                                iM3466getEndERTFSPs = i;
                            }
                            if ((i3 & 64) != 0) {
                                i4 &= -3670017;
                                jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                            } else {
                                jM3225getBackground0d7_KjU = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if ((i3 & 256) != 0) {
                                contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                contentWindowInsets = windowInsets;
                            }
                            j5 = jM3275contentColorForek8zF_U;
                        } else {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if (i18 != 0) {
                                bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                            } else {
                                bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                            }
                            if (i5 != 0) {
                                lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                            } else {
                                lambda$1582488484$material3 = bm3Var6;
                            }
                            if (i7 != 0) {
                                lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                            } else {
                                lambda$414328099$material3 = bm3Var7;
                            }
                            if (i9 != 0) {
                                bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                            } else {
                                bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                            }
                            if (i11 != 0) {
                                iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                            } else {
                                iM3466getEndERTFSPs = i;
                            }
                            if ((i3 & 64) != 0) {
                                i4 &= -3670017;
                                jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                            } else {
                                jM3225getBackground0d7_KjU = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if ((i3 & 256) != 0) {
                                contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                contentWindowInsets = windowInsets;
                            }
                            j5 = jM3275contentColorForek8zF_U;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                        }
                        int i115 = (234881024 & i4) ^ r19;
                        if (i115 <= 67108864) {
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                        long j12 = jM3225getBackground0d7_KjU;
                        zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i115 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            z3 = true;
                            objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            z3 = true;
                            objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        Modifier modifierOnConsumedWindowInsetsChanged7 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1117 = bm3VarM3316getLambda$39202156$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1118 = lambda$1582488484$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1119 = lambda$414328099$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var11110 = bm3VarM3315getLambda$1514016380$material3;
                        final int i212 = iM3466getEndERTFSPs;
                        ComposableLambda composableLambdaRememberComposableLambda7 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                            public final void invoke(Composer composer3, int i213) {
                                if (!composer3.shouldExecute((i213 & 3) != 2, i213 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(848889571, i213, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                                }
                                ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i212, bm3Var1117, dm3Var, bm3Var1119, bm3Var11110, mutableWindowInsets, bm3Var1118, composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        int i213 = i4 >> 12;
                        composer2 = composerStartRestartGroup;
                        SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged7, null, j12, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda7, composer2, (i213 & 896) | 12582912 | (i213 & 7168), 114);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier3;
                        bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                        bm3Var10 = lambda$1582488484$material3;
                        bm3Var11 = lambda$414328099$material3;
                        bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                        i14 = iM3466getEndERTFSPs;
                        windowInsets2 = contentWindowInsets;
                        j3 = j12;
                        j4 = j5;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        windowInsets2 = windowInsets;
                        bm3Var9 = bm3Var5;
                        bm3Var10 = bm3Var6;
                        bm3Var11 = bm3Var7;
                        bm3Var12 = bm3Var8;
                        i14 = i;
                        j3 = j;
                        j4 = j2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 805306368;
                if ((i4 & 306783379) != 306783378) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i18 != 0) {
                            bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                        } else {
                            bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                        }
                        if (i5 != 0) {
                            lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                        } else {
                            lambda$1582488484$material3 = bm3Var6;
                        }
                        if (i7 != 0) {
                            lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                        } else {
                            lambda$414328099$material3 = bm3Var7;
                        }
                        if (i9 != 0) {
                            bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                        } else {
                            bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                        }
                        if (i11 != 0) {
                            iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                        } else {
                            iM3466getEndERTFSPs = i;
                        }
                        if ((i3 & 64) != 0) {
                            i4 &= -3670017;
                            jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                        } else {
                            jM3225getBackground0d7_KjU = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if ((i3 & 256) != 0) {
                            contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            contentWindowInsets = windowInsets;
                        }
                        j5 = jM3275contentColorForek8zF_U;
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i18 != 0) {
                            bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                        } else {
                            bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                        }
                        if (i5 != 0) {
                            lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                        } else {
                            lambda$1582488484$material3 = bm3Var6;
                        }
                        if (i7 != 0) {
                            lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                        } else {
                            lambda$414328099$material3 = bm3Var7;
                        }
                        if (i9 != 0) {
                            bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                        } else {
                            bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                        }
                        if (i11 != 0) {
                            iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                        } else {
                            iM3466getEndERTFSPs = i;
                        }
                        if ((i3 & 64) != 0) {
                            i4 &= -3670017;
                            jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                        } else {
                            jM3225getBackground0d7_KjU = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if ((i3 & 256) != 0) {
                            contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            contentWindowInsets = windowInsets;
                        }
                        j5 = jM3275contentColorForek8zF_U;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                    }
                    int i116 = (234881024 & i4) ^ r19;
                    if (i116 <= 67108864) {
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                    long j13 = jM3225getBackground0d7_KjU;
                    zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i116 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        z3 = true;
                        objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        z3 = true;
                        objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    Modifier modifierOnConsumedWindowInsetsChanged8 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                    final bm3<? super Composer, ? super Integer, j59> bm3Var11111 = bm3VarM3316getLambda$39202156$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var11112 = lambda$1582488484$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var11113 = lambda$414328099$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var11114 = bm3VarM3315getLambda$1514016380$material3;
                    final int i214 = iM3466getEndERTFSPs;
                    ComposableLambda composableLambdaRememberComposableLambda8 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                        public final void invoke(Composer composer3, int i215) {
                            if (!composer3.shouldExecute((i215 & 3) != 2, i215 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(848889571, i215, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                            }
                            ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i214, bm3Var11111, dm3Var, bm3Var11113, bm3Var11114, mutableWindowInsets, bm3Var11112, composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    int i215 = i4 >> 12;
                    composer2 = composerStartRestartGroup;
                    SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged8, null, j13, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda8, composer2, (i215 & 896) | 12582912 | (i215 & 7168), 114);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                    bm3Var10 = lambda$1582488484$material3;
                    bm3Var11 = lambda$414328099$material3;
                    bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                    i14 = iM3466getEndERTFSPs;
                    windowInsets2 = contentWindowInsets;
                    j3 = j13;
                    j4 = j5;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    windowInsets2 = windowInsets;
                    bm3Var9 = bm3Var5;
                    bm3Var10 = bm3Var6;
                    bm3Var11 = bm3Var7;
                    bm3Var12 = bm3Var8;
                    i14 = i;
                    j3 = j;
                    j4 = j2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            bm3Var6 = bm3Var2;
            i7 = i3 & 8;
            if (i7 != 0) {
                if ((i2 & 3072) == 0) {
                    bm3Var7 = bm3Var3;
                    if (composerStartRestartGroup.changedInstance(bm3Var7)) {
                        i8 = 2048;
                    } else {
                        i8 = 1024;
                    }
                    i4 |= i8;
                }
                i9 = i3 & 16;
                if (i9 != 0) {
                    if ((i2 & 24576) == 0) {
                        bm3Var8 = bm3Var4;
                        if (composerStartRestartGroup.changedInstance(bm3Var8)) {
                            i10 = 16384;
                        } else {
                            i10 = 8192;
                        }
                        i4 |= i10;
                    }
                    i11 = i3 & 32;
                    if (i11 != 0) {
                        i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(i)) {
                            i12 = 131072;
                        } else {
                            i12 = 65536;
                        }
                        i4 |= i12;
                    }
                    if ((i2 & 1572864) != 0) {
                        if ((i3 & 64) == 0) {
                            i16 = 524288;
                        } else {
                            i16 = 524288;
                        }
                        i4 |= i16;
                    }
                    if ((i2 & 12582912) != 0) {
                        if ((i3 & 128) == 0) {
                            i15 = 4194304;
                        } else {
                            i15 = 4194304;
                        }
                        i4 |= i15;
                    }
                    if ((i2 & 100663296) != 0) {
                        i4 |= ((i3 & 256) == 0 || !composerStartRestartGroup.changed(windowInsets)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                    }
                    if ((i3 & 512) != 0) {
                        if ((i2 & 805306368) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i13 = 536870912;
                            } else {
                                i13 = 268435456;
                            }
                            i4 |= i13;
                        }
                        if ((i4 & 306783379) != 306783378) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i2 & 1) != 0) {
                                if (i17 != 0) {
                                    modifier3 = Modifier.Companion;
                                } else {
                                    modifier3 = modifier;
                                }
                                if (i18 != 0) {
                                    bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                                } else {
                                    bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                                }
                                if (i5 != 0) {
                                    lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                                } else {
                                    lambda$1582488484$material3 = bm3Var6;
                                }
                                if (i7 != 0) {
                                    lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                                } else {
                                    lambda$414328099$material3 = bm3Var7;
                                }
                                if (i9 != 0) {
                                    bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                                } else {
                                    bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                                }
                                if (i11 != 0) {
                                    iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                                } else {
                                    iM3466getEndERTFSPs = i;
                                }
                                if ((i3 & 64) != 0) {
                                    i4 &= -3670017;
                                    jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                                } else {
                                    jM3225getBackground0d7_KjU = j;
                                }
                                if ((i3 & 128) != 0) {
                                    jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                    i4 &= -29360129;
                                } else {
                                    jM3275contentColorForek8zF_U = j2;
                                }
                                if ((i3 & 256) != 0) {
                                    contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                    i4 &= -234881025;
                                } else {
                                    contentWindowInsets = windowInsets;
                                }
                                j5 = jM3275contentColorForek8zF_U;
                            } else {
                                if (i17 != 0) {
                                    modifier3 = Modifier.Companion;
                                } else {
                                    modifier3 = modifier;
                                }
                                if (i18 != 0) {
                                    bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                                } else {
                                    bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                                }
                                if (i5 != 0) {
                                    lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                                } else {
                                    lambda$1582488484$material3 = bm3Var6;
                                }
                                if (i7 != 0) {
                                    lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                                } else {
                                    lambda$414328099$material3 = bm3Var7;
                                }
                                if (i9 != 0) {
                                    bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                                } else {
                                    bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                                }
                                if (i11 != 0) {
                                    iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                                } else {
                                    iM3466getEndERTFSPs = i;
                                }
                                if ((i3 & 64) != 0) {
                                    i4 &= -3670017;
                                    jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                                } else {
                                    jM3225getBackground0d7_KjU = j;
                                }
                                if ((i3 & 128) != 0) {
                                    jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                    i4 &= -29360129;
                                } else {
                                    jM3275contentColorForek8zF_U = j2;
                                }
                                if ((i3 & 256) != 0) {
                                    contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                    i4 &= -234881025;
                                } else {
                                    contentWindowInsets = windowInsets;
                                }
                                j5 = jM3275contentColorForek8zF_U;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                            }
                            int i117 = (234881024 & i4) ^ r19;
                            if (i117 <= 67108864) {
                            }
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (z2) {
                                objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            } else {
                                objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                            long j14 = jM3225getBackground0d7_KjU;
                            zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i117 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (zChanged) {
                                z3 = true;
                                objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                z3 = true;
                                objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            Modifier modifierOnConsumedWindowInsetsChanged9 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                            final bm3<? super Composer, ? super Integer, j59> bm3Var11115 = bm3VarM3316getLambda$39202156$material3;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var11116 = lambda$1582488484$material3;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var11117 = lambda$414328099$material3;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var11118 = bm3VarM3315getLambda$1514016380$material3;
                            final int i216 = iM3466getEndERTFSPs;
                            ComposableLambda composableLambdaRememberComposableLambda9 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                                public final void invoke(Composer composer3, int i217) {
                                    if (!composer3.shouldExecute((i217 & 3) != 2, i217 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(848889571, i217, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                                    }
                                    ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i216, bm3Var11115, dm3Var, bm3Var11117, bm3Var11118, mutableWindowInsets, bm3Var11116, composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            int i217 = i4 >> 12;
                            composer2 = composerStartRestartGroup;
                            SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged9, null, j14, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda9, composer2, (i217 & 896) | 12582912 | (i217 & 7168), 114);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier2 = modifier3;
                            bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                            bm3Var10 = lambda$1582488484$material3;
                            bm3Var11 = lambda$414328099$material3;
                            bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                            i14 = iM3466getEndERTFSPs;
                            windowInsets2 = contentWindowInsets;
                            j3 = j14;
                            j4 = j5;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            modifier2 = modifier;
                            windowInsets2 = windowInsets;
                            bm3Var9 = bm3Var5;
                            bm3Var10 = bm3Var6;
                            bm3Var11 = bm3Var7;
                            bm3Var12 = bm3Var8;
                            i14 = i;
                            j3 = j;
                            j4 = j2;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i4 |= 805306368;
                    if ((i4 & 306783379) != 306783378) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if (i18 != 0) {
                                bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                            } else {
                                bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                            }
                            if (i5 != 0) {
                                lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                            } else {
                                lambda$1582488484$material3 = bm3Var6;
                            }
                            if (i7 != 0) {
                                lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                            } else {
                                lambda$414328099$material3 = bm3Var7;
                            }
                            if (i9 != 0) {
                                bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                            } else {
                                bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                            }
                            if (i11 != 0) {
                                iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                            } else {
                                iM3466getEndERTFSPs = i;
                            }
                            if ((i3 & 64) != 0) {
                                i4 &= -3670017;
                                jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                            } else {
                                jM3225getBackground0d7_KjU = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if ((i3 & 256) != 0) {
                                contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                contentWindowInsets = windowInsets;
                            }
                            j5 = jM3275contentColorForek8zF_U;
                        } else {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if (i18 != 0) {
                                bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                            } else {
                                bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                            }
                            if (i5 != 0) {
                                lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                            } else {
                                lambda$1582488484$material3 = bm3Var6;
                            }
                            if (i7 != 0) {
                                lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                            } else {
                                lambda$414328099$material3 = bm3Var7;
                            }
                            if (i9 != 0) {
                                bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                            } else {
                                bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                            }
                            if (i11 != 0) {
                                iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                            } else {
                                iM3466getEndERTFSPs = i;
                            }
                            if ((i3 & 64) != 0) {
                                i4 &= -3670017;
                                jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                            } else {
                                jM3225getBackground0d7_KjU = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if ((i3 & 256) != 0) {
                                contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                contentWindowInsets = windowInsets;
                            }
                            j5 = jM3275contentColorForek8zF_U;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                        }
                        int i118 = (234881024 & i4) ^ r19;
                        if (i118 <= 67108864) {
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                        long j15 = jM3225getBackground0d7_KjU;
                        zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i118 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            z3 = true;
                            objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            z3 = true;
                            objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        Modifier modifierOnConsumedWindowInsetsChanged10 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                        final bm3<? super Composer, ? super Integer, j59> bm3Var11119 = bm3VarM3316getLambda$39202156$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var111110 = lambda$1582488484$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var111111 = lambda$414328099$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var111112 = bm3VarM3315getLambda$1514016380$material3;
                        final int i218 = iM3466getEndERTFSPs;
                        ComposableLambda composableLambdaRememberComposableLambda10 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                            public final void invoke(Composer composer3, int i219) {
                                if (!composer3.shouldExecute((i219 & 3) != 2, i219 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(848889571, i219, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                                }
                                ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i218, bm3Var11119, dm3Var, bm3Var111111, bm3Var111112, mutableWindowInsets, bm3Var111110, composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        int i219 = i4 >> 12;
                        composer2 = composerStartRestartGroup;
                        SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged10, null, j15, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda10, composer2, (i219 & 896) | 12582912 | (i219 & 7168), 114);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier3;
                        bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                        bm3Var10 = lambda$1582488484$material3;
                        bm3Var11 = lambda$414328099$material3;
                        bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                        i14 = iM3466getEndERTFSPs;
                        windowInsets2 = contentWindowInsets;
                        j3 = j15;
                        j4 = j5;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        windowInsets2 = windowInsets;
                        bm3Var9 = bm3Var5;
                        bm3Var10 = bm3Var6;
                        bm3Var11 = bm3Var7;
                        bm3Var12 = bm3Var8;
                        i14 = i;
                        j3 = j;
                        j4 = j2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 24576;
                bm3Var8 = bm3Var4;
                i11 = i3 & 32;
                if (i11 != 0) {
                    i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(i)) {
                        i12 = 131072;
                    } else {
                        i12 = 65536;
                    }
                    i4 |= i12;
                }
                if ((i2 & 1572864) != 0) {
                    if ((i3 & 64) == 0) {
                        i16 = 524288;
                    } else {
                        i16 = 524288;
                    }
                    i4 |= i16;
                }
                if ((i2 & 12582912) != 0) {
                    if ((i3 & 128) == 0) {
                        i15 = 4194304;
                    } else {
                        i15 = 4194304;
                    }
                    i4 |= i15;
                }
                if ((i2 & 100663296) != 0) {
                    i4 |= ((i3 & 256) == 0 || !composerStartRestartGroup.changed(windowInsets)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                }
                if ((i3 & 512) != 0) {
                    if ((i2 & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i13 = 536870912;
                        } else {
                            i13 = 268435456;
                        }
                        i4 |= i13;
                    }
                    if ((i4 & 306783379) != 306783378) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if (i18 != 0) {
                                bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                            } else {
                                bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                            }
                            if (i5 != 0) {
                                lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                            } else {
                                lambda$1582488484$material3 = bm3Var6;
                            }
                            if (i7 != 0) {
                                lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                            } else {
                                lambda$414328099$material3 = bm3Var7;
                            }
                            if (i9 != 0) {
                                bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                            } else {
                                bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                            }
                            if (i11 != 0) {
                                iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                            } else {
                                iM3466getEndERTFSPs = i;
                            }
                            if ((i3 & 64) != 0) {
                                i4 &= -3670017;
                                jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                            } else {
                                jM3225getBackground0d7_KjU = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if ((i3 & 256) != 0) {
                                contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                contentWindowInsets = windowInsets;
                            }
                            j5 = jM3275contentColorForek8zF_U;
                        } else {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if (i18 != 0) {
                                bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                            } else {
                                bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                            }
                            if (i5 != 0) {
                                lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                            } else {
                                lambda$1582488484$material3 = bm3Var6;
                            }
                            if (i7 != 0) {
                                lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                            } else {
                                lambda$414328099$material3 = bm3Var7;
                            }
                            if (i9 != 0) {
                                bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                            } else {
                                bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                            }
                            if (i11 != 0) {
                                iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                            } else {
                                iM3466getEndERTFSPs = i;
                            }
                            if ((i3 & 64) != 0) {
                                i4 &= -3670017;
                                jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                            } else {
                                jM3225getBackground0d7_KjU = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if ((i3 & 256) != 0) {
                                contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                contentWindowInsets = windowInsets;
                            }
                            j5 = jM3275contentColorForek8zF_U;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                        }
                        int i119 = (234881024 & i4) ^ r19;
                        if (i119 <= 67108864) {
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                        long j16 = jM3225getBackground0d7_KjU;
                        zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i119 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            z3 = true;
                            objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            z3 = true;
                            objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        Modifier modifierOnConsumedWindowInsetsChanged11 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                        final bm3<? super Composer, ? super Integer, j59> bm3Var111113 = bm3VarM3316getLambda$39202156$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var111114 = lambda$1582488484$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var111115 = lambda$414328099$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var111116 = bm3VarM3315getLambda$1514016380$material3;
                        final int i2110 = iM3466getEndERTFSPs;
                        ComposableLambda composableLambdaRememberComposableLambda11 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                            public final void invoke(Composer composer3, int i2111) {
                                if (!composer3.shouldExecute((i2111 & 3) != 2, i2111 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(848889571, i2111, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                                }
                                ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i2110, bm3Var111113, dm3Var, bm3Var111115, bm3Var111116, mutableWindowInsets, bm3Var111114, composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        int i2111 = i4 >> 12;
                        composer2 = composerStartRestartGroup;
                        SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged11, null, j16, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda11, composer2, (i2111 & 896) | 12582912 | (i2111 & 7168), 114);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier3;
                        bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                        bm3Var10 = lambda$1582488484$material3;
                        bm3Var11 = lambda$414328099$material3;
                        bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                        i14 = iM3466getEndERTFSPs;
                        windowInsets2 = contentWindowInsets;
                        j3 = j16;
                        j4 = j5;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        windowInsets2 = windowInsets;
                        bm3Var9 = bm3Var5;
                        bm3Var10 = bm3Var6;
                        bm3Var11 = bm3Var7;
                        bm3Var12 = bm3Var8;
                        i14 = i;
                        j3 = j;
                        j4 = j2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 805306368;
                if ((i4 & 306783379) != 306783378) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i18 != 0) {
                            bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                        } else {
                            bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                        }
                        if (i5 != 0) {
                            lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                        } else {
                            lambda$1582488484$material3 = bm3Var6;
                        }
                        if (i7 != 0) {
                            lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                        } else {
                            lambda$414328099$material3 = bm3Var7;
                        }
                        if (i9 != 0) {
                            bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                        } else {
                            bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                        }
                        if (i11 != 0) {
                            iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                        } else {
                            iM3466getEndERTFSPs = i;
                        }
                        if ((i3 & 64) != 0) {
                            i4 &= -3670017;
                            jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                        } else {
                            jM3225getBackground0d7_KjU = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if ((i3 & 256) != 0) {
                            contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            contentWindowInsets = windowInsets;
                        }
                        j5 = jM3275contentColorForek8zF_U;
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i18 != 0) {
                            bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                        } else {
                            bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                        }
                        if (i5 != 0) {
                            lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                        } else {
                            lambda$1582488484$material3 = bm3Var6;
                        }
                        if (i7 != 0) {
                            lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                        } else {
                            lambda$414328099$material3 = bm3Var7;
                        }
                        if (i9 != 0) {
                            bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                        } else {
                            bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                        }
                        if (i11 != 0) {
                            iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                        } else {
                            iM3466getEndERTFSPs = i;
                        }
                        if ((i3 & 64) != 0) {
                            i4 &= -3670017;
                            jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                        } else {
                            jM3225getBackground0d7_KjU = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if ((i3 & 256) != 0) {
                            contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            contentWindowInsets = windowInsets;
                        }
                        j5 = jM3275contentColorForek8zF_U;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                    }
                    int i1110 = (234881024 & i4) ^ r19;
                    if (i1110 <= 67108864) {
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                    long j17 = jM3225getBackground0d7_KjU;
                    zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i1110 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        z3 = true;
                        objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        z3 = true;
                        objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    Modifier modifierOnConsumedWindowInsetsChanged12 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                    final bm3<? super Composer, ? super Integer, j59> bm3Var111117 = bm3VarM3316getLambda$39202156$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var111118 = lambda$1582488484$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var111119 = lambda$414328099$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111110 = bm3VarM3315getLambda$1514016380$material3;
                    final int i2112 = iM3466getEndERTFSPs;
                    ComposableLambda composableLambdaRememberComposableLambda12 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                        public final void invoke(Composer composer3, int i2113) {
                            if (!composer3.shouldExecute((i2113 & 3) != 2, i2113 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(848889571, i2113, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                            }
                            ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i2112, bm3Var111117, dm3Var, bm3Var111119, bm3Var1111110, mutableWindowInsets, bm3Var111118, composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    int i2113 = i4 >> 12;
                    composer2 = composerStartRestartGroup;
                    SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged12, null, j17, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda12, composer2, (i2113 & 896) | 12582912 | (i2113 & 7168), 114);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                    bm3Var10 = lambda$1582488484$material3;
                    bm3Var11 = lambda$414328099$material3;
                    bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                    i14 = iM3466getEndERTFSPs;
                    windowInsets2 = contentWindowInsets;
                    j3 = j17;
                    j4 = j5;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    windowInsets2 = windowInsets;
                    bm3Var9 = bm3Var5;
                    bm3Var10 = bm3Var6;
                    bm3Var11 = bm3Var7;
                    bm3Var12 = bm3Var8;
                    i14 = i;
                    j3 = j;
                    j4 = j2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 3072;
            bm3Var7 = bm3Var3;
            i9 = i3 & 16;
            if (i9 != 0) {
                if ((i2 & 24576) == 0) {
                    bm3Var8 = bm3Var4;
                    if (composerStartRestartGroup.changedInstance(bm3Var8)) {
                        i10 = 16384;
                    } else {
                        i10 = 8192;
                    }
                    i4 |= i10;
                }
                i11 = i3 & 32;
                if (i11 != 0) {
                    i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(i)) {
                        i12 = 131072;
                    } else {
                        i12 = 65536;
                    }
                    i4 |= i12;
                }
                if ((i2 & 1572864) != 0) {
                    if ((i3 & 64) == 0) {
                        i16 = 524288;
                    } else {
                        i16 = 524288;
                    }
                    i4 |= i16;
                }
                if ((i2 & 12582912) != 0) {
                    if ((i3 & 128) == 0) {
                        i15 = 4194304;
                    } else {
                        i15 = 4194304;
                    }
                    i4 |= i15;
                }
                if ((i2 & 100663296) != 0) {
                    i4 |= ((i3 & 256) == 0 || !composerStartRestartGroup.changed(windowInsets)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                }
                if ((i3 & 512) != 0) {
                    if ((i2 & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i13 = 536870912;
                        } else {
                            i13 = 268435456;
                        }
                        i4 |= i13;
                    }
                    if ((i4 & 306783379) != 306783378) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if (i18 != 0) {
                                bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                            } else {
                                bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                            }
                            if (i5 != 0) {
                                lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                            } else {
                                lambda$1582488484$material3 = bm3Var6;
                            }
                            if (i7 != 0) {
                                lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                            } else {
                                lambda$414328099$material3 = bm3Var7;
                            }
                            if (i9 != 0) {
                                bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                            } else {
                                bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                            }
                            if (i11 != 0) {
                                iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                            } else {
                                iM3466getEndERTFSPs = i;
                            }
                            if ((i3 & 64) != 0) {
                                i4 &= -3670017;
                                jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                            } else {
                                jM3225getBackground0d7_KjU = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if ((i3 & 256) != 0) {
                                contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                contentWindowInsets = windowInsets;
                            }
                            j5 = jM3275contentColorForek8zF_U;
                        } else {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if (i18 != 0) {
                                bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                            } else {
                                bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                            }
                            if (i5 != 0) {
                                lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                            } else {
                                lambda$1582488484$material3 = bm3Var6;
                            }
                            if (i7 != 0) {
                                lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                            } else {
                                lambda$414328099$material3 = bm3Var7;
                            }
                            if (i9 != 0) {
                                bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                            } else {
                                bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                            }
                            if (i11 != 0) {
                                iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                            } else {
                                iM3466getEndERTFSPs = i;
                            }
                            if ((i3 & 64) != 0) {
                                i4 &= -3670017;
                                jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                            } else {
                                jM3225getBackground0d7_KjU = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if ((i3 & 256) != 0) {
                                contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                contentWindowInsets = windowInsets;
                            }
                            j5 = jM3275contentColorForek8zF_U;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                        }
                        int i1111 = (234881024 & i4) ^ r19;
                        if (i1111 <= 67108864) {
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                        long j18 = jM3225getBackground0d7_KjU;
                        zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i1111 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            z3 = true;
                            objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            z3 = true;
                            objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        Modifier modifierOnConsumedWindowInsetsChanged13 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1111111 = bm3VarM3316getLambda$39202156$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1111112 = lambda$1582488484$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1111113 = lambda$414328099$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1111114 = bm3VarM3315getLambda$1514016380$material3;
                        final int i2114 = iM3466getEndERTFSPs;
                        ComposableLambda composableLambdaRememberComposableLambda13 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                            public final void invoke(Composer composer3, int i2115) {
                                if (!composer3.shouldExecute((i2115 & 3) != 2, i2115 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(848889571, i2115, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                                }
                                ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i2114, bm3Var1111111, dm3Var, bm3Var1111113, bm3Var1111114, mutableWindowInsets, bm3Var1111112, composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        int i2115 = i4 >> 12;
                        composer2 = composerStartRestartGroup;
                        SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged13, null, j18, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda13, composer2, (i2115 & 896) | 12582912 | (i2115 & 7168), 114);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier3;
                        bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                        bm3Var10 = lambda$1582488484$material3;
                        bm3Var11 = lambda$414328099$material3;
                        bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                        i14 = iM3466getEndERTFSPs;
                        windowInsets2 = contentWindowInsets;
                        j3 = j18;
                        j4 = j5;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        windowInsets2 = windowInsets;
                        bm3Var9 = bm3Var5;
                        bm3Var10 = bm3Var6;
                        bm3Var11 = bm3Var7;
                        bm3Var12 = bm3Var8;
                        i14 = i;
                        j3 = j;
                        j4 = j2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 805306368;
                if ((i4 & 306783379) != 306783378) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i18 != 0) {
                            bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                        } else {
                            bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                        }
                        if (i5 != 0) {
                            lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                        } else {
                            lambda$1582488484$material3 = bm3Var6;
                        }
                        if (i7 != 0) {
                            lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                        } else {
                            lambda$414328099$material3 = bm3Var7;
                        }
                        if (i9 != 0) {
                            bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                        } else {
                            bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                        }
                        if (i11 != 0) {
                            iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                        } else {
                            iM3466getEndERTFSPs = i;
                        }
                        if ((i3 & 64) != 0) {
                            i4 &= -3670017;
                            jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                        } else {
                            jM3225getBackground0d7_KjU = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if ((i3 & 256) != 0) {
                            contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            contentWindowInsets = windowInsets;
                        }
                        j5 = jM3275contentColorForek8zF_U;
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i18 != 0) {
                            bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                        } else {
                            bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                        }
                        if (i5 != 0) {
                            lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                        } else {
                            lambda$1582488484$material3 = bm3Var6;
                        }
                        if (i7 != 0) {
                            lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                        } else {
                            lambda$414328099$material3 = bm3Var7;
                        }
                        if (i9 != 0) {
                            bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                        } else {
                            bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                        }
                        if (i11 != 0) {
                            iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                        } else {
                            iM3466getEndERTFSPs = i;
                        }
                        if ((i3 & 64) != 0) {
                            i4 &= -3670017;
                            jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                        } else {
                            jM3225getBackground0d7_KjU = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if ((i3 & 256) != 0) {
                            contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            contentWindowInsets = windowInsets;
                        }
                        j5 = jM3275contentColorForek8zF_U;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                    }
                    int i1112 = (234881024 & i4) ^ r19;
                    if (i1112 <= 67108864) {
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                    long j19 = jM3225getBackground0d7_KjU;
                    zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i1112 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        z3 = true;
                        objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        z3 = true;
                        objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    Modifier modifierOnConsumedWindowInsetsChanged14 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111115 = bm3VarM3316getLambda$39202156$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111116 = lambda$1582488484$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111117 = lambda$414328099$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111118 = bm3VarM3315getLambda$1514016380$material3;
                    final int i2116 = iM3466getEndERTFSPs;
                    ComposableLambda composableLambdaRememberComposableLambda14 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                        public final void invoke(Composer composer3, int i2117) {
                            if (!composer3.shouldExecute((i2117 & 3) != 2, i2117 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(848889571, i2117, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                            }
                            ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i2116, bm3Var1111115, dm3Var, bm3Var1111117, bm3Var1111118, mutableWindowInsets, bm3Var1111116, composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    int i2117 = i4 >> 12;
                    composer2 = composerStartRestartGroup;
                    SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged14, null, j19, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda14, composer2, (i2117 & 896) | 12582912 | (i2117 & 7168), 114);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                    bm3Var10 = lambda$1582488484$material3;
                    bm3Var11 = lambda$414328099$material3;
                    bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                    i14 = iM3466getEndERTFSPs;
                    windowInsets2 = contentWindowInsets;
                    j3 = j19;
                    j4 = j5;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    windowInsets2 = windowInsets;
                    bm3Var9 = bm3Var5;
                    bm3Var10 = bm3Var6;
                    bm3Var11 = bm3Var7;
                    bm3Var12 = bm3Var8;
                    i14 = i;
                    j3 = j;
                    j4 = j2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 24576;
            bm3Var8 = bm3Var4;
            i11 = i3 & 32;
            if (i11 != 0) {
                i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(i)) {
                    i12 = 131072;
                } else {
                    i12 = 65536;
                }
                i4 |= i12;
            }
            if ((i2 & 1572864) != 0) {
                if ((i3 & 64) == 0) {
                    i16 = 524288;
                } else {
                    i16 = 524288;
                }
                i4 |= i16;
            }
            if ((i2 & 12582912) != 0) {
                if ((i3 & 128) == 0) {
                    i15 = 4194304;
                } else {
                    i15 = 4194304;
                }
                i4 |= i15;
            }
            if ((i2 & 100663296) != 0) {
                i4 |= ((i3 & 256) == 0 || !composerStartRestartGroup.changed(windowInsets)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
            }
            if ((i3 & 512) != 0) {
                if ((i2 & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i13 = 536870912;
                    } else {
                        i13 = 268435456;
                    }
                    i4 |= i13;
                }
                if ((i4 & 306783379) != 306783378) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i18 != 0) {
                            bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                        } else {
                            bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                        }
                        if (i5 != 0) {
                            lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                        } else {
                            lambda$1582488484$material3 = bm3Var6;
                        }
                        if (i7 != 0) {
                            lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                        } else {
                            lambda$414328099$material3 = bm3Var7;
                        }
                        if (i9 != 0) {
                            bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                        } else {
                            bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                        }
                        if (i11 != 0) {
                            iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                        } else {
                            iM3466getEndERTFSPs = i;
                        }
                        if ((i3 & 64) != 0) {
                            i4 &= -3670017;
                            jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                        } else {
                            jM3225getBackground0d7_KjU = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if ((i3 & 256) != 0) {
                            contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            contentWindowInsets = windowInsets;
                        }
                        j5 = jM3275contentColorForek8zF_U;
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i18 != 0) {
                            bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                        } else {
                            bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                        }
                        if (i5 != 0) {
                            lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                        } else {
                            lambda$1582488484$material3 = bm3Var6;
                        }
                        if (i7 != 0) {
                            lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                        } else {
                            lambda$414328099$material3 = bm3Var7;
                        }
                        if (i9 != 0) {
                            bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                        } else {
                            bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                        }
                        if (i11 != 0) {
                            iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                        } else {
                            iM3466getEndERTFSPs = i;
                        }
                        if ((i3 & 64) != 0) {
                            i4 &= -3670017;
                            jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                        } else {
                            jM3225getBackground0d7_KjU = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if ((i3 & 256) != 0) {
                            contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            contentWindowInsets = windowInsets;
                        }
                        j5 = jM3275contentColorForek8zF_U;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                    }
                    int i1113 = (234881024 & i4) ^ r19;
                    if (i1113 <= 67108864) {
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                    long j110 = jM3225getBackground0d7_KjU;
                    zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i1113 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        z3 = true;
                        objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        z3 = true;
                        objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    Modifier modifierOnConsumedWindowInsetsChanged15 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111119 = bm3VarM3316getLambda$39202156$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var11111110 = lambda$1582488484$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var11111111 = lambda$414328099$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var11111112 = bm3VarM3315getLambda$1514016380$material3;
                    final int i2118 = iM3466getEndERTFSPs;
                    ComposableLambda composableLambdaRememberComposableLambda15 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                        public final void invoke(Composer composer3, int i2119) {
                            if (!composer3.shouldExecute((i2119 & 3) != 2, i2119 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(848889571, i2119, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                            }
                            ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i2118, bm3Var1111119, dm3Var, bm3Var11111111, bm3Var11111112, mutableWindowInsets, bm3Var11111110, composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    int i2119 = i4 >> 12;
                    composer2 = composerStartRestartGroup;
                    SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged15, null, j110, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda15, composer2, (i2119 & 896) | 12582912 | (i2119 & 7168), 114);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                    bm3Var10 = lambda$1582488484$material3;
                    bm3Var11 = lambda$414328099$material3;
                    bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                    i14 = iM3466getEndERTFSPs;
                    windowInsets2 = contentWindowInsets;
                    j3 = j110;
                    j4 = j5;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    windowInsets2 = windowInsets;
                    bm3Var9 = bm3Var5;
                    bm3Var10 = bm3Var6;
                    bm3Var11 = bm3Var7;
                    bm3Var12 = bm3Var8;
                    i14 = i;
                    j3 = j;
                    j4 = j2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 805306368;
            if ((i4 & 306783379) != 306783378) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if (i18 != 0) {
                        bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                    } else {
                        bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                    }
                    if (i5 != 0) {
                        lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                    } else {
                        lambda$1582488484$material3 = bm3Var6;
                    }
                    if (i7 != 0) {
                        lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                    } else {
                        lambda$414328099$material3 = bm3Var7;
                    }
                    if (i9 != 0) {
                        bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                    } else {
                        bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                    }
                    if (i11 != 0) {
                        iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                    } else {
                        iM3466getEndERTFSPs = i;
                    }
                    if ((i3 & 64) != 0) {
                        i4 &= -3670017;
                        jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                    } else {
                        jM3225getBackground0d7_KjU = j;
                    }
                    if ((i3 & 128) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                        i4 &= -29360129;
                    } else {
                        jM3275contentColorForek8zF_U = j2;
                    }
                    if ((i3 & 256) != 0) {
                        contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                        i4 &= -234881025;
                    } else {
                        contentWindowInsets = windowInsets;
                    }
                    j5 = jM3275contentColorForek8zF_U;
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if (i18 != 0) {
                        bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                    } else {
                        bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                    }
                    if (i5 != 0) {
                        lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                    } else {
                        lambda$1582488484$material3 = bm3Var6;
                    }
                    if (i7 != 0) {
                        lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                    } else {
                        lambda$414328099$material3 = bm3Var7;
                    }
                    if (i9 != 0) {
                        bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                    } else {
                        bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                    }
                    if (i11 != 0) {
                        iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                    } else {
                        iM3466getEndERTFSPs = i;
                    }
                    if ((i3 & 64) != 0) {
                        i4 &= -3670017;
                        jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                    } else {
                        jM3225getBackground0d7_KjU = j;
                    }
                    if ((i3 & 128) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                        i4 &= -29360129;
                    } else {
                        jM3275contentColorForek8zF_U = j2;
                    }
                    if ((i3 & 256) != 0) {
                        contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                        i4 &= -234881025;
                    } else {
                        contentWindowInsets = windowInsets;
                    }
                    j5 = jM3275contentColorForek8zF_U;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                }
                int i1114 = (234881024 & i4) ^ r19;
                if (i1114 <= 67108864) {
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z2) {
                    objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                long j111 = jM3225getBackground0d7_KjU;
                zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i1114 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    z3 = true;
                    objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    z3 = true;
                    objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                Modifier modifierOnConsumedWindowInsetsChanged16 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                final bm3<? super Composer, ? super Integer, j59> bm3Var11111113 = bm3VarM3316getLambda$39202156$material3;
                final bm3<? super Composer, ? super Integer, j59> bm3Var11111114 = lambda$1582488484$material3;
                final bm3<? super Composer, ? super Integer, j59> bm3Var11111115 = lambda$414328099$material3;
                final bm3<? super Composer, ? super Integer, j59> bm3Var11111116 = bm3VarM3315getLambda$1514016380$material3;
                final int i21110 = iM3466getEndERTFSPs;
                ComposableLambda composableLambdaRememberComposableLambda16 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                    public final void invoke(Composer composer3, int i21111) {
                        if (!composer3.shouldExecute((i21111 & 3) != 2, i21111 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(848889571, i21111, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                        }
                        ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i21110, bm3Var11111113, dm3Var, bm3Var11111115, bm3Var11111116, mutableWindowInsets, bm3Var11111114, composer3, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54);
                int i21111 = i4 >> 12;
                composer2 = composerStartRestartGroup;
                SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged16, null, j111, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda16, composer2, (i21111 & 896) | 12582912 | (i21111 & 7168), 114);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier3;
                bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                bm3Var10 = lambda$1582488484$material3;
                bm3Var11 = lambda$414328099$material3;
                bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                i14 = iM3466getEndERTFSPs;
                windowInsets2 = contentWindowInsets;
                j3 = j111;
                j4 = j5;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier2 = modifier;
                windowInsets2 = windowInsets;
                bm3Var9 = bm3Var5;
                bm3Var10 = bm3Var6;
                bm3Var11 = bm3Var7;
                bm3Var12 = bm3Var8;
                i14 = i;
                j3 = j;
                j4 = j2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 48;
        bm3Var5 = bm3Var;
        i5 = i3 & 4;
        if (i5 != 0) {
            if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                bm3Var6 = bm3Var2;
                if (composerStartRestartGroup.changedInstance(bm3Var6)) {
                    i6 = 256;
                } else {
                    i6 = 128;
                }
                i4 |= i6;
            }
            i7 = i3 & 8;
            if (i7 != 0) {
                if ((i2 & 3072) == 0) {
                    bm3Var7 = bm3Var3;
                    if (composerStartRestartGroup.changedInstance(bm3Var7)) {
                        i8 = 2048;
                    } else {
                        i8 = 1024;
                    }
                    i4 |= i8;
                }
                i9 = i3 & 16;
                if (i9 != 0) {
                    if ((i2 & 24576) == 0) {
                        bm3Var8 = bm3Var4;
                        if (composerStartRestartGroup.changedInstance(bm3Var8)) {
                            i10 = 16384;
                        } else {
                            i10 = 8192;
                        }
                        i4 |= i10;
                    }
                    i11 = i3 & 32;
                    if (i11 != 0) {
                        i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(i)) {
                            i12 = 131072;
                        } else {
                            i12 = 65536;
                        }
                        i4 |= i12;
                    }
                    if ((i2 & 1572864) != 0) {
                        if ((i3 & 64) == 0) {
                            i16 = 524288;
                        } else {
                            i16 = 524288;
                        }
                        i4 |= i16;
                    }
                    if ((i2 & 12582912) != 0) {
                        if ((i3 & 128) == 0) {
                            i15 = 4194304;
                        } else {
                            i15 = 4194304;
                        }
                        i4 |= i15;
                    }
                    if ((i2 & 100663296) != 0) {
                        i4 |= ((i3 & 256) == 0 || !composerStartRestartGroup.changed(windowInsets)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                    }
                    if ((i3 & 512) != 0) {
                        if ((i2 & 805306368) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i13 = 536870912;
                            } else {
                                i13 = 268435456;
                            }
                            i4 |= i13;
                        }
                        if ((i4 & 306783379) != 306783378) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i2 & 1) != 0) {
                                if (i17 != 0) {
                                    modifier3 = Modifier.Companion;
                                } else {
                                    modifier3 = modifier;
                                }
                                if (i18 != 0) {
                                    bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                                } else {
                                    bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                                }
                                if (i5 != 0) {
                                    lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                                } else {
                                    lambda$1582488484$material3 = bm3Var6;
                                }
                                if (i7 != 0) {
                                    lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                                } else {
                                    lambda$414328099$material3 = bm3Var7;
                                }
                                if (i9 != 0) {
                                    bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                                } else {
                                    bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                                }
                                if (i11 != 0) {
                                    iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                                } else {
                                    iM3466getEndERTFSPs = i;
                                }
                                if ((i3 & 64) != 0) {
                                    i4 &= -3670017;
                                    jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                                } else {
                                    jM3225getBackground0d7_KjU = j;
                                }
                                if ((i3 & 128) != 0) {
                                    jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                    i4 &= -29360129;
                                } else {
                                    jM3275contentColorForek8zF_U = j2;
                                }
                                if ((i3 & 256) != 0) {
                                    contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                    i4 &= -234881025;
                                } else {
                                    contentWindowInsets = windowInsets;
                                }
                                j5 = jM3275contentColorForek8zF_U;
                            } else {
                                if (i17 != 0) {
                                    modifier3 = Modifier.Companion;
                                } else {
                                    modifier3 = modifier;
                                }
                                if (i18 != 0) {
                                    bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                                } else {
                                    bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                                }
                                if (i5 != 0) {
                                    lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                                } else {
                                    lambda$1582488484$material3 = bm3Var6;
                                }
                                if (i7 != 0) {
                                    lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                                } else {
                                    lambda$414328099$material3 = bm3Var7;
                                }
                                if (i9 != 0) {
                                    bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                                } else {
                                    bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                                }
                                if (i11 != 0) {
                                    iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                                } else {
                                    iM3466getEndERTFSPs = i;
                                }
                                if ((i3 & 64) != 0) {
                                    i4 &= -3670017;
                                    jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                                } else {
                                    jM3225getBackground0d7_KjU = j;
                                }
                                if ((i3 & 128) != 0) {
                                    jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                    i4 &= -29360129;
                                } else {
                                    jM3275contentColorForek8zF_U = j2;
                                }
                                if ((i3 & 256) != 0) {
                                    contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                    i4 &= -234881025;
                                } else {
                                    contentWindowInsets = windowInsets;
                                }
                                j5 = jM3275contentColorForek8zF_U;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                            }
                            int i1115 = (234881024 & i4) ^ r19;
                            if (i1115 <= 67108864) {
                            }
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (z2) {
                                objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            } else {
                                objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                            long j112 = jM3225getBackground0d7_KjU;
                            zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i1115 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (zChanged) {
                                z3 = true;
                                objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                z3 = true;
                                objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            Modifier modifierOnConsumedWindowInsetsChanged17 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                            final bm3<? super Composer, ? super Integer, j59> bm3Var11111117 = bm3VarM3316getLambda$39202156$material3;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var11111118 = lambda$1582488484$material3;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var11111119 = lambda$414328099$material3;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var111111110 = bm3VarM3315getLambda$1514016380$material3;
                            final int i21112 = iM3466getEndERTFSPs;
                            ComposableLambda composableLambdaRememberComposableLambda17 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                                public final void invoke(Composer composer3, int i21113) {
                                    if (!composer3.shouldExecute((i21113 & 3) != 2, i21113 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(848889571, i21113, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                                    }
                                    ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i21112, bm3Var11111117, dm3Var, bm3Var11111119, bm3Var111111110, mutableWindowInsets, bm3Var11111118, composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            int i21113 = i4 >> 12;
                            composer2 = composerStartRestartGroup;
                            SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged17, null, j112, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda17, composer2, (i21113 & 896) | 12582912 | (i21113 & 7168), 114);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier2 = modifier3;
                            bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                            bm3Var10 = lambda$1582488484$material3;
                            bm3Var11 = lambda$414328099$material3;
                            bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                            i14 = iM3466getEndERTFSPs;
                            windowInsets2 = contentWindowInsets;
                            j3 = j112;
                            j4 = j5;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            modifier2 = modifier;
                            windowInsets2 = windowInsets;
                            bm3Var9 = bm3Var5;
                            bm3Var10 = bm3Var6;
                            bm3Var11 = bm3Var7;
                            bm3Var12 = bm3Var8;
                            i14 = i;
                            j3 = j;
                            j4 = j2;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i4 |= 805306368;
                    if ((i4 & 306783379) != 306783378) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if (i18 != 0) {
                                bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                            } else {
                                bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                            }
                            if (i5 != 0) {
                                lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                            } else {
                                lambda$1582488484$material3 = bm3Var6;
                            }
                            if (i7 != 0) {
                                lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                            } else {
                                lambda$414328099$material3 = bm3Var7;
                            }
                            if (i9 != 0) {
                                bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                            } else {
                                bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                            }
                            if (i11 != 0) {
                                iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                            } else {
                                iM3466getEndERTFSPs = i;
                            }
                            if ((i3 & 64) != 0) {
                                i4 &= -3670017;
                                jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                            } else {
                                jM3225getBackground0d7_KjU = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if ((i3 & 256) != 0) {
                                contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                contentWindowInsets = windowInsets;
                            }
                            j5 = jM3275contentColorForek8zF_U;
                        } else {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if (i18 != 0) {
                                bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                            } else {
                                bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                            }
                            if (i5 != 0) {
                                lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                            } else {
                                lambda$1582488484$material3 = bm3Var6;
                            }
                            if (i7 != 0) {
                                lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                            } else {
                                lambda$414328099$material3 = bm3Var7;
                            }
                            if (i9 != 0) {
                                bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                            } else {
                                bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                            }
                            if (i11 != 0) {
                                iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                            } else {
                                iM3466getEndERTFSPs = i;
                            }
                            if ((i3 & 64) != 0) {
                                i4 &= -3670017;
                                jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                            } else {
                                jM3225getBackground0d7_KjU = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if ((i3 & 256) != 0) {
                                contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                contentWindowInsets = windowInsets;
                            }
                            j5 = jM3275contentColorForek8zF_U;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                        }
                        int i1116 = (234881024 & i4) ^ r19;
                        if (i1116 <= 67108864) {
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                        long j113 = jM3225getBackground0d7_KjU;
                        zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i1116 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            z3 = true;
                            objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            z3 = true;
                            objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        Modifier modifierOnConsumedWindowInsetsChanged18 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                        final bm3<? super Composer, ? super Integer, j59> bm3Var111111111 = bm3VarM3316getLambda$39202156$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var111111112 = lambda$1582488484$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var111111113 = lambda$414328099$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var111111114 = bm3VarM3315getLambda$1514016380$material3;
                        final int i21114 = iM3466getEndERTFSPs;
                        ComposableLambda composableLambdaRememberComposableLambda18 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                            public final void invoke(Composer composer3, int i21115) {
                                if (!composer3.shouldExecute((i21115 & 3) != 2, i21115 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(848889571, i21115, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                                }
                                ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i21114, bm3Var111111111, dm3Var, bm3Var111111113, bm3Var111111114, mutableWindowInsets, bm3Var111111112, composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        int i21115 = i4 >> 12;
                        composer2 = composerStartRestartGroup;
                        SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged18, null, j113, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda18, composer2, (i21115 & 896) | 12582912 | (i21115 & 7168), 114);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier3;
                        bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                        bm3Var10 = lambda$1582488484$material3;
                        bm3Var11 = lambda$414328099$material3;
                        bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                        i14 = iM3466getEndERTFSPs;
                        windowInsets2 = contentWindowInsets;
                        j3 = j113;
                        j4 = j5;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        windowInsets2 = windowInsets;
                        bm3Var9 = bm3Var5;
                        bm3Var10 = bm3Var6;
                        bm3Var11 = bm3Var7;
                        bm3Var12 = bm3Var8;
                        i14 = i;
                        j3 = j;
                        j4 = j2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 24576;
                bm3Var8 = bm3Var4;
                i11 = i3 & 32;
                if (i11 != 0) {
                    i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(i)) {
                        i12 = 131072;
                    } else {
                        i12 = 65536;
                    }
                    i4 |= i12;
                }
                if ((i2 & 1572864) != 0) {
                    if ((i3 & 64) == 0) {
                        i16 = 524288;
                    } else {
                        i16 = 524288;
                    }
                    i4 |= i16;
                }
                if ((i2 & 12582912) != 0) {
                    if ((i3 & 128) == 0) {
                        i15 = 4194304;
                    } else {
                        i15 = 4194304;
                    }
                    i4 |= i15;
                }
                if ((i2 & 100663296) != 0) {
                    i4 |= ((i3 & 256) == 0 || !composerStartRestartGroup.changed(windowInsets)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                }
                if ((i3 & 512) != 0) {
                    if ((i2 & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i13 = 536870912;
                        } else {
                            i13 = 268435456;
                        }
                        i4 |= i13;
                    }
                    if ((i4 & 306783379) != 306783378) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if (i18 != 0) {
                                bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                            } else {
                                bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                            }
                            if (i5 != 0) {
                                lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                            } else {
                                lambda$1582488484$material3 = bm3Var6;
                            }
                            if (i7 != 0) {
                                lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                            } else {
                                lambda$414328099$material3 = bm3Var7;
                            }
                            if (i9 != 0) {
                                bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                            } else {
                                bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                            }
                            if (i11 != 0) {
                                iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                            } else {
                                iM3466getEndERTFSPs = i;
                            }
                            if ((i3 & 64) != 0) {
                                i4 &= -3670017;
                                jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                            } else {
                                jM3225getBackground0d7_KjU = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if ((i3 & 256) != 0) {
                                contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                contentWindowInsets = windowInsets;
                            }
                            j5 = jM3275contentColorForek8zF_U;
                        } else {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if (i18 != 0) {
                                bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                            } else {
                                bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                            }
                            if (i5 != 0) {
                                lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                            } else {
                                lambda$1582488484$material3 = bm3Var6;
                            }
                            if (i7 != 0) {
                                lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                            } else {
                                lambda$414328099$material3 = bm3Var7;
                            }
                            if (i9 != 0) {
                                bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                            } else {
                                bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                            }
                            if (i11 != 0) {
                                iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                            } else {
                                iM3466getEndERTFSPs = i;
                            }
                            if ((i3 & 64) != 0) {
                                i4 &= -3670017;
                                jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                            } else {
                                jM3225getBackground0d7_KjU = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if ((i3 & 256) != 0) {
                                contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                contentWindowInsets = windowInsets;
                            }
                            j5 = jM3275contentColorForek8zF_U;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                        }
                        int i1117 = (234881024 & i4) ^ r19;
                        if (i1117 <= 67108864) {
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                        long j114 = jM3225getBackground0d7_KjU;
                        zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i1117 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            z3 = true;
                            objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            z3 = true;
                            objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        Modifier modifierOnConsumedWindowInsetsChanged19 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                        final bm3<? super Composer, ? super Integer, j59> bm3Var111111115 = bm3VarM3316getLambda$39202156$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var111111116 = lambda$1582488484$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var111111117 = lambda$414328099$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var111111118 = bm3VarM3315getLambda$1514016380$material3;
                        final int i21116 = iM3466getEndERTFSPs;
                        ComposableLambda composableLambdaRememberComposableLambda19 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                            public final void invoke(Composer composer3, int i21117) {
                                if (!composer3.shouldExecute((i21117 & 3) != 2, i21117 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(848889571, i21117, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                                }
                                ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i21116, bm3Var111111115, dm3Var, bm3Var111111117, bm3Var111111118, mutableWindowInsets, bm3Var111111116, composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        int i21117 = i4 >> 12;
                        composer2 = composerStartRestartGroup;
                        SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged19, null, j114, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda19, composer2, (i21117 & 896) | 12582912 | (i21117 & 7168), 114);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier3;
                        bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                        bm3Var10 = lambda$1582488484$material3;
                        bm3Var11 = lambda$414328099$material3;
                        bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                        i14 = iM3466getEndERTFSPs;
                        windowInsets2 = contentWindowInsets;
                        j3 = j114;
                        j4 = j5;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        windowInsets2 = windowInsets;
                        bm3Var9 = bm3Var5;
                        bm3Var10 = bm3Var6;
                        bm3Var11 = bm3Var7;
                        bm3Var12 = bm3Var8;
                        i14 = i;
                        j3 = j;
                        j4 = j2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 805306368;
                if ((i4 & 306783379) != 306783378) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i18 != 0) {
                            bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                        } else {
                            bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                        }
                        if (i5 != 0) {
                            lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                        } else {
                            lambda$1582488484$material3 = bm3Var6;
                        }
                        if (i7 != 0) {
                            lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                        } else {
                            lambda$414328099$material3 = bm3Var7;
                        }
                        if (i9 != 0) {
                            bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                        } else {
                            bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                        }
                        if (i11 != 0) {
                            iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                        } else {
                            iM3466getEndERTFSPs = i;
                        }
                        if ((i3 & 64) != 0) {
                            i4 &= -3670017;
                            jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                        } else {
                            jM3225getBackground0d7_KjU = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if ((i3 & 256) != 0) {
                            contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            contentWindowInsets = windowInsets;
                        }
                        j5 = jM3275contentColorForek8zF_U;
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i18 != 0) {
                            bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                        } else {
                            bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                        }
                        if (i5 != 0) {
                            lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                        } else {
                            lambda$1582488484$material3 = bm3Var6;
                        }
                        if (i7 != 0) {
                            lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                        } else {
                            lambda$414328099$material3 = bm3Var7;
                        }
                        if (i9 != 0) {
                            bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                        } else {
                            bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                        }
                        if (i11 != 0) {
                            iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                        } else {
                            iM3466getEndERTFSPs = i;
                        }
                        if ((i3 & 64) != 0) {
                            i4 &= -3670017;
                            jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                        } else {
                            jM3225getBackground0d7_KjU = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if ((i3 & 256) != 0) {
                            contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            contentWindowInsets = windowInsets;
                        }
                        j5 = jM3275contentColorForek8zF_U;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                    }
                    int i1118 = (234881024 & i4) ^ r19;
                    if (i1118 <= 67108864) {
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                    long j115 = jM3225getBackground0d7_KjU;
                    zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i1118 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        z3 = true;
                        objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        z3 = true;
                        objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    Modifier modifierOnConsumedWindowInsetsChanged110 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                    final bm3<? super Composer, ? super Integer, j59> bm3Var111111119 = bm3VarM3316getLambda$39202156$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111111110 = lambda$1582488484$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111111111 = lambda$414328099$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111111112 = bm3VarM3315getLambda$1514016380$material3;
                    final int i21118 = iM3466getEndERTFSPs;
                    ComposableLambda composableLambdaRememberComposableLambda110 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                        public final void invoke(Composer composer3, int i21119) {
                            if (!composer3.shouldExecute((i21119 & 3) != 2, i21119 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(848889571, i21119, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                            }
                            ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i21118, bm3Var111111119, dm3Var, bm3Var1111111111, bm3Var1111111112, mutableWindowInsets, bm3Var1111111110, composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    int i21119 = i4 >> 12;
                    composer2 = composerStartRestartGroup;
                    SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged110, null, j115, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda110, composer2, (i21119 & 896) | 12582912 | (i21119 & 7168), 114);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                    bm3Var10 = lambda$1582488484$material3;
                    bm3Var11 = lambda$414328099$material3;
                    bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                    i14 = iM3466getEndERTFSPs;
                    windowInsets2 = contentWindowInsets;
                    j3 = j115;
                    j4 = j5;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    windowInsets2 = windowInsets;
                    bm3Var9 = bm3Var5;
                    bm3Var10 = bm3Var6;
                    bm3Var11 = bm3Var7;
                    bm3Var12 = bm3Var8;
                    i14 = i;
                    j3 = j;
                    j4 = j2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 3072;
            bm3Var7 = bm3Var3;
            i9 = i3 & 16;
            if (i9 != 0) {
                if ((i2 & 24576) == 0) {
                    bm3Var8 = bm3Var4;
                    if (composerStartRestartGroup.changedInstance(bm3Var8)) {
                        i10 = 16384;
                    } else {
                        i10 = 8192;
                    }
                    i4 |= i10;
                }
                i11 = i3 & 32;
                if (i11 != 0) {
                    i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(i)) {
                        i12 = 131072;
                    } else {
                        i12 = 65536;
                    }
                    i4 |= i12;
                }
                if ((i2 & 1572864) != 0) {
                    if ((i3 & 64) == 0) {
                        i16 = 524288;
                    } else {
                        i16 = 524288;
                    }
                    i4 |= i16;
                }
                if ((i2 & 12582912) != 0) {
                    if ((i3 & 128) == 0) {
                        i15 = 4194304;
                    } else {
                        i15 = 4194304;
                    }
                    i4 |= i15;
                }
                if ((i2 & 100663296) != 0) {
                    i4 |= ((i3 & 256) == 0 || !composerStartRestartGroup.changed(windowInsets)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                }
                if ((i3 & 512) != 0) {
                    if ((i2 & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i13 = 536870912;
                        } else {
                            i13 = 268435456;
                        }
                        i4 |= i13;
                    }
                    if ((i4 & 306783379) != 306783378) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if (i18 != 0) {
                                bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                            } else {
                                bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                            }
                            if (i5 != 0) {
                                lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                            } else {
                                lambda$1582488484$material3 = bm3Var6;
                            }
                            if (i7 != 0) {
                                lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                            } else {
                                lambda$414328099$material3 = bm3Var7;
                            }
                            if (i9 != 0) {
                                bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                            } else {
                                bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                            }
                            if (i11 != 0) {
                                iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                            } else {
                                iM3466getEndERTFSPs = i;
                            }
                            if ((i3 & 64) != 0) {
                                i4 &= -3670017;
                                jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                            } else {
                                jM3225getBackground0d7_KjU = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if ((i3 & 256) != 0) {
                                contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                contentWindowInsets = windowInsets;
                            }
                            j5 = jM3275contentColorForek8zF_U;
                        } else {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if (i18 != 0) {
                                bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                            } else {
                                bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                            }
                            if (i5 != 0) {
                                lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                            } else {
                                lambda$1582488484$material3 = bm3Var6;
                            }
                            if (i7 != 0) {
                                lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                            } else {
                                lambda$414328099$material3 = bm3Var7;
                            }
                            if (i9 != 0) {
                                bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                            } else {
                                bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                            }
                            if (i11 != 0) {
                                iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                            } else {
                                iM3466getEndERTFSPs = i;
                            }
                            if ((i3 & 64) != 0) {
                                i4 &= -3670017;
                                jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                            } else {
                                jM3225getBackground0d7_KjU = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if ((i3 & 256) != 0) {
                                contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                contentWindowInsets = windowInsets;
                            }
                            j5 = jM3275contentColorForek8zF_U;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                        }
                        int i1119 = (234881024 & i4) ^ r19;
                        if (i1119 <= 67108864) {
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                        long j116 = jM3225getBackground0d7_KjU;
                        zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i1119 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            z3 = true;
                            objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            z3 = true;
                            objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        Modifier modifierOnConsumedWindowInsetsChanged111 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1111111113 = bm3VarM3316getLambda$39202156$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1111111114 = lambda$1582488484$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1111111115 = lambda$414328099$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1111111116 = bm3VarM3315getLambda$1514016380$material3;
                        final int i211110 = iM3466getEndERTFSPs;
                        ComposableLambda composableLambdaRememberComposableLambda111 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                            public final void invoke(Composer composer3, int i211111) {
                                if (!composer3.shouldExecute((i211111 & 3) != 2, i211111 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(848889571, i211111, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                                }
                                ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i211110, bm3Var1111111113, dm3Var, bm3Var1111111115, bm3Var1111111116, mutableWindowInsets, bm3Var1111111114, composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        int i211111 = i4 >> 12;
                        composer2 = composerStartRestartGroup;
                        SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged111, null, j116, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda111, composer2, (i211111 & 896) | 12582912 | (i211111 & 7168), 114);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier3;
                        bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                        bm3Var10 = lambda$1582488484$material3;
                        bm3Var11 = lambda$414328099$material3;
                        bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                        i14 = iM3466getEndERTFSPs;
                        windowInsets2 = contentWindowInsets;
                        j3 = j116;
                        j4 = j5;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        windowInsets2 = windowInsets;
                        bm3Var9 = bm3Var5;
                        bm3Var10 = bm3Var6;
                        bm3Var11 = bm3Var7;
                        bm3Var12 = bm3Var8;
                        i14 = i;
                        j3 = j;
                        j4 = j2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 805306368;
                if ((i4 & 306783379) != 306783378) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i18 != 0) {
                            bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                        } else {
                            bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                        }
                        if (i5 != 0) {
                            lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                        } else {
                            lambda$1582488484$material3 = bm3Var6;
                        }
                        if (i7 != 0) {
                            lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                        } else {
                            lambda$414328099$material3 = bm3Var7;
                        }
                        if (i9 != 0) {
                            bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                        } else {
                            bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                        }
                        if (i11 != 0) {
                            iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                        } else {
                            iM3466getEndERTFSPs = i;
                        }
                        if ((i3 & 64) != 0) {
                            i4 &= -3670017;
                            jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                        } else {
                            jM3225getBackground0d7_KjU = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if ((i3 & 256) != 0) {
                            contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            contentWindowInsets = windowInsets;
                        }
                        j5 = jM3275contentColorForek8zF_U;
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i18 != 0) {
                            bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                        } else {
                            bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                        }
                        if (i5 != 0) {
                            lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                        } else {
                            lambda$1582488484$material3 = bm3Var6;
                        }
                        if (i7 != 0) {
                            lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                        } else {
                            lambda$414328099$material3 = bm3Var7;
                        }
                        if (i9 != 0) {
                            bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                        } else {
                            bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                        }
                        if (i11 != 0) {
                            iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                        } else {
                            iM3466getEndERTFSPs = i;
                        }
                        if ((i3 & 64) != 0) {
                            i4 &= -3670017;
                            jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                        } else {
                            jM3225getBackground0d7_KjU = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if ((i3 & 256) != 0) {
                            contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            contentWindowInsets = windowInsets;
                        }
                        j5 = jM3275contentColorForek8zF_U;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                    }
                    int i11110 = (234881024 & i4) ^ r19;
                    if (i11110 <= 67108864) {
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                    long j117 = jM3225getBackground0d7_KjU;
                    zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i11110 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        z3 = true;
                        objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        z3 = true;
                        objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    Modifier modifierOnConsumedWindowInsetsChanged112 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111111117 = bm3VarM3316getLambda$39202156$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111111118 = lambda$1582488484$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111111119 = lambda$414328099$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var11111111110 = bm3VarM3315getLambda$1514016380$material3;
                    final int i211112 = iM3466getEndERTFSPs;
                    ComposableLambda composableLambdaRememberComposableLambda112 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                        public final void invoke(Composer composer3, int i211113) {
                            if (!composer3.shouldExecute((i211113 & 3) != 2, i211113 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(848889571, i211113, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                            }
                            ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i211112, bm3Var1111111117, dm3Var, bm3Var1111111119, bm3Var11111111110, mutableWindowInsets, bm3Var1111111118, composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    int i211113 = i4 >> 12;
                    composer2 = composerStartRestartGroup;
                    SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged112, null, j117, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda112, composer2, (i211113 & 896) | 12582912 | (i211113 & 7168), 114);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                    bm3Var10 = lambda$1582488484$material3;
                    bm3Var11 = lambda$414328099$material3;
                    bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                    i14 = iM3466getEndERTFSPs;
                    windowInsets2 = contentWindowInsets;
                    j3 = j117;
                    j4 = j5;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    windowInsets2 = windowInsets;
                    bm3Var9 = bm3Var5;
                    bm3Var10 = bm3Var6;
                    bm3Var11 = bm3Var7;
                    bm3Var12 = bm3Var8;
                    i14 = i;
                    j3 = j;
                    j4 = j2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 24576;
            bm3Var8 = bm3Var4;
            i11 = i3 & 32;
            if (i11 != 0) {
                i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(i)) {
                    i12 = 131072;
                } else {
                    i12 = 65536;
                }
                i4 |= i12;
            }
            if ((i2 & 1572864) != 0) {
                if ((i3 & 64) == 0) {
                    i16 = 524288;
                } else {
                    i16 = 524288;
                }
                i4 |= i16;
            }
            if ((i2 & 12582912) != 0) {
                if ((i3 & 128) == 0) {
                    i15 = 4194304;
                } else {
                    i15 = 4194304;
                }
                i4 |= i15;
            }
            if ((i2 & 100663296) != 0) {
                i4 |= ((i3 & 256) == 0 || !composerStartRestartGroup.changed(windowInsets)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
            }
            if ((i3 & 512) != 0) {
                if ((i2 & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i13 = 536870912;
                    } else {
                        i13 = 268435456;
                    }
                    i4 |= i13;
                }
                if ((i4 & 306783379) != 306783378) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i18 != 0) {
                            bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                        } else {
                            bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                        }
                        if (i5 != 0) {
                            lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                        } else {
                            lambda$1582488484$material3 = bm3Var6;
                        }
                        if (i7 != 0) {
                            lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                        } else {
                            lambda$414328099$material3 = bm3Var7;
                        }
                        if (i9 != 0) {
                            bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                        } else {
                            bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                        }
                        if (i11 != 0) {
                            iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                        } else {
                            iM3466getEndERTFSPs = i;
                        }
                        if ((i3 & 64) != 0) {
                            i4 &= -3670017;
                            jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                        } else {
                            jM3225getBackground0d7_KjU = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if ((i3 & 256) != 0) {
                            contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            contentWindowInsets = windowInsets;
                        }
                        j5 = jM3275contentColorForek8zF_U;
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i18 != 0) {
                            bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                        } else {
                            bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                        }
                        if (i5 != 0) {
                            lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                        } else {
                            lambda$1582488484$material3 = bm3Var6;
                        }
                        if (i7 != 0) {
                            lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                        } else {
                            lambda$414328099$material3 = bm3Var7;
                        }
                        if (i9 != 0) {
                            bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                        } else {
                            bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                        }
                        if (i11 != 0) {
                            iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                        } else {
                            iM3466getEndERTFSPs = i;
                        }
                        if ((i3 & 64) != 0) {
                            i4 &= -3670017;
                            jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                        } else {
                            jM3225getBackground0d7_KjU = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if ((i3 & 256) != 0) {
                            contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            contentWindowInsets = windowInsets;
                        }
                        j5 = jM3275contentColorForek8zF_U;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                    }
                    int i11111 = (234881024 & i4) ^ r19;
                    if (i11111 <= 67108864) {
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                    long j118 = jM3225getBackground0d7_KjU;
                    zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i11111 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        z3 = true;
                        objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        z3 = true;
                        objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    Modifier modifierOnConsumedWindowInsetsChanged113 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                    final bm3<? super Composer, ? super Integer, j59> bm3Var11111111111 = bm3VarM3316getLambda$39202156$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var11111111112 = lambda$1582488484$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var11111111113 = lambda$414328099$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var11111111114 = bm3VarM3315getLambda$1514016380$material3;
                    final int i211114 = iM3466getEndERTFSPs;
                    ComposableLambda composableLambdaRememberComposableLambda113 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                        public final void invoke(Composer composer3, int i211115) {
                            if (!composer3.shouldExecute((i211115 & 3) != 2, i211115 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(848889571, i211115, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                            }
                            ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i211114, bm3Var11111111111, dm3Var, bm3Var11111111113, bm3Var11111111114, mutableWindowInsets, bm3Var11111111112, composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    int i211115 = i4 >> 12;
                    composer2 = composerStartRestartGroup;
                    SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged113, null, j118, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda113, composer2, (i211115 & 896) | 12582912 | (i211115 & 7168), 114);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                    bm3Var10 = lambda$1582488484$material3;
                    bm3Var11 = lambda$414328099$material3;
                    bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                    i14 = iM3466getEndERTFSPs;
                    windowInsets2 = contentWindowInsets;
                    j3 = j118;
                    j4 = j5;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    windowInsets2 = windowInsets;
                    bm3Var9 = bm3Var5;
                    bm3Var10 = bm3Var6;
                    bm3Var11 = bm3Var7;
                    bm3Var12 = bm3Var8;
                    i14 = i;
                    j3 = j;
                    j4 = j2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 805306368;
            if ((i4 & 306783379) != 306783378) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if (i18 != 0) {
                        bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                    } else {
                        bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                    }
                    if (i5 != 0) {
                        lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                    } else {
                        lambda$1582488484$material3 = bm3Var6;
                    }
                    if (i7 != 0) {
                        lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                    } else {
                        lambda$414328099$material3 = bm3Var7;
                    }
                    if (i9 != 0) {
                        bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                    } else {
                        bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                    }
                    if (i11 != 0) {
                        iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                    } else {
                        iM3466getEndERTFSPs = i;
                    }
                    if ((i3 & 64) != 0) {
                        i4 &= -3670017;
                        jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                    } else {
                        jM3225getBackground0d7_KjU = j;
                    }
                    if ((i3 & 128) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                        i4 &= -29360129;
                    } else {
                        jM3275contentColorForek8zF_U = j2;
                    }
                    if ((i3 & 256) != 0) {
                        contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                        i4 &= -234881025;
                    } else {
                        contentWindowInsets = windowInsets;
                    }
                    j5 = jM3275contentColorForek8zF_U;
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if (i18 != 0) {
                        bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                    } else {
                        bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                    }
                    if (i5 != 0) {
                        lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                    } else {
                        lambda$1582488484$material3 = bm3Var6;
                    }
                    if (i7 != 0) {
                        lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                    } else {
                        lambda$414328099$material3 = bm3Var7;
                    }
                    if (i9 != 0) {
                        bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                    } else {
                        bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                    }
                    if (i11 != 0) {
                        iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                    } else {
                        iM3466getEndERTFSPs = i;
                    }
                    if ((i3 & 64) != 0) {
                        i4 &= -3670017;
                        jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                    } else {
                        jM3225getBackground0d7_KjU = j;
                    }
                    if ((i3 & 128) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                        i4 &= -29360129;
                    } else {
                        jM3275contentColorForek8zF_U = j2;
                    }
                    if ((i3 & 256) != 0) {
                        contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                        i4 &= -234881025;
                    } else {
                        contentWindowInsets = windowInsets;
                    }
                    j5 = jM3275contentColorForek8zF_U;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                }
                int i11112 = (234881024 & i4) ^ r19;
                if (i11112 <= 67108864) {
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z2) {
                    objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                long j119 = jM3225getBackground0d7_KjU;
                zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i11112 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    z3 = true;
                    objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    z3 = true;
                    objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                Modifier modifierOnConsumedWindowInsetsChanged114 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                final bm3<? super Composer, ? super Integer, j59> bm3Var11111111115 = bm3VarM3316getLambda$39202156$material3;
                final bm3<? super Composer, ? super Integer, j59> bm3Var11111111116 = lambda$1582488484$material3;
                final bm3<? super Composer, ? super Integer, j59> bm3Var11111111117 = lambda$414328099$material3;
                final bm3<? super Composer, ? super Integer, j59> bm3Var11111111118 = bm3VarM3315getLambda$1514016380$material3;
                final int i211116 = iM3466getEndERTFSPs;
                ComposableLambda composableLambdaRememberComposableLambda114 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                    public final void invoke(Composer composer3, int i211117) {
                        if (!composer3.shouldExecute((i211117 & 3) != 2, i211117 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(848889571, i211117, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                        }
                        ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i211116, bm3Var11111111115, dm3Var, bm3Var11111111117, bm3Var11111111118, mutableWindowInsets, bm3Var11111111116, composer3, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54);
                int i211117 = i4 >> 12;
                composer2 = composerStartRestartGroup;
                SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged114, null, j119, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda114, composer2, (i211117 & 896) | 12582912 | (i211117 & 7168), 114);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier3;
                bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                bm3Var10 = lambda$1582488484$material3;
                bm3Var11 = lambda$414328099$material3;
                bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                i14 = iM3466getEndERTFSPs;
                windowInsets2 = contentWindowInsets;
                j3 = j119;
                j4 = j5;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier2 = modifier;
                windowInsets2 = windowInsets;
                bm3Var9 = bm3Var5;
                bm3Var10 = bm3Var6;
                bm3Var11 = bm3Var7;
                bm3Var12 = bm3Var8;
                i14 = i;
                j3 = j;
                j4 = j2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        bm3Var6 = bm3Var2;
        i7 = i3 & 8;
        if (i7 != 0) {
            if ((i2 & 3072) == 0) {
                bm3Var7 = bm3Var3;
                if (composerStartRestartGroup.changedInstance(bm3Var7)) {
                    i8 = 2048;
                } else {
                    i8 = 1024;
                }
                i4 |= i8;
            }
            i9 = i3 & 16;
            if (i9 != 0) {
                if ((i2 & 24576) == 0) {
                    bm3Var8 = bm3Var4;
                    if (composerStartRestartGroup.changedInstance(bm3Var8)) {
                        i10 = 16384;
                    } else {
                        i10 = 8192;
                    }
                    i4 |= i10;
                }
                i11 = i3 & 32;
                if (i11 != 0) {
                    i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(i)) {
                        i12 = 131072;
                    } else {
                        i12 = 65536;
                    }
                    i4 |= i12;
                }
                if ((i2 & 1572864) != 0) {
                    if ((i3 & 64) == 0) {
                        i16 = 524288;
                    } else {
                        i16 = 524288;
                    }
                    i4 |= i16;
                }
                if ((i2 & 12582912) != 0) {
                    if ((i3 & 128) == 0) {
                        i15 = 4194304;
                    } else {
                        i15 = 4194304;
                    }
                    i4 |= i15;
                }
                if ((i2 & 100663296) != 0) {
                    i4 |= ((i3 & 256) == 0 || !composerStartRestartGroup.changed(windowInsets)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                }
                if ((i3 & 512) != 0) {
                    if ((i2 & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i13 = 536870912;
                        } else {
                            i13 = 268435456;
                        }
                        i4 |= i13;
                    }
                    if ((i4 & 306783379) != 306783378) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if (i18 != 0) {
                                bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                            } else {
                                bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                            }
                            if (i5 != 0) {
                                lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                            } else {
                                lambda$1582488484$material3 = bm3Var6;
                            }
                            if (i7 != 0) {
                                lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                            } else {
                                lambda$414328099$material3 = bm3Var7;
                            }
                            if (i9 != 0) {
                                bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                            } else {
                                bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                            }
                            if (i11 != 0) {
                                iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                            } else {
                                iM3466getEndERTFSPs = i;
                            }
                            if ((i3 & 64) != 0) {
                                i4 &= -3670017;
                                jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                            } else {
                                jM3225getBackground0d7_KjU = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if ((i3 & 256) != 0) {
                                contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                contentWindowInsets = windowInsets;
                            }
                            j5 = jM3275contentColorForek8zF_U;
                        } else {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if (i18 != 0) {
                                bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                            } else {
                                bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                            }
                            if (i5 != 0) {
                                lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                            } else {
                                lambda$1582488484$material3 = bm3Var6;
                            }
                            if (i7 != 0) {
                                lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                            } else {
                                lambda$414328099$material3 = bm3Var7;
                            }
                            if (i9 != 0) {
                                bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                            } else {
                                bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                            }
                            if (i11 != 0) {
                                iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                            } else {
                                iM3466getEndERTFSPs = i;
                            }
                            if ((i3 & 64) != 0) {
                                i4 &= -3670017;
                                jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                            } else {
                                jM3225getBackground0d7_KjU = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if ((i3 & 256) != 0) {
                                contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                contentWindowInsets = windowInsets;
                            }
                            j5 = jM3275contentColorForek8zF_U;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                        }
                        int i11113 = (234881024 & i4) ^ r19;
                        if (i11113 <= 67108864) {
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                        long j1110 = jM3225getBackground0d7_KjU;
                        zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i11113 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            z3 = true;
                            objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            z3 = true;
                            objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        Modifier modifierOnConsumedWindowInsetsChanged115 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                        final bm3<? super Composer, ? super Integer, j59> bm3Var11111111119 = bm3VarM3316getLambda$39202156$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var111111111110 = lambda$1582488484$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var111111111111 = lambda$414328099$material3;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var111111111112 = bm3VarM3315getLambda$1514016380$material3;
                        final int i211118 = iM3466getEndERTFSPs;
                        ComposableLambda composableLambdaRememberComposableLambda115 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                            public final void invoke(Composer composer3, int i211119) {
                                if (!composer3.shouldExecute((i211119 & 3) != 2, i211119 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(848889571, i211119, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                                }
                                ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i211118, bm3Var11111111119, dm3Var, bm3Var111111111111, bm3Var111111111112, mutableWindowInsets, bm3Var111111111110, composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        int i211119 = i4 >> 12;
                        composer2 = composerStartRestartGroup;
                        SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged115, null, j1110, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda115, composer2, (i211119 & 896) | 12582912 | (i211119 & 7168), 114);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier3;
                        bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                        bm3Var10 = lambda$1582488484$material3;
                        bm3Var11 = lambda$414328099$material3;
                        bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                        i14 = iM3466getEndERTFSPs;
                        windowInsets2 = contentWindowInsets;
                        j3 = j1110;
                        j4 = j5;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        windowInsets2 = windowInsets;
                        bm3Var9 = bm3Var5;
                        bm3Var10 = bm3Var6;
                        bm3Var11 = bm3Var7;
                        bm3Var12 = bm3Var8;
                        i14 = i;
                        j3 = j;
                        j4 = j2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 805306368;
                if ((i4 & 306783379) != 306783378) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i18 != 0) {
                            bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                        } else {
                            bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                        }
                        if (i5 != 0) {
                            lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                        } else {
                            lambda$1582488484$material3 = bm3Var6;
                        }
                        if (i7 != 0) {
                            lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                        } else {
                            lambda$414328099$material3 = bm3Var7;
                        }
                        if (i9 != 0) {
                            bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                        } else {
                            bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                        }
                        if (i11 != 0) {
                            iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                        } else {
                            iM3466getEndERTFSPs = i;
                        }
                        if ((i3 & 64) != 0) {
                            i4 &= -3670017;
                            jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                        } else {
                            jM3225getBackground0d7_KjU = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if ((i3 & 256) != 0) {
                            contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            contentWindowInsets = windowInsets;
                        }
                        j5 = jM3275contentColorForek8zF_U;
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i18 != 0) {
                            bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                        } else {
                            bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                        }
                        if (i5 != 0) {
                            lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                        } else {
                            lambda$1582488484$material3 = bm3Var6;
                        }
                        if (i7 != 0) {
                            lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                        } else {
                            lambda$414328099$material3 = bm3Var7;
                        }
                        if (i9 != 0) {
                            bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                        } else {
                            bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                        }
                        if (i11 != 0) {
                            iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                        } else {
                            iM3466getEndERTFSPs = i;
                        }
                        if ((i3 & 64) != 0) {
                            i4 &= -3670017;
                            jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                        } else {
                            jM3225getBackground0d7_KjU = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if ((i3 & 256) != 0) {
                            contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            contentWindowInsets = windowInsets;
                        }
                        j5 = jM3275contentColorForek8zF_U;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                    }
                    int i11114 = (234881024 & i4) ^ r19;
                    if (i11114 <= 67108864) {
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                    long j1111 = jM3225getBackground0d7_KjU;
                    zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i11114 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        z3 = true;
                        objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        z3 = true;
                        objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    Modifier modifierOnConsumedWindowInsetsChanged116 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                    final bm3<? super Composer, ? super Integer, j59> bm3Var111111111113 = bm3VarM3316getLambda$39202156$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var111111111114 = lambda$1582488484$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var111111111115 = lambda$414328099$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var111111111116 = bm3VarM3315getLambda$1514016380$material3;
                    final int i2111110 = iM3466getEndERTFSPs;
                    ComposableLambda composableLambdaRememberComposableLambda116 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                        public final void invoke(Composer composer3, int i2111111) {
                            if (!composer3.shouldExecute((i2111111 & 3) != 2, i2111111 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(848889571, i2111111, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                            }
                            ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i2111110, bm3Var111111111113, dm3Var, bm3Var111111111115, bm3Var111111111116, mutableWindowInsets, bm3Var111111111114, composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    int i2111111 = i4 >> 12;
                    composer2 = composerStartRestartGroup;
                    SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged116, null, j1111, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda116, composer2, (i2111111 & 896) | 12582912 | (i2111111 & 7168), 114);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                    bm3Var10 = lambda$1582488484$material3;
                    bm3Var11 = lambda$414328099$material3;
                    bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                    i14 = iM3466getEndERTFSPs;
                    windowInsets2 = contentWindowInsets;
                    j3 = j1111;
                    j4 = j5;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    windowInsets2 = windowInsets;
                    bm3Var9 = bm3Var5;
                    bm3Var10 = bm3Var6;
                    bm3Var11 = bm3Var7;
                    bm3Var12 = bm3Var8;
                    i14 = i;
                    j3 = j;
                    j4 = j2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 24576;
            bm3Var8 = bm3Var4;
            i11 = i3 & 32;
            if (i11 != 0) {
                i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(i)) {
                    i12 = 131072;
                } else {
                    i12 = 65536;
                }
                i4 |= i12;
            }
            if ((i2 & 1572864) != 0) {
                if ((i3 & 64) == 0) {
                    i16 = 524288;
                } else {
                    i16 = 524288;
                }
                i4 |= i16;
            }
            if ((i2 & 12582912) != 0) {
                if ((i3 & 128) == 0) {
                    i15 = 4194304;
                } else {
                    i15 = 4194304;
                }
                i4 |= i15;
            }
            if ((i2 & 100663296) != 0) {
                i4 |= ((i3 & 256) == 0 || !composerStartRestartGroup.changed(windowInsets)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
            }
            if ((i3 & 512) != 0) {
                if ((i2 & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i13 = 536870912;
                    } else {
                        i13 = 268435456;
                    }
                    i4 |= i13;
                }
                if ((i4 & 306783379) != 306783378) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i18 != 0) {
                            bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                        } else {
                            bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                        }
                        if (i5 != 0) {
                            lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                        } else {
                            lambda$1582488484$material3 = bm3Var6;
                        }
                        if (i7 != 0) {
                            lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                        } else {
                            lambda$414328099$material3 = bm3Var7;
                        }
                        if (i9 != 0) {
                            bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                        } else {
                            bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                        }
                        if (i11 != 0) {
                            iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                        } else {
                            iM3466getEndERTFSPs = i;
                        }
                        if ((i3 & 64) != 0) {
                            i4 &= -3670017;
                            jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                        } else {
                            jM3225getBackground0d7_KjU = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if ((i3 & 256) != 0) {
                            contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            contentWindowInsets = windowInsets;
                        }
                        j5 = jM3275contentColorForek8zF_U;
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i18 != 0) {
                            bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                        } else {
                            bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                        }
                        if (i5 != 0) {
                            lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                        } else {
                            lambda$1582488484$material3 = bm3Var6;
                        }
                        if (i7 != 0) {
                            lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                        } else {
                            lambda$414328099$material3 = bm3Var7;
                        }
                        if (i9 != 0) {
                            bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                        } else {
                            bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                        }
                        if (i11 != 0) {
                            iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                        } else {
                            iM3466getEndERTFSPs = i;
                        }
                        if ((i3 & 64) != 0) {
                            i4 &= -3670017;
                            jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                        } else {
                            jM3225getBackground0d7_KjU = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if ((i3 & 256) != 0) {
                            contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            contentWindowInsets = windowInsets;
                        }
                        j5 = jM3275contentColorForek8zF_U;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                    }
                    int i11115 = (234881024 & i4) ^ r19;
                    if (i11115 <= 67108864) {
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                    long j1112 = jM3225getBackground0d7_KjU;
                    zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i11115 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        z3 = true;
                        objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        z3 = true;
                        objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    Modifier modifierOnConsumedWindowInsetsChanged117 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                    final bm3<? super Composer, ? super Integer, j59> bm3Var111111111117 = bm3VarM3316getLambda$39202156$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var111111111118 = lambda$1582488484$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var111111111119 = lambda$414328099$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111111111110 = bm3VarM3315getLambda$1514016380$material3;
                    final int i2111112 = iM3466getEndERTFSPs;
                    ComposableLambda composableLambdaRememberComposableLambda117 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                        public final void invoke(Composer composer3, int i2111113) {
                            if (!composer3.shouldExecute((i2111113 & 3) != 2, i2111113 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(848889571, i2111113, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                            }
                            ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i2111112, bm3Var111111111117, dm3Var, bm3Var111111111119, bm3Var1111111111110, mutableWindowInsets, bm3Var111111111118, composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    int i2111113 = i4 >> 12;
                    composer2 = composerStartRestartGroup;
                    SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged117, null, j1112, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda117, composer2, (i2111113 & 896) | 12582912 | (i2111113 & 7168), 114);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                    bm3Var10 = lambda$1582488484$material3;
                    bm3Var11 = lambda$414328099$material3;
                    bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                    i14 = iM3466getEndERTFSPs;
                    windowInsets2 = contentWindowInsets;
                    j3 = j1112;
                    j4 = j5;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    windowInsets2 = windowInsets;
                    bm3Var9 = bm3Var5;
                    bm3Var10 = bm3Var6;
                    bm3Var11 = bm3Var7;
                    bm3Var12 = bm3Var8;
                    i14 = i;
                    j3 = j;
                    j4 = j2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 805306368;
            if ((i4 & 306783379) != 306783378) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if (i18 != 0) {
                        bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                    } else {
                        bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                    }
                    if (i5 != 0) {
                        lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                    } else {
                        lambda$1582488484$material3 = bm3Var6;
                    }
                    if (i7 != 0) {
                        lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                    } else {
                        lambda$414328099$material3 = bm3Var7;
                    }
                    if (i9 != 0) {
                        bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                    } else {
                        bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                    }
                    if (i11 != 0) {
                        iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                    } else {
                        iM3466getEndERTFSPs = i;
                    }
                    if ((i3 & 64) != 0) {
                        i4 &= -3670017;
                        jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                    } else {
                        jM3225getBackground0d7_KjU = j;
                    }
                    if ((i3 & 128) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                        i4 &= -29360129;
                    } else {
                        jM3275contentColorForek8zF_U = j2;
                    }
                    if ((i3 & 256) != 0) {
                        contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                        i4 &= -234881025;
                    } else {
                        contentWindowInsets = windowInsets;
                    }
                    j5 = jM3275contentColorForek8zF_U;
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if (i18 != 0) {
                        bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                    } else {
                        bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                    }
                    if (i5 != 0) {
                        lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                    } else {
                        lambda$1582488484$material3 = bm3Var6;
                    }
                    if (i7 != 0) {
                        lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                    } else {
                        lambda$414328099$material3 = bm3Var7;
                    }
                    if (i9 != 0) {
                        bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                    } else {
                        bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                    }
                    if (i11 != 0) {
                        iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                    } else {
                        iM3466getEndERTFSPs = i;
                    }
                    if ((i3 & 64) != 0) {
                        i4 &= -3670017;
                        jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                    } else {
                        jM3225getBackground0d7_KjU = j;
                    }
                    if ((i3 & 128) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                        i4 &= -29360129;
                    } else {
                        jM3275contentColorForek8zF_U = j2;
                    }
                    if ((i3 & 256) != 0) {
                        contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                        i4 &= -234881025;
                    } else {
                        contentWindowInsets = windowInsets;
                    }
                    j5 = jM3275contentColorForek8zF_U;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                }
                int i11116 = (234881024 & i4) ^ r19;
                if (i11116 <= 67108864) {
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z2) {
                    objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                long j1113 = jM3225getBackground0d7_KjU;
                zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i11116 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    z3 = true;
                    objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    z3 = true;
                    objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                Modifier modifierOnConsumedWindowInsetsChanged118 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                final bm3<? super Composer, ? super Integer, j59> bm3Var1111111111111 = bm3VarM3316getLambda$39202156$material3;
                final bm3<? super Composer, ? super Integer, j59> bm3Var1111111111112 = lambda$1582488484$material3;
                final bm3<? super Composer, ? super Integer, j59> bm3Var1111111111113 = lambda$414328099$material3;
                final bm3<? super Composer, ? super Integer, j59> bm3Var1111111111114 = bm3VarM3315getLambda$1514016380$material3;
                final int i2111114 = iM3466getEndERTFSPs;
                ComposableLambda composableLambdaRememberComposableLambda118 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                    public final void invoke(Composer composer3, int i2111115) {
                        if (!composer3.shouldExecute((i2111115 & 3) != 2, i2111115 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(848889571, i2111115, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                        }
                        ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i2111114, bm3Var1111111111111, dm3Var, bm3Var1111111111113, bm3Var1111111111114, mutableWindowInsets, bm3Var1111111111112, composer3, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54);
                int i2111115 = i4 >> 12;
                composer2 = composerStartRestartGroup;
                SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged118, null, j1113, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda118, composer2, (i2111115 & 896) | 12582912 | (i2111115 & 7168), 114);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier3;
                bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                bm3Var10 = lambda$1582488484$material3;
                bm3Var11 = lambda$414328099$material3;
                bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                i14 = iM3466getEndERTFSPs;
                windowInsets2 = contentWindowInsets;
                j3 = j1113;
                j4 = j5;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier2 = modifier;
                windowInsets2 = windowInsets;
                bm3Var9 = bm3Var5;
                bm3Var10 = bm3Var6;
                bm3Var11 = bm3Var7;
                bm3Var12 = bm3Var8;
                i14 = i;
                j3 = j;
                j4 = j2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 3072;
        bm3Var7 = bm3Var3;
        i9 = i3 & 16;
        if (i9 != 0) {
            if ((i2 & 24576) == 0) {
                bm3Var8 = bm3Var4;
                if (composerStartRestartGroup.changedInstance(bm3Var8)) {
                    i10 = 16384;
                } else {
                    i10 = 8192;
                }
                i4 |= i10;
            }
            i11 = i3 & 32;
            if (i11 != 0) {
                i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(i)) {
                    i12 = 131072;
                } else {
                    i12 = 65536;
                }
                i4 |= i12;
            }
            if ((i2 & 1572864) != 0) {
                if ((i3 & 64) == 0) {
                    i16 = 524288;
                } else {
                    i16 = 524288;
                }
                i4 |= i16;
            }
            if ((i2 & 12582912) != 0) {
                if ((i3 & 128) == 0) {
                    i15 = 4194304;
                } else {
                    i15 = 4194304;
                }
                i4 |= i15;
            }
            if ((i2 & 100663296) != 0) {
                i4 |= ((i3 & 256) == 0 || !composerStartRestartGroup.changed(windowInsets)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
            }
            if ((i3 & 512) != 0) {
                if ((i2 & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i13 = 536870912;
                    } else {
                        i13 = 268435456;
                    }
                    i4 |= i13;
                }
                if ((i4 & 306783379) != 306783378) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i18 != 0) {
                            bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                        } else {
                            bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                        }
                        if (i5 != 0) {
                            lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                        } else {
                            lambda$1582488484$material3 = bm3Var6;
                        }
                        if (i7 != 0) {
                            lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                        } else {
                            lambda$414328099$material3 = bm3Var7;
                        }
                        if (i9 != 0) {
                            bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                        } else {
                            bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                        }
                        if (i11 != 0) {
                            iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                        } else {
                            iM3466getEndERTFSPs = i;
                        }
                        if ((i3 & 64) != 0) {
                            i4 &= -3670017;
                            jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                        } else {
                            jM3225getBackground0d7_KjU = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if ((i3 & 256) != 0) {
                            contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            contentWindowInsets = windowInsets;
                        }
                        j5 = jM3275contentColorForek8zF_U;
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i18 != 0) {
                            bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                        } else {
                            bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                        }
                        if (i5 != 0) {
                            lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                        } else {
                            lambda$1582488484$material3 = bm3Var6;
                        }
                        if (i7 != 0) {
                            lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                        } else {
                            lambda$414328099$material3 = bm3Var7;
                        }
                        if (i9 != 0) {
                            bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                        } else {
                            bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                        }
                        if (i11 != 0) {
                            iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                        } else {
                            iM3466getEndERTFSPs = i;
                        }
                        if ((i3 & 64) != 0) {
                            i4 &= -3670017;
                            jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                        } else {
                            jM3225getBackground0d7_KjU = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if ((i3 & 256) != 0) {
                            contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            contentWindowInsets = windowInsets;
                        }
                        j5 = jM3275contentColorForek8zF_U;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                    }
                    int i11117 = (234881024 & i4) ^ r19;
                    if (i11117 <= 67108864) {
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                    long j1114 = jM3225getBackground0d7_KjU;
                    zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i11117 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        z3 = true;
                        objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        z3 = true;
                        objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    Modifier modifierOnConsumedWindowInsetsChanged119 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111111111115 = bm3VarM3316getLambda$39202156$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111111111116 = lambda$1582488484$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111111111117 = lambda$414328099$material3;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1111111111118 = bm3VarM3315getLambda$1514016380$material3;
                    final int i2111116 = iM3466getEndERTFSPs;
                    ComposableLambda composableLambdaRememberComposableLambda119 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                        public final void invoke(Composer composer3, int i2111117) {
                            if (!composer3.shouldExecute((i2111117 & 3) != 2, i2111117 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(848889571, i2111117, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                            }
                            ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i2111116, bm3Var1111111111115, dm3Var, bm3Var1111111111117, bm3Var1111111111118, mutableWindowInsets, bm3Var1111111111116, composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    int i2111117 = i4 >> 12;
                    composer2 = composerStartRestartGroup;
                    SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged119, null, j1114, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda119, composer2, (i2111117 & 896) | 12582912 | (i2111117 & 7168), 114);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                    bm3Var10 = lambda$1582488484$material3;
                    bm3Var11 = lambda$414328099$material3;
                    bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                    i14 = iM3466getEndERTFSPs;
                    windowInsets2 = contentWindowInsets;
                    j3 = j1114;
                    j4 = j5;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    windowInsets2 = windowInsets;
                    bm3Var9 = bm3Var5;
                    bm3Var10 = bm3Var6;
                    bm3Var11 = bm3Var7;
                    bm3Var12 = bm3Var8;
                    i14 = i;
                    j3 = j;
                    j4 = j2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 805306368;
            if ((i4 & 306783379) != 306783378) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if (i18 != 0) {
                        bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                    } else {
                        bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                    }
                    if (i5 != 0) {
                        lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                    } else {
                        lambda$1582488484$material3 = bm3Var6;
                    }
                    if (i7 != 0) {
                        lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                    } else {
                        lambda$414328099$material3 = bm3Var7;
                    }
                    if (i9 != 0) {
                        bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                    } else {
                        bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                    }
                    if (i11 != 0) {
                        iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                    } else {
                        iM3466getEndERTFSPs = i;
                    }
                    if ((i3 & 64) != 0) {
                        i4 &= -3670017;
                        jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                    } else {
                        jM3225getBackground0d7_KjU = j;
                    }
                    if ((i3 & 128) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                        i4 &= -29360129;
                    } else {
                        jM3275contentColorForek8zF_U = j2;
                    }
                    if ((i3 & 256) != 0) {
                        contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                        i4 &= -234881025;
                    } else {
                        contentWindowInsets = windowInsets;
                    }
                    j5 = jM3275contentColorForek8zF_U;
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if (i18 != 0) {
                        bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                    } else {
                        bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                    }
                    if (i5 != 0) {
                        lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                    } else {
                        lambda$1582488484$material3 = bm3Var6;
                    }
                    if (i7 != 0) {
                        lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                    } else {
                        lambda$414328099$material3 = bm3Var7;
                    }
                    if (i9 != 0) {
                        bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                    } else {
                        bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                    }
                    if (i11 != 0) {
                        iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                    } else {
                        iM3466getEndERTFSPs = i;
                    }
                    if ((i3 & 64) != 0) {
                        i4 &= -3670017;
                        jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                    } else {
                        jM3225getBackground0d7_KjU = j;
                    }
                    if ((i3 & 128) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                        i4 &= -29360129;
                    } else {
                        jM3275contentColorForek8zF_U = j2;
                    }
                    if ((i3 & 256) != 0) {
                        contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                        i4 &= -234881025;
                    } else {
                        contentWindowInsets = windowInsets;
                    }
                    j5 = jM3275contentColorForek8zF_U;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                }
                int i11118 = (234881024 & i4) ^ r19;
                if (i11118 <= 67108864) {
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z2) {
                    objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                long j1115 = jM3225getBackground0d7_KjU;
                zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i11118 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    z3 = true;
                    objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    z3 = true;
                    objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                Modifier modifierOnConsumedWindowInsetsChanged1110 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                final bm3<? super Composer, ? super Integer, j59> bm3Var1111111111119 = bm3VarM3316getLambda$39202156$material3;
                final bm3<? super Composer, ? super Integer, j59> bm3Var11111111111110 = lambda$1582488484$material3;
                final bm3<? super Composer, ? super Integer, j59> bm3Var11111111111111 = lambda$414328099$material3;
                final bm3<? super Composer, ? super Integer, j59> bm3Var11111111111112 = bm3VarM3315getLambda$1514016380$material3;
                final int i2111118 = iM3466getEndERTFSPs;
                ComposableLambda composableLambdaRememberComposableLambda1110 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                    public final void invoke(Composer composer3, int i2111119) {
                        if (!composer3.shouldExecute((i2111119 & 3) != 2, i2111119 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(848889571, i2111119, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                        }
                        ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i2111118, bm3Var1111111111119, dm3Var, bm3Var11111111111111, bm3Var11111111111112, mutableWindowInsets, bm3Var11111111111110, composer3, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54);
                int i2111119 = i4 >> 12;
                composer2 = composerStartRestartGroup;
                SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged1110, null, j1115, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda1110, composer2, (i2111119 & 896) | 12582912 | (i2111119 & 7168), 114);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier3;
                bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                bm3Var10 = lambda$1582488484$material3;
                bm3Var11 = lambda$414328099$material3;
                bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                i14 = iM3466getEndERTFSPs;
                windowInsets2 = contentWindowInsets;
                j3 = j1115;
                j4 = j5;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier2 = modifier;
                windowInsets2 = windowInsets;
                bm3Var9 = bm3Var5;
                bm3Var10 = bm3Var6;
                bm3Var11 = bm3Var7;
                bm3Var12 = bm3Var8;
                i14 = i;
                j3 = j;
                j4 = j2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 24576;
        bm3Var8 = bm3Var4;
        i11 = i3 & 32;
        if (i11 != 0) {
            i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            if (composerStartRestartGroup.changed(i)) {
                i12 = 131072;
            } else {
                i12 = 65536;
            }
            i4 |= i12;
        }
        if ((i2 & 1572864) != 0) {
            if ((i3 & 64) == 0) {
                i16 = 524288;
            } else {
                i16 = 524288;
            }
            i4 |= i16;
        }
        if ((i2 & 12582912) != 0) {
            if ((i3 & 128) == 0) {
                i15 = 4194304;
            } else {
                i15 = 4194304;
            }
            i4 |= i15;
        }
        if ((i2 & 100663296) != 0) {
            i4 |= ((i3 & 256) == 0 || !composerStartRestartGroup.changed(windowInsets)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
        }
        if ((i3 & 512) != 0) {
            if ((i2 & 805306368) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i13 = 536870912;
                } else {
                    i13 = 268435456;
                }
                i4 |= i13;
            }
            if ((i4 & 306783379) != 306783378) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if (i18 != 0) {
                        bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                    } else {
                        bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                    }
                    if (i5 != 0) {
                        lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                    } else {
                        lambda$1582488484$material3 = bm3Var6;
                    }
                    if (i7 != 0) {
                        lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                    } else {
                        lambda$414328099$material3 = bm3Var7;
                    }
                    if (i9 != 0) {
                        bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                    } else {
                        bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                    }
                    if (i11 != 0) {
                        iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                    } else {
                        iM3466getEndERTFSPs = i;
                    }
                    if ((i3 & 64) != 0) {
                        i4 &= -3670017;
                        jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                    } else {
                        jM3225getBackground0d7_KjU = j;
                    }
                    if ((i3 & 128) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                        i4 &= -29360129;
                    } else {
                        jM3275contentColorForek8zF_U = j2;
                    }
                    if ((i3 & 256) != 0) {
                        contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                        i4 &= -234881025;
                    } else {
                        contentWindowInsets = windowInsets;
                    }
                    j5 = jM3275contentColorForek8zF_U;
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if (i18 != 0) {
                        bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                    } else {
                        bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                    }
                    if (i5 != 0) {
                        lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                    } else {
                        lambda$1582488484$material3 = bm3Var6;
                    }
                    if (i7 != 0) {
                        lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                    } else {
                        lambda$414328099$material3 = bm3Var7;
                    }
                    if (i9 != 0) {
                        bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                    } else {
                        bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                    }
                    if (i11 != 0) {
                        iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                    } else {
                        iM3466getEndERTFSPs = i;
                    }
                    if ((i3 & 64) != 0) {
                        i4 &= -3670017;
                        jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                    } else {
                        jM3225getBackground0d7_KjU = j;
                    }
                    if ((i3 & 128) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                        i4 &= -29360129;
                    } else {
                        jM3275contentColorForek8zF_U = j2;
                    }
                    if ((i3 & 256) != 0) {
                        contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                        i4 &= -234881025;
                    } else {
                        contentWindowInsets = windowInsets;
                    }
                    j5 = jM3275contentColorForek8zF_U;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
                }
                int i11119 = (234881024 & i4) ^ r19;
                if (i11119 <= 67108864) {
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z2) {
                    objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
                long j1116 = jM3225getBackground0d7_KjU;
                zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i11119 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    z3 = true;
                    objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    z3 = true;
                    objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                Modifier modifierOnConsumedWindowInsetsChanged1111 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
                final bm3<? super Composer, ? super Integer, j59> bm3Var11111111111113 = bm3VarM3316getLambda$39202156$material3;
                final bm3<? super Composer, ? super Integer, j59> bm3Var11111111111114 = lambda$1582488484$material3;
                final bm3<? super Composer, ? super Integer, j59> bm3Var11111111111115 = lambda$414328099$material3;
                final bm3<? super Composer, ? super Integer, j59> bm3Var11111111111116 = bm3VarM3315getLambda$1514016380$material3;
                final int i21111110 = iM3466getEndERTFSPs;
                ComposableLambda composableLambdaRememberComposableLambda1111 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                    public final void invoke(Composer composer3, int i21111111) {
                        if (!composer3.shouldExecute((i21111111 & 3) != 2, i21111111 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(848889571, i21111111, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                        }
                        ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i21111110, bm3Var11111111111113, dm3Var, bm3Var11111111111115, bm3Var11111111111116, mutableWindowInsets, bm3Var11111111111114, composer3, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54);
                int i21111111 = i4 >> 12;
                composer2 = composerStartRestartGroup;
                SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged1111, null, j1116, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda1111, composer2, (i21111111 & 896) | 12582912 | (i21111111 & 7168), 114);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier3;
                bm3Var9 = bm3VarM3316getLambda$39202156$material3;
                bm3Var10 = lambda$1582488484$material3;
                bm3Var11 = lambda$414328099$material3;
                bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
                i14 = iM3466getEndERTFSPs;
                windowInsets2 = contentWindowInsets;
                j3 = j1116;
                j4 = j5;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier2 = modifier;
                windowInsets2 = windowInsets;
                bm3Var9 = bm3Var5;
                bm3Var10 = bm3Var6;
                bm3Var11 = bm3Var7;
                bm3Var12 = bm3Var8;
                i14 = i;
                j3 = j;
                j4 = j2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 805306368;
        if ((i4 & 306783379) != 306783378) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i2 & 1) != 0) {
                if (i17 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier;
                }
                if (i18 != 0) {
                    bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                } else {
                    bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                }
                if (i5 != 0) {
                    lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                } else {
                    lambda$1582488484$material3 = bm3Var6;
                }
                if (i7 != 0) {
                    lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                } else {
                    lambda$414328099$material3 = bm3Var7;
                }
                if (i9 != 0) {
                    bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                } else {
                    bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                }
                if (i11 != 0) {
                    iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                } else {
                    iM3466getEndERTFSPs = i;
                }
                if ((i3 & 64) != 0) {
                    i4 &= -3670017;
                    jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                } else {
                    jM3225getBackground0d7_KjU = j;
                }
                if ((i3 & 128) != 0) {
                    jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                    i4 &= -29360129;
                } else {
                    jM3275contentColorForek8zF_U = j2;
                }
                if ((i3 & 256) != 0) {
                    contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                    i4 &= -234881025;
                } else {
                    contentWindowInsets = windowInsets;
                }
                j5 = jM3275contentColorForek8zF_U;
            } else {
                if (i17 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier;
                }
                if (i18 != 0) {
                    bm3VarM3316getLambda$39202156$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3316getLambda$39202156$material3();
                } else {
                    bm3VarM3316getLambda$39202156$material3 = bm3Var5;
                }
                if (i5 != 0) {
                    lambda$1582488484$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$1582488484$material3();
                } else {
                    lambda$1582488484$material3 = bm3Var6;
                }
                if (i7 != 0) {
                    lambda$414328099$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.getLambda$414328099$material3();
                } else {
                    lambda$414328099$material3 = bm3Var7;
                }
                if (i9 != 0) {
                    bm3VarM3315getLambda$1514016380$material3 = ComposableSingletons$ScaffoldKt.INSTANCE.m3315getLambda$1514016380$material3();
                } else {
                    bm3VarM3315getLambda$1514016380$material3 = bm3Var8;
                }
                if (i11 != 0) {
                    iM3466getEndERTFSPs = FabPosition.Companion.m3466getEndERTFSPs();
                } else {
                    iM3466getEndERTFSPs = i;
                }
                if ((i3 & 64) != 0) {
                    i4 &= -3670017;
                    jM3225getBackground0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3225getBackground0d7_KjU();
                } else {
                    jM3225getBackground0d7_KjU = j;
                }
                if ((i3 & 128) != 0) {
                    jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(jM3225getBackground0d7_KjU, composerStartRestartGroup, (i4 >> 18) & 14);
                    i4 &= -29360129;
                } else {
                    jM3275contentColorForek8zF_U = j2;
                }
                if ((i3 & 256) != 0) {
                    contentWindowInsets = ScaffoldDefaults.INSTANCE.getContentWindowInsets(composerStartRestartGroup, 6);
                    i4 &= -234881025;
                } else {
                    contentWindowInsets = windowInsets;
                }
                j5 = jM3275contentColorForek8zF_U;
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1211482744, i4, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:93)");
            }
            int i111110 = (234881024 & i4) ^ r19;
            if (i111110 <= 67108864) {
            }
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z2) {
                objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                objRememberedValue = new MutableWindowInsets(contentWindowInsets);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            mutableWindowInsets = (MutableWindowInsets) objRememberedValue;
            long j1117 = jM3225getBackground0d7_KjU;
            zChanged = composerStartRestartGroup.changed(mutableWindowInsets) | ((i111110 <= 67108864 && composerStartRestartGroup.changed(contentWindowInsets)) || (i4 & 100663296) == 67108864);
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (zChanged) {
                z3 = true;
                objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            } else {
                z3 = true;
                objRememberedValue2 = new bg1(1 == true ? 1 : 0, mutableWindowInsets, contentWindowInsets);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            Modifier modifierOnConsumedWindowInsetsChanged1112 = WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier3, (nl3) objRememberedValue2);
            final bm3<? super Composer, ? super Integer, j59> bm3Var11111111111117 = bm3VarM3316getLambda$39202156$material3;
            final bm3<? super Composer, ? super Integer, j59> bm3Var11111111111118 = lambda$1582488484$material3;
            final bm3<? super Composer, ? super Integer, j59> bm3Var11111111111119 = lambda$414328099$material3;
            final bm3<? super Composer, ? super Integer, j59> bm3Var111111111111110 = bm3VarM3315getLambda$1514016380$material3;
            final int i21111112 = iM3466getEndERTFSPs;
            ComposableLambda composableLambdaRememberComposableLambda1112 = ComposableLambdaKt.rememberComposableLambda(848889571, z3, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                public final void invoke(Composer composer3, int i21111113) {
                    if (!composer3.shouldExecute((i21111113 & 3) != 2, i21111113 & 1)) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(848889571, i21111113, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:104)");
                    }
                    ScaffoldKt.m3779ScaffoldLayoutFMILGgc(i21111112, bm3Var11111111111117, dm3Var, bm3Var11111111111119, bm3Var111111111111110, mutableWindowInsets, bm3Var11111111111118, composer3, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                    invoke(composer3, num.intValue());
                    return j59.a;
                }
            }, composerStartRestartGroup, 54);
            int i21111113 = i4 >> 12;
            composer2 = composerStartRestartGroup;
            SurfaceKt.m3942SurfaceT9BRK9s(modifierOnConsumedWindowInsetsChanged1112, null, j1117, j5, 0.0f, 0.0f, null, composableLambdaRememberComposableLambda1112, composer2, (i21111113 & 896) | 12582912 | (i21111113 & 7168), 114);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier2 = modifier3;
            bm3Var9 = bm3VarM3316getLambda$39202156$material3;
            bm3Var10 = lambda$1582488484$material3;
            bm3Var11 = lambda$414328099$material3;
            bm3Var12 = bm3VarM3315getLambda$1514016380$material3;
            i14 = iM3466getEndERTFSPs;
            windowInsets2 = contentWindowInsets;
            j3 = j1117;
            j4 = j5;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            modifier2 = modifier;
            windowInsets2 = windowInsets;
            bm3Var9 = bm3Var5;
            bm3Var10 = bm3Var6;
            bm3Var11 = bm3Var7;
            bm3Var12 = bm3Var8;
            i14 = i;
            j3 = j;
            j4 = j2;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hd7
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ScaffoldKt.Scaffold_TvnljyQ$lambda$3(modifier2, bm3Var9, bm3Var10, bm3Var11, bm3Var12, i14, j3, j4, windowInsets2, dm3Var, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: ScaffoldLayout-FMILGgc, reason: not valid java name */
    public static final void m3779ScaffoldLayoutFMILGgc(final int i, final bm3<? super Composer, ? super Integer, j59> bm3Var, final dm3<? super PaddingValues, ? super Composer, ? super Integer, j59> dm3Var, final bm3<? super Composer, ? super Integer, j59> bm3Var2, final bm3<? super Composer, ? super Integer, j59> bm3Var3, final WindowInsets windowInsets, final bm3<? super Composer, ? super Integer, j59> bm3Var4, Composer composer, int i2) {
        int i3;
        int i4;
        int i5;
        Composer composerStartRestartGroup = composer.startRestartGroup(-280287501);
        if ((i2 & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(i) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(bm3Var) ? 32 : 16;
        }
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(dm3Var) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(bm3Var2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(bm3Var3) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= composerStartRestartGroup.changed(windowInsets) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(bm3Var4) ? 1048576 : 524288;
        }
        if (composerStartRestartGroup.shouldExecute((i3 & 599187) != 599186, i3 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-280287501, i3, -1, "androidx.compose.material3.ScaffoldLayout (Scaffold.kt:137)");
            }
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = new ScaffoldKt$ScaffoldLayout$contentPadding$1$1();
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            final ScaffoldKt$ScaffoldLayout$contentPadding$1$1 scaffoldKt$ScaffoldLayout$contentPadding$1$1 = (ScaffoldKt$ScaffoldLayout$contentPadding$1$1) objRememberedValue;
            boolean z = (i3 & 112) == 32;
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue2 == companion.getEmpty()) {
                objRememberedValue2 = ComposableLambdaKt.composableLambdaInstance(605195056, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$ScaffoldLayout$topBarContent$1$1
                    public final void invoke(Composer composer2, int i6) {
                        if (!composer2.shouldExecute((i6 & 3) != 2, i6 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(605195056, i6, -1, "androidx.compose.material3.ScaffoldLayout.<anonymous>.<anonymous> (Scaffold.kt:158)");
                        }
                        bm3<Composer, Integer, j59> bm3Var5 = bm3Var;
                        Modifier.Companion companion2 = Modifier.Companion;
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                        CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, companion2);
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
                        if (cc.f(bm3Var5, composer2, 0)) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                });
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            final bm3 bm3Var5 = (bm3) objRememberedValue2;
            boolean z2 = (i3 & 7168) == 2048;
            Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (z2 || objRememberedValue3 == companion.getEmpty()) {
                objRememberedValue3 = ComposableLambdaKt.composableLambdaInstance(418899191, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$ScaffoldLayout$snackbarContent$1$1
                    public final void invoke(Composer composer2, int i6) {
                        if (!composer2.shouldExecute((i6 & 3) != 2, i6 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(418899191, i6, -1, "androidx.compose.material3.ScaffoldLayout.<anonymous>.<anonymous> (Scaffold.kt:159)");
                        }
                        bm3<Composer, Integer, j59> bm3Var6 = bm3Var2;
                        Modifier.Companion companion2 = Modifier.Companion;
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                        CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, companion2);
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
                        if (cc.f(bm3Var6, composer2, 0)) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                });
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            final bm3 bm3Var6 = (bm3) objRememberedValue3;
            boolean z3 = (57344 & i3) == 16384;
            Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (z3 || objRememberedValue4 == companion.getEmpty()) {
                objRememberedValue4 = ComposableLambdaKt.composableLambdaInstance(338600263, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$ScaffoldLayout$fabContent$1$1
                    public final void invoke(Composer composer2, int i6) {
                        if (!composer2.shouldExecute((i6 & 3) != 2, i6 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(338600263, i6, -1, "androidx.compose.material3.ScaffoldLayout.<anonymous>.<anonymous> (Scaffold.kt:160)");
                        }
                        bm3<Composer, Integer, j59> bm3Var7 = bm3Var3;
                        Modifier.Companion companion2 = Modifier.Companion;
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                        CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, companion2);
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
                        if (cc.f(bm3Var7, composer2, 0)) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                });
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            final bm3 bm3Var7 = (bm3) objRememberedValue4;
            boolean z4 = (i3 & 896) == 256;
            Object objRememberedValue5 = composerStartRestartGroup.rememberedValue();
            if (z4 || objRememberedValue5 == companion.getEmpty()) {
                objRememberedValue5 = ComposableLambdaKt.composableLambdaInstance(-1776388365, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$ScaffoldLayout$bodyContent$1$1
                    public final void invoke(Composer composer2, int i6) {
                        if (!composer2.shouldExecute((i6 & 3) != 2, i6 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1776388365, i6, -1, "androidx.compose.material3.ScaffoldLayout.<anonymous>.<anonymous> (Scaffold.kt:162)");
                        }
                        dm3<PaddingValues, Composer, Integer, j59> dm3Var2 = dm3Var;
                        ScaffoldKt$ScaffoldLayout$contentPadding$1$1 scaffoldKt$ScaffoldLayout$contentPadding$1$2 = scaffoldKt$ScaffoldLayout$contentPadding$1$1;
                        Modifier.Companion companion2 = Modifier.Companion;
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                        CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, companion2);
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
                        dm3Var2.invoke(scaffoldKt$ScaffoldLayout$contentPadding$1$2, composer2, 6);
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
                });
                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
            }
            final bm3 bm3Var8 = (bm3) objRememberedValue5;
            boolean z5 = (3670016 & i3) == 1048576;
            Object objRememberedValue6 = composerStartRestartGroup.rememberedValue();
            if (z5 || objRememberedValue6 == companion.getEmpty()) {
                objRememberedValue6 = ComposableLambdaKt.composableLambdaInstance(-1731662488, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ScaffoldKt$ScaffoldLayout$bottomBarContent$1$1
                    public final void invoke(Composer composer2, int i6) {
                        if (!composer2.shouldExecute((i6 & 3) != 2, i6 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1731662488, i6, -1, "androidx.compose.material3.ScaffoldLayout.<anonymous>.<anonymous> (Scaffold.kt:163)");
                        }
                        bm3<Composer, Integer, j59> bm3Var9 = bm3Var4;
                        Modifier.Companion companion2 = Modifier.Companion;
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                        CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, companion2);
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
                        if (cc.f(bm3Var9, composer2, 0)) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                });
                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
            }
            final bm3 bm3Var9 = (bm3) objRememberedValue6;
            boolean zChanged = ((458752 & i3) == 131072) | composerStartRestartGroup.changed(bm3Var5) | composerStartRestartGroup.changed(bm3Var6) | composerStartRestartGroup.changed(bm3Var7) | ((i3 & 14) == 4) | composerStartRestartGroup.changed(bm3Var9) | composerStartRestartGroup.changed(bm3Var8);
            Object objRememberedValue7 = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue7 == companion.getEmpty()) {
                i4 = 1;
                i5 = 0;
                bm3 bm3Var10 = new bm3() { // from class: id7
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        return ScaffoldKt.ScaffoldLayout_FMILGgc$lambda$15$lambda$14(windowInsets, bm3Var5, bm3Var6, bm3Var7, i, bm3Var9, scaffoldKt$ScaffoldLayout$contentPadding$1$1, bm3Var8, (SubcomposeMeasureScope) obj, (Constraints) obj2);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(bm3Var10);
                objRememberedValue7 = bm3Var10;
            } else {
                i5 = 0;
                i4 = 1;
            }
            SubcomposeLayoutKt.SubcomposeLayout(null, (bm3) objRememberedValue7, composerStartRestartGroup, i5, i4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new u31(i, bm3Var, dm3Var, bm3Var2, bm3Var3, windowInsets, bm3Var4, i2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult ScaffoldLayout_FMILGgc$lambda$15$lambda$14(final WindowInsets windowInsets, bm3 bm3Var, bm3 bm3Var2, bm3 bm3Var3, int i, bm3 bm3Var4, ScaffoldKt$ScaffoldLayout$contentPadding$1$1 scaffoldKt$ScaffoldLayout$contentPadding$1$1, bm3 bm3Var5, final SubcomposeMeasureScope subcomposeMeasureScope, Constraints constraints) {
        int iMo1428roundToPx0680j_4;
        int iMo1428roundToPx0680j_5;
        int i2;
        FabPlacement fabPlacement;
        Integer numValueOf;
        int iIntValue;
        int iMo1428roundToPx0680j_6;
        int bottom;
        final int iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(constraints.m9001unboximpl());
        final int iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(constraints.m9001unboximpl());
        long jM8985copyZbe2FdA$default = Constraints.m8985copyZbe2FdA$default(constraints.m9001unboximpl(), 0, 0, 0, 0, 10, null);
        int left = windowInsets.getLeft(subcomposeMeasureScope, subcomposeMeasureScope.getLayoutDirection());
        int right = windowInsets.getRight(subcomposeMeasureScope, subcomposeMeasureScope.getLayoutDirection());
        int bottom2 = windowInsets.getBottom(subcomposeMeasureScope);
        final Placeable placeableMo7702measureBRTryo0 = ((Measurable) qn1.T(subcomposeMeasureScope.subcompose(ScaffoldLayoutContent.TopBar, bm3Var))).mo7702measureBRTryo0(jM8985copyZbe2FdA$default);
        int i3 = (-left) - right;
        int i4 = -bottom2;
        final Placeable placeableMo7702measureBRTryo1 = ((Measurable) qn1.T(subcomposeMeasureScope.subcompose(ScaffoldLayoutContent.Snackbar, bm3Var2))).mo7702measureBRTryo0(ConstraintsKt.m9014offsetNN6EwU(jM8985copyZbe2FdA$default, i3, i4));
        final Placeable placeableMo7702measureBRTryo2 = ((Measurable) qn1.T(subcomposeMeasureScope.subcompose(ScaffoldLayoutContent.Fab, bm3Var3))).mo7702measureBRTryo0(ConstraintsKt.m9014offsetNN6EwU(jM8985copyZbe2FdA$default, i3, i4));
        if (placeableMo7702measureBRTryo2.getWidth() == 0 && placeableMo7702measureBRTryo2.getHeight() == 0) {
            fabPlacement = null;
        } else {
            int width = placeableMo7702measureBRTryo2.getWidth();
            int height = placeableMo7702measureBRTryo2.getHeight();
            FabPosition.Companion companion = FabPosition.Companion;
            if (FabPosition.m3461equalsimpl0(i, companion.m3468getStartERTFSPs())) {
                if (subcomposeMeasureScope.getLayoutDirection() == LayoutDirection.Ltr) {
                    iMo1428roundToPx0680j_4 = subcomposeMeasureScope.mo1428roundToPx0680j_4(FabSpacing);
                    i2 = iMo1428roundToPx0680j_4 + left;
                } else {
                    iMo1428roundToPx0680j_5 = subcomposeMeasureScope.mo1428roundToPx0680j_4(FabSpacing);
                    i2 = ((iM8995getMaxWidthimpl - iMo1428roundToPx0680j_5) - width) - right;
                }
            } else if (!FabPosition.m3461equalsimpl0(i, companion.m3466getEndERTFSPs()) && !FabPosition.m3461equalsimpl0(i, companion.m3467getEndOverlayERTFSPs())) {
                i2 = (((iM8995getMaxWidthimpl - width) + left) - right) / 2;
            } else if (subcomposeMeasureScope.getLayoutDirection() == LayoutDirection.Ltr) {
                iMo1428roundToPx0680j_5 = subcomposeMeasureScope.mo1428roundToPx0680j_4(FabSpacing);
                i2 = ((iM8995getMaxWidthimpl - iMo1428roundToPx0680j_5) - width) - right;
            } else {
                iMo1428roundToPx0680j_4 = subcomposeMeasureScope.mo1428roundToPx0680j_4(FabSpacing);
                i2 = iMo1428roundToPx0680j_4 + left;
            }
            fabPlacement = new FabPlacement(i2, width, height);
        }
        final Placeable placeableMo7702measureBRTryo3 = ((Measurable) qn1.T(subcomposeMeasureScope.subcompose(ScaffoldLayoutContent.BottomBar, bm3Var4))).mo7702measureBRTryo0(jM8985copyZbe2FdA$default);
        int i5 = 0;
        boolean z = placeableMo7702measureBRTryo3.getWidth() == 0 && placeableMo7702measureBRTryo3.getHeight() == 0;
        if (fabPlacement != null) {
            if (z || FabPosition.m3461equalsimpl0(i, FabPosition.Companion.m3467getEndOverlayERTFSPs())) {
                iMo1428roundToPx0680j_6 = subcomposeMeasureScope.mo1428roundToPx0680j_4(FabSpacing) + fabPlacement.getHeight();
                bottom = windowInsets.getBottom(subcomposeMeasureScope);
            } else {
                iMo1428roundToPx0680j_6 = fabPlacement.getHeight() + placeableMo7702measureBRTryo3.getHeight();
                bottom = subcomposeMeasureScope.mo1428roundToPx0680j_4(FabSpacing);
            }
            numValueOf = Integer.valueOf(bottom + iMo1428roundToPx0680j_6);
        } else {
            numValueOf = null;
        }
        int height2 = placeableMo7702measureBRTryo1.getHeight();
        if (height2 != 0) {
            if (numValueOf != null) {
                iIntValue = numValueOf.intValue();
            } else {
                Integer numValueOf2 = Integer.valueOf(placeableMo7702measureBRTryo3.getHeight());
                if (z) {
                    numValueOf2 = null;
                }
                iIntValue = numValueOf2 != null ? numValueOf2.intValue() : windowInsets.getBottom(subcomposeMeasureScope);
            }
            i5 = iIntValue + height2;
        }
        PaddingValues paddingValuesAsPaddingValues = WindowInsetsKt.asPaddingValues(windowInsets, subcomposeMeasureScope);
        final Integer num = numValueOf;
        final FabPlacement fabPlacement2 = fabPlacement;
        scaffoldKt$ScaffoldLayout$contentPadding$1$1.setPaddingHolder(PaddingKt.m2029PaddingValuesa9UjIt4(PaddingKt.calculateStartPadding(paddingValuesAsPaddingValues, subcomposeMeasureScope.getLayoutDirection()), (placeableMo7702measureBRTryo0.getWidth() == 0 && placeableMo7702measureBRTryo0.getHeight() == 0) ? paddingValuesAsPaddingValues.mo1985calculateTopPaddingD9Ej5fM() : subcomposeMeasureScope.mo1431toDpu2uoSUM(placeableMo7702measureBRTryo0.getHeight()), PaddingKt.calculateEndPadding(paddingValuesAsPaddingValues, subcomposeMeasureScope.getLayoutDirection()), z ? paddingValuesAsPaddingValues.mo1982calculateBottomPaddingD9Ej5fM() : subcomposeMeasureScope.mo1431toDpu2uoSUM(placeableMo7702measureBRTryo3.getHeight())));
        final Placeable placeableMo7702measureBRTryo4 = ((Measurable) qn1.T(subcomposeMeasureScope.subcompose(ScaffoldLayoutContent.MainContent, bm3Var5))).mo7702measureBRTryo0(jM8985copyZbe2FdA$default);
        final int i6 = i5;
        return MeasureScope.layout$default(subcomposeMeasureScope, iM8995getMaxWidthimpl, iM8994getMaxHeightimpl, null, new nl3() { // from class: jd7
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return ScaffoldKt.ScaffoldLayout_FMILGgc$lambda$15$lambda$14$lambda$13(placeableMo7702measureBRTryo4, placeableMo7702measureBRTryo0, placeableMo7702measureBRTryo1, iM8995getMaxWidthimpl, windowInsets, subcomposeMeasureScope, iM8994getMaxHeightimpl, i6, placeableMo7702measureBRTryo3, fabPlacement2, placeableMo7702measureBRTryo2, num, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ScaffoldLayout_FMILGgc$lambda$15$lambda$14$lambda$13(Placeable placeable, Placeable placeable2, Placeable placeable3, int i, WindowInsets windowInsets, SubcomposeMeasureScope subcomposeMeasureScope, int i2, int i3, Placeable placeable4, FabPlacement fabPlacement, Placeable placeable5, Integer num, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.place$default(placementScope, placeable, 0, 0, 0.0f, 4, null);
        Placeable.PlacementScope.place$default(placementScope, placeable2, 0, 0, 0.0f, 4, null);
        Placeable.PlacementScope.place$default(placementScope, placeable3, ((windowInsets.getLeft(subcomposeMeasureScope, subcomposeMeasureScope.getLayoutDirection()) + (i - placeable3.getWidth())) - windowInsets.getRight(subcomposeMeasureScope, subcomposeMeasureScope.getLayoutDirection())) / 2, i2 - i3, 0.0f, 4, null);
        Placeable.PlacementScope.place$default(placementScope, placeable4, 0, i2 - placeable4.getHeight(), 0.0f, 4, null);
        if (fabPlacement != null) {
            int left = fabPlacement.getLeft();
            num.getClass();
            Placeable.PlacementScope.place$default(placementScope, placeable5, left, i2 - num.intValue(), 0.0f, 4, null);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ScaffoldLayout_FMILGgc$lambda$16(int i, bm3 bm3Var, dm3 dm3Var, bm3 bm3Var2, bm3 bm3Var3, WindowInsets windowInsets, bm3 bm3Var4, int i2, Composer composer, int i3) {
        m3779ScaffoldLayoutFMILGgc(i, bm3Var, dm3Var, bm3Var2, bm3Var3, windowInsets, bm3Var4, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Scaffold_TvnljyQ$lambda$2$lambda$1(MutableWindowInsets mutableWindowInsets, WindowInsets windowInsets, WindowInsets windowInsets2) {
        mutableWindowInsets.setInsets(WindowInsetsKt.exclude(windowInsets, windowInsets2));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Scaffold_TvnljyQ$lambda$3(Modifier modifier, bm3 bm3Var, bm3 bm3Var2, bm3 bm3Var3, bm3 bm3Var4, int i, long j, long j2, WindowInsets windowInsets, dm3 dm3Var, int i2, int i3, Composer composer, int i4) {
        m3778ScaffoldTvnljyQ(modifier, bm3Var, bm3Var2, bm3Var3, bm3Var4, i, j, j2, windowInsets, dm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), i3);
        return j59.a;
    }
}
