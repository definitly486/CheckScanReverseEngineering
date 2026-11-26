package io.appmetrica.analytics.impl;

import defpackage.ha1;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import java.nio.charset.Charset;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class Ue implements Converter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0886e6[] fromModel(Map<String, String> map) {
        int size = map.size();
        C0886e6[] c0886e6Arr = new C0886e6[size];
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            c0886e6Arr[i2] = new C0886e6();
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            C0886e6 c0886e6 = c0886e6Arr[i];
            String key = entry.getKey();
            Charset charset = ha1.b;
            c0886e6.a = key.getBytes(charset);
            c0886e6Arr[i].b = entry.getValue().getBytes(charset);
            i++;
        }
        return c0886e6Arr;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final Map<String, String> a(C0886e6[] c0886e6Arr) {
        throw new UnsupportedOperationException();
    }
}
