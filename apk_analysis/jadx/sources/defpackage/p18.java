package defpackage;

import android.content.Context;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class p18 implements o18.a {
    @Override // o18.a
    public final sy6 a(Context context) {
        r14.a aVar = new r14.a(context);
        b53.b<j59> bVar = q18.b;
        j59 j59Var = j59.a;
        LinkedHashMap linkedHashMap = aVar.c.a;
        if (j59Var != null) {
            linkedHashMap.put(bVar, j59Var);
        } else {
            linkedHashMap.remove(bVar);
        }
        b53 b53Var = new b53(rn1.b(linkedHashMap));
        b24.b bVar2 = aVar.b;
        return new sy6(new sy6.a(aVar.a, new b24.b(bVar2.a, bVar2.b, bVar2.c, bVar2.d, bVar2.e, bVar2.f, bVar2.g, bVar2.h, bVar2.i, bVar2.j, bVar2.k, bVar2.l, bVar2.m, b53Var), new fh8(new us0(1)), new fh8(new p14(aVar, 0)), new fh8(new q14(0)), new fs1()));
    }
}
