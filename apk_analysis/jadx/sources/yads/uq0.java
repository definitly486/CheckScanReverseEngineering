package yads;

import androidx.transition.Transition;
import androidx.transition.TransitionListenerAdapter;
import androidx.transition.TransitionSet;

/* JADX INFO: loaded from: classes6.dex */
public final class uq0 extends TransitionListenerAdapter {
    public final /* synthetic */ TransitionSet a;

    public uq0(TransitionSet transitionSet, vq0 vq0Var, db1 db1Var) {
        this.a = transitionSet;
    }

    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
    public final void onTransitionEnd(Transition transition) {
        this.a.removeListener((Transition.TransitionListener) this);
    }
}
