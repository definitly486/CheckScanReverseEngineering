package defpackage;

import android.animation.ValueAnimator;
import android.view.View;
import com.warefly.checkscan.tasks.ui.images.AnimatedImageView;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class zl implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ zl(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                AnimatedImageView animatedImageView = (AnimatedImageView) obj;
                int i2 = AnimatedImageView.C;
                valueAnimator.getClass();
                Object animatedValue = valueAnimator.getAnimatedValue();
                animatedValue.getClass();
                float fFloatValue = ((Float) animatedValue).floatValue();
                float f = 1.0f - fFloatValue;
                float f2 = f * f;
                float f3 = 2.0f * f * fFloatValue;
                float f4 = fFloatValue * fFloatValue;
                animatedImageView.g = (animatedImageView.y * f4) + (animatedImageView.w * f3) + (animatedImageView.u * f2);
                animatedImageView.f = (f4 * animatedImageView.z) + (f3 * animatedImageView.x) + (f2 * animatedImageView.v);
                animatedImageView.j = (fFloatValue * 0.4f) + 0.8f;
                animatedImageView.k = f * 45.0f;
                animatedImageView.invalidate();
                break;
            default:
                valueAnimator.getClass();
                View view = ((a87) obj).b;
                Object animatedValue2 = valueAnimator.getAnimatedValue();
                animatedValue2.getClass();
                view.setRotation(((Float) animatedValue2).floatValue());
                break;
        }
    }
}
