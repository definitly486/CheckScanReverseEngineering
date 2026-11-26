package androidx.compose.ui.layout;

import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import defpackage.dm3;
import defpackage.gh4;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class LayoutKt$materializerOfWithCompositionLocalInjection$1 extends gh4 implements dm3<SkippableUpdater<ComposeUiNode>, Composer, Integer, j59> {
    final /* synthetic */ Modifier $modifier;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LayoutKt$materializerOfWithCompositionLocalInjection$1(Modifier modifier) {
        super(3);
        this.$modifier = modifier;
    }

    @Override // defpackage.dm3
    public /* bridge */ /* synthetic */ j59 invoke(SkippableUpdater<ComposeUiNode> skippableUpdater, Composer composer, Integer num) {
        m7727invokeDeg8D_g(skippableUpdater.m5336unboximpl(), composer, num.intValue());
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke-Deg8D_g, reason: not valid java name */
    public final void m7727invokeDeg8D_g(Composer composer, Composer composer2, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2123382363, i, -1, "androidx.compose.ui.layout.materializerOfWithCompositionLocalInjection.<anonymous> (Layout.kt:222)");
        }
        int iHashCode = Integer.hashCode(ComposablesKt.getCurrentCompositeKeyHash(composer2, 0));
        Modifier modifierMaterializeWithCompositionLocalInjectionInternal = ComposedModifierKt.materializeWithCompositionLocalInjectionInternal(composer2, this.$modifier);
        composer.startReplaceableGroup(509942095);
        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer);
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeWithCompositionLocalInjectionInternal, companion.getSetModifier());
        Updater.m5363setimpl(composerM5355constructorimpl, Integer.valueOf(iHashCode), companion.getSetCompositeKeyHash());
        composer.endReplaceableGroup();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }
}
