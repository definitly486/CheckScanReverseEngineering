package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class vl2 {

    @bq7("description")
    private final String a;

    public vl2(String str) {
        str.getClass();
        this.a = str;
    }

    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof vl2) && aa4.e(this.a, ((vl2) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("DescriptionResponse(description=", this.a, ")");
    }
}
