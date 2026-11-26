package defpackage;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.remoteconfig.internal.ConfigFetchHandler;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class rv1 implements Continuation, v75 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ rv1(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.v75
    public void a(c75.a aVar) {
        o22 o22Var = (o22) this.b;
        bm3 bm3Var = (bm3) this.c;
        o22 o22VarA = q22.a(gx2.b, o22Var, true);
        oi2 oi2Var = qo2.a;
        if (o22VarA != oi2Var && o22VarA.get(g02.a.b) == null) {
            o22VarA = o22VarA.plus(oi2Var);
        }
        a0 e97Var = new e97(o22VarA, aVar);
        ip2.f(aVar, new f31(new x87(e97Var)));
        e97Var.m0(c32.DEFAULT, e97Var, bm3Var);
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        return ((ConfigFetchHandler) this.b).lambda$fetchNowWithTypeAndAttemptNumber$1((HashMap) this.c, task);
    }
}
