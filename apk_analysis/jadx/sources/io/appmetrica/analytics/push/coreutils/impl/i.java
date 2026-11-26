package io.appmetrica.analytics.push.coreutils.impl;

import defpackage.gh4;
import defpackage.ll3;
import io.appmetrica.analytics.push.coreutils.internal.CoreConstants;
import io.appmetrica.analytics.push.coreutils.internal.model.TransportPushMessage;
import io.appmetrica.analytics.push.coreutils.internal.utils.JsonUtils;

/* JADX INFO: loaded from: classes5.dex */
public final class i extends gh4 implements ll3 {
    public final /* synthetic */ TransportPushMessage a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(TransportPushMessage transportPushMessage) {
        super(0);
        this.a = transportPushMessage;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        return JsonUtils.extractLongSafely(this.a.getRoot(), CoreConstants.PushMessage.PROCESSING_MIN_TIME);
    }
}
