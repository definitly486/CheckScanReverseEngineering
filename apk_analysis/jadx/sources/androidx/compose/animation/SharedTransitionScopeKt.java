package androidx.compose.animation;

import androidx.collection.MutableScatterMap;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.LookaheadScope;
import androidx.compose.ui.layout.LookaheadScopeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.fm3;
import defpackage.gh4;
import defpackage.gx2;
import defpackage.j59;
import defpackage.jg;
import defpackage.ll3;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
public final class SharedTransitionScopeKt {
    public static final boolean VisualDebugging = false;
    private static final SpringSpec<Rect> DefaultSpring = AnimationSpecKt.spring$default(0.0f, 400.0f, VisibilityThresholdsKt.getVisibilityThreshold(Rect.Companion), 1, null);
    private static final SharedTransitionScope.OverlayClip ParentClip = new SharedTransitionScope.OverlayClip() { // from class: androidx.compose.animation.SharedTransitionScopeKt$ParentClip$1
        @Override // androidx.compose.animation.SharedTransitionScope.OverlayClip
        public Path getClipPath(SharedTransitionScope.SharedContentState sharedContentState, Rect rect, LayoutDirection layoutDirection, Density density) {
            SharedTransitionScope.SharedContentState parentSharedContentState = sharedContentState.getParentSharedContentState();
            if (parentSharedContentState != null) {
                return parentSharedContentState.getClipPathInOverlay();
            }
            return null;
        }
    };
    private static final MutableScatterMap<ContentScale, MutableScatterMap<Alignment, ScaleToBoundsImpl>> cachedScaleToBoundsImplMap = new MutableScatterMap<>(0, 1, null);

    /* JADX INFO: Access modifiers changed from: private */
    public static final ScaleToBoundsImpl ScaleToBoundsCached(ContentScale contentScale, Alignment alignment) {
        if (!getShouldCache(contentScale) || !getShouldCache(alignment)) {
            return new ScaleToBoundsImpl(contentScale, alignment);
        }
        MutableScatterMap<ContentScale, MutableScatterMap<Alignment, ScaleToBoundsImpl>> mutableScatterMap = cachedScaleToBoundsImplMap;
        MutableScatterMap<Alignment, ScaleToBoundsImpl> mutableScatterMap2 = mutableScatterMap.get(contentScale);
        if (mutableScatterMap2 == null) {
            mutableScatterMap2 = new MutableScatterMap<>(0, 1, null);
            mutableScatterMap.set(contentScale, mutableScatterMap2);
        }
        MutableScatterMap<Alignment, ScaleToBoundsImpl> mutableScatterMap3 = mutableScatterMap2;
        ScaleToBoundsImpl scaleToBoundsImpl = mutableScatterMap3.get(alignment);
        if (scaleToBoundsImpl == null) {
            scaleToBoundsImpl = new ScaleToBoundsImpl(contentScale, alignment);
            mutableScatterMap3.set(alignment, scaleToBoundsImpl);
        }
        return scaleToBoundsImpl;
    }

    public static final void SharedTransitionLayout(Modifier modifier, dm3<? super SharedTransitionScope, ? super Composer, ? super Integer, j59> dm3Var, Composer composer, int i, int i2) {
        int i3;
        Composer composerStartRestartGroup = composer.startRestartGroup(646379026);
        int i4 = i2 & 1;
        if (i4 != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(dm3Var) ? 32 : 16;
        }
        if (composerStartRestartGroup.shouldExecute((i3 & 19) != 18, i3 & 1)) {
            if (i4 != 0) {
                modifier = Modifier.Companion;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(646379026, i3, -1, "androidx.compose.animation.SharedTransitionLayout (SharedTransitionScope.kt:122)");
            }
            SharedTransitionScope(ComposableLambdaKt.rememberComposableLambda(1948801580, true, new AnonymousClass1(modifier, dm3Var), composerStartRestartGroup, 54), composerStartRestartGroup, 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass2(modifier, dm3Var, i, i2));
        }
    }

    public static final void SharedTransitionScope(fm3<? super SharedTransitionScope, ? super Modifier, ? super Composer, ? super Integer, j59> fm3Var, Composer composer, int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(1908320054);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(fm3Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 3) != 2, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1908320054, i2, -1, "androidx.compose.animation.SharedTransitionScope (SharedTransitionScope.kt:144)");
            }
            LookaheadScopeKt.LookaheadScope(ComposableLambdaKt.rememberComposableLambda(2062852661, true, new C04531(fm3Var), composerStartRestartGroup, 54), composerStartRestartGroup, 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new C04542(fm3Var, i));
        }
    }

    private static final boolean getShouldCache(Alignment alignment) {
        Alignment.Companion companion = Alignment.Companion;
        return alignment == companion.getTopStart() || alignment == companion.getTopCenter() || alignment == companion.getTopEnd() || alignment == companion.getCenterStart() || alignment == companion.getCenter() || alignment == companion.getCenterEnd() || alignment == companion.getBottomStart() || alignment == companion.getBottomCenter() || alignment == companion.getBottomEnd();
    }

    /* JADX INFO: renamed from: androidx.compose.animation.SharedTransitionScopeKt$SharedTransitionScope$2, reason: invalid class name and case insensitive filesystem */
    public static final class C04542 extends gh4 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ int $$changed;
        final /* synthetic */ fm3<SharedTransitionScope, Modifier, Composer, Integer, j59> $content;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04542(fm3<? super SharedTransitionScope, ? super Modifier, ? super Composer, ? super Integer, j59> fm3Var, int i) {
            super(2);
            this.$content = fm3Var;
            this.$$changed = i;
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }

        public final void invoke(Composer composer, int i) {
            SharedTransitionScopeKt.SharedTransitionScope(this.$content, composer, RecomposeScopeImplKt.updateChangedFlags(this.$$changed | 1));
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.SharedTransitionScopeKt$SharedTransitionLayout$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ int $$changed;
        final /* synthetic */ int $$default;
        final /* synthetic */ dm3<SharedTransitionScope, Composer, Integer, j59> $content;
        final /* synthetic */ Modifier $modifier;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(Modifier modifier, dm3<? super SharedTransitionScope, ? super Composer, ? super Integer, j59> dm3Var, int i, int i2) {
            super(2);
            this.$modifier = modifier;
            this.$content = dm3Var;
            this.$$changed = i;
            this.$$default = i2;
        }

        public final void invoke(Composer composer, int i) {
            SharedTransitionScopeKt.SharedTransitionLayout(this.$modifier, this.$content, composer, RecomposeScopeImplKt.updateChangedFlags(this.$$changed | 1), this.$$default);
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }
    }

    private static final boolean getShouldCache(ContentScale contentScale) {
        ContentScale.Companion companion = ContentScale.Companion;
        return contentScale == companion.getFillWidth() || contentScale == companion.getFillHeight() || contentScale == companion.getFillBounds() || contentScale == companion.getFit() || contentScale == companion.getCrop() || contentScale == companion.getNone() || contentScale == companion.getInside();
    }

    /* JADX INFO: renamed from: androidx.compose.animation.SharedTransitionScopeKt$SharedTransitionScope$1, reason: invalid class name and case insensitive filesystem */
    public static final class C04531 extends gh4 implements dm3<LookaheadScope, Composer, Integer, j59> {
        final /* synthetic */ fm3<SharedTransitionScope, Modifier, Composer, Integer, j59> $content;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04531(fm3<? super SharedTransitionScope, ? super Modifier, ? super Composer, ? super Integer, j59> fm3Var) {
            super(3);
            this.$content = fm3Var;
        }

        public final void invoke(LookaheadScope lookaheadScope, Composer composer, int i) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2062852661, i, -1, "androidx.compose.animation.SharedTransitionScope.<anonymous> (SharedTransitionScope.kt:146)");
            }
            Object objRememberedValue = composer.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composer);
                composer.updateRememberedValue(objRememberedValue);
            }
            y22 y22Var = (y22) objRememberedValue;
            Object objRememberedValue2 = composer.rememberedValue();
            if (objRememberedValue2 == companion.getEmpty()) {
                objRememberedValue2 = new SharedTransitionScopeImpl(lookaheadScope, y22Var);
                composer.updateRememberedValue(objRememberedValue2);
            }
            SharedTransitionScopeImpl sharedTransitionScopeImpl = (SharedTransitionScopeImpl) objRememberedValue2;
            this.$content.invoke(sharedTransitionScopeImpl, new SharedTransitionScopeRootModifierElement(sharedTransitionScopeImpl), composer, 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // defpackage.dm3
        public /* bridge */ /* synthetic */ j59 invoke(LookaheadScope lookaheadScope, Composer composer, Integer num) {
            invoke(lookaheadScope, composer, num.intValue());
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.SharedTransitionScopeKt$SharedTransitionLayout$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements fm3<SharedTransitionScope, Modifier, Composer, Integer, j59> {
        final /* synthetic */ dm3<SharedTransitionScope, Composer, Integer, j59> $content;
        final /* synthetic */ Modifier $modifier;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(Modifier modifier, dm3<? super SharedTransitionScope, ? super Composer, ? super Integer, j59> dm3Var) {
            super(4);
            this.$modifier = modifier;
            this.$content = dm3Var;
        }

        public final void invoke(SharedTransitionScope sharedTransitionScope, Modifier modifier, Composer composer, int i) {
            int i2;
            if ((i & 6) == 0) {
                i2 = (composer.changed(sharedTransitionScope) ? 4 : 2) | i;
            } else {
                i2 = i;
            }
            if ((i & 48) == 0) {
                i2 |= composer.changed(modifier) ? 32 : 16;
            }
            if (!composer.shouldExecute((i2 & 147) != 146, i2 & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1948801580, i2, -1, "androidx.compose.animation.SharedTransitionLayout.<anonymous> (SharedTransitionScope.kt:126)");
            }
            Modifier modifierThen = this.$modifier.then(modifier);
            dm3<SharedTransitionScope, Composer, Integer, j59> dm3Var = this.$content;
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer, 0));
            CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifierThen);
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
            jg.d(companion, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            Updater.m5359initimpl(composerM5355constructorimpl, Integer.valueOf(iHashCode), companion.getSetCompositeKeyHash());
            Updater.m5361reconcileimpl(composerM5355constructorimpl, companion.getApplyOnDeactivatedNodeAssertion());
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            dm3Var.invoke(sharedTransitionScope, composer, Integer.valueOf(i2 & 14));
            composer.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // defpackage.fm3
        public /* bridge */ /* synthetic */ j59 invoke(SharedTransitionScope sharedTransitionScope, Modifier modifier, Composer composer, Integer num) {
            invoke(sharedTransitionScope, modifier, composer, num.intValue());
            return j59.a;
        }
    }
}
