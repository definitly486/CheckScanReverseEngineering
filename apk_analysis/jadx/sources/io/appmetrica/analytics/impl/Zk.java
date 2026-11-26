package io.appmetrica.analytics.impl;

import defpackage.ha1;
import defpackage.m05;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class Zk implements ProtobufConverter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0824bl fromModel(Map<String, byte[]> map) {
        C0824bl c0824bl = new C0824bl();
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, byte[]> entry : map.entrySet()) {
            C0850cl c0850cl = new C0850cl();
            c0850cl.a = entry.getKey().getBytes(ha1.b);
            c0850cl.b = entry.getValue();
            arrayList.add(c0850cl);
        }
        c0824bl.a = (C0850cl[]) arrayList.toArray(new C0850cl[0]);
        return c0824bl;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Map<String, byte[]> toModel(C0824bl c0824bl) {
        C0850cl[] c0850clArr = c0824bl.a;
        int iB = m05.b(c0850clArr.length);
        if (iB < 16) {
            iB = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iB);
        for (C0850cl c0850cl : c0850clArr) {
            linkedHashMap.put(new String(c0850cl.a, ha1.b), c0850cl.b);
        }
        return linkedHashMap;
    }
}
