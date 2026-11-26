package yads;

import android.view.ViewGroup;
import androidx.transition.Transition;
import androidx.transition.TransitionListenerAdapter;
import androidx.transition.TransitionSet;

/* JADX INFO: loaded from: classes6.dex */
public final class zc5 extends TransitionListenerAdapter {
    public final /* synthetic */ TransitionSet a;
    public final /* synthetic */ ViewGroup b;
    public final /* synthetic */ yc5 c;

    public zc5(TransitionSet transitionSet, ViewGroup viewGroup, yc5 yc5Var) {
        this.a = transitionSet;
        this.b = viewGroup;
        this.c = yc5Var;
    }

    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
    public final void onTransitionEnd(Transition transition) {
        this.b.removeOnAttachStateChangeListener(this.c);
        this.a.removeListener((Transition.TransitionListener) this);
    }
}
