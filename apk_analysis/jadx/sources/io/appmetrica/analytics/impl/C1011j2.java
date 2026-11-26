package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.coreapi.internal.permission.PermissionState;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.j2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1011j2 implements ProtobufConverter {
    public final K2 a;

    public C1011j2() {
        this(new K2());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1089m2 fromModel(C0986i2 c0986i2) {
        C1089m2 c1089m2 = new C1089m2();
        c1089m2.a = new C1063l2[c0986i2.a.size()];
        int i = 0;
        int i2 = 0;
        for (PermissionState permissionState : c0986i2.a) {
            C1063l2[] c1063l2Arr = c1089m2.a;
            C1063l2 c1063l2 = new C1063l2();
            c1063l2.a = permissionState.name;
            c1063l2.b = permissionState.granted;
            c1063l2Arr[i2] = c1063l2;
            i2++;
        }
        M2 m2 = c0986i2.b;
        if (m2 != null) {
            c1089m2.b = this.a.fromModel(m2);
        }
        c1089m2.c = new String[c0986i2.c.size()];
        Iterator it = c0986i2.c.iterator();
        while (it.hasNext()) {
            c1089m2.c[i] = (String) it.next();
            i++;
        }
        return c1089m2;
    }

    public C1011j2(K2 k2) {
        this.a = k2;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0986i2 toModel(C1089m2 c1089m2) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int i2 = 0;
        while (true) {
            C1063l2[] c1063l2Arr = c1089m2.a;
            if (i2 >= c1063l2Arr.length) {
                break;
            }
            C1063l2 c1063l2 = c1063l2Arr[i2];
            arrayList.add(new PermissionState(c1063l2.a, c1063l2.b));
            i2++;
        }
        C1037k2 c1037k2 = c1089m2.b;
        M2 model = c1037k2 != null ? this.a.toModel(c1037k2) : null;
        ArrayList arrayList2 = new ArrayList();
        while (true) {
            String[] strArr = c1089m2.c;
            if (i < strArr.length) {
                arrayList2.add(strArr[i]);
                i++;
            } else {
                return new C0986i2(arrayList, model, arrayList2);
            }
        }
    }
}
