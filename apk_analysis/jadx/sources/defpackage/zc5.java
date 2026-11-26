package defpackage;

import com.my.target.m1;
import yads.az1;
import yads.l66;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class zc5 implements l66, m1.b {
    public static Object b(ze7 ze7Var, i36 i36Var, ze7 ze7Var2, Class cls) {
        ze7Var.getClass();
        i36Var.getClass();
        return wc5.a(ze7Var2).b(cls);
    }

    public static /* synthetic */ void c(int i, Object obj) {
        throw new IllegalStateException("Source subfield " + i + ((Object) " is present but null: ") + ((Object) obj.toString()));
    }

    public static /* synthetic */ void d(Object obj, String str, int i) {
        throw new IllegalStateException((str + i + obj).toString());
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return az1.a(((Long) obj).longValue());
    }

    @Override // com.my.target.m1.b
    /* JADX INFO: renamed from: a */
    public void mo1a() {
    }
}
