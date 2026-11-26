package io.appmetrica.analytics.idsync.impl;

import defpackage.ha1;
import defpackage.m05;
import defpackage.qn1;
import defpackage.yr;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class I implements ProtobufConverter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final n fromModel(G g) {
        n nVar = new n();
        String str = g.a;
        Charset charset = ha1.b;
        nVar.a = str.getBytes(charset);
        C0775m c0775m = new C0775m();
        c0775m.a = H.a[g.c.a.ordinal()] != 1 ? 0 : 1;
        nVar.b = c0775m;
        nVar.c = g.b.getBytes(charset);
        Map map = g.d;
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry entry : map.entrySet()) {
            String str2 = (String) entry.getKey();
            List list = (List) entry.getValue();
            C0774l c0774l = new C0774l();
            c0774l.a = str2.getBytes(ha1.b);
            int size = list.size();
            byte[][] bArr = new byte[size][];
            for (int i = 0; i < size; i++) {
                bArr[i] = ((String) list.get(i)).getBytes(ha1.b);
            }
            c0774l.b = bArr;
            arrayList.add(c0774l);
        }
        nVar.d = (C0774l[]) arrayList.toArray(new C0774l[0]);
        nVar.e = g.e;
        nVar.f = g.f;
        nVar.g = qn1.s0(g.g);
        nVar.h = g.h;
        String str3 = g.i;
        if (str3 == null) {
            str3 = "";
        }
        nVar.i = str3;
        return nVar;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final G toModel(n nVar) {
        z zVar;
        byte[] bArr = nVar.a;
        Charset charset = ha1.b;
        String str = new String(bArr, charset);
        C0775m c0775m = nVar.b;
        if (c0775m != null && c0775m.a == 1) {
            zVar = z.CELL;
        } else {
            zVar = z.ANY;
        }
        D d = new D(zVar);
        String str2 = new String(nVar.c, charset);
        C0774l[] c0774lArr = nVar.d;
        int iB = m05.b(c0774lArr.length);
        if (iB < 16) {
            iB = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iB);
        for (C0774l c0774l : c0774lArr) {
            String str3 = new String(c0774l.a, ha1.b);
            byte[][] bArr2 = c0774l.b;
            ArrayList arrayList = new ArrayList(bArr2.length);
            for (byte[] bArr3 : bArr2) {
                arrayList.add(new String(bArr3, ha1.b));
            }
            linkedHashMap.put(str3, arrayList);
        }
        long j = nVar.e;
        long j2 = nVar.f;
        List<Integer> listF0 = yr.f0(nVar.g);
        boolean z = nVar.h;
        String str4 = nVar.i;
        if (str4.length() <= 0) {
            str4 = null;
        }
        return new G(str, str2, d, linkedHashMap, j, j2, listF0, z, str4);
    }
}
