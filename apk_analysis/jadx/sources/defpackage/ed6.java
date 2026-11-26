package defpackage;

import java.io.File;
import java.util.ArrayList;
import y93.b;

/* JADX INFO: loaded from: classes4.dex */
public final class ed6 {
    public final nb6 a;
    public final File b;
    public final ArrayList c = new ArrayList();
    public final Object d = new Object();

    public ed6(nb6 nb6Var, File file) {
        this.a = nb6Var;
        this.b = file;
        b();
    }

    public final int a() {
        int size;
        synchronized (this.d) {
            size = this.c.size();
        }
        return size;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x006b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public final void b() {
        File file = this.b;
        try {
            try {
                if (file.exists()) {
                    ba3 ba3Var = ba3.BOTTOM_UP;
                    ba3Var.getClass();
                    y93.b bVar = new y93(file, ba3Var).new b();
                    loop0: while (true) {
                        boolean z = true;
                        while (true) {
                            if (!bVar.hasNext()) {
                                break loop0;
                            }
                            File next = bVar.next();
                            if (next.delete() || !next.exists()) {
                                if (z) {
                                    break;
                                }
                            }
                            z = false;
                        }
                    }
                    this.b.mkdirs();
                    synchronized (this.d) {
                        this.c.clear();
                        j59 j59Var = j59.a;
                    }
                }
            } catch (Throwable th) {
                this.a.v.a("Error deleting replay buffer directory: " + th);
            }
            this.b.mkdirs();
        } catch (Throwable th2) {
            this.a.v.a("Error trying to create replay buffer folder: " + th2);
        }
        synchronized (this.d) {
            this.c.clear();
            j59 j59Var2 = j59.a;
        }
    }
}
