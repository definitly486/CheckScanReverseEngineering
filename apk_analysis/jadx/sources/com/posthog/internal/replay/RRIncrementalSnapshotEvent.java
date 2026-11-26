package com.posthog.internal.replay;

import defpackage.jh2;

/* JADX INFO: loaded from: classes4.dex */
public final class RRIncrementalSnapshotEvent extends RREvent {
    public /* synthetic */ RRIncrementalSnapshotEvent(RRIncrementalMutationData rRIncrementalMutationData, long j, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : rRIncrementalMutationData, j);
    }

    public RRIncrementalSnapshotEvent(RRIncrementalMutationData rRIncrementalMutationData, long j) {
        super(RREventType.IncrementalSnapshot, j, rRIncrementalMutationData);
    }
}
