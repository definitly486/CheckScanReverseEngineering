package defpackage;

import android.os.StrictMode;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public final class ao2 implements Closeable {
    public final File b;
    public final File c;
    public final File d;
    public final File e;
    public BufferedWriter j;
    public int l;
    public long i = 0;
    public final LinkedHashMap<String, d> k = new LinkedHashMap<>(0, 0.75f, true);
    public long m = 0;
    public final ThreadPoolExecutor n = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new b());
    public final a o = new a();
    public final int f = 1;
    public final int h = 1;
    public final long g = 262144000;

    public class a implements Callable<Void> {
        public a() {
        }

        @Override // java.util.concurrent.Callable
        public final Void call() {
            synchronized (ao2.this) {
                try {
                    ao2 ao2Var = ao2.this;
                    if (ao2Var.j == null) {
                        return null;
                    }
                    ao2Var.Q();
                    if (ao2.this.n()) {
                        ao2.this.E();
                        ao2.this.l = 0;
                    }
                    return null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static final class b implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public final synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "glide-disk-lru-cache-thread");
            thread.setPriority(1);
            return thread;
        }
    }

    public final class c {
        public final d a;
        public final boolean[] b;
        public boolean c;

        public c(d dVar) {
            this.a = dVar;
            this.b = dVar.e ? null : new boolean[ao2.this.h];
        }

        public final void a() {
            ao2.this.b(this, false);
        }

        public final File b() {
            File file;
            synchronized (ao2.this) {
                try {
                    d dVar = this.a;
                    if (dVar.f != this) {
                        throw new IllegalStateException();
                    }
                    if (!dVar.e) {
                        this.b[0] = true;
                    }
                    file = dVar.d[0];
                    ao2.this.b.mkdirs();
                } catch (Throwable th) {
                    throw th;
                }
            }
            return file;
        }
    }

    public final class d {
        public final String a;
        public final long[] b;
        public final File[] c;
        public final File[] d;
        public boolean e;
        public c f;

        public d(String str) {
            this.a = str;
            int i = ao2.this.h;
            File file = ao2.this.b;
            this.b = new long[i];
            this.c = new File[i];
            this.d = new File[i];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(i2);
                this.c[i2] = new File(file, sb.toString());
                sb.append(".tmp");
                this.d[i2] = new File(file, sb.toString());
                sb.setLength(length);
            }
        }

        public final String a() {
            StringBuilder sb = new StringBuilder();
            for (long j : this.b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }
    }

    public final class e {
        public final File[] a;

        public e(File[] fileArr) {
            this.a = fileArr;
        }
    }

    public ao2(File file) {
        this.b = file;
        this.c = new File(file, "journal");
        this.d = new File(file, "journal.tmp");
        this.e = new File(file, "journal.bkp");
    }

    public static void P(File file, File file2, boolean z) throws IOException {
        if (z) {
            e(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public static void a(BufferedWriter bufferedWriter) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            bufferedWriter.close();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static void e(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    public static void g(BufferedWriter bufferedWriter) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            bufferedWriter.flush();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static ao2 o(File file) throws IOException {
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                P(file2, file3, false);
            }
        }
        ao2 ao2Var = new ao2(file);
        if (ao2Var.c.exists()) {
            try {
                ao2Var.v();
                ao2Var.p();
                return ao2Var;
            } catch (IOException e2) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e2.getMessage() + ", removing");
                ao2Var.close();
                hb9.a(ao2Var.b);
            }
        }
        file.mkdirs();
        ao2 ao2Var2 = new ao2(file);
        ao2Var2.E();
        return ao2Var2;
    }

    public final synchronized void E() {
        try {
            BufferedWriter bufferedWriter = this.j;
            if (bufferedWriter != null) {
                a(bufferedWriter);
            }
            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.d), hb9.a));
            try {
                bufferedWriter2.write("libcore.io.DiskLruCache");
                bufferedWriter2.write("\n");
                bufferedWriter2.write("1");
                bufferedWriter2.write("\n");
                bufferedWriter2.write(Integer.toString(this.f));
                bufferedWriter2.write("\n");
                bufferedWriter2.write(Integer.toString(this.h));
                bufferedWriter2.write("\n");
                bufferedWriter2.write("\n");
                for (d dVar : this.k.values()) {
                    if (dVar.f != null) {
                        bufferedWriter2.write("DIRTY " + dVar.a + '\n');
                    } else {
                        bufferedWriter2.write("CLEAN " + dVar.a + dVar.a() + '\n');
                    }
                }
                a(bufferedWriter2);
                if (this.c.exists()) {
                    P(this.c, this.e, true);
                }
                P(this.d, this.c, false);
                this.e.delete();
                this.j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.c, true), hb9.a));
            } catch (Throwable th) {
                a(bufferedWriter2);
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void Q() {
        while (this.i > this.g) {
            String key = this.k.entrySet().iterator().next().getKey();
            synchronized (this) {
                try {
                    if (this.j == null) {
                        throw new IllegalStateException("cache is closed");
                    }
                    d dVar = this.k.get(key);
                    if (dVar != null && dVar.f == null) {
                        for (int i = 0; i < this.h; i++) {
                            File file = dVar.c[i];
                            if (file.exists() && !file.delete()) {
                                throw new IOException("failed to delete " + file);
                            }
                            long j = this.i;
                            long[] jArr = dVar.b;
                            this.i = j - jArr[i];
                            jArr[i] = 0;
                        }
                        this.l++;
                        this.j.append((CharSequence) "REMOVE");
                        this.j.append(' ');
                        this.j.append((CharSequence) key);
                        this.j.append('\n');
                        this.k.remove(key);
                        if (n()) {
                            this.n.submit(this.o);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final synchronized void b(c cVar, boolean z) {
        d dVar = cVar.a;
        if (dVar.f != cVar) {
            throw new IllegalStateException();
        }
        if (z && !dVar.e) {
            for (int i = 0; i < this.h; i++) {
                if (!cVar.b[i]) {
                    cVar.a();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                }
                if (!dVar.d[i].exists()) {
                    cVar.a();
                    return;
                }
            }
        }
        for (int i2 = 0; i2 < this.h; i2++) {
            File file = dVar.d[i2];
            if (!z) {
                e(file);
            } else if (file.exists()) {
                File file2 = dVar.c[i2];
                file.renameTo(file2);
                long j = dVar.b[i2];
                long length = file2.length();
                dVar.b[i2] = length;
                this.i = (this.i - j) + length;
            }
        }
        this.l++;
        dVar.f = null;
        if (dVar.e || z) {
            dVar.e = true;
            this.j.append((CharSequence) "CLEAN");
            this.j.append(' ');
            this.j.append((CharSequence) dVar.a);
            this.j.append((CharSequence) dVar.a());
            this.j.append('\n');
            if (z) {
                this.m++;
            }
        } else {
            this.k.remove(dVar.a);
            this.j.append((CharSequence) "REMOVE");
            this.j.append(' ');
            this.j.append((CharSequence) dVar.a);
            this.j.append('\n');
        }
        g(this.j);
        if (this.i > this.g || n()) {
            this.n.submit(this.o);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        try {
            if (this.j == null) {
                return;
            }
            Iterator it = new ArrayList(this.k.values()).iterator();
            while (it.hasNext()) {
                c cVar = ((d) it.next()).f;
                if (cVar != null) {
                    cVar.a();
                }
            }
            Q();
            a(this.j);
            this.j = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final c f(String str) {
        synchronized (this) {
            try {
                if (this.j == null) {
                    throw new IllegalStateException("cache is closed");
                }
                d dVar = this.k.get(str);
                if (dVar == null) {
                    dVar = new d(str);
                    this.k.put(str, dVar);
                } else if (dVar.f != null) {
                    return null;
                }
                c cVar = new c(dVar);
                dVar.f = cVar;
                this.j.append((CharSequence) "DIRTY");
                this.j.append(' ');
                this.j.append((CharSequence) str);
                this.j.append('\n');
                g(this.j);
                return cVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized e m(String str) {
        if (this.j == null) {
            throw new IllegalStateException("cache is closed");
        }
        d dVar = this.k.get(str);
        if (dVar == null) {
            return null;
        }
        if (!dVar.e) {
            return null;
        }
        for (File file : dVar.c) {
            if (!file.exists()) {
                return null;
            }
        }
        this.l++;
        this.j.append((CharSequence) "READ");
        this.j.append(' ');
        this.j.append((CharSequence) str);
        this.j.append('\n');
        if (n()) {
            this.n.submit(this.o);
        }
        return new e(dVar.c);
    }

    public final boolean n() {
        int i = this.l;
        return i >= 2000 && i >= this.k.size();
    }

    public final void p() throws IOException {
        e(this.d);
        Iterator<d> it = this.k.values().iterator();
        while (it.hasNext()) {
            d next = it.next();
            c cVar = next.f;
            int i = this.h;
            int i2 = 0;
            if (cVar == null) {
                while (i2 < i) {
                    this.i += next.b[i2];
                    i2++;
                }
            } else {
                next.f = null;
                while (i2 < i) {
                    e(next.c[i2]);
                    e(next.d[i2]);
                    i2++;
                }
                it.remove();
            }
        }
    }

    public final void v() {
        File file = this.c;
        s98 s98Var = new s98(new FileInputStream(file), hb9.a);
        try {
            String strM = s98Var.m();
            String strM2 = s98Var.m();
            String strM3 = s98Var.m();
            String strM4 = s98Var.m();
            String strM5 = s98Var.m();
            if (!"libcore.io.DiskLruCache".equals(strM) || !"1".equals(strM2) || !Integer.toString(this.f).equals(strM3) || !Integer.toString(this.h).equals(strM4) || !"".equals(strM5)) {
                throw new IOException("unexpected journal header: [" + strM + ", " + strM2 + ", " + strM4 + ", " + strM5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    y(s98Var.m());
                    i++;
                } catch (EOFException unused) {
                    this.l = i - this.k.size();
                    if (s98Var.f == -1) {
                        E();
                    } else {
                        this.j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true), hb9.a));
                    }
                    try {
                        s98Var.close();
                        return;
                    } catch (RuntimeException e2) {
                        throw e2;
                    } catch (Exception unused2) {
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            try {
                s98Var.close();
            } catch (RuntimeException e3) {
                throw e3;
            } catch (Exception unused3) {
            }
            throw th;
        }
    }

    public final void y(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            ki0.d("unexpected journal line: ".concat(str));
            return;
        }
        int i = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i);
        LinkedHashMap<String, d> linkedHashMap = this.k;
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i);
            if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                linkedHashMap.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i, iIndexOf2);
        }
        d dVar = linkedHashMap.get(strSubstring);
        if (dVar == null) {
            dVar = new d(strSubstring);
            linkedHashMap.put(strSubstring, dVar);
        }
        if (iIndexOf2 == -1 || iIndexOf != 5 || !str.startsWith("CLEAN")) {
            if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
                dVar.f = new c(dVar);
                return;
            } else {
                if (iIndexOf2 == -1 && iIndexOf == 4 && str.startsWith("READ")) {
                    return;
                }
                ki0.d("unexpected journal line: ".concat(str));
                return;
            }
        }
        String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
        dVar.e = true;
        dVar.f = null;
        if (strArrSplit.length != ao2.this.h) {
            cg.e(Arrays.toString(strArrSplit), "unexpected journal line: ");
            return;
        }
        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
            try {
                dVar.b[i2] = Long.parseLong(strArrSplit[i2]);
            } catch (NumberFormatException unused) {
                cg.e(Arrays.toString(strArrSplit), "unexpected journal line: ");
                return;
            }
        }
    }
}
