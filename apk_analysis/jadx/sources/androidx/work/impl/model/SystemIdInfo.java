package androidx.work.impl.model;

import defpackage.aa4;
import defpackage.ej0;
import defpackage.rg;

/* JADX INFO: loaded from: classes3.dex */
public final class SystemIdInfo {
    private final int generation;
    public final int systemId;
    public final String workSpecId;

    public SystemIdInfo(String str, int i, int i2) {
        str.getClass();
        this.workSpecId = str;
        this.generation = i;
        this.systemId = i2;
    }

    public static /* synthetic */ SystemIdInfo copy$default(SystemIdInfo systemIdInfo, String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = systemIdInfo.workSpecId;
        }
        if ((i3 & 2) != 0) {
            i = systemIdInfo.generation;
        }
        if ((i3 & 4) != 0) {
            i2 = systemIdInfo.systemId;
        }
        return systemIdInfo.copy(str, i, i2);
    }

    public final String component1() {
        return this.workSpecId;
    }

    public final int component2() {
        return this.generation;
    }

    public final int component3() {
        return this.systemId;
    }

    public final SystemIdInfo copy(String str, int i, int i2) {
        str.getClass();
        return new SystemIdInfo(str, i, i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SystemIdInfo)) {
            return false;
        }
        SystemIdInfo systemIdInfo = (SystemIdInfo) obj;
        return aa4.e(this.workSpecId, systemIdInfo.workSpecId) && this.generation == systemIdInfo.generation && this.systemId == systemIdInfo.systemId;
    }

    public final int getGeneration() {
        return this.generation;
    }

    public int hashCode() {
        return Integer.hashCode(this.systemId) + ej0.b(this.generation, this.workSpecId.hashCode() * 31, 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SystemIdInfo(workSpecId=");
        sb.append(this.workSpecId);
        sb.append(", generation=");
        sb.append(this.generation);
        sb.append(", systemId=");
        return rg.h(sb, this.systemId, ')');
    }
}
