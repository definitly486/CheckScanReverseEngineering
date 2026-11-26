package yads;

import android.view.GestureDetector;
import android.view.MotionEvent;
import defpackage.ll3;

/* JADX INFO: loaded from: classes6.dex */
public final class dh1 extends GestureDetector.SimpleOnGestureListener {
    public final boolean a;
    public ll3 b;
    public ll3 c;

    public dh1(boolean z) {
        this.a = z;
    }

    public final void a(ll3 ll3Var) {
        this.c = ll3Var;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTap(MotionEvent motionEvent) {
        ll3 ll3Var = this.c;
        if (ll3Var == null) {
            return false;
        }
        ll3Var.invoke();
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent motionEvent) {
        if (this.a) {
            return false;
        }
        return (this.c == null && this.b == null) ? false : true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        ll3 ll3Var;
        if (this.c == null || (ll3Var = this.b) == null) {
            return false;
        }
        ll3Var.invoke();
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        ll3 ll3Var;
        if (this.c != null || (ll3Var = this.b) == null) {
            return false;
        }
        ll3Var.invoke();
        return true;
    }
}
