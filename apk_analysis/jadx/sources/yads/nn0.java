package yads;

import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class nn0 {
    public static final nn0 b = new nn0(null);
    public final LinkedHashMap a;

    public nn0(LinkedHashMap linkedHashMap) {
        this.a = linkedHashMap;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof nn0) && defpackage.aa4.e(this.a, ((nn0) obj).a);
    }

    public final int hashCode() {
        LinkedHashMap linkedHashMap = this.a;
        if (linkedHashMap == null) {
            return 0;
        }
        return linkedHashMap.hashCode();
    }

    public final String toString() {
        return "DesignAnalytics(analyticsParameters=" + this.a + ")";
    }
}
