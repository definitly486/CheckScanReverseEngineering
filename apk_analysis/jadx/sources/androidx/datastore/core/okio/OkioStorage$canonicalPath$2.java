package androidx.datastore.core.okio;

import defpackage.f;
import defpackage.fg;
import defpackage.gh4;
import defpackage.j46;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class OkioStorage$canonicalPath$2 extends gh4 implements ll3<j46> {
    final /* synthetic */ OkioStorage<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OkioStorage$canonicalPath$2(OkioStorage<T> okioStorage) {
        super(0);
        this.this$0 = okioStorage;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final j46 invoke() {
        j46 j46Var = (j46) ((OkioStorage) this.this$0).producePath.invoke();
        j46Var.getClass();
        boolean z = f.c(j46Var) != -1;
        OkioStorage<T> okioStorage = this.this$0;
        if (z) {
            return j46.a.a(j46Var.b.x(), true);
        }
        fg.d("OkioStorage requires absolute paths, but did not get an absolute path from producePath = ", ((OkioStorage) okioStorage).producePath, ", instead got ", j46Var);
        return null;
    }
}
