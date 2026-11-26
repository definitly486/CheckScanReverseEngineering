package yads;

import android.view.ViewGroup;
import androidx.transition.Transition;
import androidx.transition.TransitionManager;
import androidx.transition.TransitionSet;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class ld2 {
    public final vq0 a;
    public final ArrayList b = new ArrayList();
    public final ArrayList c = new ArrayList();
    public boolean d;

    public ld2(vq0 vq0Var) {
        this.a = vq0Var;
    }

    public final void a(ViewGroup viewGroup, boolean z) {
        if (!viewGroup.isAttachedToWindow()) {
            this.b.clear();
            return;
        }
        if (z) {
            TransitionManager.endTransitions(viewGroup);
        }
        TransitionSet transitionSet = new TransitionSet();
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            transitionSet.addTransition(((jd2) it.next()).a);
        }
        transitionSet.addListener((Transition.TransitionListener) new kd2(transitionSet, this));
        TransitionManager.beginDelayedTransition(viewGroup, transitionSet);
        for (jd2 jd2Var : this.b) {
            for (id2 id2Var : jd2Var.c) {
                jd2Var.b.setVisibility(id2Var.a);
                jd2Var.d.add(id2Var);
            }
        }
        this.c.clear();
        this.c.addAll(this.b);
        this.b.clear();
    }

    public static final void a(ld2 ld2Var) {
        if (ld2Var.d) {
            ld2Var.a(ld2Var.a, true);
        }
        ld2Var.d = false;
    }

    public final void a() {
        if (this.d) {
            return;
        }
        this.d = true;
        this.a.post(new defpackage.an3(this, 1));
    }
}
