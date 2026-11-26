package yads;

import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public abstract class j extends z {
    public j(Map map) {
        super(map);
    }

    @Override // yads.c0
    public final n a() {
        n nVar = this.d;
        if (nVar != null) {
            return nVar;
        }
        n nVarB = ((gd4) this).b();
        this.d = nVarB;
        return nVarB;
    }
}
