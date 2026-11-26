package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.um, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1316um {
    public final ProtobufStateStorage a;
    public final Fo b;

    public C1316um(Context context) {
        this(((AbstractC0981hn) C0929fn.a(C1441zm.class)).create(context), Fa.k().D().a());
    }

    public C1316um(ProtobufStateStorage protobufStateStorage, Fo fo) {
        this.a = protobufStateStorage;
        this.b = fo;
    }
}
