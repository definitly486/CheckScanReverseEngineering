package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.dh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0872dh implements Bn {
    public final /* synthetic */ C1328v9 a;

    public C0872dh(C1328v9 c1328v9) {
        this.a = c1328v9;
    }

    @Override // io.appmetrica.analytics.impl.Bn
    public final void a(List<Bl> list) {
        if (xo.a((Collection) list)) {
            return;
        }
        C1328v9 c1328v9 = this.a;
        int size = list.size();
        C1277t9[] c1277t9Arr = new C1277t9[size];
        for (int i = 0; i < size; i++) {
            Bl bl = list.get(i);
            Map map = AbstractC0871dg.a;
            C1277t9 c1277t9 = new C1277t9();
            Integer num = bl.a;
            if (num != null) {
                c1277t9.a = num.intValue();
            }
            Integer num2 = bl.b;
            if (num2 != null) {
                c1277t9.b = num2.intValue();
            }
            if (!StringUtils.isNullOrEmpty(bl.d)) {
                c1277t9.c = bl.d;
            }
            c1277t9.d = bl.c;
            c1277t9Arr[i] = c1277t9;
        }
        c1328v9.d = c1277t9Arr;
    }
}
