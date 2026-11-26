package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class vs5 {

    @bq7("ofds")
    private final List<ms5> a;

    public vs5(List<ms5> list) {
        list.getClass();
        this.a = list;
    }

    public final List<ms5> a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof vs5) && aa4.e(this.a, ((vs5) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return rs2.c("OfdUrlRequests(ofds=", this.a, ")");
    }
}
