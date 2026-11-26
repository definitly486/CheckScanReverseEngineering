package com.posthog.internal.replay;

import defpackage.jh2;

/* JADX INFO: loaded from: classes4.dex */
public final class RRRemovedNode {
    private final int id;
    private final Integer parentId;

    public /* synthetic */ RRRemovedNode(int i, Integer num, int i2, jh2 jh2Var) {
        this(i, (i2 & 2) != 0 ? null : num);
    }

    public final int getId() {
        return this.id;
    }

    public final Integer getParentId() {
        return this.parentId;
    }

    public RRRemovedNode(int i, Integer num) {
        this.id = i;
        this.parentId = num;
    }
}
