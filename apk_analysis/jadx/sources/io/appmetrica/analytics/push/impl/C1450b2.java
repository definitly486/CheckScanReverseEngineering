package io.appmetrica.analytics.push.impl;

import android.content.Context;
import defpackage.kn1;
import defpackage.m05;
import io.appmetrica.analytics.push.provider.api.PushServiceController;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.b2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1450b2 {
    public final Context a;
    public final LinkedHashMap b;

    public C1450b2(Context context, ArrayList arrayList) {
        this.a = context;
        int iB = m05.b(kn1.q(arrayList, 10));
        LinkedHashMap linkedHashMap = new LinkedHashMap(iB < 16 ? 16 : iB);
        for (Object obj : arrayList) {
            linkedHashMap.put(((PushServiceController) obj).getTransportId(), obj);
        }
        this.b = linkedHashMap;
    }
}
