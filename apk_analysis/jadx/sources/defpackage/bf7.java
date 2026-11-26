package defpackage;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class bf7 {
    public static final ba8 e = new ba8("_root_");
    public final hg4 a;
    public final Set<kv6> b;
    public final ConcurrentHashMap c;
    public final ze7 d;

    public bf7(hg4 hg4Var) {
        this.a = hg4Var;
        Set<kv6> setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
        setNewSetFromMap.getClass();
        this.b = setNewSetFromMap;
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.c = concurrentHashMap;
        ba8 ba8Var = e;
        ze7 ze7Var = new ze7(ba8Var, "_root_", null, hg4Var, 8);
        this.d = ze7Var;
        setNewSetFromMap.add(ba8Var);
        concurrentHashMap.put("_root_", ze7Var);
    }
}
