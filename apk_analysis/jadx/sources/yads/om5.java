package yads;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import androidx.transition.Transition;
import com.yandex.mobile.ads.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class om5 extends AnimatorListenerAdapter implements Transition.TransitionListener {
    public final View a;
    public final View b;
    public final float c;
    public final float d;
    public final int e;
    public final int f;
    public int[] g;
    public float h;
    public float i;

    public om5(View view, View view2, int i, int i2, float f, float f2) {
        this.a = view;
        this.b = view2;
        this.c = f;
        this.d = f2;
        this.e = i - defpackage.w65.b(view2.getTranslationX());
        this.f = i2 - defpackage.w65.b(view2.getTranslationY());
        Object tag = view.getTag(R$id.monetization_ads_divkit_div_transition_position);
        int[] iArr = tag instanceof int[] ? (int[]) tag : null;
        this.g = iArr;
        if (iArr != null) {
            view.setTag(R$id.monetization_ads_divkit_div_transition_position, null);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        int[] iArr = this.g;
        if (iArr == null) {
            iArr = new int[]{defpackage.w65.b(this.b.getTranslationX()) + this.e, defpackage.w65.b(this.b.getTranslationY()) + this.f};
            this.g = iArr;
        }
        this.a.setTag(R$id.monetization_ads_divkit_div_transition_position, iArr);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationPause(Animator animator) {
        this.h = this.b.getTranslationX();
        this.i = this.b.getTranslationY();
        this.b.setTranslationX(this.c);
        this.b.setTranslationY(this.d);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationResume(Animator animator) {
        this.b.setTranslationX(this.h);
        this.b.setTranslationY(this.i);
    }

    @Override // androidx.transition.Transition.TransitionListener
    public final void onTransitionCancel(Transition transition) {
    }

    @Override // androidx.transition.Transition.TransitionListener
    public final void onTransitionEnd(Transition transition) {
        this.b.setTranslationX(this.c);
        this.b.setTranslationY(this.d);
        transition.removeListener(this);
    }

    @Override // androidx.transition.Transition.TransitionListener
    public final void onTransitionPause(Transition transition) {
    }

    @Override // androidx.transition.Transition.TransitionListener
    public final void onTransitionResume(Transition transition) {
    }

    @Override // androidx.transition.Transition.TransitionListener
    public final void onTransitionStart(Transition transition) {
    }
}
