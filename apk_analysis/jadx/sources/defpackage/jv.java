package defpackage;

import io.appmetrica.analytics.networkokhttp.impl.c;
import io.appmetrica.analytics.networkokhttp.impl.d;
import java.util.List;
import okhttp3.b;
import yads.y83;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class jv implements xl3, b.c, y83 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ jv(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // okhttp3.b.c
    public b a(jy6 jy6Var) {
        return c.a((d) this.c, jy6Var);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (c18) ((aw) obj2).invoke(obj);
            case 1:
                return ((ip0) obj2).invoke(obj);
            default:
                return (List) ((nl3) obj2).invoke(obj);
        }
    }
}
