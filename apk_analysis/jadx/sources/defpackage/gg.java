package defpackage;

import android.os.Bundle;
import com.my.target.d0;
import com.my.target.m1;
import yads.i93;
import yads.j93;
import yads.jv;
import yads.jx5;
import yads.kv;
import yads.l66;
import yads.lh1;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class gg implements mq5, m1.b, j93, jv, l66 {
    public /* synthetic */ gg(d0 d0Var) {
    }

    public static /* synthetic */ void d(String str, float f, Object obj, float f2, Object obj2) {
        throw new IllegalArgumentException(str + f + obj + f2 + obj2);
    }

    public static void e(StringBuilder sb, int i, String str, int i2, String str2) {
        sb.append(i);
        sb.append(str);
        sb.append(i2);
        sb.append(str2);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return lh1.a(((Double) obj).doubleValue());
    }

    @Override // defpackage.mq5
    public Object c() {
        return new xq4();
    }

    @Override // com.my.target.m1.b
    /* JADX INFO: renamed from: a */
    public void mo1a() {
    }

    @Override // yads.jv
    public kv a(Bundle bundle) {
        return jx5.a(bundle);
    }

    @Override // yads.j93
    public boolean a(String str) {
        return i93.b(str);
    }
}
