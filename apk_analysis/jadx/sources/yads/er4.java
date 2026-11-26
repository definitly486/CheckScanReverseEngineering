package yads;

import androidx.transition.Transition;
import androidx.transition.TransitionListenerAdapter;
import androidx.transition.TransitionValues;

/* JADX INFO: loaded from: classes6.dex */
public final class er4 extends TransitionListenerAdapter {
    public final /* synthetic */ gr4 a;
    public final /* synthetic */ r16 b;
    public final /* synthetic */ TransitionValues c;

    public er4(gr4 gr4Var, r16 r16Var, TransitionValues transitionValues) {
        this.a = gr4Var;
        this.b = r16Var;
        this.c = transitionValues;
    }

    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
    public final void onTransitionEnd(Transition transition) {
        r16 r16Var = this.b;
        if (r16Var != null) {
            r16Var.a(this.c.view);
        }
        this.a.removeListener(this);
    }
}
