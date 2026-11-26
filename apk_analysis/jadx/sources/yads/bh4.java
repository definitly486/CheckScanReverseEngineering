package yads;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class bh4 implements View.OnTouchListener, View.OnClickListener {
    public final oz a;
    public final uf4 b;

    public bh4(Context context, kf4 kf4Var) {
        oz ozVar = new oz(context, kf4Var);
        if (uf4.e == null) {
            synchronized (uf4.d) {
                try {
                    if (uf4.e == null) {
                        uf4.e = new uf4();
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        uf4 uf4Var = uf4.e;
        if (uf4Var == null) {
            defpackage.fg.c("Required value was null.");
            throw null;
        }
        this.a = ozVar;
        this.b = uf4Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.a.a.onClick(view);
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        this.b.a(view, motionEvent);
        return this.a.onTouch(view, motionEvent);
    }
}
