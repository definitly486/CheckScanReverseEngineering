package yads;

import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.view.View;
import android.widget.TextView;

/* JADX INFO: loaded from: classes6.dex */
public final class vv5 implements af {
    public final int a;
    public final int b;
    public final ArgbEvaluator c;
    public ValueAnimator d;

    public vv5(int i) {
        ArgbEvaluator argbEvaluator = new ArgbEvaluator();
        this.a = 500;
        this.b = i;
        this.c = argbEvaluator;
    }

    @Override // yads.af
    public final void a(View view) {
        TextView textView = (TextView) view;
        ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(this.c, Integer.valueOf(textView.getCurrentTextColor()), Integer.valueOf(this.b));
        this.d = valueAnimatorOfObject;
        uv5 uv5Var = new uv5(textView);
        if (valueAnimatorOfObject != null) {
            valueAnimatorOfObject.addUpdateListener(uv5Var);
        }
        ValueAnimator valueAnimator = this.d;
        if (valueAnimator != null) {
            valueAnimator.setDuration(this.a);
        }
        ValueAnimator valueAnimator2 = this.d;
        if (valueAnimator2 != null) {
            valueAnimator2.start();
        }
    }

    @Override // yads.af
    public final void cancel() {
        ValueAnimator valueAnimator = this.d;
        if (valueAnimator != null) {
            valueAnimator.removeAllUpdateListeners();
        }
        ValueAnimator valueAnimator2 = this.d;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
    }
}
