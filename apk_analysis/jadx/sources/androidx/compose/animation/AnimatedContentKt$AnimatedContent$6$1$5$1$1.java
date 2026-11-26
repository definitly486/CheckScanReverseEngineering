package androidx.compose.animation;

import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class AnimatedContentKt$AnimatedContent$6$1$5$1$1 extends gh4 implements nl3<DisposableEffectScope, DisposableEffectResult> {
    final /* synthetic */ SnapshotStateList<S> $currentlyVisible;
    final /* synthetic */ AnimatedContentTransitionScopeImpl<S> $rootScope;
    final /* synthetic */ S $stateForContent;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimatedContentKt$AnimatedContent$6$1$5$1$1(SnapshotStateList<S> snapshotStateList, S s, AnimatedContentTransitionScopeImpl<S> animatedContentTransitionScopeImpl) {
        super(1);
        this.$currentlyVisible = snapshotStateList;
        this.$stateForContent = s;
        this.$rootScope = animatedContentTransitionScopeImpl;
    }

    @Override // defpackage.nl3
    public final DisposableEffectResult invoke(DisposableEffectScope disposableEffectScope) {
        final SnapshotStateList<S> snapshotStateList = this.$currentlyVisible;
        final S s = this.$stateForContent;
        final AnimatedContentTransitionScopeImpl<S> animatedContentTransitionScopeImpl = this.$rootScope;
        return new DisposableEffectResult() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                snapshotStateList.remove(s);
                animatedContentTransitionScopeImpl.getTargetSizeMap$animation().remove(s);
            }
        };
    }
}
