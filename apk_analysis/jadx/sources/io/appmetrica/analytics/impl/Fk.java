package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;

/* JADX INFO: loaded from: classes5.dex */
public final class Fk implements Vc {
    @Override // io.appmetrica.analytics.impl.Vc
    public final void a(Context context) {
        AbstractC0981hn abstractC0981hn = (AbstractC0981hn) C0929fn.a(C1441zm.class);
        ProtobufStateStorage<Object> protobufStateStorageA = abstractC0981hn.a(context, abstractC0981hn.b(context));
        C1441zm c1441zm = (C1441zm) protobufStateStorageA.read();
        C1416ym c1416ymA = c1441zm.a(c1441zm.m);
        c1416ymA.o = 0L;
        protobufStateStorageA.save(new C1441zm(c1416ymA));
    }
}
