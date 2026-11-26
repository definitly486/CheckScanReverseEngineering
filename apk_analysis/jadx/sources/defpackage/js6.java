package defpackage;

import android.animation.ValueAnimator;
import androidx.core.view.insets.Protection;
import com.warefly.checkscan.calendarspinner.widgets.WheelPicker;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class js6 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ js6(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                ((Protection) obj).lambda$animateInsetsAmount$1(valueAnimator);
                break;
            default:
                WheelPicker wheelPicker = (WheelPicker) obj;
                int i2 = WheelPicker.p0;
                valueAnimator.getClass();
                Object animatedValue = valueAnimator.getAnimatedValue();
                animatedValue.getClass();
                wheelPicker.T = ((Integer) animatedValue).intValue();
                wheelPicker.invalidate();
                break;
        }
    }
}
