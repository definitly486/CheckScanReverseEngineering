package yads;

import androidx.transition.Transition;
import androidx.transition.TransitionListenerAdapter;
import androidx.transition.TransitionSet;

/* JADX INFO: loaded from: classes6.dex */
public final class kd2 extends TransitionListenerAdapter {
    public final /* synthetic */ TransitionSet a;
    public final /* synthetic */ ld2 b;

    public kd2(TransitionSet transitionSet, ld2 ld2Var) {
        this.a = transitionSet;
        this.b = ld2Var;
    }

    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
    public final void onTransitionEnd(Transition transition) {
        this.b.c.clear();
        this.a.removeListener((Transition.TransitionListener) this);
    }
}
