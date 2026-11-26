package io.appmetrica.analytics.adrevenue.applovin.v12.auto.impl;

import defpackage.jh2;
import io.appmetrica.analytics.adrevenue.applovin.v12.auto.internal.ServiceApplovinConfigWrapper;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.protobuf.nano.MessageNano;

/* JADX INFO: loaded from: classes5.dex */
public final class m implements Converter {
    public final h a;

    public /* synthetic */ m(h hVar, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new h() : hVar);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ServiceApplovinConfigWrapper toModel(byte[] bArr) {
        a aVar = (a) MessageNano.mergeFrom(new a(), bArr);
        ServiceApplovinConfigWrapper.Companion companion = ServiceApplovinConfigWrapper.Companion;
        this.a.getClass();
        return companion.toWrapper$ad_revenue_applovin_v12_auto_release(new l(aVar.a));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object fromModel(Object obj) {
        return MessageNano.toByteArray(this.a.fromModel(((ServiceApplovinConfigWrapper) obj).getConfig$ad_revenue_applovin_v12_auto_release()));
    }

    public m(h hVar) {
        this.a = hVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public m() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final byte[] a(ServiceApplovinConfigWrapper serviceApplovinConfigWrapper) {
        return MessageNano.toByteArray(this.a.fromModel(serviceApplovinConfigWrapper.getConfig$ad_revenue_applovin_v12_auto_release()));
    }
}
