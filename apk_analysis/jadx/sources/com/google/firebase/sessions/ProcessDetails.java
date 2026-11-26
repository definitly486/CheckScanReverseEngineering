package com.google.firebase.sessions;

import defpackage.aa4;
import defpackage.ej0;
import defpackage.sg;

/* JADX INFO: loaded from: classes4.dex */
public final class ProcessDetails {
    private final int importance;
    private final boolean isDefaultProcess;
    private final int pid;
    private final String processName;

    public ProcessDetails(String str, int i, int i2, boolean z) {
        str.getClass();
        this.processName = str;
        this.pid = i;
        this.importance = i2;
        this.isDefaultProcess = z;
    }

    public static /* synthetic */ ProcessDetails copy$default(ProcessDetails processDetails, String str, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = processDetails.processName;
        }
        if ((i3 & 2) != 0) {
            i = processDetails.pid;
        }
        if ((i3 & 4) != 0) {
            i2 = processDetails.importance;
        }
        if ((i3 & 8) != 0) {
            z = processDetails.isDefaultProcess;
        }
        return processDetails.copy(str, i, i2, z);
    }

    public final String component1() {
        return this.processName;
    }

    public final int component2() {
        return this.pid;
    }

    public final int component3() {
        return this.importance;
    }

    public final boolean component4() {
        return this.isDefaultProcess;
    }

    public final ProcessDetails copy(String str, int i, int i2, boolean z) {
        str.getClass();
        return new ProcessDetails(str, i, i2, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProcessDetails)) {
            return false;
        }
        ProcessDetails processDetails = (ProcessDetails) obj;
        return aa4.e(this.processName, processDetails.processName) && this.pid == processDetails.pid && this.importance == processDetails.importance && this.isDefaultProcess == processDetails.isDefaultProcess;
    }

    public final int getImportance() {
        return this.importance;
    }

    public final int getPid() {
        return this.pid;
    }

    public final String getProcessName() {
        return this.processName;
    }

    public int hashCode() {
        return Boolean.hashCode(this.isDefaultProcess) + ej0.b(this.importance, ej0.b(this.pid, this.processName.hashCode() * 31, 31), 31);
    }

    public final boolean isDefaultProcess() {
        return this.isDefaultProcess;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ProcessDetails(processName=");
        sb.append(this.processName);
        sb.append(", pid=");
        sb.append(this.pid);
        sb.append(", importance=");
        sb.append(this.importance);
        sb.append(", isDefaultProcess=");
        return sg.d(sb, this.isDefaultProcess, ')');
    }
}
