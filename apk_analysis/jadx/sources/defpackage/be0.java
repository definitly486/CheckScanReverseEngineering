package defpackage;

import android.content.Context;
import com.warefly.checkscan.CheckScanApplication;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class be0 implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ nl3 c;

    public /* synthetic */ be0(nl3 nl3Var, int i) {
        this.b = i;
        this.c = nl3Var;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        nl3 nl3Var = this.c;
        switch (i) {
            case 0:
                nl3Var.invoke(obj);
                break;
            case 1:
                Context context = CheckScanApplication.c;
                nl3Var.invoke(obj);
                break;
            default:
                ((bw) nl3Var).invoke(obj);
                break;
        }
    }
}
