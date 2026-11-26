package defpackage;

import android.content.Context;
import com.my.target.c3;
import com.my.target.common.MyTargetContentProvider;
import yads.o25;
import yads.v15;
import yads.wn;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class oh5 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ oh5(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                MyTargetContentProvider myTargetContentProvider = (MyTargetContentProvider) obj;
                int i2 = MyTargetContentProvider.c;
                try {
                    Context context = myTargetContentProvider.getContext();
                    Integer num = (Integer) context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.get("com.my.target.autoInitMode");
                    if (num == null || num.intValue() != 0) {
                        y14.t("Start autoinitialization");
                        rh5.a(context);
                    }
                } catch (Throwable th) {
                    y14.t("Autoinitialization failed - " + th.getMessage());
                    return;
                }
                break;
            case 1:
                o25.b((o25) obj);
                break;
            case 2:
                ((v15) obj).e();
                break;
            case 3:
                wn.d((wn) obj);
                break;
            default:
                c3 c3Var = (c3) obj;
                c3.a aVar = c3Var.n;
                if (aVar != c3.a.a) {
                    if (aVar == c3.a.b) {
                        c3Var.o -= 200;
                    }
                    if (c3Var.o > 0) {
                        c3Var.n();
                    }
                }
                c3Var.m();
                break;
        }
    }
}
