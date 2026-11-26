package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class mr4 {

    @bq7("receipts")
    private final List<oz6> a;

    public mr4(List<oz6> list) {
        list.getClass();
        this.a = list;
    }

    public final List<oz6> a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof mr4) && aa4.e(this.a, ((mr4) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return rs2.c("ListReceiptsResponse(receipts=", this.a, ")");
    }
}
