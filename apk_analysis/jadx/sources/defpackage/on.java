package defpackage;

import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes5.dex */
public final class on implements jg4 {
    public static final on b = new on();
    public static final bz3 c;

    static {
        bz3 bz3Var = new bz3(0);
        bz3.a aVar = bz3.a.NONE;
        aVar.getClass();
        bz3Var.c = aVar;
        c = bz3Var;
    }

    public static n67 a(String str, OkHttpClient okHttpClient) {
        n67.b bVar = new n67.b();
        bVar.b(str.concat("/"));
        bVar.a = okHttpClient;
        bVar.a((i02.a) ay3.a.getValue());
        bVar.a(new xs3(new Gson()));
        bVar.d.add(new c97());
        return bVar.c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final OkHttpClient.a c(boolean z, boolean z2) {
        OkHttpClient.a aVar = new OkHttpClient.a();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        timeUnit.getClass();
        aVar.x = gb9.b(30L, timeUnit);
        aVar.z = gb9.b(30L, timeUnit);
        aVar.y = gb9.b(90L, timeUnit);
        bz3 bz3Var = c;
        bz3Var.getClass();
        ArrayList arrayList = aVar.c;
        arrayList.add(bz3Var);
        arrayList.add((f94) (this instanceof og4 ? m2.c(ev3.class, ((og4) this).getScope(), null, null) : super.b().c.d.e(x07.a(ev3.class), null, null)));
        jg4 jg4Var = b;
        if (z) {
            arrayList.add((f94) (jg4Var instanceof og4 ? m2.c(a59.class, ((og4) jg4Var).getScope(), null, null) : super.b().c.d.e(x07.a(a59.class), null, null)));
        }
        if (z2) {
            aVar.j = (l02) (jg4Var instanceof og4 ? m2.c(qx.class, ((og4) jg4Var).getScope(), null, null) : super.b().c.d.e(x07.a(qx.class), null, null));
        }
        ba8 ba8Var = p72.i;
        for (f94 f94Var : (Iterable) (jg4Var instanceof og4 ? n2.c(List.class, ((og4) jg4Var).getScope(), ba8Var, null) : super.b().c.d.e(x07.a(List.class), null, ba8Var))) {
            f94Var.getClass();
            arrayList.add(f94Var);
        }
        return aVar;
    }
}
