package io.appmetrica.analytics.impl;

import defpackage.m05;
import defpackage.me0;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class H3 implements ProtobufConverter {
    public static I3 a(F3 f3) {
        K3 k3;
        I3 i3 = new I3();
        Map map = f3.a;
        int i = 0;
        if (map != null) {
            k3 = new K3();
            int size = map.size();
            J3[] j3Arr = new J3[size];
            for (int i2 = 0; i2 < size; i2++) {
                j3Arr[i2] = new J3();
            }
            k3.a = j3Arr;
            int i4 = 0;
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                String str2 = (String) entry.getValue();
                J3 j3 = k3.a[i4];
                j3.a = str;
                j3.b = str2;
                i4++;
            }
        } else {
            k3 = null;
        }
        i3.a = k3;
        int iOrdinal = f3.b.ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal != 1) {
                i = 2;
                if (iOrdinal != 2) {
                    i = 3;
                    if (iOrdinal != 3) {
                        me0.e();
                        return null;
                    }
                }
            } else {
                i = 1;
            }
        }
        i3.b = i;
        return i3;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final G3 toModel(L3 l3) {
        I3 i3 = l3.a;
        if (i3 == null) {
            i3 = new I3();
        }
        F3 f3A = a(i3);
        I3[] i3Arr = l3.b;
        ArrayList arrayList = new ArrayList(i3Arr.length);
        for (I3 i4 : i3Arr) {
            arrayList.add(a(i4));
        }
        return new G3(f3A, arrayList);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final L3 fromModel(G3 g3) {
        L3 l3 = new L3();
        l3.a = a(g3.a);
        int size = g3.b.size();
        I3[] i3Arr = new I3[size];
        for (int i = 0; i < size; i++) {
            i3Arr[i] = a((F3) g3.b.get(i));
        }
        l3.b = i3Arr;
        return l3;
    }

    public static F3 a(I3 i3) {
        LinkedHashMap linkedHashMap;
        EnumC0914f8 enumC0914f8;
        K3 k3 = i3.a;
        if (k3 != null) {
            J3[] j3Arr = k3.a;
            int iB = m05.b(j3Arr.length);
            if (iB < 16) {
                iB = 16;
            }
            linkedHashMap = new LinkedHashMap(iB);
            for (J3 j3 : j3Arr) {
                linkedHashMap.put(j3.a, j3.b);
            }
        } else {
            linkedHashMap = null;
        }
        int i = i3.b;
        if (i == 0) {
            enumC0914f8 = EnumC0914f8.c;
        } else if (i == 1) {
            enumC0914f8 = EnumC0914f8.d;
        } else if (i == 2) {
            enumC0914f8 = EnumC0914f8.e;
        } else if (i != 3) {
            enumC0914f8 = EnumC0914f8.c;
        } else {
            enumC0914f8 = EnumC0914f8.f;
        }
        return new F3(linkedHashMap, enumC0914f8);
    }
}
