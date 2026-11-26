package defpackage;

import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.material.search.SearchView;
import com.my.target.e1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class rk7 implements View.OnTouchListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ FrameLayout c;

    public /* synthetic */ rk7(FrameLayout frameLayout, int i) {
        this.b = i;
        this.c = frameLayout;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        e1 e1Var;
        int i = this.b;
        FrameLayout frameLayout = this.c;
        switch (i) {
            case 0:
                return ((SearchView) frameLayout).lambda$setUpContentOnTouchListener$4(view, motionEvent);
            default:
                int i2 = e1.k;
                e1.f fVar = ((e1) frameLayout).e;
                fVar.getClass();
                int action = motionEvent.getAction();
                if (action == 0) {
                    if (fVar.c != null) {
                        throw null;
                    }
                    fVar.onTouchEvent(motionEvent);
                    return false;
                }
                if (action == 1) {
                    if (fVar.c != null) {
                        throw null;
                    }
                    if (fVar.b == null) {
                        y14.r(null, "BannerWebView$ViewGestureDetector: View's onUserClick() is not registered");
                        return false;
                    }
                    y14.r(null, "BannerWebView$ViewGestureDetector: Gestures - user clicked");
                    ((e1) fVar.b.c).j = true;
                    return false;
                }
                if (action != 2 || (e1Var = fVar.a) == null) {
                    return false;
                }
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (x < 0.0f || x > e1Var.getWidth() || y < 0.0f || y > e1Var.getHeight()) {
                    return false;
                }
                fVar.onTouchEvent(motionEvent);
                return false;
        }
    }
}
