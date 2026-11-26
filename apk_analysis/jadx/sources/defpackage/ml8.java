package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ml8 {

    @bq7("url")
    private final String a;

    public ml8(String str) {
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
        return (obj instanceof ml8) && aa4.e(this.a, ((ml8) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("TaskActionUrlResponse(url=", this.a, ")");
    }
}
