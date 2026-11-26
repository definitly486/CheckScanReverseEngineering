package yads;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.math.MathUtils;

/* JADX INFO: loaded from: classes6.dex */
public final class j32 extends GestureDetector.SimpleOnGestureListener {
    public final /* synthetic */ k32 a;

    public j32(k32 k32Var) {
        this.a = k32Var;
    }

    public final void a() {
        i32 i32Var;
        float fSignum;
        float fAbs;
        View childAt = this.a.getChildCount() > 0 ? this.a.getChildAt(0) : null;
        if (childAt == null) {
            return;
        }
        if (Math.abs(childAt.getTranslationX()) > childAt.getWidth() / 2) {
            fAbs = (Math.abs(childAt.getWidth() - childAt.getTranslationX()) * 300.0f) / childAt.getWidth();
            fSignum = Math.signum(childAt.getTranslationX()) * childAt.getWidth();
            i32Var = new i32(this.a);
        } else {
            i32Var = null;
            fSignum = 0.0f;
            fAbs = (Math.abs(childAt.getTranslationX()) * 300.0f) / childAt.getWidth();
        }
        childAt.animate().cancel();
        childAt.animate().setDuration((long) MathUtils.clamp(fAbs, 0.0f, 300.0f)).translationX(fSignum).setListener(i32Var).start();
    }

    public final boolean b() {
        View childAt = this.a.getChildCount() > 0 ? this.a.getChildAt(0) : null;
        return !((childAt != null ? childAt.getTranslationX() : 0.0f) == 0.0f);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        View childAt = this.a.getChildCount() > 0 ? this.a.getChildAt(0) : null;
        if (childAt == null || motionEvent == null) {
            return false;
        }
        int iSignum = (int) Math.signum(f);
        if (childAt.getTranslationX() == 0.0f && Math.abs(f) > Math.abs(f2) * 2.0f && a(childAt, motionEvent.getX(), motionEvent.getY(), iSignum)) {
            return false;
        }
        childAt.setTranslationX(MathUtils.clamp(childAt.getTranslationX() - f, -childAt.getWidth(), childAt.getWidth()));
        return !(childAt.getTranslationX() == 0.0f);
    }

    public static boolean a(View view, float f, float f2, int i) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; -1 < childCount; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (f >= childAt.getLeft() && f < childAt.getRight() && f2 >= childAt.getTop() && f2 < childAt.getBottom() && a(childAt, f - childAt.getLeft(), f2 - childAt.getTop(), i)) {
                    return true;
                }
            }
        }
        return view.canScrollHorizontally(i);
    }
}
