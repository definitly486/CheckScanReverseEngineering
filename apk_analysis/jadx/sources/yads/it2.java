package yads;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.TransitionValues;
import defpackage.j59;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class it2 extends gr4 {
    public final float a;

    public it2(float f) {
        this.a = f;
    }

    public static float a(TransitionValues transitionValues, float f) {
        Map<String, Object> map;
        Object obj = (transitionValues == null || (map = transitionValues.values) == null) ? null : map.get("yandex:fade:alpha");
        Float f2 = obj instanceof Float ? (Float) obj : null;
        return f2 != null ? f2.floatValue() : f;
    }

    public static final j59 b(TransitionValues transitionValues, int[] iArr) {
        transitionValues.values.put("yandex:fade:screenPosition", iArr);
        return j59.a;
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public final void captureEndValues(TransitionValues transitionValues) {
        super.captureEndValues(transitionValues);
        int mode = getMode();
        if (mode == 1) {
            transitionValues.values.put("yandex:fade:alpha", Float.valueOf(transitionValues.view.getAlpha()));
        } else if (mode == 2) {
            transitionValues.values.put("yandex:fade:alpha", Float.valueOf(this.a));
        }
        v56.a(transitionValues, new defpackage.av5(transitionValues, 4));
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public final void captureStartValues(TransitionValues transitionValues) {
        super.captureStartValues(transitionValues);
        int mode = getMode();
        if (mode == 1) {
            transitionValues.values.put("yandex:fade:alpha", Float.valueOf(this.a));
        } else if (mode == 2) {
            transitionValues.values.put("yandex:fade:alpha", Float.valueOf(transitionValues.view.getAlpha()));
        }
        v56.a(transitionValues, new defpackage.vl4(transitionValues, 6));
    }

    @Override // androidx.transition.Visibility
    public final Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues2 == null) {
            return null;
        }
        float fA = a(transitionValues, this.a);
        float fA2 = a(transitionValues2, 1.0f);
        Object obj = transitionValues2.values.get("yandex:fade:screenPosition");
        obj.getClass();
        View viewA = ag6.a(view, viewGroup, this, (int[]) obj);
        if (fA == fA2) {
            return null;
        }
        viewA.setAlpha(fA);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewA, (Property<View, Float>) View.ALPHA, fA, fA2);
        objectAnimatorOfFloat.addListener(new ht2(viewA, viewA.getAlpha()));
        return objectAnimatorOfFloat;
    }

    @Override // androidx.transition.Visibility
    public final Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null) {
            return null;
        }
        float fA = a(transitionValues, 1.0f);
        float fA2 = a(transitionValues2, this.a);
        View viewA = v56.a(this, view, viewGroup, transitionValues, "yandex:fade:screenPosition");
        if (fA == fA2) {
            return null;
        }
        viewA.setAlpha(fA);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewA, (Property<View, Float>) View.ALPHA, fA, fA2);
        objectAnimatorOfFloat.addListener(new ht2(viewA, viewA.getAlpha()));
        return objectAnimatorOfFloat;
    }

    public static final j59 a(TransitionValues transitionValues, int[] iArr) {
        transitionValues.values.put("yandex:fade:screenPosition", iArr);
        return j59.a;
    }
}
