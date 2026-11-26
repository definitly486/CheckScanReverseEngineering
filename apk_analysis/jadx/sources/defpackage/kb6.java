package defpackage;

import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class kb6 implements hm3 {
    @Override // defpackage.hm3
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        nb6 nb6Var = (nb6) obj;
        db6 db6Var = (db6) obj2;
        ExecutorService executorService = (ExecutorService) obj3;
        rb6 lb6Var = (rb6) obj4;
        nc6 nc6Var = (nc6) obj5;
        xb6 mb6Var = (xb6) obj6;
        nb6Var.getClass();
        db6Var.getClass();
        executorService.getClass();
        if (lb6Var == null) {
            lb6Var = new lb6();
        }
        if (mb6Var == null) {
            mb6Var = new mb6();
        }
        return new ad6(nb6Var, db6Var, executorService, lb6Var, mb6Var, nc6Var);
    }
}
