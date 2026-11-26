package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class sj4 {
    public final List<pz3> a;

    /* JADX WARN: Multi-variable type inference failed */
    public sj4(List<? extends pz3> list) {
        this.a = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof sj4) && this.a.equals(((sj4) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return rs2.c("LandingScreen(items=", this.a, ")");
    }
}
