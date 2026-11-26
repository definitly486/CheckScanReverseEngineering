package defpackage;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorker;
import com.my.target.c1;
import com.my.target.pb;
import okhttp3.b;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class y52 implements Continuation, xl3, b.c, c1.a {
    public final /* synthetic */ Object b;

    public /* synthetic */ y52(Object obj) {
        this.b = obj;
    }

    @Override // okhttp3.b.c
    public b a(jy6 jy6Var) {
        b bVar = (b) this.b;
        bVar.getClass();
        return bVar;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (c18) ((ss5) this.b).invoke(obj);
    }

    @Override // com.my.target.c1.a
    public void d(e6a e6aVar) {
        pb pbVar = (pb) this.b;
        int i = pb.m;
        pbVar.f = e6aVar;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        return CrashlyticsWorker.lambda$submitTaskOnSuccess$5((SuccessContinuation) this.b, task);
    }
}
