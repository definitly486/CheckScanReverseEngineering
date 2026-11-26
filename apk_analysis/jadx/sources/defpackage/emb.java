package defpackage;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class emb {
    public static final emb d = new emb(null, null);
    public final Runnable a;
    public final Executor b;
    public emb c;

    public emb(Runnable runnable, Executor executor) {
        this.a = runnable;
        this.b = executor;
    }
}
