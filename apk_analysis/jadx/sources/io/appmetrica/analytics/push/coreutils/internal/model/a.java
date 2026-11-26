package io.appmetrica.analytics.push.coreutils.internal.model;

import defpackage.gh4;
import defpackage.ll3;
import io.appmetrica.analytics.push.coreutils.internal.utils.JsonUtils;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends gh4 implements ll3 {
    public final /* synthetic */ TransportPushMessage a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(TransportPushMessage transportPushMessage) {
        super(0);
        this.a = transportPushMessage;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        ServiceType serviceTypeFromValue;
        Integer numExtractIntegerSafely = JsonUtils.extractIntegerSafely(this.a.getRoot(), "i");
        return (numExtractIntegerSafely == null || (serviceTypeFromValue = ServiceType.Companion.fromValue(numExtractIntegerSafely.intValue())) == null) ? ServiceType.UNKNOWN : serviceTypeFromValue;
    }
}
