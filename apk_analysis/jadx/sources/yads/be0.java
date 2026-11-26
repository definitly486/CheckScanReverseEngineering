package yads;

import defpackage.rs2;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class be0 {
    public final List a;

    public be0(List list) {
        this.a = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof be0) && defpackage.aa4.e(this.a, ((be0) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return rs2.c("DebugPanelAdUnitMediationData(adapters=", this.a, ")");
    }
}
