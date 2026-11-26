package io.appmetrica.analytics.remotepermissions.impl;

import defpackage.ha1;
import defpackage.kn1;
import defpackage.ox2;
import defpackage.qn1;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class c implements ProtobufConverter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final d fromModel(e eVar) {
        d dVar = new d();
        Set set = eVar.a;
        ArrayList arrayList = new ArrayList(kn1.q(set, 10));
        Iterator it = set.iterator();
        while (it.hasNext()) {
            arrayList.add(((String) it.next()).getBytes(ha1.b));
        }
        dVar.a = (byte[][]) arrayList.toArray(new byte[0][]);
        return dVar;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final e toModel(d dVar) {
        Set setY0;
        byte[][] bArr = dVar.a;
        if (bArr != null) {
            ArrayList arrayList = new ArrayList(bArr.length);
            for (byte[] bArr2 : bArr) {
                arrayList.add(new String(bArr2, ha1.b));
            }
            setY0 = qn1.y0(arrayList);
        } else {
            setY0 = ox2.b;
        }
        return new e(setY0);
    }
}
