package yads;

import android.animation.ValueAnimator;
import android.widget.TextView;

/* JADX INFO: loaded from: classes6.dex */
public final class uv5 implements ValueAnimator.AnimatorUpdateListener {
    public final TextView a;

    public uv5(TextView textView) {
        this.a = textView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        Object animatedValue = valueAnimator.getAnimatedValue();
        if (animatedValue instanceof Integer) {
            this.a.setTextColor(((Number) animatedValue).intValue());
        }
    }
}
