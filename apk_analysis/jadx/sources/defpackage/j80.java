package defpackage;

import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.skydoves.balloon.databinding.BalloonLayoutBodyBinding;

/* JADX INFO: loaded from: classes4.dex */
public final class j80 implements View.OnTouchListener {
    public final /* synthetic */ i80 b;

    public j80(i80 i80Var) {
        this.b = i80Var;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        view.getClass();
        motionEvent.getClass();
        int action = motionEvent.getAction();
        i80 i80Var = this.b;
        BalloonLayoutBodyBinding balloonLayoutBodyBinding = i80Var.d;
        if (action == 4) {
            i80Var.c();
            return true;
        }
        if (motionEvent.getAction() != 1) {
            return false;
        }
        FrameLayout frameLayout = balloonLayoutBodyBinding.balloonWrapper;
        frameLayout.getClass();
        if (tm1.b(frameLayout).x <= motionEvent.getRawX()) {
            FrameLayout frameLayout2 = balloonLayoutBodyBinding.balloonWrapper;
            frameLayout2.getClass();
            if (balloonLayoutBodyBinding.balloonWrapper.getMeasuredWidth() + tm1.b(frameLayout2).x >= motionEvent.getRawX()) {
                return false;
            }
        }
        i80Var.c();
        return true;
    }
}
