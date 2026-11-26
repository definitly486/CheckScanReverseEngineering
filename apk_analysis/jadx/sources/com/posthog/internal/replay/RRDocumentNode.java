package com.posthog.internal.replay;

import defpackage.b36;
import defpackage.n05;

/* JADX INFO: loaded from: classes4.dex */
public final class RRDocumentNode extends RREvent {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RRDocumentNode(String str, Object obj, long j) {
        super(RREventType.Custom, j, n05.e(new b36("tag", str), new b36("payload", obj)));
        str.getClass();
        obj.getClass();
    }
}
