package yads;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes6.dex */
public final class w16 extends Visibility {
    public final pb2 a;
    public final Float b;

    public w16(pb2 pb2Var) {
        this.a = pb2Var;
        this.b = null;
    }

    @Override // android.transition.Visibility
    public final Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        float f;
        float f2 = 1.0f;
        switch (this.a) {
            case LEFT:
            case TOP_LEFT:
            case BOTTOM_LEFT:
                f = 1.0f;
                break;
            case TOP:
            case BOTTOM:
                f = 0.0f;
                break;
            case TOP_RIGHT:
            case RIGHT:
            case BOTTOM_RIGHT:
                f = -1.0f;
                break;
            case CENTER:
                f = 0.5f;
                break;
            default:
                defpackage.me0.e();
                return null;
        }
        switch (this.a) {
            case LEFT:
            case RIGHT:
                f2 = 0.0f;
                break;
            case TOP_LEFT:
            case TOP:
            case TOP_RIGHT:
                break;
            case BOTTOM_RIGHT:
            case BOTTOM:
            case BOTTOM_LEFT:
                f2 = -1.0f;
                break;
            case CENTER:
                f2 = 0.5f;
                break;
            default:
                defpackage.me0.e();
                return null;
        }
        view.setTranslationX(f * (this.b != null ? this.b.floatValue() * view.getWidth() : pq.a((Number) 10, view.getResources().getDisplayMetrics())));
        view.setTranslationY(f2 * (this.b != null ? this.b.floatValue() * view.getHeight() : pq.a((Number) 10, view.getResources().getDisplayMetrics())));
        return ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_X, view.getTranslationX(), 0.0f), PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, view.getTranslationY(), 0.0f));
    }

    @Override // android.transition.Visibility
    public final Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        float f;
        float f2 = 1.0f;
        switch (this.a) {
            case LEFT:
            case TOP_LEFT:
            case BOTTOM_LEFT:
                f = 1.0f;
                break;
            case TOP:
            case BOTTOM:
                f = 0.0f;
                break;
            case TOP_RIGHT:
            case RIGHT:
            case BOTTOM_RIGHT:
                f = -1.0f;
                break;
            case CENTER:
                f = 0.5f;
                break;
            default:
                defpackage.me0.e();
                return null;
        }
        switch (this.a) {
            case LEFT:
            case RIGHT:
                f2 = 0.0f;
                break;
            case TOP_LEFT:
            case TOP:
            case TOP_RIGHT:
                break;
            case BOTTOM_RIGHT:
            case BOTTOM:
            case BOTTOM_LEFT:
                f2 = -1.0f;
                break;
            case CENTER:
                f2 = 0.5f;
                break;
            default:
                defpackage.me0.e();
                return null;
        }
        return ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_X, 0.0f, f * (this.b != null ? this.b.floatValue() * view.getWidth() : pq.a((Number) 10, view.getResources().getDisplayMetrics()))), PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, 0.0f, f2 * (this.b != null ? this.b.floatValue() * view.getHeight() : pq.a((Number) 10, view.getResources().getDisplayMetrics()))));
    }

    public w16(pb2 pb2Var, Float f) {
        this.a = pb2Var;
        this.b = f;
    }
}
