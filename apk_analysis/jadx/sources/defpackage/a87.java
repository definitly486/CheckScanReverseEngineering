package defpackage;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class a87 {
    public boolean a;
    public final View b;
    public final ll3<j59> c;
    public final ll3<j59> d;

    public static final class a implements Animator.AnimatorListener {
        public final ll3<j59> a;

        public a(ll3<j59> ll3Var) {
            this.a = ll3Var;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            animator.getClass();
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            animator.getClass();
            this.a.invoke();
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
            animator.getClass();
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            animator.getClass();
        }
    }

    public static final class b extends gh4 implements ll3<j59> {
        public b() {
            super(0);
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            a87 a87Var = a87.this;
            a87Var.a = false;
            a87Var.d.invoke();
            return j59.a;
        }
    }

    public static final class c extends gh4 implements ll3<j59> {
        public c() {
            super(0);
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            a87 a87Var = a87.this;
            a87Var.a = true;
            a87Var.c.invoke();
            return j59.a;
        }
    }

    public a87(boolean z, View view, ll3<j59> ll3Var, ll3<j59> ll3Var2) {
        view.getClass();
        this.a = z;
        this.b = view;
        this.c = ll3Var;
        this.d = ll3Var2;
    }

    public final void a() {
        float rotation = this.b.getRotation();
        int i = 1;
        if (this.a) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(rotation, 180.0f + rotation);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: z77
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    valueAnimator.getClass();
                    View view = this.a.b;
                    Object animatedValue = valueAnimator.getAnimatedValue();
                    animatedValue.getClass();
                    view.setRotation(((Float) animatedValue).floatValue());
                }
            });
            valueAnimatorOfFloat.addListener(new a(new b()));
            valueAnimatorOfFloat.start();
            return;
        }
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(rotation, rotation - 180.0f);
        valueAnimatorOfFloat2.addUpdateListener(new zl(this, i));
        valueAnimatorOfFloat2.addListener(new a(new c()));
        valueAnimatorOfFloat2.start();
    }
}
