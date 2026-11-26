package yads;

import android.view.GestureDetector;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes6.dex */
public final class tq0 extends GestureDetector.SimpleOnGestureListener {
    public final /* synthetic */ vq0 a;

    public tq0(vq0 vq0Var) {
        this.a = vq0Var;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        vq0 vq0Var = this.a;
        pq.a(vq0Var, vq0Var.K);
        return true;
    }
}
