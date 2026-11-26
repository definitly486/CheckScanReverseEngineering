package defpackage;

import java.util.HashMap;
import java.util.Map;
import yads.bj2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class po9 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ po9(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map;
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                bj2.b((bj2) obj);
                return;
            default:
                l5a l5aVar = (l5a) obj;
                synchronized (l5aVar) {
                    map = l5aVar.h;
                    l5aVar.h = new HashMap();
                    break;
                }
                m6a m6aVar = l5aVar.d;
                zs9 zs9Var = l5aVar.e;
                m6aVar.getClass();
                for (Map.Entry entry : map.entrySet()) {
                    z8a z8aVar = (z8a) entry.getKey();
                    l5a.a aVar = (l5a.a) entry.getValue();
                    if (!aVar.a.isEmpty()) {
                        try {
                            new h8a().U("https://sdk.mail.ru/sdk/log/v2", m6a.a(new m6a.a(zs9Var, z8aVar, aVar.a)).toString(), null);
                            break;
                        } catch (Throwable unused) {
                        }
                    }
                    for (Map.Entry entry2 : aVar.b.entrySet()) {
                        pp9 pp9Var = (pp9) entry2.getKey();
                        l5a.b bVar = (l5a.b) entry2.getValue();
                        if (!bVar.a.isEmpty()) {
                            new h8a().U("https://sdk.mail.ru/sdk/log/v2", m6a.a(new m6a.a(zs9Var, z8aVar, pp9Var, bVar.a)).toString(), null);
                        }
                    }
                }
                return;
        }
    }
}
