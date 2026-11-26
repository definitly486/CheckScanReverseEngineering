package defpackage;

import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class xk6 {

    @bq7("answers")
    private final Map<String, String> a;

    @bq7("afterOnboarding")
    private final boolean b;

    public xk6(Map<String, String> map, boolean z) {
        map.getClass();
        this.a = map;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xk6)) {
            return false;
        }
        xk6 xk6Var = (xk6) obj;
        return aa4.e(this.a, xk6Var.a) && this.b == xk6Var.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "ProfileDataFormRequestBody(answers=" + this.a + ", afterOnboarding=" + this.b + ")";
    }
}
