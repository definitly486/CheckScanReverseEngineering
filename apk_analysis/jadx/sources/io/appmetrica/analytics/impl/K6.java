package io.appmetrica.analytics.impl;

import defpackage.m05;
import defpackage.u96;
import defpackage.yr;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class K6 implements Converter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Fm[] fromModel(Map<String, ? extends List<String>> map) {
        Fm[] fmArr = new Fm[map.size()];
        int i = 0;
        for (Object obj : map.entrySet()) {
            int i2 = i + 1;
            if (i < 0) {
                u96.o();
                throw null;
            }
            Map.Entry entry = (Map.Entry) obj;
            Fm fm = new Fm();
            fm.a = (String) entry.getKey();
            fm.b = (String[]) ((Collection) entry.getValue()).toArray(new String[0]);
            fmArr[i] = fm;
            i = i2;
        }
        return fmArr;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Map<String, List<String>> toModel(Fm[] fmArr) {
        int iB = m05.b(fmArr.length);
        if (iB < 16) {
            iB = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iB);
        for (Fm fm : fmArr) {
            linkedHashMap.put(fm.a, yr.h0(fm.b));
        }
        return linkedHashMap;
    }
}
