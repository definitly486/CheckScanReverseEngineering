package com.my.target;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.Window;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class y0 extends Dialog {
    public final a b;

    public interface a {
        void b(FrameLayout frameLayout);

        void m();
    }

    public y0(a aVar, Context context) {
        super(context);
        this.b = aVar;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        super.dismiss();
        this.b.m();
    }

    @Override // android.app.Dialog
    public final void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        FrameLayout frameLayout = new FrameLayout(getContext());
        setContentView(frameLayout);
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
            window.setLayout(-1, -1);
        }
        this.b.b(frameLayout);
        super.onCreate(bundle);
    }
}
