package defpackage;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class ru1 {
    public static final ru1 b = new ru1(new bn1.a(), bn1.b.a);
    public final ConcurrentHashMap a = new ConcurrentHashMap();

    public ru1(qu1... qu1VarArr) {
        for (qu1 qu1Var : qu1VarArr) {
            this.a.put(qu1Var.getMessageEncoding(), qu1Var);
        }
    }
}
