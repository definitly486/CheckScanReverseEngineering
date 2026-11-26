package com.posthog.internal.replay;

import defpackage.jh2;

/* JADX INFO: loaded from: classes4.dex */
public final class RRIncrementalMouseInteractionEvent extends RREvent {
    public /* synthetic */ RRIncrementalMouseInteractionEvent(RRIncrementalMouseInteractionData rRIncrementalMouseInteractionData, long j, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : rRIncrementalMouseInteractionData, j);
    }

    public RRIncrementalMouseInteractionEvent(RRIncrementalMouseInteractionData rRIncrementalMouseInteractionData, long j) {
        super(RREventType.IncrementalSnapshot, j, rRIncrementalMouseInteractionData);
    }
}
