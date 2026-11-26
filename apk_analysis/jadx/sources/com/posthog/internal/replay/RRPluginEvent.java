package com.posthog.internal.replay;

import defpackage.b36;
import defpackage.n05;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class RRPluginEvent extends RREvent {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RRPluginEvent(String str, Map<String, ? extends Object> map, long j) {
        super(RREventType.Plugin, j, n05.e(new b36("plugin", str), new b36("payload", map)));
        str.getClass();
        map.getClass();
    }
}
