package io.appmetrica.analytics.impl;

import defpackage.m05;
import defpackage.u96;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class V8 implements Converter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final byte[] fromModel(Map<String, byte[]> map) {
        X8 x8 = new X8();
        W8[] w8Arr = new W8[map.size()];
        int i = 0;
        for (Object obj : map.entrySet()) {
            int i2 = i + 1;
            if (i < 0) {
                u96.o();
                throw null;
            }
            Map.Entry entry = (Map.Entry) obj;
            W8 w8 = new W8();
            w8.a = (String) entry.getKey();
            w8.b = (byte[]) entry.getValue();
            w8Arr[i] = w8;
            i = i2;
        }
        x8.a = w8Arr;
        return MessageNano.toByteArray(x8);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Map<String, byte[]> toModel(byte[] bArr) {
        W8[] w8Arr = ((X8) MessageNano.mergeFrom(new X8(), bArr)).a;
        int iB = m05.b(w8Arr.length);
        if (iB < 16) {
            iB = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iB);
        for (W8 w8 : w8Arr) {
            linkedHashMap.put(w8.a, w8.b);
        }
        return linkedHashMap;
    }
}
