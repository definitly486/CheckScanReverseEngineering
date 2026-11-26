package androidx.work.impl;

import androidx.work.impl.model.WorkGenerationalId;

/* JADX INFO: loaded from: classes3.dex */
public final class StartStopToken {
    private final WorkGenerationalId id;

    public StartStopToken(WorkGenerationalId workGenerationalId) {
        workGenerationalId.getClass();
        this.id = workGenerationalId;
    }

    public final WorkGenerationalId getId() {
        return this.id;
    }
}
