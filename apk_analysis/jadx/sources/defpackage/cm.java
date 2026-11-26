package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.warefly.checkscan.tasks.ui.images.AnimatedImageView;

/* JADX INFO: loaded from: classes5.dex */
public final class cm extends AnimatorListenerAdapter {
    public final /* synthetic */ o07 a;
    public final /* synthetic */ AnimatedImageView b;
    public final /* synthetic */ o07 c;
    public final /* synthetic */ o07 d;
    public final /* synthetic */ o07 e;

    public cm(o07 o07Var, o07 o07Var2, o07 o07Var3, o07 o07Var4, AnimatedImageView animatedImageView) {
        this.a = o07Var;
        this.b = animatedImageView;
        this.c = o07Var2;
        this.d = o07Var3;
        this.e = o07Var4;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        animator.getClass();
        AnimatedImageView animatedImageView = this.b;
        this.a.b = animatedImageView.g;
        this.c.b = animatedImageView.f;
        if (animatedImageView.getWidth() <= 0 || animatedImageView.getHeight() <= 0) {
            return;
        }
        float width = animatedImageView.getWidth();
        float height = animatedImageView.getHeight();
        this.d.b = (width * 0.5f) + animatedImageView.h;
        this.e.b = height + animatedImageView.i;
    }
}
