package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.RendererCapabilities;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class dd1 {

    /* JADX INFO: loaded from: classes.dex */
    public static final class a implements MeasurePolicy {
        public static final a a = new a();

        @Override // androidx.compose.ui.layout.MeasurePolicy
        /* JADX INFO: renamed from: measure-3p2s80s */
        public final MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
            measureScope.getClass();
            list.getClass();
            long jM8985copyZbe2FdA$default = Constraints.m8985copyZbe2FdA$default(j, 0, 0, 0, 0, 10, null);
            final Placeable placeableMo7702measureBRTryo0 = list.get(0).mo7702measureBRTryo0(jM8985copyZbe2FdA$default);
            final Placeable placeableMo7702measureBRTryo1 = list.get(2).mo7702measureBRTryo0(jM8985copyZbe2FdA$default);
            int iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j) - (Math.max(placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo1.getWidth()) * 2);
            final Placeable placeableMo7702measureBRTryo2 = list.get(1).mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(jM8985copyZbe2FdA$default, 0, iM8995getMaxWidthimpl < 0 ? 0 : iM8995getMaxWidthimpl, 0, 0, 13, null));
            final int iM8995getMaxWidthimpl2 = Constraints.m8995getMaxWidthimpl(j);
            final int iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(j);
            return MeasureScope.layout$default(measureScope, iM8995getMaxWidthimpl2, iM8994getMaxHeightimpl, null, new nl3() { // from class: cd1
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                    placementScope.getClass();
                    Placeable placeable = placeableMo7702measureBRTryo0;
                    int height = placeable.getHeight();
                    int i = iM8994getMaxHeightimpl;
                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, (i - height) / 2, 0.0f, 4, null);
                    int i2 = iM8995getMaxWidthimpl2;
                    Placeable placeable2 = placeableMo7702measureBRTryo2;
                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, ug.b(i2, 2, placeable2), tg.b(i, 2, placeable2), 0.0f, 4, null);
                    Placeable placeable3 = placeableMo7702measureBRTryo1;
                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, i2 - placeable3.getWidth(), tg.b(i, 2, placeable3), 0.0f, 4, null);
                    return j59.a;
                }
            }, 4, null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0040  */
    /* JADX WARN: Code duplicated, block: B:25:0x0045  */
    /* JADX WARN: Code duplicated, block: B:27:0x0049  */
    /* JADX WARN: Code duplicated, block: B:29:0x0051  */
    /* JADX WARN: Code duplicated, block: B:30:0x0054  */
    /* JADX WARN: Code duplicated, block: B:34:0x005b  */
    /* JADX WARN: Code duplicated, block: B:36:0x0060  */
    /* JADX WARN: Code duplicated, block: B:38:0x0064  */
    /* JADX WARN: Code duplicated, block: B:40:0x006c  */
    /* JADX WARN: Code duplicated, block: B:41:0x006f  */
    /* JADX WARN: Code duplicated, block: B:45:0x007a  */
    /* JADX WARN: Code duplicated, block: B:46:0x007c  */
    /* JADX WARN: Code duplicated, block: B:49:0x0085 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x0087  */
    /* JADX WARN: Code duplicated, block: B:51:0x008a  */
    /* JADX WARN: Code duplicated, block: B:53:0x008d  */
    /* JADX WARN: Code duplicated, block: B:54:0x0090  */
    /* JADX WARN: Code duplicated, block: B:56:0x0093  */
    /* JADX WARN: Code duplicated, block: B:59:0x009c  */
    /* JADX WARN: Code duplicated, block: B:62:0x00da  */
    /* JADX WARN: Code duplicated, block: B:65:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:68:0x0109  */
    /* JADX WARN: Code duplicated, block: B:69:0x010d  */
    /* JADX WARN: Code duplicated, block: B:72:0x0148  */
    /* JADX WARN: Code duplicated, block: B:75:0x0154  */
    /* JADX WARN: Code duplicated, block: B:76:0x0158  */
    /* JADX WARN: Code duplicated, block: B:79:0x0202  */
    /* JADX WARN: Code duplicated, block: B:82:0x020e  */
    /* JADX WARN: Code duplicated, block: B:83:0x0212  */
    /* JADX WARN: Code duplicated, block: B:86:0x0240  */
    /* JADX WARN: Code duplicated, block: B:88:0x0248  */
    /* JADX WARN: Code duplicated, block: B:91:0x0255  */
    /* JADX WARN: Code duplicated, block: B:93:? A[RETURN, SYNTHETIC] */
    public static final void a(final String str, Modifier modifier, bm3<? super Composer, ? super Integer, j59> bm3Var, bm3<? super Composer, ? super Integer, j59> bm3Var2, Composer composer, final int i, final int i2) {
        int i3;
        Modifier modifier2;
        int i4;
        bm3<? super Composer, ? super Integer, j59> bm3Var3;
        int i5;
        int i6;
        bm3<? super Composer, ? super Integer, j59> bm3Var4;
        int i7;
        boolean z;
        Composer composer2;
        final Modifier modifier3;
        final bm3<? super Composer, ? super Integer, j59> bm3Var5;
        final bm3<? super Composer, ? super Integer, j59> bm3Var6;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        bm3<? super Composer, ? super Integer, j59> bm3Var7;
        Object objRememberedValue;
        ll3<ComposeUiNode> constructor;
        ll3<ComposeUiNode> constructor2;
        ll3<ComposeUiNode> constructor3;
        str.getClass();
        Composer composerStartRestartGroup = composer.startRestartGroup(-177922516);
        if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(str) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i8 = i2 & 2;
        if (i8 == 0) {
            if ((i & 48) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            i4 = i2 & 4;
            if (i4 != 0) {
                if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    bm3Var3 = bm3Var;
                    if (composerStartRestartGroup.changedInstance(bm3Var3)) {
                        i5 = 256;
                    } else {
                        i5 = 128;
                    }
                    i3 |= i5;
                }
                i6 = i2 & 8;
                if (i6 != 0) {
                    if ((i & 3072) == 0) {
                        bm3Var4 = bm3Var2;
                        if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                            i7 = 2048;
                        } else {
                            i7 = 1024;
                        }
                        i3 |= i7;
                    }
                    if ((i3 & 1171) != 1170) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                        if (i8 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            bm3Var7 = pt1.a;
                        } else {
                            bm3Var7 = bm3Var3;
                        }
                        if (i6 != 0) {
                            bm3Var4 = pt1.b;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-177922516, i3, -1, "com.warefly.checkscan.design.compose.toolbars.topbar.CheckscanTopBar (CheckscanTopBar.kt:26)");
                        }
                        Modifier modifierM2035paddingVpY3zN4$default = PaddingKt.m2035paddingVpY3zN4$default(BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.m2085height3ABfNKs(SizeKt.fillMaxWidth$default(modifier4, 0.0f, 1, null), Dp.m9042constructorimpl(60.0f)), go2.b(composerStartRestartGroup).z, null, 2, null), Dp.m9042constructorimpl(8.0f), 0.0f, 2, null);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = a.a;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        MeasurePolicy measurePolicy = (MeasurePolicy) objRememberedValue;
                        int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                        CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2035paddingVpY3zN4$default);
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
                        jg.d(companion, composerM5355constructorimpl, measurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, (bm3<? super T, ? super Modifier, j59>) hm.b(companion, composerM5355constructorimpl, Integer.valueOf(iHashCode), composerM5355constructorimpl));
                        Modifier.Companion companion2 = Modifier.Companion;
                        Alignment.Companion companion3 = Alignment.Companion;
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                        int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                        CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion2);
                        constructor2 = companion.getConstructor();
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
                        jg.d(companion, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, (bm3<? super T, ? super Modifier, j59>) hm.b(companion, composerM5355constructorimpl2, Integer.valueOf(iHashCode2), composerM5355constructorimpl2));
                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                        bm3Var7.invoke(composerStartRestartGroup, Integer.valueOf((i3 >> 6) & 14));
                        composerStartRestartGroup.endNode();
                        bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var7;
                        bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var4;
                        int i9 = i3;
                        TextKt.m4085TextNvy7gAk(str, null, go2.b(composerStartRestartGroup).A, null, 0L, null, null, null, 0L, null, null, 0L, TextOverflow.Companion.m8978getEllipsisgIe3tQ8(), false, 1, 0, null, go2.c(composerStartRestartGroup).c, composerStartRestartGroup, i3 & 14, 24960, 110586);
                        composer2 = composerStartRestartGroup;
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                        int iHashCode3 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer2, 0));
                        CompositionLocalMap currentCompositionLocalMap3 = composer2.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer2, companion2);
                        constructor3 = companion.getConstructor();
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
                        jg.d(companion, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                        Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, (bm3<? super T, ? super Modifier, j59>) hm.b(companion, composerM5355constructorimpl3, Integer.valueOf(iHashCode3), composerM5355constructorimpl3));
                        bm3Var9.invoke(composer2, Integer.valueOf((i9 >> 9) & 14));
                        composer2.endNode();
                        composer2.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        bm3Var5 = bm3Var8;
                        bm3Var6 = bm3Var9;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        bm3Var5 = bm3Var3;
                        bm3Var6 = bm3Var4;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: bd1
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                dd1.a(str, modifier3, bm3Var5, bm3Var6, (Composer) obj, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
                                return j59.a;
                            }
                        });
                    }
                }
                i3 |= 3072;
                bm3Var4 = bm3Var2;
                if ((i3 & 1171) != 1170) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i8 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        bm3Var7 = pt1.a;
                    } else {
                        bm3Var7 = bm3Var3;
                    }
                    if (i6 != 0) {
                        bm3Var4 = pt1.b;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-177922516, i3, -1, "com.warefly.checkscan.design.compose.toolbars.topbar.CheckscanTopBar (CheckscanTopBar.kt:26)");
                    }
                    Modifier modifierM2035paddingVpY3zN4$default2 = PaddingKt.m2035paddingVpY3zN4$default(BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.m2085height3ABfNKs(SizeKt.fillMaxWidth$default(modifier4, 0.0f, 1, null), Dp.m9042constructorimpl(60.0f)), go2.b(composerStartRestartGroup).z, null, 2, null), Dp.m9042constructorimpl(8.0f), 0.0f, 2, null);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = a.a;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    MeasurePolicy measurePolicy2 = (MeasurePolicy) objRememberedValue;
                    int iHashCode4 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap4 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2035paddingVpY3zN4$default2);
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
                    Composer composerM5355constructorimpl4 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    jg.d(companion4, composerM5355constructorimpl4, measurePolicy2, composerM5355constructorimpl4, currentCompositionLocalMap4);
                    Updater.m5363setimpl(composerM5355constructorimpl4, modifierMaterializeModifier4, (bm3<? super T, ? super Modifier, j59>) hm.b(companion4, composerM5355constructorimpl4, Integer.valueOf(iHashCode4), composerM5355constructorimpl4));
                    Modifier.Companion companion5 = Modifier.Companion;
                    Alignment.Companion companion6 = Alignment.Companion;
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(companion6.getTopStart(), false);
                    int iHashCode5 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap5 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier5 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion5);
                    constructor2 = companion4.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor2);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    Composer composerM5355constructorimpl5 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    jg.d(companion4, composerM5355constructorimpl5, measurePolicyMaybeCachedBoxMeasurePolicy3, composerM5355constructorimpl5, currentCompositionLocalMap5);
                    Updater.m5363setimpl(composerM5355constructorimpl5, modifierMaterializeModifier5, (bm3<? super T, ? super Modifier, j59>) hm.b(companion4, composerM5355constructorimpl5, Integer.valueOf(iHashCode5), composerM5355constructorimpl5));
                    BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                    bm3Var7.invoke(composerStartRestartGroup, Integer.valueOf((i3 >> 6) & 14));
                    composerStartRestartGroup.endNode();
                    bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var7;
                    bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var4;
                    int i10 = i3;
                    TextKt.m4085TextNvy7gAk(str, null, go2.b(composerStartRestartGroup).A, null, 0L, null, null, null, 0L, null, null, 0L, TextOverflow.Companion.m8978getEllipsisgIe3tQ8(), false, 1, 0, null, go2.c(composerStartRestartGroup).c, composerStartRestartGroup, i3 & 14, 24960, 110586);
                    composer2 = composerStartRestartGroup;
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy4 = BoxKt.maybeCachedBoxMeasurePolicy(companion6.getTopStart(), false);
                    int iHashCode6 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer2, 0));
                    CompositionLocalMap currentCompositionLocalMap6 = composer2.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier6 = ComposedModifierKt.materializeModifier(composer2, companion5);
                    constructor3 = companion4.getConstructor();
                    if (composer2.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composer2.startReusableNode();
                    if (composer2.getInserting()) {
                        composer2.createNode(constructor3);
                    } else {
                        composer2.useNode();
                    }
                    Composer composerM5355constructorimpl6 = Updater.m5355constructorimpl(composer2);
                    jg.d(companion4, composerM5355constructorimpl6, measurePolicyMaybeCachedBoxMeasurePolicy4, composerM5355constructorimpl6, currentCompositionLocalMap6);
                    Updater.m5363setimpl(composerM5355constructorimpl6, modifierMaterializeModifier6, (bm3<? super T, ? super Modifier, j59>) hm.b(companion4, composerM5355constructorimpl6, Integer.valueOf(iHashCode6), composerM5355constructorimpl6));
                    bm3Var11.invoke(composer2, Integer.valueOf((i10 >> 9) & 14));
                    composer2.endNode();
                    composer2.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    bm3Var5 = bm3Var10;
                    bm3Var6 = bm3Var11;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    bm3Var5 = bm3Var3;
                    bm3Var6 = bm3Var4;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: bd1
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            dd1.a(str, modifier3, bm3Var5, bm3Var6, (Composer) obj, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
                            return j59.a;
                        }
                    });
                }
            }
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            bm3Var3 = bm3Var;
            i6 = i2 & 8;
            if (i6 != 0) {
                if ((i & 3072) == 0) {
                    bm3Var4 = bm3Var2;
                    if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                if ((i3 & 1171) != 1170) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i8 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        bm3Var7 = pt1.a;
                    } else {
                        bm3Var7 = bm3Var3;
                    }
                    if (i6 != 0) {
                        bm3Var4 = pt1.b;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-177922516, i3, -1, "com.warefly.checkscan.design.compose.toolbars.topbar.CheckscanTopBar (CheckscanTopBar.kt:26)");
                    }
                    Modifier modifierM2035paddingVpY3zN4$default3 = PaddingKt.m2035paddingVpY3zN4$default(BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.m2085height3ABfNKs(SizeKt.fillMaxWidth$default(modifier4, 0.0f, 1, null), Dp.m9042constructorimpl(60.0f)), go2.b(composerStartRestartGroup).z, null, 2, null), Dp.m9042constructorimpl(8.0f), 0.0f, 2, null);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = a.a;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    MeasurePolicy measurePolicy3 = (MeasurePolicy) objRememberedValue;
                    int iHashCode7 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap7 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier7 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2035paddingVpY3zN4$default3);
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
                    Composer composerM5355constructorimpl7 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    jg.d(companion7, composerM5355constructorimpl7, measurePolicy3, composerM5355constructorimpl7, currentCompositionLocalMap7);
                    Updater.m5363setimpl(composerM5355constructorimpl7, modifierMaterializeModifier7, (bm3<? super T, ? super Modifier, j59>) hm.b(companion7, composerM5355constructorimpl7, Integer.valueOf(iHashCode7), composerM5355constructorimpl7));
                    Modifier.Companion companion8 = Modifier.Companion;
                    Alignment.Companion companion9 = Alignment.Companion;
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy5 = BoxKt.maybeCachedBoxMeasurePolicy(companion9.getTopStart(), false);
                    int iHashCode8 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap8 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier8 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion8);
                    constructor2 = companion7.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor2);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    Composer composerM5355constructorimpl8 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    jg.d(companion7, composerM5355constructorimpl8, measurePolicyMaybeCachedBoxMeasurePolicy5, composerM5355constructorimpl8, currentCompositionLocalMap8);
                    Updater.m5363setimpl(composerM5355constructorimpl8, modifierMaterializeModifier8, (bm3<? super T, ? super Modifier, j59>) hm.b(companion7, composerM5355constructorimpl8, Integer.valueOf(iHashCode8), composerM5355constructorimpl8));
                    BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                    bm3Var7.invoke(composerStartRestartGroup, Integer.valueOf((i3 >> 6) & 14));
                    composerStartRestartGroup.endNode();
                    bm3<? super Composer, ? super Integer, j59> bm3Var12 = bm3Var7;
                    bm3<? super Composer, ? super Integer, j59> bm3Var13 = bm3Var4;
                    int i11 = i3;
                    TextKt.m4085TextNvy7gAk(str, null, go2.b(composerStartRestartGroup).A, null, 0L, null, null, null, 0L, null, null, 0L, TextOverflow.Companion.m8978getEllipsisgIe3tQ8(), false, 1, 0, null, go2.c(composerStartRestartGroup).c, composerStartRestartGroup, i3 & 14, 24960, 110586);
                    composer2 = composerStartRestartGroup;
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy6 = BoxKt.maybeCachedBoxMeasurePolicy(companion9.getTopStart(), false);
                    int iHashCode9 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer2, 0));
                    CompositionLocalMap currentCompositionLocalMap9 = composer2.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier9 = ComposedModifierKt.materializeModifier(composer2, companion8);
                    constructor3 = companion7.getConstructor();
                    if (composer2.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composer2.startReusableNode();
                    if (composer2.getInserting()) {
                        composer2.createNode(constructor3);
                    } else {
                        composer2.useNode();
                    }
                    Composer composerM5355constructorimpl9 = Updater.m5355constructorimpl(composer2);
                    jg.d(companion7, composerM5355constructorimpl9, measurePolicyMaybeCachedBoxMeasurePolicy6, composerM5355constructorimpl9, currentCompositionLocalMap9);
                    Updater.m5363setimpl(composerM5355constructorimpl9, modifierMaterializeModifier9, (bm3<? super T, ? super Modifier, j59>) hm.b(companion7, composerM5355constructorimpl9, Integer.valueOf(iHashCode9), composerM5355constructorimpl9));
                    bm3Var13.invoke(composer2, Integer.valueOf((i11 >> 9) & 14));
                    composer2.endNode();
                    composer2.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    bm3Var5 = bm3Var12;
                    bm3Var6 = bm3Var13;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    bm3Var5 = bm3Var3;
                    bm3Var6 = bm3Var4;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: bd1
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            dd1.a(str, modifier3, bm3Var5, bm3Var6, (Composer) obj, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
                            return j59.a;
                        }
                    });
                }
            }
            i3 |= 3072;
            bm3Var4 = bm3Var2;
            if ((i3 & 1171) != 1170) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i8 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    bm3Var7 = pt1.a;
                } else {
                    bm3Var7 = bm3Var3;
                }
                if (i6 != 0) {
                    bm3Var4 = pt1.b;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-177922516, i3, -1, "com.warefly.checkscan.design.compose.toolbars.topbar.CheckscanTopBar (CheckscanTopBar.kt:26)");
                }
                Modifier modifierM2035paddingVpY3zN4$default4 = PaddingKt.m2035paddingVpY3zN4$default(BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.m2085height3ABfNKs(SizeKt.fillMaxWidth$default(modifier4, 0.0f, 1, null), Dp.m9042constructorimpl(60.0f)), go2.b(composerStartRestartGroup).z, null, 2, null), Dp.m9042constructorimpl(8.0f), 0.0f, 2, null);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = a.a;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                MeasurePolicy measurePolicy4 = (MeasurePolicy) objRememberedValue;
                int iHashCode10 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                CompositionLocalMap currentCompositionLocalMap10 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier10 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2035paddingVpY3zN4$default4);
                ComposeUiNode.Companion companion10 = ComposeUiNode.Companion;
                constructor = companion10.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                Composer composerM5355constructorimpl10 = Updater.m5355constructorimpl(composerStartRestartGroup);
                jg.d(companion10, composerM5355constructorimpl10, measurePolicy4, composerM5355constructorimpl10, currentCompositionLocalMap10);
                Updater.m5363setimpl(composerM5355constructorimpl10, modifierMaterializeModifier10, (bm3<? super T, ? super Modifier, j59>) hm.b(companion10, composerM5355constructorimpl10, Integer.valueOf(iHashCode10), composerM5355constructorimpl10));
                Modifier.Companion companion11 = Modifier.Companion;
                Alignment.Companion companion12 = Alignment.Companion;
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy7 = BoxKt.maybeCachedBoxMeasurePolicy(companion12.getTopStart(), false);
                int iHashCode11 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                CompositionLocalMap currentCompositionLocalMap11 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier11 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion11);
                constructor2 = companion10.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor2);
                } else {
                    composerStartRestartGroup.useNode();
                }
                Composer composerM5355constructorimpl11 = Updater.m5355constructorimpl(composerStartRestartGroup);
                jg.d(companion10, composerM5355constructorimpl11, measurePolicyMaybeCachedBoxMeasurePolicy7, composerM5355constructorimpl11, currentCompositionLocalMap11);
                Updater.m5363setimpl(composerM5355constructorimpl11, modifierMaterializeModifier11, (bm3<? super T, ? super Modifier, j59>) hm.b(companion10, composerM5355constructorimpl11, Integer.valueOf(iHashCode11), composerM5355constructorimpl11));
                BoxScopeInstance boxScopeInstance4 = BoxScopeInstance.INSTANCE;
                bm3Var7.invoke(composerStartRestartGroup, Integer.valueOf((i3 >> 6) & 14));
                composerStartRestartGroup.endNode();
                bm3<? super Composer, ? super Integer, j59> bm3Var14 = bm3Var7;
                bm3<? super Composer, ? super Integer, j59> bm3Var15 = bm3Var4;
                int i12 = i3;
                TextKt.m4085TextNvy7gAk(str, null, go2.b(composerStartRestartGroup).A, null, 0L, null, null, null, 0L, null, null, 0L, TextOverflow.Companion.m8978getEllipsisgIe3tQ8(), false, 1, 0, null, go2.c(composerStartRestartGroup).c, composerStartRestartGroup, i3 & 14, 24960, 110586);
                composer2 = composerStartRestartGroup;
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy8 = BoxKt.maybeCachedBoxMeasurePolicy(companion12.getTopStart(), false);
                int iHashCode12 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer2, 0));
                CompositionLocalMap currentCompositionLocalMap12 = composer2.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier12 = ComposedModifierKt.materializeModifier(composer2, companion11);
                constructor3 = companion10.getConstructor();
                if (composer2.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composer2.startReusableNode();
                if (composer2.getInserting()) {
                    composer2.createNode(constructor3);
                } else {
                    composer2.useNode();
                }
                Composer composerM5355constructorimpl12 = Updater.m5355constructorimpl(composer2);
                jg.d(companion10, composerM5355constructorimpl12, measurePolicyMaybeCachedBoxMeasurePolicy8, composerM5355constructorimpl12, currentCompositionLocalMap12);
                Updater.m5363setimpl(composerM5355constructorimpl12, modifierMaterializeModifier12, (bm3<? super T, ? super Modifier, j59>) hm.b(companion10, composerM5355constructorimpl12, Integer.valueOf(iHashCode12), composerM5355constructorimpl12));
                bm3Var15.invoke(composer2, Integer.valueOf((i12 >> 9) & 14));
                composer2.endNode();
                composer2.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                bm3Var5 = bm3Var14;
                bm3Var6 = bm3Var15;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                bm3Var5 = bm3Var3;
                bm3Var6 = bm3Var4;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: bd1
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        dd1.a(str, modifier3, bm3Var5, bm3Var6, (Composer) obj, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
                        return j59.a;
                    }
                });
            }
        }
        i3 |= 48;
        modifier2 = modifier;
        i4 = i2 & 4;
        if (i4 != 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                bm3Var3 = bm3Var;
                if (composerStartRestartGroup.changedInstance(bm3Var3)) {
                    i5 = 256;
                } else {
                    i5 = 128;
                }
                i3 |= i5;
            }
            i6 = i2 & 8;
            if (i6 != 0) {
                if ((i & 3072) == 0) {
                    bm3Var4 = bm3Var2;
                    if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                if ((i3 & 1171) != 1170) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i8 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        bm3Var7 = pt1.a;
                    } else {
                        bm3Var7 = bm3Var3;
                    }
                    if (i6 != 0) {
                        bm3Var4 = pt1.b;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-177922516, i3, -1, "com.warefly.checkscan.design.compose.toolbars.topbar.CheckscanTopBar (CheckscanTopBar.kt:26)");
                    }
                    Modifier modifierM2035paddingVpY3zN4$default5 = PaddingKt.m2035paddingVpY3zN4$default(BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.m2085height3ABfNKs(SizeKt.fillMaxWidth$default(modifier4, 0.0f, 1, null), Dp.m9042constructorimpl(60.0f)), go2.b(composerStartRestartGroup).z, null, 2, null), Dp.m9042constructorimpl(8.0f), 0.0f, 2, null);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = a.a;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    MeasurePolicy measurePolicy5 = (MeasurePolicy) objRememberedValue;
                    int iHashCode13 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap13 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier13 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2035paddingVpY3zN4$default5);
                    ComposeUiNode.Companion companion13 = ComposeUiNode.Companion;
                    constructor = companion13.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    Composer composerM5355constructorimpl13 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    jg.d(companion13, composerM5355constructorimpl13, measurePolicy5, composerM5355constructorimpl13, currentCompositionLocalMap13);
                    Updater.m5363setimpl(composerM5355constructorimpl13, modifierMaterializeModifier13, (bm3<? super T, ? super Modifier, j59>) hm.b(companion13, composerM5355constructorimpl13, Integer.valueOf(iHashCode13), composerM5355constructorimpl13));
                    Modifier.Companion companion14 = Modifier.Companion;
                    Alignment.Companion companion15 = Alignment.Companion;
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy9 = BoxKt.maybeCachedBoxMeasurePolicy(companion15.getTopStart(), false);
                    int iHashCode14 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap14 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier14 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion14);
                    constructor2 = companion13.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor2);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    Composer composerM5355constructorimpl14 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    jg.d(companion13, composerM5355constructorimpl14, measurePolicyMaybeCachedBoxMeasurePolicy9, composerM5355constructorimpl14, currentCompositionLocalMap14);
                    Updater.m5363setimpl(composerM5355constructorimpl14, modifierMaterializeModifier14, (bm3<? super T, ? super Modifier, j59>) hm.b(companion13, composerM5355constructorimpl14, Integer.valueOf(iHashCode14), composerM5355constructorimpl14));
                    BoxScopeInstance boxScopeInstance5 = BoxScopeInstance.INSTANCE;
                    bm3Var7.invoke(composerStartRestartGroup, Integer.valueOf((i3 >> 6) & 14));
                    composerStartRestartGroup.endNode();
                    bm3<? super Composer, ? super Integer, j59> bm3Var16 = bm3Var7;
                    bm3<? super Composer, ? super Integer, j59> bm3Var17 = bm3Var4;
                    int i13 = i3;
                    TextKt.m4085TextNvy7gAk(str, null, go2.b(composerStartRestartGroup).A, null, 0L, null, null, null, 0L, null, null, 0L, TextOverflow.Companion.m8978getEllipsisgIe3tQ8(), false, 1, 0, null, go2.c(composerStartRestartGroup).c, composerStartRestartGroup, i3 & 14, 24960, 110586);
                    composer2 = composerStartRestartGroup;
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy10 = BoxKt.maybeCachedBoxMeasurePolicy(companion15.getTopStart(), false);
                    int iHashCode15 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer2, 0));
                    CompositionLocalMap currentCompositionLocalMap15 = composer2.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier15 = ComposedModifierKt.materializeModifier(composer2, companion14);
                    constructor3 = companion13.getConstructor();
                    if (composer2.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composer2.startReusableNode();
                    if (composer2.getInserting()) {
                        composer2.createNode(constructor3);
                    } else {
                        composer2.useNode();
                    }
                    Composer composerM5355constructorimpl15 = Updater.m5355constructorimpl(composer2);
                    jg.d(companion13, composerM5355constructorimpl15, measurePolicyMaybeCachedBoxMeasurePolicy10, composerM5355constructorimpl15, currentCompositionLocalMap15);
                    Updater.m5363setimpl(composerM5355constructorimpl15, modifierMaterializeModifier15, (bm3<? super T, ? super Modifier, j59>) hm.b(companion13, composerM5355constructorimpl15, Integer.valueOf(iHashCode15), composerM5355constructorimpl15));
                    bm3Var17.invoke(composer2, Integer.valueOf((i13 >> 9) & 14));
                    composer2.endNode();
                    composer2.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    bm3Var5 = bm3Var16;
                    bm3Var6 = bm3Var17;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    bm3Var5 = bm3Var3;
                    bm3Var6 = bm3Var4;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: bd1
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            dd1.a(str, modifier3, bm3Var5, bm3Var6, (Composer) obj, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
                            return j59.a;
                        }
                    });
                }
            }
            i3 |= 3072;
            bm3Var4 = bm3Var2;
            if ((i3 & 1171) != 1170) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i8 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    bm3Var7 = pt1.a;
                } else {
                    bm3Var7 = bm3Var3;
                }
                if (i6 != 0) {
                    bm3Var4 = pt1.b;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-177922516, i3, -1, "com.warefly.checkscan.design.compose.toolbars.topbar.CheckscanTopBar (CheckscanTopBar.kt:26)");
                }
                Modifier modifierM2035paddingVpY3zN4$default6 = PaddingKt.m2035paddingVpY3zN4$default(BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.m2085height3ABfNKs(SizeKt.fillMaxWidth$default(modifier4, 0.0f, 1, null), Dp.m9042constructorimpl(60.0f)), go2.b(composerStartRestartGroup).z, null, 2, null), Dp.m9042constructorimpl(8.0f), 0.0f, 2, null);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = a.a;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                MeasurePolicy measurePolicy6 = (MeasurePolicy) objRememberedValue;
                int iHashCode16 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                CompositionLocalMap currentCompositionLocalMap16 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier16 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2035paddingVpY3zN4$default6);
                ComposeUiNode.Companion companion16 = ComposeUiNode.Companion;
                constructor = companion16.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                Composer composerM5355constructorimpl16 = Updater.m5355constructorimpl(composerStartRestartGroup);
                jg.d(companion16, composerM5355constructorimpl16, measurePolicy6, composerM5355constructorimpl16, currentCompositionLocalMap16);
                Updater.m5363setimpl(composerM5355constructorimpl16, modifierMaterializeModifier16, (bm3<? super T, ? super Modifier, j59>) hm.b(companion16, composerM5355constructorimpl16, Integer.valueOf(iHashCode16), composerM5355constructorimpl16));
                Modifier.Companion companion17 = Modifier.Companion;
                Alignment.Companion companion18 = Alignment.Companion;
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy11 = BoxKt.maybeCachedBoxMeasurePolicy(companion18.getTopStart(), false);
                int iHashCode17 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                CompositionLocalMap currentCompositionLocalMap17 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier17 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion17);
                constructor2 = companion16.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor2);
                } else {
                    composerStartRestartGroup.useNode();
                }
                Composer composerM5355constructorimpl17 = Updater.m5355constructorimpl(composerStartRestartGroup);
                jg.d(companion16, composerM5355constructorimpl17, measurePolicyMaybeCachedBoxMeasurePolicy11, composerM5355constructorimpl17, currentCompositionLocalMap17);
                Updater.m5363setimpl(composerM5355constructorimpl17, modifierMaterializeModifier17, (bm3<? super T, ? super Modifier, j59>) hm.b(companion16, composerM5355constructorimpl17, Integer.valueOf(iHashCode17), composerM5355constructorimpl17));
                BoxScopeInstance boxScopeInstance6 = BoxScopeInstance.INSTANCE;
                bm3Var7.invoke(composerStartRestartGroup, Integer.valueOf((i3 >> 6) & 14));
                composerStartRestartGroup.endNode();
                bm3<? super Composer, ? super Integer, j59> bm3Var18 = bm3Var7;
                bm3<? super Composer, ? super Integer, j59> bm3Var19 = bm3Var4;
                int i14 = i3;
                TextKt.m4085TextNvy7gAk(str, null, go2.b(composerStartRestartGroup).A, null, 0L, null, null, null, 0L, null, null, 0L, TextOverflow.Companion.m8978getEllipsisgIe3tQ8(), false, 1, 0, null, go2.c(composerStartRestartGroup).c, composerStartRestartGroup, i3 & 14, 24960, 110586);
                composer2 = composerStartRestartGroup;
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy12 = BoxKt.maybeCachedBoxMeasurePolicy(companion18.getTopStart(), false);
                int iHashCode18 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer2, 0));
                CompositionLocalMap currentCompositionLocalMap18 = composer2.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier18 = ComposedModifierKt.materializeModifier(composer2, companion17);
                constructor3 = companion16.getConstructor();
                if (composer2.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composer2.startReusableNode();
                if (composer2.getInserting()) {
                    composer2.createNode(constructor3);
                } else {
                    composer2.useNode();
                }
                Composer composerM5355constructorimpl18 = Updater.m5355constructorimpl(composer2);
                jg.d(companion16, composerM5355constructorimpl18, measurePolicyMaybeCachedBoxMeasurePolicy12, composerM5355constructorimpl18, currentCompositionLocalMap18);
                Updater.m5363setimpl(composerM5355constructorimpl18, modifierMaterializeModifier18, (bm3<? super T, ? super Modifier, j59>) hm.b(companion16, composerM5355constructorimpl18, Integer.valueOf(iHashCode18), composerM5355constructorimpl18));
                bm3Var19.invoke(composer2, Integer.valueOf((i14 >> 9) & 14));
                composer2.endNode();
                composer2.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                bm3Var5 = bm3Var18;
                bm3Var6 = bm3Var19;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                bm3Var5 = bm3Var3;
                bm3Var6 = bm3Var4;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: bd1
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        dd1.a(str, modifier3, bm3Var5, bm3Var6, (Composer) obj, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
                        return j59.a;
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        bm3Var3 = bm3Var;
        i6 = i2 & 8;
        if (i6 != 0) {
            if ((i & 3072) == 0) {
                bm3Var4 = bm3Var2;
                if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                    i7 = 2048;
                } else {
                    i7 = 1024;
                }
                i3 |= i7;
            }
            if ((i3 & 1171) != 1170) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i8 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    bm3Var7 = pt1.a;
                } else {
                    bm3Var7 = bm3Var3;
                }
                if (i6 != 0) {
                    bm3Var4 = pt1.b;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-177922516, i3, -1, "com.warefly.checkscan.design.compose.toolbars.topbar.CheckscanTopBar (CheckscanTopBar.kt:26)");
                }
                Modifier modifierM2035paddingVpY3zN4$default7 = PaddingKt.m2035paddingVpY3zN4$default(BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.m2085height3ABfNKs(SizeKt.fillMaxWidth$default(modifier4, 0.0f, 1, null), Dp.m9042constructorimpl(60.0f)), go2.b(composerStartRestartGroup).z, null, 2, null), Dp.m9042constructorimpl(8.0f), 0.0f, 2, null);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = a.a;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                MeasurePolicy measurePolicy7 = (MeasurePolicy) objRememberedValue;
                int iHashCode19 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                CompositionLocalMap currentCompositionLocalMap19 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier19 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2035paddingVpY3zN4$default7);
                ComposeUiNode.Companion companion19 = ComposeUiNode.Companion;
                constructor = companion19.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                Composer composerM5355constructorimpl19 = Updater.m5355constructorimpl(composerStartRestartGroup);
                jg.d(companion19, composerM5355constructorimpl19, measurePolicy7, composerM5355constructorimpl19, currentCompositionLocalMap19);
                Updater.m5363setimpl(composerM5355constructorimpl19, modifierMaterializeModifier19, (bm3<? super T, ? super Modifier, j59>) hm.b(companion19, composerM5355constructorimpl19, Integer.valueOf(iHashCode19), composerM5355constructorimpl19));
                Modifier.Companion companion110 = Modifier.Companion;
                Alignment.Companion companion111 = Alignment.Companion;
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy13 = BoxKt.maybeCachedBoxMeasurePolicy(companion111.getTopStart(), false);
                int iHashCode110 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                CompositionLocalMap currentCompositionLocalMap110 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier110 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion110);
                constructor2 = companion19.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor2);
                } else {
                    composerStartRestartGroup.useNode();
                }
                Composer composerM5355constructorimpl110 = Updater.m5355constructorimpl(composerStartRestartGroup);
                jg.d(companion19, composerM5355constructorimpl110, measurePolicyMaybeCachedBoxMeasurePolicy13, composerM5355constructorimpl110, currentCompositionLocalMap110);
                Updater.m5363setimpl(composerM5355constructorimpl110, modifierMaterializeModifier110, (bm3<? super T, ? super Modifier, j59>) hm.b(companion19, composerM5355constructorimpl110, Integer.valueOf(iHashCode110), composerM5355constructorimpl110));
                BoxScopeInstance boxScopeInstance7 = BoxScopeInstance.INSTANCE;
                bm3Var7.invoke(composerStartRestartGroup, Integer.valueOf((i3 >> 6) & 14));
                composerStartRestartGroup.endNode();
                bm3<? super Composer, ? super Integer, j59> bm3Var110 = bm3Var7;
                bm3<? super Composer, ? super Integer, j59> bm3Var111 = bm3Var4;
                int i15 = i3;
                TextKt.m4085TextNvy7gAk(str, null, go2.b(composerStartRestartGroup).A, null, 0L, null, null, null, 0L, null, null, 0L, TextOverflow.Companion.m8978getEllipsisgIe3tQ8(), false, 1, 0, null, go2.c(composerStartRestartGroup).c, composerStartRestartGroup, i3 & 14, 24960, 110586);
                composer2 = composerStartRestartGroup;
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy14 = BoxKt.maybeCachedBoxMeasurePolicy(companion111.getTopStart(), false);
                int iHashCode111 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer2, 0));
                CompositionLocalMap currentCompositionLocalMap111 = composer2.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier111 = ComposedModifierKt.materializeModifier(composer2, companion110);
                constructor3 = companion19.getConstructor();
                if (composer2.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composer2.startReusableNode();
                if (composer2.getInserting()) {
                    composer2.createNode(constructor3);
                } else {
                    composer2.useNode();
                }
                Composer composerM5355constructorimpl111 = Updater.m5355constructorimpl(composer2);
                jg.d(companion19, composerM5355constructorimpl111, measurePolicyMaybeCachedBoxMeasurePolicy14, composerM5355constructorimpl111, currentCompositionLocalMap111);
                Updater.m5363setimpl(composerM5355constructorimpl111, modifierMaterializeModifier111, (bm3<? super T, ? super Modifier, j59>) hm.b(companion19, composerM5355constructorimpl111, Integer.valueOf(iHashCode111), composerM5355constructorimpl111));
                bm3Var111.invoke(composer2, Integer.valueOf((i15 >> 9) & 14));
                composer2.endNode();
                composer2.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                bm3Var5 = bm3Var110;
                bm3Var6 = bm3Var111;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                bm3Var5 = bm3Var3;
                bm3Var6 = bm3Var4;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: bd1
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        dd1.a(str, modifier3, bm3Var5, bm3Var6, (Composer) obj, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
                        return j59.a;
                    }
                });
            }
        }
        i3 |= 3072;
        bm3Var4 = bm3Var2;
        if ((i3 & 1171) != 1170) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
            if (i8 != 0) {
                modifier4 = Modifier.Companion;
            } else {
                modifier4 = modifier2;
            }
            if (i4 != 0) {
                bm3Var7 = pt1.a;
            } else {
                bm3Var7 = bm3Var3;
            }
            if (i6 != 0) {
                bm3Var4 = pt1.b;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-177922516, i3, -1, "com.warefly.checkscan.design.compose.toolbars.topbar.CheckscanTopBar (CheckscanTopBar.kt:26)");
            }
            Modifier modifierM2035paddingVpY3zN4$default8 = PaddingKt.m2035paddingVpY3zN4$default(BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.m2085height3ABfNKs(SizeKt.fillMaxWidth$default(modifier4, 0.0f, 1, null), Dp.m9042constructorimpl(60.0f)), go2.b(composerStartRestartGroup).z, null, 2, null), Dp.m9042constructorimpl(8.0f), 0.0f, 2, null);
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = a.a;
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            MeasurePolicy measurePolicy8 = (MeasurePolicy) objRememberedValue;
            int iHashCode112 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
            CompositionLocalMap currentCompositionLocalMap112 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier112 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2035paddingVpY3zN4$default8);
            ComposeUiNode.Companion companion112 = ComposeUiNode.Companion;
            constructor = companion112.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5355constructorimpl112 = Updater.m5355constructorimpl(composerStartRestartGroup);
            jg.d(companion112, composerM5355constructorimpl112, measurePolicy8, composerM5355constructorimpl112, currentCompositionLocalMap112);
            Updater.m5363setimpl(composerM5355constructorimpl112, modifierMaterializeModifier112, (bm3<? super T, ? super Modifier, j59>) hm.b(companion112, composerM5355constructorimpl112, Integer.valueOf(iHashCode112), composerM5355constructorimpl112));
            Modifier.Companion companion113 = Modifier.Companion;
            Alignment.Companion companion114 = Alignment.Companion;
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy15 = BoxKt.maybeCachedBoxMeasurePolicy(companion114.getTopStart(), false);
            int iHashCode113 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
            CompositionLocalMap currentCompositionLocalMap113 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier113 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion113);
            constructor2 = companion112.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor2);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5355constructorimpl113 = Updater.m5355constructorimpl(composerStartRestartGroup);
            jg.d(companion112, composerM5355constructorimpl113, measurePolicyMaybeCachedBoxMeasurePolicy15, composerM5355constructorimpl113, currentCompositionLocalMap113);
            Updater.m5363setimpl(composerM5355constructorimpl113, modifierMaterializeModifier113, (bm3<? super T, ? super Modifier, j59>) hm.b(companion112, composerM5355constructorimpl113, Integer.valueOf(iHashCode113), composerM5355constructorimpl113));
            BoxScopeInstance boxScopeInstance8 = BoxScopeInstance.INSTANCE;
            bm3Var7.invoke(composerStartRestartGroup, Integer.valueOf((i3 >> 6) & 14));
            composerStartRestartGroup.endNode();
            bm3<? super Composer, ? super Integer, j59> bm3Var112 = bm3Var7;
            bm3<? super Composer, ? super Integer, j59> bm3Var113 = bm3Var4;
            int i16 = i3;
            TextKt.m4085TextNvy7gAk(str, null, go2.b(composerStartRestartGroup).A, null, 0L, null, null, null, 0L, null, null, 0L, TextOverflow.Companion.m8978getEllipsisgIe3tQ8(), false, 1, 0, null, go2.c(composerStartRestartGroup).c, composerStartRestartGroup, i3 & 14, 24960, 110586);
            composer2 = composerStartRestartGroup;
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy16 = BoxKt.maybeCachedBoxMeasurePolicy(companion114.getTopStart(), false);
            int iHashCode114 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer2, 0));
            CompositionLocalMap currentCompositionLocalMap114 = composer2.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier114 = ComposedModifierKt.materializeModifier(composer2, companion113);
            constructor3 = companion112.getConstructor();
            if (composer2.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composer2.startReusableNode();
            if (composer2.getInserting()) {
                composer2.createNode(constructor3);
            } else {
                composer2.useNode();
            }
            Composer composerM5355constructorimpl114 = Updater.m5355constructorimpl(composer2);
            jg.d(companion112, composerM5355constructorimpl114, measurePolicyMaybeCachedBoxMeasurePolicy16, composerM5355constructorimpl114, currentCompositionLocalMap114);
            Updater.m5363setimpl(composerM5355constructorimpl114, modifierMaterializeModifier114, (bm3<? super T, ? super Modifier, j59>) hm.b(companion112, composerM5355constructorimpl114, Integer.valueOf(iHashCode114), composerM5355constructorimpl114));
            bm3Var113.invoke(composer2, Integer.valueOf((i16 >> 9) & 14));
            composer2.endNode();
            composer2.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier4;
            bm3Var5 = bm3Var112;
            bm3Var6 = bm3Var113;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            modifier3 = modifier2;
            bm3Var5 = bm3Var3;
            bm3Var6 = bm3Var4;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: bd1
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    dd1.a(str, modifier3, bm3Var5, bm3Var6, (Composer) obj, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
                    return j59.a;
                }
            });
        }
    }
}
