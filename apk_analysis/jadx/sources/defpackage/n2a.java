package defpackage;

import android.view.View;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import com.my.target.common.MyTargetActivity;

/* JADX INFO: loaded from: classes4.dex */
public final class n2a implements View.OnApplyWindowInsetsListener {
    public final /* synthetic */ mh5 a;

    public n2a(mh5 mh5Var) {
        this.a = mh5Var;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        mh5 mh5Var = this.a;
        return ((MyTargetActivity.b) mh5Var.b).a((FrameLayout) mh5Var.c, view, windowInsets);
    }
}
