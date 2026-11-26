package defpackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes5.dex */
public final class w36 implements Cloneable {
    public final p36 b;
    public final q36 c;
    public bk8 d;

    public w36(w36 w36Var) {
        new ReentrantLock();
        new by3();
        this.b = new p36(0);
        q36 q36Var = w36Var.c;
        this.c = new q36(q36Var.a, q36Var.b);
        bk8 bk8VarE = w36Var.e();
        bk8 bk8Var = bk8VarE.b;
        HashMap map = bk8VarE.a;
        ArrayList<Consumer<jj8>> arrayList = bk8VarE.c;
        bk8 bk8Var2 = new bk8(bk8Var, arrayList == null ? null : new ArrayList(arrayList));
        if (!map.isEmpty()) {
            for (Map.Entry entry : map.entrySet()) {
                HashMap map2 = new HashMap(((Map) entry.getValue()).size());
                for (Map.Entry entry2 : ((Map) entry.getValue()).entrySet()) {
                    map2.put((String) entry2.getKey(), ((jj8) entry2.getValue()).clone());
                }
                bk8Var2.a.put((String) entry.getKey(), map2);
            }
        }
        this.d = bk8Var2;
    }

    public final Object clone() {
        return new w36(this);
    }

    public final bk8 e() {
        bk8 bk8Var = this.d;
        if (bk8Var != null) {
            return bk8Var;
        }
        bk8 bk8Var2 = new bk8(bk8.d, null);
        this.d = bk8Var2;
        return bk8Var2;
    }

    public w36(by3 by3Var) {
        new ReentrantLock();
        this.c = q36.c;
        this.b = new p36(0);
    }
}
