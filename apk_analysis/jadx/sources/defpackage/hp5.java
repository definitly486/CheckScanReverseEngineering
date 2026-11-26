package defpackage;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.InfiniteRepeatableSpec;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.InfiniteTransitionKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.RendererCapabilities;
import com.warefly.checkscan.R;

/* JADX INFO: loaded from: classes.dex */
public final class hp5 {
    public static final fp5 a = new fp5();

    public static final void a(final ll3 ll3Var, final boolean z, Modifier modifier, Composer composer, final int i) {
        int i2;
        Composer composer2;
        final Modifier modifier2;
        ll3Var.getClass();
        Composer composerStartRestartGroup = composer.startRestartGroup(879609018);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(z) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(ll3Var) ? 32 : 16;
        }
        int i3 = i2 | 3456;
        if (composerStartRestartGroup.shouldExecute((i3 & 1171) != 1170, i3 & 1)) {
            Modifier.Companion companion = Modifier.Companion;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(879609018, i3, -1, "com.warefly.checkscan.design.compose.toolbars.notifications.NotificationsButton (NotificationsButton.kt:36)");
            }
            Modifier modifierM1324clickableoSLSa3U$default = ClickableKt.m1324clickableoSLSa3U$default(ClipKt.clip(SizeKt.m2099size3ABfNKs(companion, Dp.m9042constructorimpl(44.0f)), RoundedCornerShapeKt.getCircleShape()), false, null, Role.m8254boximpl(Role.Companion.m8261getButtono7Vup1c()), null, ll3Var, 11, null);
            Alignment.Companion companion2 = Alignment.Companion;
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion2.getTopStart(), false);
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1324clickableoSLSa3U$default);
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
            modifier2 = companion;
            ImageKt.Image(PainterResources_androidKt.painterResource(z ? R.drawable.ic_notifications_unread : R.drawable.ic_notifications, composerStartRestartGroup, 0), (String) null, SizeKt.fillMaxSize$default(companion, 0.0f, 1, null), (Alignment) null, (ContentScale) null, 0.0f, (ColorFilter) null, composerStartRestartGroup, Painter.$stable | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 >> 6) & 112), 120);
            composer2 = composerStartRestartGroup;
            if (z) {
                composer2.startReplaceGroup(809403551);
                b(SizeKt.m2099size3ABfNKs(PaddingKt.m2037paddingqDBjuR0$default(boxScopeInstance.align(modifier2, companion2.getTopEnd()), 0.0f, Dp.m9042constructorimpl(11.0f), Dp.m9042constructorimpl(13.0f), 0.0f, 9, null), Dp.m9042constructorimpl(8.0f)), composer2, 0);
            } else {
                composer2.startReplaceGroup(807396270);
            }
            composer2.endReplaceGroup();
            composer2.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            modifier2 = modifier;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: gp5
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iUpdateChangedFlags = RecomposeScopeImplKt.updateChangedFlags(i | 1);
                    hp5.a(ll3Var, z, modifier2, (Composer) obj, iUpdateChangedFlags);
                    return j59.a;
                }
            });
        }
    }

    public static final void b(final Modifier modifier, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(317501070);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 3) != 2, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(317501070, i2, -1, "com.warefly.checkscan.design.compose.toolbars.notifications.PulsingDot (NotificationsButton.kt:64)");
            }
            InfiniteTransition infiniteTransitionRememberInfiniteTransition = InfiniteTransitionKt.rememberInfiniteTransition("notificationsDot", composerStartRestartGroup, 6, 0);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = new mm(3);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            State<Float> stateAnimateFloat = InfiniteTransitionKt.animateFloat(infiniteTransitionRememberInfiniteTransition, 1.0f, 1.0f, AnimationSpecKt.m1199infiniteRepeatable9IiC70o$default(AnimationSpecKt.keyframes((nl3) objRememberedValue), null, 0L, 6, null), "notificationsDotScale", composerStartRestartGroup, InfiniteTransition.$stable | 25008 | (InfiniteRepeatableSpec.$stable << 9), 0);
            boolean zChanged = composerStartRestartGroup.changed(stateAnimateFloat);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue2 == companion.getEmpty()) {
                objRememberedValue2 = new nr2(stateAnimateFloat, 1);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            Modifier modifierGraphicsLayer = GraphicsLayerModifierKt.graphicsLayer(modifier, (nl3) objRememberedValue2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-823658713, 0, -1, "com.warefly.checkscan.design.compose.theme.CheckscanTheme.<get-colors> (CheckscanTheme.kt:28)");
            }
            mc1 mc1Var = (mc1) composerStartRestartGroup.consume(oc1.b);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            BoxKt.Box(BackgroundKt.m1288backgroundbw27NRU(modifierGraphicsLayer, mc1Var.x, RoundedCornerShapeKt.getCircleShape()), composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ep5
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).intValue();
                    int iUpdateChangedFlags = RecomposeScopeImplKt.updateChangedFlags(i | 1);
                    hp5.b(modifier, (Composer) obj, iUpdateChangedFlags);
                    return j59.a;
                }
            });
        }
    }
}
