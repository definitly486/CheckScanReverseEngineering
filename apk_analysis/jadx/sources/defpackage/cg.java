package defpackage;

import android.os.Bundle;
import java.io.IOException;
import java.util.TreeSet;
import yads.a6;
import yads.ax5;
import yads.jq1;
import yads.jv;
import yads.kv;
import yads.l66;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class cg implements mq5, jv, l66, ax5 {
    public static String d(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static /* synthetic */ void e(Object obj, String str) throws IOException {
        throw new IOException(str + obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void f(Object obj, String str, int i) {
        throw new IllegalStateException((str + obj + ((char) i)).toString());
    }

    public static /* synthetic */ void g(StringBuilder sb, Object obj, Object obj2) {
        sb.append(obj);
        sb.append(obj2);
        throw new IllegalArgumentException(sb.toString());
    }

    public static /* synthetic */ void h(Throwable th) {
        throw new IllegalArgumentException(th);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return jq1.b(((Long) obj).longValue());
    }

    @Override // defpackage.mq5
    public Object c() {
        return new TreeSet();
    }

    @Override // yads.jv
    public kv a(Bundle bundle) {
        return a6.a(bundle);
    }
}
