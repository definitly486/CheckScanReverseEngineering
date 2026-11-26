package io.appmetrica.analytics.remotepermissions.impl;

import defpackage.jh2;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.remotepermissions.internal.ServiceSideRemotePermissionsConfigWrapper;

/* JADX INFO: loaded from: classes5.dex */
public final class f implements Converter {
    public final c a;

    public /* synthetic */ f(c cVar, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new c() : cVar);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ServiceSideRemotePermissionsConfigWrapper toModel(byte[] bArr) {
        return new ServiceSideRemotePermissionsConfigWrapper(this.a.toModel((d) MessageNano.mergeFrom(new d(), bArr)));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object fromModel(Object obj) {
        return MessageNano.toByteArray(this.a.fromModel(((ServiceSideRemotePermissionsConfigWrapper) obj).getConfig$remote_permissions_release()));
    }

    public f(c cVar) {
        this.a = cVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public f() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final byte[] a(ServiceSideRemotePermissionsConfigWrapper serviceSideRemotePermissionsConfigWrapper) {
        return MessageNano.toByteArray(this.a.fromModel(serviceSideRemotePermissionsConfigWrapper.getConfig$remote_permissions_release()));
    }
}
