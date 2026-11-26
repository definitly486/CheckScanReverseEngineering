package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class nl8 {

    @bq7(FirebaseAnalytics.Param.CONTENT)
    private final List<a> a;

    public static final class a {

        @bq7("source")
        private final w48 a;

        public a(w48 w48Var) {
            this.a = w48Var;
        }

        public final w48 a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && this.a == ((a) obj).a;
        }

        public final int hashCode() {
            w48 w48Var = this.a;
            if (w48Var == null) {
                return 0;
            }
            return w48Var.hashCode();
        }

        public final String toString() {
            return "ContentItemResponse(source=" + this.a + ")";
        }
    }

    public nl8(List<a> list) {
        list.getClass();
        this.a = list;
    }

    public final List<a> a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof nl8) && aa4.e(this.a, ((nl8) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return rs2.c("TaskAdOrderResponse(content=", this.a, ")");
    }
}
