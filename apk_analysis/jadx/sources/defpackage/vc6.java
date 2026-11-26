package defpackage;

import androidx.navigation.serialization.RouteSerializerKt;
import java.util.List;
import yads.nq0;
import yads.wq0;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class vc6 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ vc6(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                wc6 wc6Var = (wc6) obj;
                while (!wc6Var.d.isEmpty()) {
                    wc6Var.a();
                }
                return j59.a;
            case 1:
                return RouteSerializerKt.generateRoutePattern$lambda$0((df4) obj);
            case 2:
                return ((ef4) ((List) obj).get(0)).d();
            case 3:
                return nq0.S((nq0) obj);
            default:
                return wq0.g((wq0) obj);
        }
    }
}
