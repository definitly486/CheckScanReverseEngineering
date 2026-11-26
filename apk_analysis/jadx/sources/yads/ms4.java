package yads;

import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.ViewParent;

/* JADX INFO: loaded from: classes6.dex */
public final class ms4 implements oq4 {
    public static final ms4 a = new ms4();

    public final boolean a(ViewGroup viewGroup, MotionEvent motionEvent) {
        ViewParent parent = viewGroup.getParent();
        if (parent == null) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            parent.requestDisallowInterceptTouchEvent(true);
        } else if (actionMasked == 1 || actionMasked == 3) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        return false;
    }
}
