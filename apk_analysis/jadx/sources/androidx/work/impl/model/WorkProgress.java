package androidx.work.impl.model;

import androidx.work.Data;

/* JADX INFO: loaded from: classes3.dex */
public final class WorkProgress {
    private final Data progress;
    private final String workSpecId;

    public WorkProgress(String str, Data data) {
        str.getClass();
        data.getClass();
        this.workSpecId = str;
        this.progress = data;
    }

    public final Data getProgress() {
        return this.progress;
    }

    public final String getWorkSpecId() {
        return this.workSpecId;
    }
}
