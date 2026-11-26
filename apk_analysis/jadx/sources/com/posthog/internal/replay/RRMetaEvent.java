package com.posthog.internal.replay;

import com.tapjoy.TJAdUnitConstants;
import defpackage.b36;
import defpackage.n05;

/* JADX INFO: loaded from: classes4.dex */
public final class RRMetaEvent extends RREvent {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RRMetaEvent(int i, int i2, long j, String str) {
        super(RREventType.Meta, j, n05.e(new b36("href", str), new b36(TJAdUnitConstants.String.WIDTH, Integer.valueOf(i)), new b36(TJAdUnitConstants.String.HEIGHT, Integer.valueOf(i2))));
        str.getClass();
    }
}
