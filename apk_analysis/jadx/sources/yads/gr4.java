package yads;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.TransitionValues;
import androidx.transition.Visibility;

/* JADX INFO: loaded from: classes6.dex */
public abstract class gr4 extends Visibility {
    @Override // androidx.transition.Visibility
    public final Animator onAppear(ViewGroup viewGroup, TransitionValues transitionValues, int i, TransitionValues transitionValues2, int i2) {
        View view = transitionValues2 != null ? transitionValues2.view : null;
        r16 r16Var = view instanceof r16 ? (r16) view : null;
        if (r16Var != null) {
            r16Var.b(transitionValues2.view);
        }
        addListener(new er4(this, r16Var, transitionValues2));
        return super.onAppear(viewGroup, transitionValues, i, transitionValues2, i2);
    }

    @Override // androidx.transition.Visibility
    public final Animator onDisappear(ViewGroup viewGroup, TransitionValues transitionValues, int i, TransitionValues transitionValues2, int i2) {
        View view = transitionValues != null ? transitionValues.view : null;
        r16 r16Var = view instanceof r16 ? (r16) view : null;
        if (r16Var != null) {
            r16Var.b(transitionValues.view);
        }
        addListener(new fr4(this, r16Var, transitionValues));
        return super.onDisappear(viewGroup, transitionValues, i, transitionValues2, i2);
    }
}
