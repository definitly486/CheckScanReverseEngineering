package defpackage;

import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class nh4 {

    @bq7("agreements")
    private final Map<String, Boolean> a;

    @bq7("answers")
    private final Map<String, String> b;

    public nh4(Map<String, Boolean> map, Map<String, String> map2) {
        this.a = map;
        this.b = map2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nh4)) {
            return false;
        }
        nh4 nh4Var = (nh4) obj;
        return aa4.e(this.a, nh4Var.a) && aa4.e(this.b, nh4Var.b);
    }

    public final int hashCode() {
        Map<String, Boolean> map = this.a;
        int iHashCode = (map == null ? 0 : map.hashCode()) * 31;
        Map<String, String> map2 = this.b;
        return iHashCode + (map2 != null ? map2.hashCode() : 0);
    }

    public final String toString() {
        return "LandingAnswers(agreements=" + this.a + ", answers=" + this.b + ")";
    }
}
