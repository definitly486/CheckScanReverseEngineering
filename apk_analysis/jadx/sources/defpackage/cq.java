package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class cq {

    @bq7("androidSchemes")
    private final List<String> a;

    public cq(List<String> list) {
        list.getClass();
        this.a = list;
    }

    public final List<String> a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof cq) && aa4.e(this.a, ((cq) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return rs2.c("AppSchemesResponse(androidSchemes=", this.a, ")");
    }
}
