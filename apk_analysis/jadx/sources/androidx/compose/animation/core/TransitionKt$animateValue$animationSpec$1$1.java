package androidx.compose.animation.core;

import defpackage.ll3;

/* JADX INFO: Add missing generic type declarations: [S] */
/* JADX INFO: loaded from: classes.dex */
public final class TransitionKt$animateValue$animationSpec$1$1<S> implements ll3<Transition.Segment<S>> {
    final /* synthetic */ Transition<S> $this_animateValue;

    public TransitionKt$animateValue$animationSpec$1$1(Transition<S> transition) {
        this.$this_animateValue = transition;
    }

    @Override // defpackage.ll3
    public final Transition.Segment<S> invoke() {
        return this.$this_animateValue.getSegment();
    }
}
