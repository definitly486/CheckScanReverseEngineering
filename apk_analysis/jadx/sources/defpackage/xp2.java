package defpackage;

import com.google.common.collect.j;
import com.google.common.collect.w;
import io.grpc.l;
import io.grpc.m;
import java.net.InetSocketAddress;
import java.net.URI;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class xp2 extends m {
    public static final boolean a;

    static {
        boolean z = false;
        try {
            Class.forName("android.app.Application", false, xp2.class.getClassLoader());
            z = true;
        } catch (Exception unused) {
        }
        a = z;
    }

    @Override // io.grpc.l.c
    public final l a(a99 a99Var, l.a aVar) {
        String string = null;
        if (!"dns".equals(a99Var.a)) {
            return null;
        }
        j.b bVar = j.c;
        j.a aVar2 = new j.a();
        a99.c(a99Var.e, aVar2);
        w wVarG = aVar2.g();
        o8.i(!wVarG.isEmpty(), "expected 1 path segment in target %s but found %s", a99Var, wVarG);
        String str = (String) wVarG.get(0);
        if (a99Var.c != null) {
            StringBuilder sb = new StringBuilder();
            a99Var.a(sb);
            string = sb.toString();
        }
        a99.e(string);
        return new wp2(str, aVar, vs3.p, new a98(), a);
    }

    @Override // io.grpc.l.c
    public final l b(URI uri, l.a aVar) {
        if (!"dns".equals(uri.getScheme())) {
            return null;
        }
        String path = uri.getPath();
        o8.l(path, "targetPath");
        o8.i(path.startsWith("/"), "the path component (%s) of the target (%s) must start with '/'", path, uri);
        String strSubstring = path.substring(1);
        uri.getAuthority();
        return new wp2(strSubstring, aVar, vs3.p, new a98(), a);
    }

    @Override // io.grpc.m
    public final Set c() {
        return Collections.singleton(InetSocketAddress.class);
    }
}
