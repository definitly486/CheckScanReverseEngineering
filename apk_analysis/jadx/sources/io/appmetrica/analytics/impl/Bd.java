package io.appmetrica.analytics.impl;

import defpackage.b36;
import defpackage.n05;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class Bd implements Converter {
    public final Nk a = Fa.k().p();

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Im[] fromModel(Map<String, ? extends Object> map) {
        Im im;
        Map<String, C1048kd> mapB = this.a.b();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            C1048kd c1048kd = mapB.get(key);
            if (c1048kd == null || value == null) {
                im = null;
            } else {
                im = new Im();
                im.a = key;
                im.b = (byte[]) c1048kd.c.fromModel(value);
            }
            if (im != null) {
                arrayList.add(im);
            }
        }
        return (Im[]) arrayList.toArray(new Im[0]);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Map<String, Object> toModel(Im[] imArr) {
        Map<String, C1048kd> mapB = this.a.b();
        ArrayList arrayList = new ArrayList();
        for (Im im : imArr) {
            C1048kd c1048kd = mapB.get(im.a);
            b36 b36Var = c1048kd != null ? new b36(im.a, c1048kd.c.toModel(im.b)) : null;
            if (b36Var != null) {
                arrayList.add(b36Var);
            }
        }
        return n05.k(arrayList);
    }
}
