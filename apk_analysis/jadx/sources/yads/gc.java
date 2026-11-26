package yads;

import android.app.Dialog;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes6.dex */
public final class gc implements View.OnTouchListener {
    public final ViewGroup a;
    public final Dialog b;
    public final fr3 c;
    public float d;

    public gc(ViewGroup viewGroup, Dialog dialog, fr3 fr3Var) {
        this.a = viewGroup;
        this.b = dialog;
        this.c = fr3Var;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        float rawY = motionEvent.getRawY();
        int action = motionEvent.getAction();
        if (action == 0) {
            this.d = rawY;
            return true;
        }
        if (action != 1) {
            if (action != 2) {
                return false;
            }
            float f = this.d;
            ViewGroup viewGroup = this.a;
            if (rawY > f) {
                viewGroup.setTranslationY(rawY - f);
            } else {
                viewGroup.setTranslationY(0.0f);
            }
        } else if (rawY > this.d) {
            this.c.getClass();
            fr3.a(view);
            eo0.a(this.b);
        }
        return true;
    }
}
