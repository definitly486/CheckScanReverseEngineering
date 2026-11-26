package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class w42 {

    @bq7(FirebaseAnalytics.Param.CONTENT)
    private List<a42> a;

    public w42(List<a42> list) {
        list.getClass();
        this.a = list;
    }

    public final List<a42> a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof w42) && aa4.e(this.a, ((w42) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return rs2.c("CouponsResponse(items=", this.a, ")");
    }
}
