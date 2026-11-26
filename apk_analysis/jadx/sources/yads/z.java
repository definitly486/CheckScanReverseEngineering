package yads;

import java.io.Serializable;
import java.util.Map;
import java.util.NavigableMap;
import java.util.SortedMap;

/* JADX INFO: loaded from: classes6.dex */
public abstract class z extends c0 implements Serializable {
    public transient Map e;
    public transient int f;

    public z(Map map) {
        if (map.isEmpty()) {
            this.e = map;
        } else {
            defpackage.mi2.b();
            throw null;
        }
    }

    public final n b() {
        Map map = this.e;
        if (map instanceof NavigableMap) {
            return new r(this, (NavigableMap) this.e);
        }
        return map instanceof SortedMap ? new u(this, (SortedMap) this.e) : new n(this, this.e);
    }

    public final q c() {
        Map map = this.e;
        if (map instanceof NavigableMap) {
            return new s(this, (NavigableMap) this.e);
        }
        return map instanceof SortedMap ? new v(this, (SortedMap) this.e) : new q(this, this.e);
    }
}
