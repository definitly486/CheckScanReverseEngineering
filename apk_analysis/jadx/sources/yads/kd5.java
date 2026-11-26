package yads;

import android.view.View;
import androidx.customview.widget.ViewDragHelper;

/* JADX INFO: loaded from: classes6.dex */
public final class kd5 extends ViewDragHelper.Callback {
    public final /* synthetic */ ld5 a;

    public kd5(ld5 ld5Var) {
        this.a = ld5Var;
    }

    @Override // androidx.customview.widget.ViewDragHelper.Callback
    public final void onEdgeDragStarted(int i, int i2) {
        super.onEdgeDragStarted(i, i2);
        ld5 ld5Var = this.a;
        boolean z = true;
        if ((i & 2) == 0 && (i & 1) == 0) {
            z = false;
        }
        ld5Var.f = z;
    }

    @Override // androidx.customview.widget.ViewDragHelper.Callback
    public final boolean tryCaptureView(View view, int i) {
        return false;
    }
}
