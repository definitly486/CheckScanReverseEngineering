package yads;

import android.view.View;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;

/* JADX INFO: loaded from: classes6.dex */
public final class u55 implements View.OnAttachStateChangeListener {
    public final /* synthetic */ vq0 a;
    public final /* synthetic */ vq0 b;
    public final /* synthetic */ v55 c;

    public u55(vq0 vq0Var, vq0 vq0Var2, v55 v55Var) {
        this.a = vq0Var;
        this.b = vq0Var2;
        this.c = v55Var;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.a.removeOnAttachStateChangeListener(this);
        LifecycleOwner lifecycleOwner = ViewTreeLifecycleOwner.get(this.b);
        if (lifecycleOwner != null) {
            this.c.a(lifecycleOwner, this.b);
        } else {
            int i = rv3.a;
            vj5[] vj5VarArr = vj5.b;
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
