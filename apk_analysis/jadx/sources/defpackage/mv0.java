package defpackage;

import android.view.View;
import com.my.target.a0;
import yads.rh0;
import yads.x64;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class mv0 implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ mv0(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ((ov0) obj2).b.onButtonChipItemClick(((pv0) obj).c);
                break;
            case 1:
                a0 a0Var = (a0) obj2;
                vy9 vy9Var = (vy9) obj;
                a0Var.b.g(vy9Var, null, 1, y14.j(vy9Var.Q.c ? new up9(8, a0Var.e) : new gia()), view.getContext());
                break;
            default:
                x64.a((x64) obj2, (rh0) obj, view);
                break;
        }
    }
}
