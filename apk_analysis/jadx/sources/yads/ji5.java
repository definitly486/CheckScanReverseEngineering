package yads;

import android.net.Uri;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ji5 implements uk2 {
    private final bd0 a;
    private final mc0 b;
    private final ArrayList c;
    private final bw d;
    private final yv e;
    private final iw f;
    private final Executor g;
    private final ArrayList h;
    private volatile boolean i;

    public ji5(p04 p04Var, mc0 mc0Var, bw bwVar, Executor executor) {
        p04Var.c.getClass();
        Uri uri = p04Var.c.a;
        Map map = Collections.EMPTY_MAP;
        zj.a(uri, "The uri must be set.");
        this.a = new bd0(uri, 0L, 1, null, map, 0L, -1L, null, 1, null);
        this.b = mc0Var;
        this.c = new ArrayList(p04Var.c.b);
        this.d = bwVar;
        this.g = executor;
        yv yvVar = bwVar.a;
        yvVar.getClass();
        this.e = yvVar;
        this.f = bwVar.b;
        this.h = new ArrayList();
    }

    private void b(rb5 rb5Var) {
        synchronized (this.h) {
            this.h.remove(rb5Var);
        }
    }

    public abstract ArrayList a(cw cwVar, kc0 kc0Var, boolean z);

    @Override // yads.uk2
    public final void a(pk2 pk2Var) {
        ArrayList arrayList;
        ArrayList arrayList2;
        cw cwVarA;
        byte[] bArr;
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayDeque arrayDeque2 = new ArrayDeque();
        try {
            bw bwVar = this.d;
            vc0 vc0Var = bwVar.c;
            cw cwVarA2 = bwVar.a(vc0Var != null ? vc0Var.a() : null, 1);
            kc0 kc0VarA = (kc0) a((rb5) new fi5(this, cwVarA2, this.a), false);
            if (!this.c.isEmpty()) {
                kc0VarA = kc0VarA.a(this.c);
            }
            ArrayList arrayListA = a(cwVarA2, kc0VarA, false);
            Collections.sort(arrayListA);
            a(arrayListA, this.f);
            int size = arrayListA.size();
            int i = 0;
            long j = 0;
            long j2 = 0;
            for (int size2 = arrayListA.size() - 1; size2 >= 0; size2--) {
                bd0 bd0Var = ((hi5) arrayListA.get(size2)).c;
                ((defpackage.xp) this.f).getClass();
                String strB = iw.b(bd0Var);
                long j3 = bd0Var.g;
                if (j3 == -1) {
                    long jA = i60.a(((ok5) this.e).b(strB));
                    if (jA != -1) {
                        j3 = jA - bd0Var.f;
                    }
                }
                long j4 = j3;
                long jA2 = ((ok5) this.e).a(strB, bd0Var.f, j4);
                j2 += jA2;
                if (j4 != -1) {
                    if (j4 == jA2) {
                        i++;
                        arrayListA.remove(size2);
                    }
                    if (j != -1) {
                        j += j4;
                    }
                } else {
                    j = -1;
                }
            }
            gi5 gi5Var = new gi5(pk2Var, j, size, j2, i);
            arrayDeque.addAll(arrayListA);
            while (!this.i && !arrayDeque.isEmpty()) {
                if (arrayDeque2.isEmpty()) {
                    bw bwVar2 = this.d;
                    vc0 vc0Var2 = bwVar2.c;
                    cwVarA = bwVar2.a(vc0Var2 != null ? vc0Var2.a() : null, 1);
                    bArr = new byte[131072];
                } else {
                    ii5 ii5Var = (ii5) arrayDeque2.removeFirst();
                    cwVarA = ii5Var.i;
                    bArr = ii5Var.k;
                }
                ii5 ii5Var2 = new ii5((hi5) arrayDeque.removeFirst(), cwVarA, gi5Var, bArr);
                a(ii5Var2);
                this.g.execute(ii5Var2);
                for (int size3 = this.h.size() - 1; size3 >= 0; size3--) {
                    ii5 ii5Var3 = (ii5) this.h.get(size3);
                    if (arrayDeque.isEmpty() || ii5Var3.isDone()) {
                        try {
                            ii5Var3.c.a();
                            ii5Var3.c();
                            a(size3);
                            arrayDeque2.addLast(ii5Var3);
                        } catch (ExecutionException e) {
                            Throwable cause = e.getCause();
                            cause.getClass();
                            if (!(cause instanceof IOException)) {
                                throw cause;
                            }
                            throw ((IOException) cause);
                        }
                    }
                }
                ii5Var2.b.b();
            }
            int i2 = 0;
            while (true) {
                int size4 = this.h.size();
                arrayList2 = this.h;
                if (i2 >= size4) {
                    break;
                }
                ((rb5) arrayList2.get(i2)).cancel(true);
                i2++;
            }
            for (int size5 = arrayList2.size() - 1; size5 >= 0; size5--) {
                ((rb5) this.h.get(size5)).c.b();
                a(size5);
            }
        } catch (Throwable th) {
            int i3 = 0;
            while (true) {
                int size6 = this.h.size();
                arrayList = this.h;
                if (i3 >= size6) {
                    break;
                }
                ((rb5) arrayList.get(i3)).cancel(true);
                i3++;
            }
            for (int size7 = arrayList.size() - 1; size7 >= 0; size7--) {
                ((rb5) this.h.get(size7)).c.b();
                a(size7);
            }
            throw th;
        }
    }

    @Override // yads.uk2
    public final void cancel() {
        synchronized (this.h) {
            try {
                this.i = true;
                for (int i = 0; i < this.h.size(); i++) {
                    ((rb5) this.h.get(i)).cancel(true);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // yads.uk2
    public final void remove() {
        cw cwVarA = this.d.a(null, 1);
        try {
            ArrayList arrayListA = a(cwVarA, (kc0) a((rb5) new fi5(this, cwVarA, this.a), true), true);
            for (int i = 0; i < arrayListA.size(); i++) {
                yv yvVar = this.e;
                iw iwVar = this.f;
                bd0 bd0Var = ((hi5) arrayListA.get(i)).c;
                ((defpackage.xp) iwVar).getClass();
                ((ok5) yvVar).c(iw.b(bd0Var));
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        } catch (Exception unused2) {
        } finally {
            yv yvVar2 = this.e;
            iw iwVar2 = this.f;
            bd0 bd0Var2 = this.a;
            ((defpackage.xp) iwVar2).getClass();
            ((ok5) yvVar2).c(iw.b(bd0Var2));
        }
    }

    public final Object a(rb5 rb5Var, boolean z) throws ExecutionException, InterruptedException, IOException {
        if (z) {
            rb5Var.run();
            try {
                rb5Var.c.a();
                return rb5Var.c();
            } catch (ExecutionException e) {
                Throwable cause = e.getCause();
                cause.getClass();
                if (cause instanceof IOException) {
                    throw ((IOException) cause);
                }
                int i = u56.a;
                throw e;
            }
        }
        if (!this.i) {
            a(rb5Var);
            this.g.execute(rb5Var);
            try {
                try {
                    rb5Var.c.a();
                    Object objC = rb5Var.c();
                    rb5Var.c.b();
                    synchronized (this.h) {
                        this.h.remove(rb5Var);
                    }
                    return objC;
                } catch (ExecutionException e2) {
                    Throwable cause2 = e2.getCause();
                    cause2.getClass();
                    if (cause2 instanceof IOException) {
                        throw ((IOException) cause2);
                    }
                    int i2 = u56.a;
                    throw e2;
                }
            } catch (Throwable th) {
                rb5Var.c.b();
                b(rb5Var);
                throw th;
            }
        }
        throw new InterruptedException();
    }

    private void a(rb5 rb5Var) {
        synchronized (this.h) {
            try {
                if (!this.i) {
                    this.h.add(rb5Var);
                } else {
                    throw new InterruptedException();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void a(int i) {
        synchronized (this.h) {
            this.h.remove(i);
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00ac  */
    private static void a(ArrayList arrayList, iw iwVar) {
        HashMap map = new HashMap();
        int i = 0;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            hi5 hi5Var = (hi5) arrayList.get(i2);
            bd0 bd0Var = hi5Var.c;
            ((defpackage.xp) iwVar).getClass();
            String strB = iw.b(bd0Var);
            Integer num = (Integer) map.get(strB);
            hi5 hi5Var2 = num == null ? null : (hi5) arrayList.get(num.intValue());
            if (hi5Var2 != null && hi5Var.b <= hi5Var2.b + 20000000) {
                bd0 bd0Var2 = hi5Var2.c;
                bd0 bd0Var3 = hi5Var.c;
                if (bd0Var2.a.equals(bd0Var3.a)) {
                    long j = bd0Var2.g;
                    if (j != -1 && bd0Var2.f + j == bd0Var3.f && u56.a(bd0Var2.h, bd0Var3.h) && bd0Var2.i == bd0Var3.i && bd0Var2.c == bd0Var3.c && bd0Var2.e.equals(bd0Var3.e)) {
                        long j2 = hi5Var.c.g;
                        bd0 bd0VarA = hi5Var2.c.a(0L, j2 != -1 ? hi5Var2.c.g + j2 : -1L);
                        num.getClass();
                        arrayList.set(num.intValue(), new hi5(hi5Var2.b, bd0VarA));
                    } else {
                        map.put(strB, Integer.valueOf(i));
                        arrayList.set(i, hi5Var);
                        i++;
                    }
                } else {
                    map.put(strB, Integer.valueOf(i));
                    arrayList.set(i, hi5Var);
                    i++;
                }
            } else {
                map.put(strB, Integer.valueOf(i));
                arrayList.set(i, hi5Var);
                i++;
            }
        }
        int size = arrayList.size();
        int i3 = u56.a;
        if (i < 0 || size > arrayList.size() || i > size) {
            defpackage.mi2.b();
        } else if (i != size) {
            arrayList.subList(i, size).clear();
        }
    }
}
