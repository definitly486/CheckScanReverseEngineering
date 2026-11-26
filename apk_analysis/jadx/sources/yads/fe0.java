package yads;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class fe0 {
    public final ArrayList a;

    public fe0(ArrayList arrayList) {
        this.a = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof fe0) && defpackage.aa4.e(this.a, ((fe0) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "DebugPanelAdUnitsData(adUnits=" + this.a + ")";
    }
}
