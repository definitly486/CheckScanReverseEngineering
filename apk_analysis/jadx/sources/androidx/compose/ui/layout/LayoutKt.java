package androidx.compose.ui.layout;

import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dm3;
import defpackage.gh4;
import defpackage.hm;
import defpackage.j59;
import defpackage.jg;
import defpackage.ll3;
import defpackage.ul2;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class LayoutKt {
    public static final int LargeDimension = 32767;

    /* JADX INFO: renamed from: androidx.compose.ui.layout.LayoutKt$materializerOf$1, reason: invalid class name and case insensitive filesystem */
    public static final class C06311 extends gh4 implements dm3<SkippableUpdater<ComposeUiNode>, Composer, Integer, j59> {
        final /* synthetic */ Modifier $modifier;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06311(Modifier modifier) {
            super(3);
            this.$modifier = modifier;
        }

        @Override // defpackage.dm3
        public /* bridge */ /* synthetic */ j59 invoke(SkippableUpdater<ComposeUiNode> skippableUpdater, Composer composer, Integer num) {
            m7726invokeDeg8D_g(skippableUpdater.m5336unboximpl(), composer, num.intValue());
            return j59.a;
        }

        /* JADX INFO: renamed from: invoke-Deg8D_g, reason: not valid java name */
        public final void m7726invokeDeg8D_g(Composer composer, Composer composer2, int i) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-511438721, i, -1, "androidx.compose.ui.layout.materializerOf.<anonymous> (Layout.kt:200)");
            }
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer2, 0));
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, this.$modifier);
            composer.startReplaceableGroup(509942095);
            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer);
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
            Updater.m5363setimpl(composerM5355constructorimpl, Integer.valueOf(iHashCode), companion.getSetCompositeKeyHash());
            composer.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    }

    public static final void Layout(List<? extends bm3<? super Composer, ? super Integer, j59>> list, Modifier modifier, MultiContentMeasurePolicy multiContentMeasurePolicy, Composer composer, int i, int i2) {
        if ((i2 & 2) != 0) {
            modifier = Modifier.Companion;
        }
        bm3<Composer, Integer, j59> bm3VarCombineAsVirtualLayouts = combineAsVirtualLayouts(list);
        boolean z = (((i & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && composer.changed(multiContentMeasurePolicy)) || (i & RendererCapabilities.DECODER_SUPPORT_MASK) == 256;
        Object objRememberedValue = composer.rememberedValue();
        if (z || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicy);
            composer.updateRememberedValue(objRememberedValue);
        }
        MeasurePolicy measurePolicy = (MeasurePolicy) objRememberedValue;
        int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer, 0));
        CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifier);
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        ll3<ComposeUiNode> constructor = companion.getConstructor();
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
        jg.d(companion, composerM5355constructorimpl, measurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, (bm3<? super T, ? super Modifier, j59>) hm.b(companion, composerM5355constructorimpl, Integer.valueOf(iHashCode), composerM5355constructorimpl));
        bm3VarCombineAsVirtualLayouts.invoke(composer, 0);
        composer.endNode();
    }

    @ul2
    public static final void MultiMeasureLayout(Modifier modifier, bm3<? super Composer, ? super Integer, j59> bm3Var, MeasurePolicy measurePolicy, Composer composer, int i, int i2) {
        int i3;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1663319424);
        int i4 = i2 & 1;
        if (i4 != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(bm3Var) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= composerStartRestartGroup.changed(measurePolicy) ? 256 : 128;
        }
        if (composerStartRestartGroup.shouldExecute((i3 & 147) != 146, i3 & 1)) {
            if (i4 != 0) {
                modifier = Modifier.Companion;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1663319424, i3, -1, "androidx.compose.ui.layout.MultiMeasureLayout (Layout.kt:241)");
            }
            int iHashCode = Integer.hashCode(ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0));
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            ll3<LayoutNode> constructor$ui = LayoutNode.Companion.getConstructor$ui();
            int i5 = ((i3 << 3) & 896) | 6;
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor$ui);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            jg.d(companion, composerM5355constructorimpl, measurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            Updater.m5360initimpl(composerM5355constructorimpl, LayoutKt$MultiMeasureLayout$1$1.INSTANCE);
            Updater.m5361reconcileimpl(composerM5355constructorimpl, companion.getApplyOnDeactivatedNodeAssertion());
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
            Updater.m5363setimpl(composerM5355constructorimpl, Integer.valueOf(iHashCode), companion.getSetCompositeKeyHash());
            if (cc.f(bm3Var, composerStartRestartGroup, (i5 >> 6) & 14)) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        Modifier modifier2 = modifier;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass2(modifier2, bm3Var, measurePolicy, i, i2));
        }
    }

    public static final bm3<Composer, Integer, j59> combineAsVirtualLayouts(List<? extends bm3<? super Composer, ? super Integer, j59>> list) {
        return ComposableLambdaKt.composableLambdaInstance(1271844412, true, new AnonymousClass1(list));
    }

    @ul2
    public static final dm3<SkippableUpdater<ComposeUiNode>, Composer, Integer, j59> materializerOf(Modifier modifier) {
        return ComposableLambdaKt.composableLambdaInstance(-2123382363, true, new LayoutKt$materializerOfWithCompositionLocalInjection$1(modifier));
    }

    public static final dm3<SkippableUpdater<ComposeUiNode>, Composer, Integer, j59> modifierMaterializerOf(Modifier modifier) {
        return ComposableLambdaKt.composableLambdaInstance(-511438721, true, new C06311(modifier));
    }

    /* JADX INFO: renamed from: androidx.compose.ui.layout.LayoutKt$MultiMeasureLayout$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ int $$changed;
        final /* synthetic */ int $$default;
        final /* synthetic */ bm3<Composer, Integer, j59> $content;
        final /* synthetic */ MeasurePolicy $measurePolicy;
        final /* synthetic */ Modifier $modifier;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(Modifier modifier, bm3<? super Composer, ? super Integer, j59> bm3Var, MeasurePolicy measurePolicy, int i, int i2) {
            super(2);
            this.$modifier = modifier;
            this.$content = bm3Var;
            this.$measurePolicy = measurePolicy;
            this.$$changed = i;
            this.$$default = i2;
        }

        public final void invoke(Composer composer, int i) {
            LayoutKt.MultiMeasureLayout(this.$modifier, this.$content, this.$measurePolicy, composer, RecomposeScopeImplKt.updateChangedFlags(this.$$changed | 1), this.$$default);
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.layout.LayoutKt$combineAsVirtualLayouts$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ List<bm3<Composer, Integer, j59>> $contents;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(List<? extends bm3<? super Composer, ? super Integer, j59>> list) {
            super(2);
            this.$contents = list;
        }

        public final void invoke(Composer composer, int i) {
            if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1271844412, i, -1, "androidx.compose.ui.layout.combineAsVirtualLayouts.<anonymous> (Layout.kt:180)");
            }
            List<bm3<Composer, Integer, j59>> list = this.$contents;
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                bm3<Composer, Integer, j59> bm3Var = list.get(i2);
                int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer, 0));
                ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                ll3<ComposeUiNode> virtualConstructor = companion.getVirtualConstructor();
                if (composer.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composer.startReusableNode();
                if (composer.getInserting()) {
                    composer.createNode(virtualConstructor);
                } else {
                    composer.useNode();
                }
                Updater.m5363setimpl(Updater.m5355constructorimpl(composer), Integer.valueOf(iHashCode), companion.getSetCompositeKeyHash());
                bm3Var.invoke(composer, 0);
                composer.endNode();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }
    }

    public static final void Layout(Modifier modifier, MeasurePolicy measurePolicy, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            modifier = Modifier.Companion;
        }
        int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer, 0));
        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifier);
        CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        ll3<ComposeUiNode> constructor = companion.getConstructor();
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
        Updater.m5363setimpl(composerM5355constructorimpl, measurePolicy, companion.getSetMeasurePolicy());
        Updater.m5363setimpl(composerM5355constructorimpl, currentCompositionLocalMap, companion.getSetResolvedCompositionLocals());
        Updater.m5361reconcileimpl(composerM5355constructorimpl, companion.getApplyOnDeactivatedNodeAssertion());
        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
        Updater.m5363setimpl(composerM5355constructorimpl, Integer.valueOf(iHashCode), companion.getSetCompositeKeyHash());
        composer.endNode();
    }

    public static final void Layout(bm3<? super Composer, ? super Integer, j59> bm3Var, Modifier modifier, MeasurePolicy measurePolicy, Composer composer, int i, int i2) {
        if ((i2 & 2) != 0) {
            modifier = Modifier.Companion;
        }
        int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer, 0));
        CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifier);
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        ll3<ComposeUiNode> constructor = companion.getConstructor();
        int i3 = ((i << 6) & 896) | 6;
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
        jg.d(companion, composerM5355constructorimpl, measurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, (bm3<? super T, ? super Modifier, j59>) hm.b(companion, composerM5355constructorimpl, Integer.valueOf(iHashCode), composerM5355constructorimpl));
        bm3Var.invoke(composer, Integer.valueOf((i3 >> 6) & 14));
        composer.endNode();
    }
}
