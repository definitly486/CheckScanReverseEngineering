package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;

/* JADX INFO: loaded from: classes5.dex */
public final class zo implements Ya {
    @Override // io.appmetrica.analytics.impl.Ya
    public final String a(Context context) {
        C1441zm c1441zm;
        try {
            InterfaceC0955gn interfaceC0955gnA = C0929fn.a(C1441zm.class);
            if (interfaceC0955gnA == null) {
                return null;
            }
            AbstractC0981hn abstractC0981hn = (AbstractC0981hn) interfaceC0955gnA;
            ProtobufStateStorage<Object> protobufStateStorageA = abstractC0981hn.a(context, abstractC0981hn.a(context));
            if (protobufStateStorageA == null || (c1441zm = (C1441zm) protobufStateStorageA.read()) == null) {
                return null;
            }
            return c1441zm.a;
        } catch (Throwable unused) {
            return null;
        }
    }
}
