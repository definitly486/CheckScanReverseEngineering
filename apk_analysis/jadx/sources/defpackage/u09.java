package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class u09 {
    public final List<pz3> a;

    /* JADX WARN: Multi-variable type inference failed */
    public u09(List<? extends pz3> list) {
        this.a = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof u09) && this.a.equals(((u09) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return rs2.c("TransferSBPContent(items=", this.a, ")");
    }
}
