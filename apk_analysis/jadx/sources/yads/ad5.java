package yads;

import android.view.ViewGroup;
import androidx.transition.Transition;
import androidx.transition.TransitionSet;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ad5 {
    public static void a(ViewGroup viewGroup, TransitionSet transitionSet) {
        yc5 yc5Var = new yc5(viewGroup);
        viewGroup.addOnAttachStateChangeListener(yc5Var);
        transitionSet.addListener((Transition.TransitionListener) new zc5(transitionSet, viewGroup, yc5Var));
    }
}
