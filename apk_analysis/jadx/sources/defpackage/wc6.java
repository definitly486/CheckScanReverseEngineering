package defpackage;

import com.posthog.internal.PostHogApiError;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public final class wc6<Record> implements xc6<Record> {
    public final nb6 a;
    public final iz2<Record> b;
    public final ExecutorService c;
    public final fr<File> d;
    public final Object e;
    public final Object f;
    public Date g;
    public int h;
    public final ei0 i;
    public volatile Timer j;
    public volatile b k;
    public final AtomicBoolean l;
    public volatile boolean m;
    public boolean n;

    public static final class a<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return pp1.a(Long.valueOf(((File) t).lastModified()), Long.valueOf(((File) t2).lastModified()));
        }
    }

    public static final class b extends TimerTask {
        public b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public final void run() {
            wc6 wc6Var = wc6.this;
            if (wc6Var.l.get()) {
                wc6Var.a.v.a("Queue is flushing.");
            } else {
                wc6Var.flush();
            }
        }
    }

    public wc6(nb6 nb6Var, iz2<Record> iz2Var, ExecutorService executorService) {
        executorService.getClass();
        this.a = nb6Var;
        this.b = iz2Var;
        this.c = executorService;
        this.d = new fr<>();
        this.e = new Object();
        this.f = new Object();
        int iIntValue = iz2Var.c.invoke(nb6Var).intValue();
        iIntValue = iIntValue < 1 ? 1 : iIntValue;
        int iIntValue2 = iz2Var.d.invoke(nb6Var).intValue();
        int i = iIntValue2 >= 1 ? iIntValue2 : 1;
        ei0 ei0Var = new ei0();
        ei0Var.a = iIntValue;
        ei0Var.b = i;
        this.i = ei0Var;
        this.l = new AtomicBoolean(false);
    }

    public final void a() {
        List<File> listO0;
        synchronized (this.e) {
            listO0 = qn1.o0(this.d, this.i.a);
            j59 j59Var = j59.a;
        }
        ArrayList arrayList = new ArrayList();
        for (File file : listO0) {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    Record recordInvoke = this.b.h.invoke(fileInputStream);
                    if (recordInvoke != null) {
                        arrayList.add(recordInvoke);
                    } else {
                        d(file, null);
                        j59 j59Var2 = j59.a;
                    }
                    fileInputStream.close();
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        m96.c(fileInputStream, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                d(file, th3);
            }
        }
        try {
            try {
                if (!arrayList.isEmpty()) {
                    this.a.v.a("Flushing " + arrayList.size() + ' ' + this.b.a + '.');
                    this.b.j.invoke(arrayList);
                    this.a.v.a("Flushed " + arrayList.size() + ' ' + this.b.a + " successfully.");
                }
                synchronized (this.e) {
                    this.d.removeAll(listO0);
                }
                Iterator it = listO0.iterator();
                while (it.hasNext()) {
                    he6.a(this.a, (File) it.next());
                }
            } catch (Throwable th4) {
                if (1 != 0) {
                    synchronized (this.e) {
                        this.d.removeAll(listO0);
                        Iterator it2 = listO0.iterator();
                        while (it2.hasNext()) {
                            he6.a(this.a, (File) it2.next());
                        }
                    }
                }
                throw th4;
            }
        } catch (PostHogApiError e) {
            boolean zB = vc3.b(e, this.i, arrayList.size(), this.a.v, this.b.k);
            if (!zB) {
                throw e;
            }
            if (zB) {
                synchronized (this.e) {
                    this.d.removeAll(listO0);
                    Iterator it3 = listO0.iterator();
                    while (it3.hasNext()) {
                        he6.a(this.a, (File) it3.next());
                    }
                }
            }
        } catch (IOException e2) {
            boolean zD = he6.d(e2);
            ic6 ic6Var = this.a.v;
            if (zD) {
                ic6Var.a("Flushing failed because of a network error, let's try again soon.");
            } else {
                ic6Var.a("Flushing failed: " + e2);
            }
            throw e2;
        }
    }

    @Override // defpackage.xc6
    public final void add(final Record record) {
        boolean zBooleanValue = this.b.l.invoke(record).booleanValue();
        ExecutorService executorService = this.c;
        if (!zBooleanValue) {
            he6.b(new Runnable() { // from class: tc6
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.h(record, false);
                }
            }, executorService);
            return;
        }
        sc6 sc6Var = new sc6(0, this, record);
        executorService.getClass();
        try {
            executorService.submit(sc6Var).get();
        } catch (Throwable unused) {
        }
    }

    public final void b(Integer num, boolean z) {
        if (z) {
            this.g = this.a.I.a((num == null || num.intValue() <= 0) ? Math.min((int) Math.pow(2.0d, this.h - 1), 30) : num.intValue());
        }
    }

    public final boolean c() {
        Date date = this.g;
        if (date != null) {
            nb6 nb6Var = this.a;
            if (date.after(nb6Var.I.b())) {
                nb6Var.v.a("Queue is paused until " + this.g);
                return false;
            }
        }
        return true;
    }

    public final void d(File file, Throwable th) {
        synchronized (this.e) {
            this.d.remove(file);
        }
        he6.a(this.a, file);
        this.a.v.a("File: " + file.getName() + " failed to parse: " + th + '.');
    }

    public final void e() {
        List listT0;
        synchronized (this.e) {
            listT0 = qn1.t0(this.d);
            this.d.clear();
            j59 j59Var = j59.a;
        }
        Iterator it = listT0.iterator();
        while (it.hasNext()) {
            he6.a(this.a, (File) it.next());
        }
    }

    public final void f() {
        if (this.m) {
            return;
        }
        try {
            j();
            this.m = true;
        } catch (Throwable th) {
            try {
                this.a.v.a("Failed to load cached " + this.b.a + ": " + th + '.');
            } finally {
                this.m = true;
            }
        }
    }

    @Override // defpackage.xc6
    public final void flush() {
        if (this.l.getAndSet(true)) {
            this.a.v.a("Queue is flushing.");
        } else {
            he6.b(new rc6(this, 0), this.c);
        }
    }

    public final void g(ll3<j59> ll3Var) throws Throwable {
        boolean z;
        nb6 nb6Var = this.a;
        AtomicBoolean atomicBoolean = this.l;
        Integer num = null;
        try {
            ll3Var.invoke();
            this.h = 0;
            this.g = null;
            atomicBoolean.set(false);
        } catch (Throwable th) {
            try {
                nb6Var.v.a("Flushing failed: " + th + '.');
                z = true;
                int i = this.h + 1;
                this.h = i;
                if (i > nb6Var.i) {
                    nb6Var.v.a("Max retries (" + nb6Var.i + ") exceeded, dropping " + this.b.a + '.');
                    this.h = 0;
                    this.g = null;
                    e();
                    z = false;
                } else {
                    try {
                        if (th instanceof PostHogApiError) {
                            num = th.d;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        b(null, z);
                        atomicBoolean.set(false);
                        throw th;
                    }
                }
                b(num, z);
                atomicBoolean.set(false);
            } catch (Throwable th3) {
                th = th3;
                z = false;
            }
        }
    }

    public final void h(Record record, boolean z) {
        File fileRemoveFirst;
        f();
        if (this.d.size() >= this.b.e.invoke(this.a).intValue()) {
            try {
                synchronized (this.e) {
                    fileRemoveFirst = this.d.removeFirst();
                    j59 j59Var = j59.a;
                }
                he6.a(this.a, fileRemoveFirst);
                this.a.v.a("Queue is full, the oldest " + this.b.a + ' ' + fileRemoveFirst.getName() + " is dropped.");
            } catch (NoSuchElementException unused) {
            }
        }
        String str = this.b.b;
        if (str != null) {
            File file = new File(str, this.a.t);
            if (!this.n) {
                file.mkdirs();
                this.n = true;
            }
            UUID uuidInvoke = this.b.m.invoke(record);
            if (uuidInvoke == null) {
                uuidInvoke = gu8.a();
            }
            File file2 = new File(file, uuidInvoke + ".event");
            synchronized (this.e) {
                this.d.addLast(file2);
            }
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    this.b.g.invoke(record, fileOutputStream);
                    j59 j59Var2 = j59.a;
                    fileOutputStream.close();
                    this.a.v.a("Queued " + this.b.i.invoke(record) + ": " + file2.getName() + '.');
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        m96.c(fileOutputStream, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                this.a.v.a(this.b.i.invoke(record) + ": " + file2.getName() + " failed to parse: " + th3 + '.');
                he6.a(this.a, file2);
                return;
            }
        }
        if (i(this.i.b)) {
            AtomicBoolean atomicBoolean = this.l;
            nb6 nb6Var = this.a;
            if (!z && !c()) {
                nb6Var.v.a("Cannot flush the Queue.");
                return;
            }
            if (atomicBoolean.getAndSet(true)) {
                nb6Var.v.a("Queue is flushing.");
                return;
            }
            nb6 nb6Var2 = this.a;
            lc6 lc6Var = nb6Var2.F;
            int i = 0;
            if (lc6Var == null || lc6Var.isConnected()) {
                g(new uc6(this, i));
            } else {
                nb6Var2.v.a("Network isn't connected.");
                atomicBoolean.set(false);
            }
        }
    }

    public final boolean i(int i) {
        fr<File> frVar = this.d;
        if (frVar.size() >= i) {
            return true;
        }
        if (frVar.size() <= 0) {
            return false;
        }
        this.a.v.a("Cannot flush the Queue yet, below the threshold: " + i);
        return false;
    }

    public final void j() {
        List<File> listK = k();
        if (listK.isEmpty()) {
            return;
        }
        synchronized (this.e) {
            List listT0 = qn1.t0(this.d);
            this.d.clear();
            this.d.addAll(listK);
            this.d.addAll(listT0);
        }
        this.a.v.a("Loaded " + listK.size() + " cached " + this.b.a + " from disk.");
    }

    public final List<File> k() {
        String str = this.b.b;
        nb6 nb6Var = this.a;
        File file = str != null ? new File(str, nb6Var.t) : null;
        if (file != null && he6.c(nb6Var, file)) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                fileArrListFiles = new File[0];
            }
            ArrayList arrayListJ0 = yr.j0(fileArrListFiles);
            if (!arrayListJ0.isEmpty()) {
                if (arrayListJ0.size() > 1) {
                    nn1.J(new a(), arrayListJ0);
                }
                return arrayListJ0;
            }
        }
        return kx2.b;
    }

    @Override // defpackage.xc6
    public final void start() {
        synchronized (this.f) {
            b bVar = this.k;
            if (bVar != null) {
                bVar.cancel();
            }
            Timer timer = this.j;
            if (timer != null) {
                timer.cancel();
            }
            Timer timer2 = new Timer(true);
            long jIntValue = this.b.f.invoke(this.a).intValue() * 1000;
            long jIntValue2 = this.b.f.invoke(this.a).intValue() * 1000;
            b bVar2 = new b();
            timer2.schedule(bVar2, jIntValue, jIntValue2);
            this.k = bVar2;
            this.j = timer2;
            j59 j59Var = j59.a;
        }
        lc6 lc6Var = this.a.F;
        if (lc6Var != null) {
            lc6Var.a(new ap1(this, 2));
        }
    }
}
