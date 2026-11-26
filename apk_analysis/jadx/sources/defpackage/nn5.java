package defpackage;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes5.dex */
public final class nn5 extends he7 {
    public static final k97 d = new k97("RxNewThreadScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx2.newthread-priority", 5).intValue())), false);
    public final ThreadFactory c = d;

    @Override // defpackage.he7
    public final he7.c b() {
        return new on5(this.c);
    }
}
