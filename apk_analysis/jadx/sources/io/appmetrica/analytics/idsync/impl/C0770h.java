package io.appmetrica.analytics.idsync.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.idsync.internal.IdSyncConfigWrapper;
import io.appmetrica.analytics.protobuf.nano.MessageNano;

/* JADX INFO: renamed from: io.appmetrica.analytics.idsync.impl.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0770h implements Converter {
    public final C0767e a;

    public C0770h(C0767e c0767e) {
        this.a = c0767e;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final byte[] fromModel(IdSyncConfigWrapper idSyncConfigWrapper) {
        C0767e c0767e = this.a;
        return MessageNano.toByteArray(c0767e.a.fromModel(idSyncConfigWrapper.getConfig$id_sync_release()));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        return IdSyncConfigWrapper.Companion.toWrapper$id_sync_release(this.a.toModel((byte[]) obj));
    }

    public final IdSyncConfigWrapper a(byte[] bArr) {
        return IdSyncConfigWrapper.Companion.toWrapper$id_sync_release(this.a.toModel(bArr));
    }
}
