package defpackage;

import com.google.android.gms.tasks.Task;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes4.dex */
public final class wcc {
    public final Object a = new Object();
    public ArrayDeque b;
    public boolean c;

    public final void a(ecc eccVar) {
        synchronized (this.a) {
            try {
                ArrayDeque arrayDeque = this.b;
                if (arrayDeque == null) {
                    arrayDeque = new ArrayDeque();
                    this.b = arrayDeque;
                }
                arrayDeque.add(eccVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(Task task) {
        ecc eccVar;
        Object obj = this.a;
        synchronized (obj) {
            if (this.b != null && !this.c) {
                this.c = true;
                while (true) {
                    synchronized (obj) {
                        try {
                            eccVar = (ecc) this.b.poll();
                            if (eccVar == null) {
                                this.c = false;
                                return;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    eccVar.a(task);
                }
            }
        }
    }
}
