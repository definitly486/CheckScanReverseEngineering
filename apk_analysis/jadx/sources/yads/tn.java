package yads;

import java.util.concurrent.CopyOnWriteArrayList;
import yads.cj0;

/* JADX INFO: loaded from: classes6.dex */
public final class tn {
    public final CopyOnWriteArrayList a = new CopyOnWriteArrayList();

    public final void a(final int i, final long j, final long j2) {
        for (final sn snVar : this.a) {
            if (!snVar.c) {
                snVar.a.post(new Runnable() { // from class: j9a
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((cj0) snVar.b).b(i, j, j2);
                    }
                });
            }
        }
    }
}
