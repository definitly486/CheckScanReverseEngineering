package defpackage;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes5.dex */
public final class g36 extends h36<Object> {
    public final /* synthetic */ h36 a;

    public g36(h36 h36Var) {
        this.a = h36Var;
    }

    @Override // defpackage.h36
    public final void a(i37 i37Var, Object obj) {
        if (obj == null) {
            return;
        }
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.a.a(i37Var, Array.get(obj, i));
        }
    }
}
