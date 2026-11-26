package yads;

import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes6.dex */
public final class an4 {
    public final ViewGroup a;
    public boolean b;
    public final float c;
    public float d;
    public float e;

    public an4(ld5 ld5Var) {
        this(ld5Var, ViewConfiguration.get(ld5Var.getContext()).getScaledTouchSlop());
    }

    public final void a(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.d = motionEvent.getX();
            this.e = motionEvent.getY();
            return;
        }
        if (action != 1) {
            if (action == 2) {
                float fAbs = Math.abs(motionEvent.getX() - this.d);
                float fAbs2 = Math.abs(motionEvent.getY() - this.e);
                if (this.b || fAbs < this.c || fAbs <= fAbs2) {
                    return;
                }
                this.b = true;
                ViewCompat.startNestedScroll(this.a, 1);
                return;
            }
            if (action != 3) {
                return;
            }
        }
        this.b = false;
        ViewCompat.stopNestedScroll(this.a);
    }

    public an4(ViewGroup viewGroup, float f) {
        this.a = viewGroup;
        ViewCompat.setNestedScrollingEnabled(viewGroup, true);
        this.c = f;
    }
}
