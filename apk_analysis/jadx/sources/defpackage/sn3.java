package defpackage;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.ZIndexModifierKt;
import androidx.compose.ui.draw.ShadowKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.shadow.Shadow;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.RendererCapabilities;
import com.warefly.checkscan.R;

/* JADX INFO: loaded from: classes2.dex */
public final class sn3 {
    public static final float a = Dp.m9042constructorimpl(298.0f);
    public static final float b = Dp.m9042constructorimpl(274.0f);
    public static final float c = Dp.m9042constructorimpl(24.0f);
    public static final float d = Dp.m9042constructorimpl(120.0f);

    public static final void a(final String str, final String str2, final String str3, final String str4, final ll3<j59> ll3Var, Composer composer, final int i) {
        int i2;
        Modifier.Companion companion;
        Composer composerStartRestartGroup = composer.startRestartGroup(495628699);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(str2) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changed(str3) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changed(str4) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(ll3Var) ? 16384 : 8192;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 9363) != 9362, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(495628699, i2, -1, "com.warefly.checkscan.features.games.presentation.GamesBody (GamesContent.kt:116)");
            }
            Modifier.Companion companion2 = Modifier.Companion;
            Modifier modifierM2037paddingqDBjuR0$default = PaddingKt.m2037paddingqDBjuR0$default(ScrollKt.verticalScroll$default(SizeKt.fillMaxSize$default(companion2, 0.0f, 1, null), ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1), false, null, false, 14, null), 0.0f, str == null ? d : Dp.m9042constructorimpl(16.0f), 0.0f, Dp.m9042constructorimpl(24.0f), 5, null);
            Alignment.Companion companion3 = Alignment.Companion;
            Alignment.Horizontal centerHorizontally = companion3.getCenterHorizontally();
            Arrangement arrangement = Arrangement.INSTANCE;
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement.m1740spacedBy0680j_4(Dp.m9042constructorimpl(16.0f)), centerHorizontally, composerStartRestartGroup, 54);
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
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
            jg.d(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, (bm3<? super T, ? super Modifier, j59>) hm.b(companion4, composerM5355constructorimpl, Integer.valueOf(iHashCode), composerM5355constructorimpl));
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            if (str != null) {
                composerStartRestartGroup.startReplaceGroup(-1958581392);
                c(composerStartRestartGroup, i2 & 14, str);
            } else {
                composerStartRestartGroup.startReplaceGroup(-591443951);
            }
            composerStartRestartGroup.endReplaceGroup();
            MeasurePolicy measurePolicyColumnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(arrangement.m1740spacedBy0680j_4(Dp.m9042constructorimpl(8.0f)), companion3.getCenterHorizontally(), composerStartRestartGroup, 54);
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
            CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion2);
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
            jg.d(companion4, composerM5355constructorimpl2, measurePolicyColumnMeasurePolicy2, composerM5355constructorimpl2, currentCompositionLocalMap2);
            Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, (bm3<? super T, ? super Modifier, j59>) hm.b(companion4, composerM5355constructorimpl2, Integer.valueOf(iHashCode2), composerM5355constructorimpl2));
            TextStyle textStyle = go2.c(composerStartRestartGroup).d;
            long j = go2.b(composerStartRestartGroup).l;
            TextAlign.Companion companion5 = TextAlign.Companion;
            int i3 = i2;
            TextKt.m4085TextNvy7gAk(str2, SizeKt.fillMaxWidth$default(SizeKt.m2106widthInVpY3zN4$default(companion2, 0.0f, a, 1, null), 0.0f, 1, null), j, null, 0L, null, null, null, 0L, null, TextAlign.m8913boximpl(companion5.m8920getCentere0LSkKk()), 0L, 0, false, 0, 0, null, textStyle, composerStartRestartGroup, ((i2 >> 3) & 14) | 48, 0, 130040);
            composerStartRestartGroup = composerStartRestartGroup;
            if (str3 != null) {
                composerStartRestartGroup.startReplaceGroup(-280144487);
                companion = companion2;
                TextKt.m4085TextNvy7gAk(str3, SizeKt.fillMaxWidth$default(SizeKt.m2106widthInVpY3zN4$default(companion2, 0.0f, b, 1, null), 0.0f, 1, null), go2.b(composerStartRestartGroup).l, null, 0L, null, null, null, 0L, null, TextAlign.m8913boximpl(companion5.m8920getCentere0LSkKk()), 0L, 0, false, 0, 0, null, go2.c(composerStartRestartGroup).g, composerStartRestartGroup, ((i3 >> 6) & 14) | 48, 0, 130040);
                composerStartRestartGroup = composerStartRestartGroup;
            } else {
                companion = companion2;
                composerStartRestartGroup.startReplaceGroup(-285691813);
            }
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.endNode();
            int i4 = i3 >> 9;
            lc1.a(str4, ll3Var, TestTagKt.testTag(PaddingKt.m2035paddingVpY3zN4$default(SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null), c, 0.0f, 2, null), "games.button"), 0L, 0L, null, composerStartRestartGroup, (i4 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | (i4 & 112));
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pn3
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).intValue();
                    sn3.a(str, str2, str3, str4, ll3Var, (Composer) obj, RecomposeScopeImplKt.updateChangedFlags(i | 1));
                    return j59.a;
                }
            });
        }
    }

    public static final void b(final lo3 lo3Var, final nl3 nl3Var, Modifier modifier, Composer composer, final int i) {
        int i2;
        final Modifier modifier2;
        lo3Var.getClass();
        nl3Var.getClass();
        Composer composerStartRestartGroup = composer.startRestartGroup(1432840110);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(lo3Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(nl3Var) ? 32 : 16;
        }
        int i3 = i2 | RendererCapabilities.DECODER_SUPPORT_MASK;
        if (composerStartRestartGroup.shouldExecute((i3 & 147) != 146, i3 & 1)) {
            modifier2 = Modifier.Companion;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1432840110, i3, -1, "com.warefly.checkscan.features.games.presentation.GamesContent (GamesContent.kt:56)");
            }
            Modifier modifierFillMaxSize$default = SizeKt.fillMaxSize$default(modifier2, 0.0f, 1, null);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-823658713, 0, -1, "com.warefly.checkscan.design.compose.theme.CheckscanTheme.<get-colors> (CheckscanTheme.kt:28)");
            }
            ProvidableCompositionLocal<mc1> providableCompositionLocal = oc1.b;
            mc1 mc1Var = (mc1) composerStartRestartGroup.consume(providableCompositionLocal);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            Modifier modifierTestTag = TestTagKt.testTag(BackgroundKt.m1289backgroundbw27NRU$default(modifierFillMaxSize$default, mc1Var.a, null, 2, null), "games.root");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composerStartRestartGroup, 0);
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierTestTag);
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
            jg.d(companion, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, (bm3<? super T, ? super Modifier, j59>) hm.b(companion, composerM5355constructorimpl, Integer.valueOf(iHashCode), composerM5355constructorimpl));
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            String strStringResource = StringResources_androidKt.stringResource(R.string.games_tab_title, composerStartRestartGroup, 0);
            Modifier modifierZIndex = ZIndexModifierKt.zIndex(modifier2, 1.0f);
            Shape rectangleShape = RectangleShapeKt.getRectangleShape();
            float fM9042constructorimpl = Dp.m9042constructorimpl(2.0f);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-823658713, 0, -1, "com.warefly.checkscan.design.compose.theme.CheckscanTheme.<get-colors> (CheckscanTheme.kt:28)");
            }
            mc1 mc1Var2 = (mc1) composerStartRestartGroup.consume(providableCompositionLocal);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            dd1.a(strStringResource, ShadowKt.dropShadow(modifierZIndex, rectangleShape, new Shadow(fM9042constructorimpl, Color.m6231copywmQWz5c$default(mc1Var2.l, 0.16f, 0.0f, 0.0f, 0.0f, 14, null), 0.0f, 0L, 0.0f, 0, 60, (jh2) null)), null, null, composerStartRestartGroup, 0, 12);
            d(lo3Var, nl3Var, composerStartRestartGroup, i3 & 126);
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier2 = modifier;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mn3
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iUpdateChangedFlags = RecomposeScopeImplKt.updateChangedFlags(i | 1);
                    sn3.b(lo3Var, nl3Var, modifier2, (Composer) obj, iUpdateChangedFlags);
                    return j59.a;
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void c(Composer composer, final int i, final String str) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(577315975);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 3) != 2, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(577315975, i2, -1, "com.warefly.checkscan.features.games.presentation.GamesImage (GamesContent.kt:164)");
            }
            int i3 = i2 & 14;
            boolean z = i3 == 4;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.TRUE, null, 2, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            MutableState mutableState = (MutableState) objRememberedValue;
            Modifier.Companion companion = Modifier.Companion;
            Modifier modifierAspectRatio$default = AspectRatioKt.aspectRatio$default(SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null), 1.0997068f, false, 2, null);
            Alignment.Companion companion2 = Alignment.Companion;
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion2.getCenter(), false);
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierAspectRatio$default);
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
            jg.d(companion3, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, (bm3<? super T, ? super Modifier, j59>) hm.b(companion3, composerM5355constructorimpl, Integer.valueOf(iHashCode), composerM5355constructorimpl));
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            ContentScale crop = ContentScale.Companion.getCrop();
            Modifier modifierFillMaxSize$default = SizeKt.fillMaxSize$default(companion, 0.0f, 1, null);
            boolean zChanged = composerStartRestartGroup.changed(mutableState);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue2 == Composer.Companion.getEmpty()) {
                objRememberedValue2 = new qn3(mutableState, 0);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            nl3 nl3Var = (nl3) objRememberedValue2;
            int i4 = i3 | 1573296;
            Alignment center = companion2.getCenter();
            int iM6809getDefaultFilterQualityfv9h1I = DrawScope.Companion.m6809getDefaultFilterQualityfv9h1I();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1976030921, i4, 0, "coil3.compose.AsyncImage (SingletonAsyncImage.kt:117)");
            }
            r14 r14VarA = o18.a((Context) composerStartRestartGroup.consume(AndroidCompositionLocals_androidKt.getLocalContext()));
            int i5 = (i4 & 126) | 12585984;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(40041566, i5, 0, "coil3.compose.AsyncImage (AsyncImage.kt:125)");
            }
            ms.a(new ts(str, (ns) composerStartRestartGroup.consume(zs4.a), r14VarA), modifierFillMaxSize$default, ps.s, nl3Var, center, crop, iM6809getDefaultFilterQualityfv9h1I, composerStartRestartGroup, 1573296, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            if (((Boolean) mutableState.getValue()).booleanValue()) {
                composerStartRestartGroup.startReplaceGroup(-1063878705);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-823658713, 0, -1, "com.warefly.checkscan.design.compose.theme.CheckscanTheme.<get-colors> (CheckscanTheme.kt:28)");
                }
                mc1 mc1Var = (mc1) composerStartRestartGroup.consume(oc1.b);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                ProgressIndicatorKt.m3740CircularProgressIndicator4lLiAd8(null, mc1Var.e, 0.0f, 0L, 0, 0.0f, composerStartRestartGroup, 0, 61);
                composerStartRestartGroup = composerStartRestartGroup;
            } else {
                composerStartRestartGroup.startReplaceGroup(1372602069);
            }
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rn3
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).intValue();
                    sn3.c((Composer) obj, RecomposeScopeImplKt.updateChangedFlags(i | 1), str);
                    return j59.a;
                }
            });
        }
    }

    public static final void d(final lo3 lo3Var, final nl3<? super un3, j59> nl3Var, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-729486743);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(lo3Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(nl3Var) ? 32 : 16;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 19) != 18, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-729486743, i2, -1, "com.warefly.checkscan.features.games.presentation.GamesState (GamesContent.kt:82)");
            }
            Modifier.Companion companion = Modifier.Companion;
            Modifier modifierFillMaxSize$default = SizeKt.fillMaxSize$default(companion, 0.0f, 1, null);
            Alignment.Companion companion2 = Alignment.Companion;
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion2.getTopStart(), false);
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierFillMaxSize$default);
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
            jg.d(companion3, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, (bm3<? super T, ? super Modifier, j59>) hm.b(companion3, composerM5355constructorimpl, Integer.valueOf(iHashCode), composerM5355constructorimpl));
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            jo3 jo3Var = lo3Var.a;
            if (aa4.e(jo3Var, jo3.c.a)) {
                composerStartRestartGroup.startReplaceGroup(968841077);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-823658713, 0, -1, "com.warefly.checkscan.design.compose.theme.CheckscanTheme.<get-colors> (CheckscanTheme.kt:28)");
                }
                mc1 mc1Var = (mc1) composerStartRestartGroup.consume(oc1.b);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                long j = mc1Var.e;
                Modifier modifierAlign = boxScopeInstance.align(companion, companion2.getCenter());
                composer2 = composerStartRestartGroup;
                ProgressIndicatorKt.m3740CircularProgressIndicator4lLiAd8(modifierAlign, j, 0.0f, 0L, 0, 0.0f, composer2, 0, 60);
                composer2.endReplaceGroup();
            } else {
                composer2 = composerStartRestartGroup;
                if (jo3Var instanceof jo3.a) {
                    composer2.startReplaceGroup(-938571703);
                    kn3 kn3Var = ((jo3.a) jo3Var).a;
                    int i3 = i2;
                    String str = kn3Var.a;
                    String str2 = kn3Var.b;
                    String str3 = kn3Var.c;
                    String strStringResource = kn3Var.d;
                    if (strStringResource == null) {
                        composer2.startReplaceGroup(-938564874);
                        strStringResource = StringResources_androidKt.stringResource(R.string.games_tab_play, composer2, 0);
                    } else {
                        composer2.startReplaceGroup(-938565773);
                    }
                    composer2.endReplaceGroup();
                    boolean z = (i3 & 112) == 32;
                    Object objRememberedValue = composer2.rememberedValue();
                    if (z || objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new kg0(nl3Var, 2);
                        composer2.updateRememberedValue(objRememberedValue);
                    }
                    a(str, str2, str3, strStringResource, (ll3) objRememberedValue, composer2, 0);
                    composer2.endReplaceGroup();
                } else {
                    int i4 = i2;
                    if (!aa4.e(jo3Var, jo3.b.a)) {
                        composer2.startReplaceGroup(-938579978);
                        composer2.endReplaceGroup();
                        me0.e();
                        return;
                    }
                    composer2.startReplaceGroup(-938559311);
                    String strStringResource2 = StringResources_androidKt.stringResource(R.string.games_tab_error_title, composer2, 0);
                    String strStringResource3 = StringResources_androidKt.stringResource(R.string.games_tab_error_description, composer2, 0);
                    String strStringResource4 = StringResources_androidKt.stringResource(R.string.games_tab_retry, composer2, 0);
                    boolean z2 = (i4 & 112) == 32;
                    Object objRememberedValue2 = composer2.rememberedValue();
                    if (z2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                        objRememberedValue2 = new nn3(nl3Var, 0);
                        composer2.updateRememberedValue(objRememberedValue2);
                    }
                    a(null, strStringResource2, strStringResource3, strStringResource4, (ll3) objRememberedValue2, composer2, 6);
                    composer2.endReplaceGroup();
                }
            }
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
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: on3
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).intValue();
                    int iUpdateChangedFlags = RecomposeScopeImplKt.updateChangedFlags(i | 1);
                    sn3.d(lo3Var, nl3Var, (Composer) obj, iUpdateChangedFlags);
                    return j59.a;
                }
            });
        }
    }
}
