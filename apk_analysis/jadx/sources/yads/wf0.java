package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class wf0 {
    public final List a;
    public final List b;

    public wf0(List list, List list2) {
        this.a = list;
        this.b = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wf0)) {
            return false;
        }
        wf0 wf0Var = (wf0) obj;
        return defpackage.aa4.e(this.a, wf0Var.a) && defpackage.aa4.e(this.b, wf0Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "DebugPanelLogsData(sdkLogs=" + this.a + ", networkLogs=" + this.b + ")";
    }
}
