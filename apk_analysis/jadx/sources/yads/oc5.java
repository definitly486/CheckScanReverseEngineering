package yads;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.TransitionValues;
import defpackage.j59;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class oc5 extends gr4 {
    public final float a;
    public final float b;
    public final float c;

    public oc5(float f) {
        this.a = f;
        this.b = 0.5f;
        this.c = 0.5f;
    }

    public static float b(TransitionValues transitionValues, float f) {
        Map<String, Object> map;
        Object obj = (transitionValues == null || (map = transitionValues.values) == null) ? null : map.get("yandex:scale:scaleY");
        Float f2 = obj instanceof Float ? (Float) obj : null;
        return f2 != null ? f2.floatValue() : f;
    }

    public final ObjectAnimator a(View view, float f, float f2, float f3, float f4) {
        if (f == f3 && f2 == f4) {
            return null;
        }
        view.setVisibility(4);
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_X, f, f3), PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_Y, f2, f4));
        objectAnimatorOfPropertyValuesHolder.addListener(new nc5(this, view, view.getScaleX(), view.getScaleY()));
        return objectAnimatorOfPropertyValuesHolder;
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public final void captureEndValues(TransitionValues transitionValues) {
        float scaleX = transitionValues.view.getScaleX();
        float scaleY = transitionValues.view.getScaleY();
        View view = transitionValues.view;
        Float fValueOf = Float.valueOf(1.0f);
        view.setScaleX(1.0f);
        transitionValues.view.setScaleY(1.0f);
        super.captureEndValues(transitionValues);
        transitionValues.view.setScaleX(scaleX);
        transitionValues.view.setScaleY(scaleY);
        int mode = getMode();
        if (mode == 1) {
            transitionValues.values.put("yandex:scale:scaleX", fValueOf);
            transitionValues.values.put("yandex:scale:scaleY", fValueOf);
        } else if (mode == 2) {
            transitionValues.values.put("yandex:scale:scaleX", Float.valueOf(this.a));
            transitionValues.values.put("yandex:scale:scaleY", Float.valueOf(this.a));
        }
        k11 k11Var = v56.a;
        int[] iArr = new int[2];
        transitionValues.view.getLocationOnScreen(iArr);
        a(transitionValues, iArr);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public final void captureStartValues(TransitionValues transitionValues) {
        float scaleX = transitionValues.view.getScaleX();
        float scaleY = transitionValues.view.getScaleY();
        transitionValues.view.setScaleX(1.0f);
        transitionValues.view.setScaleY(1.0f);
        super.captureStartValues(transitionValues);
        transitionValues.view.setScaleX(scaleX);
        transitionValues.view.setScaleY(scaleY);
        View view = transitionValues.view;
        int mode = getMode();
        if (mode == 1) {
            transitionValues.values.put("yandex:scale:scaleX", Float.valueOf(this.a));
            transitionValues.values.put("yandex:scale:scaleY", Float.valueOf(this.a));
        } else if (mode == 2) {
            transitionValues.values.put("yandex:scale:scaleX", Float.valueOf(view.getScaleX()));
            transitionValues.values.put("yandex:scale:scaleY", Float.valueOf(view.getScaleY()));
        }
        k11 k11Var = v56.a;
        int[] iArr = new int[2];
        transitionValues.view.getLocationOnScreen(iArr);
        b(transitionValues, iArr);
    }

    @Override // androidx.transition.Visibility
    public final Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues2 == null) {
            return null;
        }
        float fA = a(transitionValues, this.a);
        float fB = b(transitionValues, this.a);
        float fA2 = a(transitionValues2, 1.0f);
        float fB2 = b(transitionValues2, 1.0f);
        Object obj = transitionValues2.values.get("yandex:scale:screenPosition");
        obj.getClass();
        return a(ag6.a(view, viewGroup, this, (int[]) obj), fA, fB, fA2, fB2);
    }

    @Override // androidx.transition.Visibility
    public final Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null) {
            return null;
        }
        return a(v56.a(this, view, viewGroup, transitionValues, "yandex:scale:screenPosition"), a(transitionValues, 1.0f), b(transitionValues, 1.0f), a(transitionValues2, this.a), b(transitionValues2, this.a));
    }

    public oc5(float f, float f2, float f3) {
        this.a = f;
        this.b = f2;
        this.c = f3;
    }

    public static final j59 b(TransitionValues transitionValues, int[] iArr) {
        transitionValues.values.put("yandex:scale:screenPosition", iArr);
        return j59.a;
    }

    public static float a(TransitionValues transitionValues, float f) {
        Map<String, Object> map;
        Object obj = (transitionValues == null || (map = transitionValues.values) == null) ? null : map.get("yandex:scale:scaleX");
        Float f2 = obj instanceof Float ? (Float) obj : null;
        return f2 != null ? f2.floatValue() : f;
    }

    public static final j59 a(TransitionValues transitionValues, int[] iArr) {
        transitionValues.values.put("yandex:scale:screenPosition", iArr);
        return j59.a;
    }
}
