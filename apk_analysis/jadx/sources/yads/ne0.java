package yads;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class ne0 {
    public final ArrayList a;

    public ne0(ArrayList arrayList) {
        this.a = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ne0) && defpackage.aa4.e(this.a, ((ne0) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "DebugPanelAdaptersData(adapters=" + this.a + ")";
    }
}
