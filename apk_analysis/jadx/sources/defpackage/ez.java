package defpackage;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class ez extends je7 {
    public final hm1 a;
    public final HashMap b;

    public ez(hm1 hm1Var, HashMap map) {
        this.a = hm1Var;
        this.b = map;
    }

    @Override // defpackage.je7
    public final hm1 a() {
        return this.a;
    }

    @Override // defpackage.je7
    public final Map<ig6, je7.a> c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof je7)) {
            return false;
        }
        je7 je7Var = (je7) obj;
        return this.a.equals(je7Var.a()) && this.b.equals(je7Var.c());
    }

    public final int hashCode() {
        return this.b.hashCode() ^ ((this.a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "SchedulerConfig{clock=" + this.a + ", values=" + this.b + "}";
    }
}
