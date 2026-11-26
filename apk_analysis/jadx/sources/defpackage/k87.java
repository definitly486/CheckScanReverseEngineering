package defpackage;

import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import okhttp3.b;

/* JADX INFO: loaded from: classes5.dex */
public final class k87 {
    public final l9 a;
    public final j87 b;
    public final okhttp3.a c;
    public final b d;
    public final List<? extends Proxy> e;
    public int f;
    public List<? extends InetSocketAddress> g;
    public final ArrayList h;

    public static final class a {
        public final ArrayList a;
        public int b;

        public a(ArrayList arrayList) {
            this.a = arrayList;
        }

        public final boolean a() {
            return this.b < this.a.size();
        }
    }

    public k87(l9 l9Var, j87 j87Var, okhttp3.a aVar, b bVar) {
        List<Proxy> listK;
        j87Var.getClass();
        bVar.getClass();
        this.a = l9Var;
        this.b = j87Var;
        this.c = aVar;
        this.d = bVar;
        kx2 kx2Var = kx2.b;
        this.e = kx2Var;
        this.g = kx2Var;
        this.h = new ArrayList();
        fz3 fz3Var = l9Var.h;
        bVar.proxySelectStart(aVar, fz3Var);
        URI uriG = fz3Var.g();
        if (uriG.getHost() == null) {
            listK = gb9.k(Proxy.NO_PROXY);
        } else {
            List<Proxy> listSelect = l9Var.g.select(uriG);
            List<Proxy> list = listSelect;
            if (list == null || list.isEmpty()) {
                listK = gb9.k(Proxy.NO_PROXY);
            } else {
                listSelect.getClass();
                listK = gb9.w(listSelect);
            }
        }
        this.e = listK;
        this.f = 0;
        bVar.proxySelectEnd(aVar, fz3Var, listK);
    }

    public final boolean a() {
        return this.f < this.e.size() || !this.h.isEmpty();
    }
}
