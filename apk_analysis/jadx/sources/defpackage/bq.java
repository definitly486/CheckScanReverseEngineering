package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class bq {

    @bq7("androidSchemes")
    private final List<String> a;

    public bq(List<String> list) {
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
        return (obj instanceof bq) && aa4.e(this.a, ((bq) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return rs2.c("AppSchemesResponse(androidSchemes=", this.a, ")");
    }
}
