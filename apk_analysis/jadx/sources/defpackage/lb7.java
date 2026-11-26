package defpackage;

import android.os.SystemClock;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class lb7 implements View.OnClickListener {
    public final int b = 1000;
    public final nl3<View, j59> c;
    public long d;

    public lb7(nl3 nl3Var) {
        this.c = nl3Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        view.getClass();
        if (SystemClock.elapsedRealtime() - this.d < this.b) {
            return;
        }
        this.d = SystemClock.elapsedRealtime();
        this.c.invoke(view);
    }
}
