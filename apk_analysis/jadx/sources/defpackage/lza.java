package defpackage;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class lza implements Executor {
    public static final /* synthetic */ lza c = new lza(0);
    public static final /* synthetic */ lza d = new lza(1);
    public final /* synthetic */ int b;

    public /* synthetic */ lza(int i) {
        this.b = i;
    }

    @Override // java.util.concurrent.Executor
    public final /* synthetic */ void execute(Runnable runnable) {
        switch (this.b) {
            case 0:
                runnable.run();
                break;
            default:
                runnable.run();
                break;
        }
    }
}
