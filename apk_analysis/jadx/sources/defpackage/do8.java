package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes5.dex */
public final class do8 {
    public final ho8 a;
    public final String b;
    public boolean c;
    public jl8 d;
    public final ArrayList e = new ArrayList();
    public boolean f;

    public do8(ho8 ho8Var, String str) {
        this.a = ho8Var;
        this.b = str;
    }

    public final void a() {
        byte[] bArr = gb9.a;
        synchronized (this.a) {
            try {
                if (b()) {
                    this.a.c(this);
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean b() {
        jl8 jl8Var = this.d;
        if (jl8Var != null && jl8Var.b) {
            this.f = true;
        }
        ArrayList arrayList = this.e;
        boolean z = false;
        for (int size = arrayList.size() - 1; -1 < size; size--) {
            if (((jl8) arrayList.get(size)).b) {
                jl8 jl8Var2 = (jl8) arrayList.get(size);
                if (ho8.i.isLoggable(Level.FINE)) {
                    ly1.e(jl8Var2, this, "canceled");
                }
                arrayList.remove(size);
                z = true;
            }
        }
        return z;
    }

    public final void c(jl8 jl8Var, long j) {
        jl8Var.getClass();
        synchronized (this.a) {
            if (!this.c) {
                if (e(jl8Var, j, false)) {
                    this.a.c(this);
                }
                j59 j59Var = j59.a;
            } else if (jl8Var.b) {
                if (ho8.i.isLoggable(Level.FINE)) {
                    ly1.e(jl8Var, this, "schedule canceled (queue is shutdown)");
                }
            } else {
                if (ho8.i.isLoggable(Level.FINE)) {
                    ly1.e(jl8Var, this, "schedule failed (queue is shutdown)");
                }
                throw new RejectedExecutionException();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0041 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:19:0x0043  */
    /* JADX WARN: Code duplicated, block: B:20:0x004f  */
    /* JADX WARN: Code duplicated, block: B:25:0x0068  */
    /* JADX WARN: Code duplicated, block: B:28:0x0076 A[LOOP:0: B:23:0x0062->B:28:0x0076, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:31:0x007c  */
    /* JADX WARN: Code duplicated, block: B:34:0x0085 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:39:0x0079 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x007a A[EDGE_INSN: B:40:0x007a->B:30:0x007a BREAK  A[LOOP:0: B:23:0x0062->B:28:0x0076], SYNTHETIC] */
    public final boolean e(jl8 jl8Var, long j, boolean z) {
        Iterator it;
        int size;
        String strConcat;
        jl8Var.getClass();
        do8 do8Var = jl8Var.c;
        if (do8Var != this) {
            if (do8Var != null) {
                ah.f("task is in multiple queues");
                return false;
            }
            jl8Var.c = this;
        }
        long jNanoTime = System.nanoTime();
        long j2 = jNanoTime + j;
        ArrayList arrayList = this.e;
        int iIndexOf = arrayList.indexOf(jl8Var);
        if (iIndexOf == -1) {
            jl8Var.d = j2;
            if (ho8.i.isLoggable(Level.FINE)) {
                if (z) {
                    strConcat = "run again after ".concat(ly1.b(j2 - jNanoTime));
                } else {
                    strConcat = "scheduled after ".concat(ly1.b(j2 - jNanoTime));
                }
                ly1.e(jl8Var, this, strConcat);
            }
            it = arrayList.iterator();
            size = 0;
            while (true) {
                if (it.hasNext()) {
                    size = -1;
                    break;
                }
                if (((jl8) it.next()).d - jNanoTime > j) {
                    break;
                }
                size++;
            }
            if (size == -1) {
                size = arrayList.size();
            }
            arrayList.add(size, jl8Var);
            if (size == 0) {
                return true;
            }
        } else if (jl8Var.d > j2) {
            arrayList.remove(iIndexOf);
            jl8Var.d = j2;
            if (ho8.i.isLoggable(Level.FINE)) {
                if (z) {
                    strConcat = "run again after ".concat(ly1.b(j2 - jNanoTime));
                } else {
                    strConcat = "scheduled after ".concat(ly1.b(j2 - jNanoTime));
                }
                ly1.e(jl8Var, this, strConcat);
            }
            it = arrayList.iterator();
            size = 0;
            while (true) {
                if (it.hasNext()) {
                    size = -1;
                    break;
                }
                if (((jl8) it.next()).d - jNanoTime > j) {
                    break;
                    break;
                }
                size++;
            }
            if (size == -1) {
                size = arrayList.size();
            }
            arrayList.add(size, jl8Var);
            if (size == 0) {
                return true;
            }
        } else if (ho8.i.isLoggable(Level.FINE)) {
            ly1.e(jl8Var, this, "already scheduled");
            return false;
        }
        return false;
    }

    public final void f() {
        byte[] bArr = gb9.a;
        synchronized (this.a) {
            try {
                this.c = true;
                if (b()) {
                    this.a.c(this);
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final String toString() {
        return this.b;
    }
}
