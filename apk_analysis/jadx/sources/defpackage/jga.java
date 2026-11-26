package defpackage;

import android.view.View;
import android.widget.Button;
import com.my.target.l;
import com.my.target.w2;
import com.my.target.wf;
import com.my.target.wj;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class jga implements View.OnClickListener {
    public final /* synthetic */ wj b;
    public final /* synthetic */ wf.a c;

    public /* synthetic */ jga(wj wjVar, wf.a aVar) {
        this.b = wjVar;
        this.c = aVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i;
        l.a aVar;
        int i2 = wj.k;
        wj wjVar = this.b;
        Button button = wjVar.c;
        int i3 = view == button ? 2 : 1;
        if (view == button) {
            i = 64;
        } else {
            i = view == wjVar.d ? 128 : 2048;
        }
        up9 up9Var = new up9(i, wjVar.i);
        wf wfVar = (wf) ((ml0) this.c).c;
        if (!view.isEnabled() || (aVar = wfVar.t) == null) {
            return;
        }
        ((w2.b) aVar).b(i3, up9Var);
    }
}
