package yads;

import android.app.Activity;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yandex.mobile.ads.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class sx implements on0 {
    public final wd4 a;
    public final rx b;

    public sx(Activity activity) {
        wd4 wd4Var = new wd4();
        rx rxVar = new rx(activity);
        this.a = wd4Var;
        this.b = rxVar;
    }

    @Override // yads.on0
    public final void a(ViewGroup viewGroup) {
        this.a.getClass();
        TextView textView = (TextView) viewGroup.findViewById(R$id.monetization_ads_call_to_action);
        if (textView != null) {
            rx rxVar = this.b;
            rxVar.c = defpackage.av0.c(rxVar.a, null, null, new qx(rxVar, textView, null), 3);
        }
    }

    @Override // yads.on0
    public final void c() {
        rx rxVar = this.b;
        defpackage.mb4 mb4Var = rxVar.c;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        rxVar.c = null;
        rxVar.b.cancel();
    }
}
