package yads;

import android.os.ConditionVariable;
import androidx.media3.common.C;
import java.io.File;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Random;
import java.util.TreeSet;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public final class ok5 implements yv {
    public static final HashSet j = new HashSet();
    public final File a;
    public final zr3 b;
    public final ax c;
    public final gw d;
    public final HashMap e;
    public final Random f;
    public final boolean g;
    public long h;
    public vv i;

    public ok5(File file, zr3 zr3Var, rp2 rp2Var) {
        boolean zAdd;
        ax axVar = new ax(rp2Var, file);
        gw gwVar = new gw(rp2Var);
        synchronized (ok5.class) {
            zAdd = j.add(file.getAbsoluteFile());
        }
        if (!zAdd) {
            defpackage.qz0.i(file, "Another SimpleCache instance uses the folder: ");
            throw null;
        }
        this.a = file;
        this.b = zr3Var;
        this.c = axVar;
        this.d = gwVar;
        this.e = new HashMap();
        this.f = new Random();
        this.g = true;
        this.h = -1L;
        ConditionVariable conditionVariable = new ConditionVariable();
        new nk5(this, conditionVariable).start();
        conditionVariable.block();
    }

    public final void a(jw jwVar) {
        ww wwVar = (ww) this.c.a.get(jwVar.b);
        if (wwVar == null || !wwVar.c.remove(jwVar)) {
            return;
        }
        File file = jwVar.f;
        if (file != null) {
            file.delete();
        }
        if (this.d != null) {
            String name = jwVar.f.getName();
            try {
                gw gwVar = this.d;
                gwVar.b.getClass();
                try {
                    gwVar.a.getWritableDatabase().delete(gwVar.b, "name = ?", new String[]{name});
                } catch (Throwable th) {
                    throw new cd0(th);
                }
            } catch (IOException unused) {
                cz3.a("Failed to remove file index entry for: ", name, "SimpleCache");
            }
        }
        this.c.b(wwVar.b);
        ArrayList arrayList = (ArrayList) this.e.get(jwVar.b);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                zr3 zr3Var = (zr3) arrayList.get(size);
                zr3Var.b.remove(jwVar);
                zr3Var.c -= jwVar.d;
            }
        }
        zr3 zr3Var2 = this.b;
        zr3Var2.b.remove(jwVar);
        zr3Var2.c -= jwVar.d;
    }

    public final void b() {
        long jB;
        if (!this.a.exists()) {
            try {
                a(this.a);
            } catch (vv e) {
                this.i = e;
                return;
            }
        }
        File[] fileArrListFiles = this.a.listFiles();
        if (fileArrListFiles == null) {
            String str = "Failed to list cache directory files: " + this.a;
            sv3.b("SimpleCache", str);
            this.i = new vv(str);
            return;
        }
        int length = fileArrListFiles.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                jB = -1;
                break;
            }
            File file = fileArrListFiles[i];
            String name = file.getName();
            if (name.endsWith(".uid")) {
                try {
                    jB = Long.parseLong(name.substring(0, name.indexOf(46)), 16);
                    break;
                } catch (NumberFormatException unused) {
                    sv3.b("SimpleCache", "Malformed UID file: " + file);
                    file.delete();
                }
            }
            i++;
        }
        this.h = jB;
        if (jB == -1) {
            try {
                jB = b(this.a);
                this.h = jB;
            } catch (IOException e2) {
                String str2 = "Failed to create cache UID: " + this.a;
                sv3.b("SimpleCache", sv3.a(str2, e2));
                this.i = new vv(str2, e2);
                return;
            }
        }
        try {
            this.c.a(jB);
            gw gwVar = this.d;
            if (gwVar != null) {
                gwVar.a(this.h);
                HashMap mapA = this.d.a();
                a(this.a, true, fileArrListFiles, mapA);
                this.d.a(mapA.keySet());
            } else {
                a(this.a, true, fileArrListFiles, null);
            }
            ax axVar = this.c;
            i46 it = te3.a(axVar.a.keySet()).iterator();
            while (it.hasNext()) {
                axVar.b((String) it.next());
            }
            try {
                this.c.a();
            } catch (Throwable th) {
                sv3.b("SimpleCache", sv3.a("Storing index file failed", th));
            }
        } catch (Throwable th2) {
            String str3 = "Failed to initialize cache indices: " + this.a;
            sv3.b("SimpleCache", sv3.a(str3, th2));
            this.i = new vv(str3, th2);
        }
    }

    public final synchronized qk5 c(String str, long j2, long j3) {
        long j4;
        qk5 qk5VarB;
        File file;
        try {
            a();
            ww wwVar = (ww) this.c.a.get(str);
            if (wwVar == null) {
                j4 = j2;
                qk5VarB = new qk5(str, j4, j3, C.TIME_UNSET, null);
            } else {
                j4 = j2;
                while (true) {
                    qk5VarB = wwVar.b(j4, j3);
                    if (!qk5VarB.e || qk5VarB.f.length() == qk5VarB.d) {
                        break;
                    }
                    c();
                }
            }
            int i = 0;
            if (!qk5VarB.e) {
                ww wwVarA = this.c.a(str);
                long j5 = qk5VarB.d;
                while (true) {
                    int size = wwVarA.d.size();
                    ArrayList arrayList = wwVarA.d;
                    if (i >= size) {
                        arrayList.add(new vw(j4, j5));
                        return qk5VarB;
                    }
                    vw vwVar = (vw) arrayList.get(i);
                    long j6 = vwVar.a;
                    if (j6 <= j4) {
                        long j7 = vwVar.b;
                        if (j7 == -1 || j6 + j7 > j4) {
                            break;
                        }
                        i++;
                    } else {
                        if (j5 == -1 || j4 + j5 > j6) {
                            break;
                        }
                        i++;
                    }
                }
                return null;
            }
            if (this.g) {
                File file2 = qk5VarB.f;
                file2.getClass();
                String name = file2.getName();
                long j8 = qk5VarB.d;
                long jCurrentTimeMillis = System.currentTimeMillis();
                gw gwVar = this.d;
                if (gwVar != null) {
                    try {
                        gwVar.a(name, j8, jCurrentTimeMillis);
                    } catch (IOException unused) {
                        sv3.d("SimpleCache", "Failed to update index with new touch timestamp.");
                    }
                } else {
                    i = 1;
                }
                ww wwVar2 = (ww) this.c.a.get(str);
                if (!wwVar2.c.remove(qk5VarB)) {
                    throw new IllegalStateException();
                }
                File file3 = qk5VarB.f;
                file3.getClass();
                if (i != 0) {
                    File parentFile = file3.getParentFile();
                    parentFile.getClass();
                    long j9 = qk5VarB.c;
                    int i2 = wwVar2.a;
                    Pattern pattern = qk5.h;
                    File file4 = new File(parentFile, i2 + "." + j9 + "." + jCurrentTimeMillis + ".v3.exo");
                    if (file3.renameTo(file4)) {
                        file = file4;
                    } else {
                        sv3.d("CachedContent", "Failed to rename " + file3 + " to " + file4);
                        file = file3;
                    }
                } else {
                    file = file3;
                }
                if (!qk5VarB.e) {
                    throw new IllegalStateException();
                }
                qk5 qk5Var = new qk5(qk5VarB.b, qk5VarB.c, qk5VarB.d, jCurrentTimeMillis, file);
                wwVar2.c.add(qk5Var);
                ArrayList arrayList2 = (ArrayList) this.e.get(qk5VarB.b);
                if (arrayList2 != null) {
                    for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                        zr3 zr3Var = (zr3) arrayList2.get(size2);
                        zr3Var.b.remove(qk5VarB);
                        zr3Var.c -= qk5VarB.d;
                        zr3Var.b.add(qk5Var);
                        zr3Var.c += qk5Var.d;
                        zr3Var.a(this, 0L);
                    }
                }
                zr3 zr3Var2 = this.b;
                zr3Var2.b.remove(qk5VarB);
                zr3Var2.c -= qk5VarB.d;
                zr3Var2.b.add(qk5Var);
                zr3Var2.c += qk5Var.d;
                zr3Var2.a(this, 0L);
                qk5VarB = qk5Var;
            }
            return qk5VarB;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized TreeSet a(String str) {
        TreeSet treeSet;
        try {
            ww wwVar = (ww) this.c.a.get(str);
            if (wwVar != null && !wwVar.c.isEmpty()) {
                treeSet = new TreeSet((Collection) wwVar.c);
            } else {
                treeSet = new TreeSet();
            }
        } catch (Throwable th) {
            throw th;
        }
        return treeSet;
    }

    public final synchronized long a(String str, long j2, long j3) {
        long j4;
        long j5 = j3 == -1 ? Long.MAX_VALUE : j3 + j2;
        long j6 = j5 >= 0 ? j5 : Long.MAX_VALUE;
        j4 = 0;
        while (j2 < j6) {
            long jB = b(str, j2, j6 - j2);
            if (jB > 0) {
                j4 += jB;
            } else {
                jB = -jB;
            }
            j2 += jB;
        }
        return j4;
    }

    public final synchronized void a(String str, j60 j60Var) {
        a();
        ax axVar = this.c;
        ww wwVarA = axVar.a(str);
        fk0 fk0Var = wwVarA.e;
        fk0 fk0VarA = fk0Var.a(j60Var);
        wwVarA.e = fk0VarA;
        if (!fk0VarA.equals(fk0Var)) {
            axVar.e.a(wwVarA);
        }
        try {
            this.c.a();
        } catch (Throwable th) {
            throw new vv(th);
        }
    }

    public final void a(File file, boolean z, File[] fileArr, HashMap map) {
        long j2;
        long j3;
        if (fileArr == null || fileArr.length == 0) {
            if (z) {
                return;
            }
            file.delete();
            return;
        }
        for (File file2 : fileArr) {
            String name = file2.getName();
            if (z && name.indexOf(46) == -1) {
                a(file2, false, file2.listFiles(), map);
            } else if (!z || (!name.startsWith("monetization_cached_content_index.exi") && !name.endsWith(".uid"))) {
                fw fwVar = map != null ? (fw) map.remove(name) : null;
                if (fwVar != null) {
                    j2 = fwVar.a;
                    j3 = fwVar.b;
                } else {
                    j2 = -1;
                    j3 = C.TIME_UNSET;
                }
                qk5 qk5VarA = qk5.a(file2, j2, j3, this.c);
                if (qk5VarA != null) {
                    a(qk5VarA);
                } else {
                    file2.delete();
                }
            }
        }
    }

    public final void a(qk5 qk5Var) {
        this.c.a(qk5Var.b).c.add(qk5Var);
        ArrayList arrayList = (ArrayList) this.e.get(qk5Var.b);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                zr3 zr3Var = (zr3) arrayList.get(size);
                zr3Var.b.add(qk5Var);
                zr3Var.c += qk5Var.d;
                zr3Var.a(this, 0L);
            }
        }
        zr3 zr3Var2 = this.b;
        zr3Var2.b.add(qk5Var);
        zr3Var2.c += qk5Var.d;
        zr3Var2.a(this, 0L);
    }

    public final synchronized void a() {
        vv vvVar = this.i;
        if (vvVar != null) {
            throw vvVar;
        }
    }

    public static void a(File file) throws vv {
        if (file.mkdirs() || file.isDirectory()) {
            return;
        }
        String str = "Failed to create cache directory: " + file;
        sv3.b("SimpleCache", str);
        throw new vv(str);
    }

    public final synchronized long b(String str, long j2, long j3) {
        ww wwVar;
        if (j3 == -1) {
            j3 = Long.MAX_VALUE;
        }
        wwVar = (ww) this.c.a.get(str);
        return wwVar != null ? wwVar.a(j2, j3) : -j3;
    }

    public final synchronized fk0 b(String str) {
        fk0 fk0Var;
        try {
            ww wwVar = (ww) this.c.a.get(str);
            if (wwVar != null) {
                fk0Var = wwVar.e;
            } else {
                fk0Var = fk0.c;
            }
        } catch (Throwable th) {
            throw th;
        }
        return fk0Var;
    }

    public final synchronized void b(qk5 qk5Var) {
        ax axVar = this.c;
        ww wwVar = (ww) axVar.a.get(qk5Var.b);
        wwVar.getClass();
        long j2 = qk5Var.c;
        for (int i = 0; i < wwVar.d.size(); i++) {
            if (((vw) wwVar.d.get(i)).a == j2) {
                wwVar.d.remove(i);
                this.c.b(wwVar.b);
                notifyAll();
            }
        }
        throw new IllegalStateException();
    }

    public static long b(File file) throws IOException {
        long jNextLong = new SecureRandom().nextLong();
        long jAbs = jNextLong == Long.MIN_VALUE ? 0L : Math.abs(jNextLong);
        File file2 = new File(file, defpackage.ni0.c(Long.toString(jAbs, 16), ".uid"));
        if (file2.createNewFile()) {
            return jAbs;
        }
        defpackage.av.c(file2, "Failed to create UID file: ");
        return 0L;
    }

    public final synchronized void c(String str) {
        Iterator it = a(str).iterator();
        while (it.hasNext()) {
            a((jw) it.next());
        }
    }

    public final void c() {
        ArrayList arrayList = new ArrayList();
        Iterator it = Collections.unmodifiableCollection(this.c.a.values()).iterator();
        while (it.hasNext()) {
            for (jw jwVar : ((ww) it.next()).c) {
                if (jwVar.f.length() != jwVar.d) {
                    arrayList.add(jwVar);
                }
            }
        }
        for (int i = 0; i < arrayList.size(); i++) {
            a((jw) arrayList.get(i));
        }
    }
}
