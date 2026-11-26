package defpackage;

import java.util.concurrent.ScheduledThreadPoolExecutor;

/* JADX INFO: loaded from: classes2.dex */
public final class em9 implements jo2 {
    public final ScheduledThreadPoolExecutor a = new ScheduledThreadPoolExecutor(1);

    @Override // defpackage.jo2
    public final void a(f18.a aVar) {
        this.a.submit(new fu0(aVar, 2));
    }
}
