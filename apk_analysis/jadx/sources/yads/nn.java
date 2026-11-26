package yads;

import android.view.KeyEvent;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class nn {
    public final ln a;
    public mn b;

    public nn(ln lnVar) {
        this.a = lnVar;
    }

    public final boolean a(int i, KeyEvent keyEvent) {
        if (this.b != null && i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                KeyEvent.DispatcherState keyDispatcherState = this.a.getKeyDispatcherState();
                if (keyDispatcherState != null) {
                    keyDispatcherState.startTracking(keyEvent, this);
                }
                return true;
            }
            if (keyEvent.getAction() == 1) {
                KeyEvent.DispatcherState keyDispatcherState2 = this.a.getKeyDispatcherState();
                if (keyDispatcherState2 != null) {
                    keyDispatcherState2.handleUpEvent(keyEvent);
                }
                if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                    mn mnVar = this.b;
                    mnVar.getClass();
                    q0 q0Var = ((l0) mnVar).a;
                    if (q0Var.e) {
                        tq.a(q0Var.a);
                        q0Var.a();
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final void a() {
        View rootView;
        if (this.b == null || !this.a.hasWindowFocus()) {
            return;
        }
        ln lnVar = this.a;
        if (lnVar.isShown()) {
            lnVar.performAccessibilityAction(64, null);
            lnVar.sendAccessibilityEvent(1);
        } else {
            if (!lnVar.isAccessibilityFocused() || (rootView = lnVar.getRootView()) == null) {
                return;
            }
            rootView.performAccessibilityAction(64, null);
            rootView.sendAccessibilityEvent(1);
        }
    }
}
