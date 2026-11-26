package defpackage;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class y3b extends AbstractMap {
    public transient bxa b;
    public transient t3b c;

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        bxa bxaVar = this.b;
        if (bxaVar != null) {
            return bxaVar;
        }
        bxa bxaVar2 = new bxa((fxa) this);
        this.b = bxaVar2;
        return bxaVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        t3b t3bVar = this.c;
        if (t3bVar != null) {
            return t3bVar;
        }
        t3b t3bVar2 = new t3b(this);
        this.c = t3bVar2;
        return t3bVar2;
    }
}
