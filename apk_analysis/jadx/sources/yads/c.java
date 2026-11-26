package yads;

import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class c {
    public final String a;
    public final Set b;

    public c(String str, Set set) {
        this.a = str;
        this.b = set;
    }

    public final String a() {
        return this.a;
    }

    public final Set b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return defpackage.aa4.e(this.a, cVar.a) && defpackage.aa4.e(this.b, cVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "AbExperimentData(experiments=" + this.a + ", triggeredTestIds=" + this.b + ")";
    }
}
