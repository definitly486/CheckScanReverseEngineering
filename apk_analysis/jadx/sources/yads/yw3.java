package yads;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public abstract class yw3 extends AbstractMap {
    public transient l b;
    public transient xw3 c;

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        l lVar = this.b;
        if (lVar != null) {
            return lVar;
        }
        l lVar2 = new l((n) this);
        this.b = lVar2;
        return lVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        xw3 xw3Var = this.c;
        if (xw3Var != null) {
            return xw3Var;
        }
        xw3 xw3Var2 = new xw3(this);
        this.c = xw3Var2;
        return xw3Var2;
    }
}
