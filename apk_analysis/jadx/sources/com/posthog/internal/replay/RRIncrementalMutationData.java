package com.posthog.internal.replay;

import defpackage.jh2;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class RRIncrementalMutationData {
    private final List<RRMutatedNode> adds;
    private final List<RRRemovedNode> removes;
    private final RRIncrementalSource source;
    private final List<RRMutatedNode> updates;

    public /* synthetic */ RRIncrementalMutationData(List list, List list2, List list3, RRIncrementalSource rRIncrementalSource, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : list, (i & 2) != 0 ? null : list2, (i & 4) != 0 ? null : list3, (i & 8) != 0 ? RRIncrementalSource.Mutation : rRIncrementalSource);
    }

    public final List<RRMutatedNode> getAdds() {
        return this.adds;
    }

    public final List<RRRemovedNode> getRemoves() {
        return this.removes;
    }

    public final RRIncrementalSource getSource() {
        return this.source;
    }

    public final List<RRMutatedNode> getUpdates() {
        return this.updates;
    }

    public RRIncrementalMutationData(List<RRMutatedNode> list, List<RRRemovedNode> list2, List<RRMutatedNode> list3, RRIncrementalSource rRIncrementalSource) {
        rRIncrementalSource.getClass();
        this.adds = list;
        this.removes = list2;
        this.updates = list3;
        this.source = rRIncrementalSource;
    }

    public RRIncrementalMutationData() {
        this(null, null, null, null, 15, null);
    }
}
