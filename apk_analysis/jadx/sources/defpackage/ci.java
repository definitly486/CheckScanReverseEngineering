package defpackage;

import com.google.android.gms.tasks.OnFailureListener;
import yads.ky2;
import yads.nt;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class ci implements li0, xl3, OnFailureListener, nt {
    public final /* synthetic */ Object b;

    @Override // yads.nt
    public long a(long j) {
        return ((ky2) this.b).a(j);
    }

    @Override // defpackage.li0
    public Object apply(Object obj, Object obj2) {
        return (b36) ((bm3) this.b).invoke(obj, obj2);
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        ju4 ju4Var = (ju4) this.b;
        exc.getClass();
        ju4Var.e();
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (String) ((nl3) this.b).invoke(obj);
    }
}
