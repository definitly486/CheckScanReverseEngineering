package defpackage;

import android.graphics.drawable.Drawable;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.my.target.c1;
import com.my.target.hg;
import com.my.target.k1;
import yads.dc3;
import yads.fc3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class z3 implements xl3, Continuation, dc3, c1.a, gv9 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ z3(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    public void a(Drawable drawable) {
        fc3.a((ug6) this.c, drawable);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (qq1) ((f4) obj2).invoke(obj);
            default:
                return ((cn0) obj2).invoke(obj);
        }
    }

    @Override // defpackage.gv9
    public void b() {
        k1 k1Var = (k1) this.c;
        k1Var.c.b(k1Var.d);
    }

    @Override // com.my.target.c1.a
    public void d(e6a e6aVar) {
        hg hgVar = (hg) this.c;
        int i = hg.S;
        hgVar.Q = e6aVar;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        return FirebaseRemoteConfig.lambda$ensureInitialized$0((Task) this.c, task);
    }
}
