package yads;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.TransitionValues;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class q96 extends gr4 {
    public final float a;
    public final float b;

    public q96(float f, float f2) {
        this.a = f;
        this.b = f2;
    }

    public static final j59 a(TransitionValues transitionValues, int[] iArr) {
        transitionValues.values.put("yandex:verticalTranslation:screenPosition", iArr);
        return j59.a;
    }

    public static final j59 b(TransitionValues transitionValues, int[] iArr) {
        transitionValues.values.put("yandex:verticalTranslation:screenPosition", iArr);
        return j59.a;
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public final void captureEndValues(TransitionValues transitionValues) {
        super.captureEndValues(transitionValues);
        v56.a(transitionValues, new defpackage.mi5(transitionValues, 3));
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public final void captureStartValues(TransitionValues transitionValues) {
        super.captureStartValues(transitionValues);
        v56.a(transitionValues, new defpackage.q92(transitionValues, 4));
    }

    @Override // androidx.transition.Visibility
    public final Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues2 == null) {
            return null;
        }
        float height = view.getHeight();
        float f = this.a * height;
        float f2 = this.b * height;
        Object obj = transitionValues2.values.get("yandex:verticalTranslation:screenPosition");
        obj.getClass();
        View viewA = ag6.a(view, viewGroup, this, (int[]) obj);
        viewA.setTranslationY(f);
        p96 p96Var = new p96(viewA);
        p96Var.set(viewA, this.a);
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(viewA, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, f, f2), PropertyValuesHolder.ofFloat(p96Var, this.a, this.b));
        objectAnimatorOfPropertyValuesHolder.addListener(new o96(view));
        return objectAnimatorOfPropertyValuesHolder;
    }

    @Override // androidx.transition.Visibility
    public final Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null) {
            return null;
        }
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(v56.a(this, view, viewGroup, transitionValues, "yandex:verticalTranslation:screenPosition"), PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, this.b, this.a * view.getHeight()), PropertyValuesHolder.ofFloat(new p96(view), this.b, this.a));
        objectAnimatorOfPropertyValuesHolder.addListener(new o96(view));
        return objectAnimatorOfPropertyValuesHolder;
    }
}
