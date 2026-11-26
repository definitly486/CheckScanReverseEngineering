package defpackage;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class mh5 implements eh8.a {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ mh5(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // eh8.a
    public Object execute() {
        r89 r89Var = (r89) this.b;
        for (Map.Entry entry : ((HashMap) this.c).entrySet()) {
            r89Var.i.o(((Integer) entry.getValue()).intValue(), uu4.a.INVALID_PAYLOD, (String) entry.getKey());
        }
        return null;
    }
}
