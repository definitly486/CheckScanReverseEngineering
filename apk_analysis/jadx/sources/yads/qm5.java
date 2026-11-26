package yads;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.TransitionValues;
import com.yandex.mobile.ads.R$id;
import defpackage.eo;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class qm5 extends gr4 {
    public static final jm5 c = new jm5();
    public static final lm5 d = new lm5();
    public static final km5 e = new km5();
    public static final im5 f = new im5();
    public final int a;
    public final nm5 b;

    public qm5(int i, int i2) {
        this.a = i;
        this.b = i2 != 3 ? i2 != 5 ? i2 != 48 ? f : d : e : c;
    }

    public static ObjectAnimator a(View view, qm5 qm5Var, TransitionValues transitionValues, int i, int i2, float f2, float f3, float f4, float f5, TimeInterpolator timeInterpolator) {
        float f6;
        float f7;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        Object tag = transitionValues.view.getTag(R$id.monetization_ads_divkit_div_transition_position);
        int[] iArr = tag instanceof int[] ? (int[]) tag : null;
        if (iArr != null) {
            f6 = (iArr[0] - i) + translationX;
            f7 = (iArr[1] - i2) + translationY;
        } else {
            f6 = f2;
            f7 = f3;
        }
        int iB = defpackage.w65.b(f6 - translationX) + i;
        int iB2 = defpackage.w65.b(f7 - translationY) + i2;
        view.setTranslationX(f6);
        view.setTranslationY(f7);
        if (f6 == f4 && f7 == f5) {
            return null;
        }
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_X, f6, f4), PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, f7, f5));
        om5 om5Var = new om5(transitionValues.view, view, iB, iB2, translationX, translationY);
        qm5Var.addListener(om5Var);
        objectAnimatorOfPropertyValuesHolder.addListener(om5Var);
        objectAnimatorOfPropertyValuesHolder.addPauseListener(om5Var);
        objectAnimatorOfPropertyValuesHolder.setInterpolator(timeInterpolator);
        return objectAnimatorOfPropertyValuesHolder;
    }

    public static final j59 b(TransitionValues transitionValues, int[] iArr) {
        transitionValues.values.put("yandex:slide:screenPosition", iArr);
        return j59.a;
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public final void captureEndValues(TransitionValues transitionValues) {
        super.captureEndValues(transitionValues);
        v56.a(transitionValues, new eo(transitionValues, 1));
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public final void captureStartValues(TransitionValues transitionValues) {
        super.captureStartValues(transitionValues);
        v56.a(transitionValues, new defpackage.x12(transitionValues, 3));
    }

    @Override // androidx.transition.Visibility
    public final Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues2 == null) {
            return null;
        }
        Object obj = transitionValues2.values.get("yandex:slide:screenPosition");
        obj.getClass();
        int[] iArr = (int[]) obj;
        return a(ag6.a(view, viewGroup, this, iArr), this, transitionValues2, iArr[0], iArr[1], this.b.a(this.a, view, viewGroup), this.b.b(this.a, view, viewGroup), view.getTranslationX(), view.getTranslationY(), getInterpolator());
    }

    @Override // androidx.transition.Visibility
    public final Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null) {
            return null;
        }
        Object obj = transitionValues.values.get("yandex:slide:screenPosition");
        obj.getClass();
        int[] iArr = (int[]) obj;
        return a(v56.a(this, view, viewGroup, transitionValues, "yandex:slide:screenPosition"), this, transitionValues, iArr[0], iArr[1], view.getTranslationX(), view.getTranslationY(), this.b.a(this.a, view, viewGroup), this.b.b(this.a, view, viewGroup), getInterpolator());
    }

    public static final j59 a(TransitionValues transitionValues, int[] iArr) {
        transitionValues.values.put("yandex:slide:screenPosition", iArr);
        return j59.a;
    }
}
