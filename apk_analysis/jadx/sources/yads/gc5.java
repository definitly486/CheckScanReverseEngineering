package yads;

import android.view.View;
import android.widget.PopupWindow;

/* JADX INFO: loaded from: classes6.dex */
public abstract class gc5 extends PopupWindow {
    public gc5(View view, int i, int i2) {
        super(view, i, i2, false);
    }

    @Override // android.widget.PopupWindow
    public final void setContentView(View view) {
        if (view != null) {
            view.setFilterTouchesWhenObscured(true);
        }
        super.setContentView(view);
    }
}
