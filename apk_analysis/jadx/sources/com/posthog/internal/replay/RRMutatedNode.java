package com.posthog.internal.replay;

import defpackage.jh2;

/* JADX INFO: loaded from: classes4.dex */
public final class RRMutatedNode {
    private final Integer parentId;
    private final RRWireframe wireframe;

    public RRMutatedNode(RRWireframe rRWireframe, Integer num) {
        rRWireframe.getClass();
        this.wireframe = rRWireframe;
        this.parentId = num;
    }

    public final Integer getParentId() {
        return this.parentId;
    }

    public final RRWireframe getWireframe() {
        return this.wireframe;
    }

    public /* synthetic */ RRMutatedNode(RRWireframe rRWireframe, Integer num, int i, jh2 jh2Var) {
        this(rRWireframe, (i & 2) != 0 ? null : num);
    }
}
