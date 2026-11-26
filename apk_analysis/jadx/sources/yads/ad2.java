package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class ad2 extends gc5 {
    public ad2(View view, int i, int i2) {
        super(view, i, i2);
    }

    @Override // android.widget.PopupWindow
    public final void dismiss() {
        try {
            super.dismiss();
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
    }
}
