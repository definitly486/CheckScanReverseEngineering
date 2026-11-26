package yads;

import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class de3 implements ee3 {
    public final Map a;

    public de3(Map map) {
        this.a = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof de3) && defpackage.aa4.e(this.a, ((de3) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "Success(images=" + this.a + ")";
    }
}
