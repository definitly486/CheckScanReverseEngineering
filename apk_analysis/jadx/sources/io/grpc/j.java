package io.grpc;

import defpackage.ds4;
import defpackage.o8;
import defpackage.zg;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class j {
    public static final Logger c = Logger.getLogger(j.class.getName());
    public static j d;
    public final LinkedHashSet<i> a = new LinkedHashSet<>();
    public final LinkedHashMap<String, i> b = new LinkedHashMap<>();

    public static final class a implements p.b<i> {
        @Override // io.grpc.p.b
        public final boolean a(i iVar) {
            iVar.getClass();
            return true;
        }

        @Override // io.grpc.p.b
        public final int b(i iVar) {
            iVar.getClass();
            return 5;
        }
    }

    public static synchronized j a() {
        try {
            if (d == null) {
                List<i> listA = p.a(i.class, zg.f(), new ds4(), new a());
                d = new j();
                for (i iVar : listA) {
                    c.fine("Service loader found " + iVar);
                    j jVar = d;
                    synchronized (jVar) {
                        iVar.getClass();
                        jVar.a.add(iVar);
                    }
                }
                d.c();
            }
        } catch (Throwable th) {
            throw th;
        }
        return d;
    }

    public final synchronized i b(String str) {
        LinkedHashMap<String, i> linkedHashMap;
        linkedHashMap = this.b;
        o8.l(str, "policy");
        return linkedHashMap.get(str);
    }

    public final synchronized void c() {
        this.b.clear();
        for (i iVar : this.a) {
            String strB = iVar.b();
            if (this.b.get(strB) == null) {
                this.b.put(strB, iVar);
            }
        }
    }
}
