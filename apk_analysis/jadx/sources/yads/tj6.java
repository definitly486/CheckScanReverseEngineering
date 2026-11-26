package yads;

import android.widget.CheckBox;
import android.widget.ProgressBar;
import android.widget.TextView;

/* JADX INFO: loaded from: classes6.dex */
public final class tj6 implements wz3 {
    public final qh4 a;

    public tj6(qh4 qh4Var) {
        this.a = qh4Var;
    }

    @Override // yads.wz3
    public final TextView getCountDownProgress() {
        return null;
    }

    @Override // yads.wz3
    public final CheckBox getMuteControl() {
        e55 e55Var = this.a.c;
        defpackage.ze4 ze4Var = qh4.g[2];
        return (CheckBox) e55Var.a.get();
    }

    @Override // yads.wz3
    public final ProgressBar getVideoProgress() {
        e55 e55Var = this.a.d;
        defpackage.ze4 ze4Var = qh4.g[3];
        return (ProgressBar) e55Var.a.get();
    }
}
