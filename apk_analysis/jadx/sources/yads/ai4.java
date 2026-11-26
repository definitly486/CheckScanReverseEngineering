package yads;

import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class ai4 {
    public static final ai4 b = new ai4(null);
    public final LinkedHashMap a;

    public ai4(LinkedHashMap linkedHashMap) {
        this.a = linkedHashMap;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ai4) && defpackage.aa4.e(this.a, ((ai4) obj).a);
    }

    public final int hashCode() {
        LinkedHashMap linkedHashMap = this.a;
        if (linkedHashMap == null) {
            return 0;
        }
        return linkedHashMap.hashCode();
    }

    public final String toString() {
        return "NativeAnalytics(analyticsParameters=" + this.a + ")";
    }
}
