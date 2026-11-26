package defpackage;

import com.tapjoy.TJKeyValueStorageKt;

/* JADX INFO: loaded from: classes5.dex */
public final class mf4 {

    @bq7(TJKeyValueStorageKt.KEY)
    private final String a;

    public mf4(String str) {
        str.getClass();
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof mf4) && aa4.e(this.a, ((mf4) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("KeyFiscalData(key=", this.a, ")");
    }
}
