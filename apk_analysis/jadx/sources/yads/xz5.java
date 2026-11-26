package yads;

import android.graphics.Point;
import android.view.GestureDetector;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes6.dex */
public final class xz5 extends GestureDetector.SimpleOnGestureListener {
    public final /* synthetic */ yz5 a;

    public xz5(yz5 yz5Var) {
        this.a = yz5Var;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTap(MotionEvent motionEvent) {
        this.a.a = null;
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        this.a.a = new Point((int) motionEvent.getX(), (int) motionEvent.getY());
        return true;
    }
}
