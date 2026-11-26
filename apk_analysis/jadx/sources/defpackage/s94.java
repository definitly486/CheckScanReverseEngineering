package defpackage;

import java.net.SocketAddress;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class s94 implements Runnable {
    public final /* synthetic */ List b;
    public final /* synthetic */ p94 c;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            p94 p94Var = s94.this.c;
            nz4 nz4Var = p94Var.t;
            p94Var.s = null;
            p94Var.t = null;
            nz4Var.e(h88.m.h("InternalSubchannel closed transport due to address change"));
        }
    }

    public s94(p94 p94Var, List list) {
        this.c = p94Var;
        this.b = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        p94.c cVar;
        p94.e eVar = this.c.n;
        SocketAddress socketAddress = eVar.a.get(eVar.b).a.get(eVar.c);
        p94.e eVar2 = this.c.n;
        eVar2.a = this.b;
        eVar2.b();
        this.c.o = this.b;
        if (this.c.y.a != cx1.READY && this.c.y.a != cx1.CONNECTING) {
            cVar = null;
            break;
        }
        p94.e eVar3 = this.c.n;
        int i = 0;
        while (true) {
            if (i < eVar3.a.size()) {
                int iIndexOf = eVar3.a.get(i).a.indexOf(socketAddress);
                if (iIndexOf == -1) {
                    i++;
                } else {
                    eVar3.b = i;
                    eVar3.c = iIndexOf;
                }
            } else {
                cx1 cx1Var = this.c.y.a;
                cx1 cx1Var2 = cx1.READY;
                p94 p94Var = this.c;
                if (cx1Var == cx1Var2) {
                    cVar = p94Var.x;
                    this.c.x = null;
                    this.c.n.b();
                    this.c.f(cx1.IDLE);
                    break;
                }
                p94Var.w.e(h88.m.h("InternalSubchannel closed pending transport due to address change"));
                p94 p94Var2 = this.c;
                p94Var2.w = null;
                p94Var2.n.b();
                this.c.i();
            }
            cVar = null;
            break;
        }
        if (cVar != null) {
            p94 p94Var3 = this.c;
            if (p94Var3.s != null) {
                p94Var3.t.e(h88.m.h("InternalSubchannel closed transport early due to address change"));
                this.c.s.a();
                p94Var3 = this.c;
                p94Var3.s = null;
                p94Var3.t = null;
            }
            p94Var3.t = cVar;
            p94Var3.s = p94Var3.m.c(new a(), 5L, TimeUnit.SECONDS, p94Var3.f);
        }
    }
}
