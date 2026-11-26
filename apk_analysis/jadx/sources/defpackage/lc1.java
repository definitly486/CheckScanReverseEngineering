package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.RendererCapabilities;

/* JADX INFO: loaded from: classes.dex */
public final class lc1 {
    public static final RoundedCornerShape a = RoundedCornerShapeKt.m2350RoundedCornerShape0680j_4(Dp.m9042constructorimpl(8.0f));

    public static final void a(final String str, final ll3 ll3Var, final Modifier modifier, long j, long j2, TextStyle textStyle, Composer composer, final int i) {
        int i2;
        ll3 ll3Var2;
        Composer composer2;
        final long j3;
        final long j4;
        final TextStyle textStyle2;
        long j5;
        int i3;
        TextStyle textStyle3;
        long j6;
        str.getClass();
        ll3Var.getClass();
        Composer composerStartRestartGroup = composer.startRestartGroup(448105263);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            ll3Var2 = ll3Var;
            i2 |= composerStartRestartGroup.changedInstance(ll3Var2) ? 32 : 16;
        } else {
            ll3Var2 = ll3Var;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changed(modifier) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= 65536;
        }
        if (composerStartRestartGroup.shouldExecute((74899 & i2) != 74898, i2 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) == 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-823658713, 0, -1, "com.warefly.checkscan.design.compose.theme.CheckscanTheme.<get-colors> (CheckscanTheme.kt:28)");
                }
                ProvidableCompositionLocal<mc1> providableCompositionLocal = oc1.b;
                mc1 mc1Var = (mc1) composerStartRestartGroup.consume(providableCompositionLocal);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j5 = mc1Var.e;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-823658713, 0, -1, "com.warefly.checkscan.design.compose.theme.CheckscanTheme.<get-colors> (CheckscanTheme.kt:28)");
                }
                mc1 mc1Var2 = (mc1) composerStartRestartGroup.consume(providableCompositionLocal);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                long j7 = mc1Var2.z;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(556697670, 0, -1, "com.warefly.checkscan.design.compose.theme.CheckscanTheme.<get-typography> (CheckscanTheme.kt:32)");
                }
                ed1 ed1Var = (ed1) composerStartRestartGroup.consume(gd1.c);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                i3 = i2 & (-523265);
                textStyle3 = ed1Var.b;
                j6 = j7;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                i3 = i2 & (-523265);
                j5 = j;
                j6 = j2;
                textStyle3 = textStyle;
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(448105263, i3, -1, "com.warefly.checkscan.design.compose.buttons.button.CheckscanButton (CheckscanButton.kt:36)");
            }
            long j8 = j5;
            Modifier modifierM2035paddingVpY3zN4$default = PaddingKt.m2035paddingVpY3zN4$default(ClickableKt.m1324clickableoSLSa3U$default(BackgroundKt.m1289backgroundbw27NRU$default(ClipKt.clip(SizeKt.m2085height3ABfNKs(modifier, Dp.m9042constructorimpl(50.0f)), a), j8, null, 2, null), false, null, Role.m8254boximpl(Role.Companion.m8261getButtono7Vup1c()), null, ll3Var2, 11, null), Dp.m9042constructorimpl(48.0f), 0.0f, 2, null);
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), false);
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2035paddingVpY3zN4$default);
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
            jg.d(companion, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, (bm3<? super T, ? super Modifier, j59>) hm.b(companion, composerM5355constructorimpl, Integer.valueOf(iHashCode), composerM5355constructorimpl));
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            composer2 = composerStartRestartGroup;
            long j9 = j6;
            TextKt.m4085TextNvy7gAk(str, null, j9, null, 0L, null, null, null, 0L, null, TextAlign.m8913boximpl(TextAlign.Companion.m8920getCentere0LSkKk()), 0L, TextOverflow.Companion.m8978getEllipsisgIe3tQ8(), false, 1, 0, null, textStyle3, composer2, i3 & 14, 24960, 109562);
            composer2.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            j4 = j9;
            textStyle2 = textStyle3;
            j3 = j8;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            j3 = j;
            j4 = j2;
            textStyle2 = textStyle;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kc1
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    lc1.a(str, ll3Var, modifier, j3, j4, textStyle2, (Composer) obj, RecomposeScopeImplKt.updateChangedFlags(i | 1));
                    return j59.a;
                }
            });
        }
    }
}
