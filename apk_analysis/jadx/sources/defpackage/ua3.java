package defpackage;

import androidx.core.app.NotificationCompat;
import com.google.firebase.dynamiclinks.DynamicLink;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ua3 {

    @bq7(NotificationCompat.CATEGORY_EVENT)
    private final String a;

    @bq7(DynamicLink.Builder.KEY_DYNAMIC_LINK_PARAMETERS)
    private final List<a> b;

    public static final class a {

        @bq7("name")
        private final String a;

        @bq7("value")
        private final qd4 b;

        public a(String str, qd4 qd4Var) {
            str.getClass();
            qd4Var.getClass();
            this.a = str;
            this.b = qd4Var;
        }

        public final String a() {
            return this.a;
        }

        public final qd4 b() {
            return this.b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "Parameter(name=" + this.a + ", value=" + this.b + ")";
        }
    }

    public ua3(String str, List<a> list) {
        str.getClass();
        this.a = str;
        this.b = list;
    }

    public final String a() {
        return this.a;
    }

    public final List<a> b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ua3)) {
            return false;
        }
        ua3 ua3Var = (ua3) obj;
        return aa4.e(this.a, ua3Var.a) && aa4.e(this.b, ua3Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        List<a> list = this.b;
        return iHashCode + (list == null ? 0 : list.hashCode());
    }

    public final String toString() {
        return "FirebaseAnalyticsEvent(name=" + this.a + ", parameters=" + this.b + ")";
    }
}
