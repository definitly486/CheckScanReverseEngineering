package defpackage;

import java.util.concurrent.locks.AbstractOwnableSynchronizer;

/* JADX INFO: loaded from: classes4.dex */
public final class ebb extends AbstractOwnableSynchronizer implements Runnable {
    public final rbb b;

    public /* synthetic */ ebb(jcb jcbVar) {
        this.b = jcbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
    }

    public final String toString() {
        return this.b.toString();
    }
}
