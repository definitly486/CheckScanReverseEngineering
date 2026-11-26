package defpackage;

import android.view.View;
import com.my.target.l;
import com.my.target.p;
import com.my.target.w2;
import com.my.target.wf;
import com.my.target.wj;
import com.my.target.y2;
import com.my.target.z0;
import com.my.target.z1;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class hga implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ hga(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        l.a aVar;
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                wf.a aVar2 = (wf.a) obj;
                int i2 = wj.k;
                int i3 = view == ((wj) obj2).c ? 2 : 1;
                gia giaVar = new gia();
                wf wfVar = (wf) ((ml0) aVar2).c;
                if (view.isEnabled() && (aVar = wfVar.t) != null) {
                    ((w2.b) aVar).b(i3, giaVar);
                    break;
                }
                break;
            default:
                ix9 ix9Var = (ix9) obj;
                fo9 fo9Var = ix9Var.a;
                p.a aVar3 = ((y2) obj2).m;
                if (aVar3 != null) {
                    z1 z1Var = (z1) aVar3;
                    z0 z0Var = z1Var.d;
                    ArrayList<ix9> arrayList = z1Var.v;
                    if (arrayList != null) {
                        for (ix9 ix9Var2 : arrayList) {
                            if (fo9Var.B.equals(ix9Var2.a.B) && ix9Var2.b) {
                                z1Var.g(fo9Var, 1, new gia(), z0Var.a());
                                if (z1Var.x) {
                                    z1Var.e();
                                }
                                break;
                            }
                        }
                        for (ix9 ix9Var3 : arrayList) {
                            ix9Var3.b = fo9Var.B.equals(ix9Var3.a.B);
                        }
                        if (z0Var instanceof p) {
                            ((p) z0Var).a(arrayList, ix9Var);
                        }
                        break;
                    }
                }
                break;
        }
    }
}
