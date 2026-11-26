package yads;

import android.os.SystemClock;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class op0 implements xv {
    public final LinkedHashMap a = new LinkedHashMap(16, 0.75f, true);
    public long b = 0;
    public final lp0 c;
    public final int d;

    public op0(File file, int i) {
        this.c = new lp0(file);
        this.d = i;
    }

    @Override // yads.xv
    public final synchronized void a(String str, wv wvVar) {
        long j = this.b;
        byte[] bArr = wvVar.a;
        long length = j + ((long) bArr.length);
        int i = this.d;
        if (length > i && bArr.length > i * 0.9f) {
            return;
        }
        File file = this.c.a;
        int length2 = str.length() / 2;
        File file2 = new File(file, String.valueOf(str.substring(0, length2).hashCode()) + String.valueOf(str.substring(length2).hashCode()));
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2));
            mp0 mp0Var = new mp0(str, wvVar);
            if (!mp0Var.a(bufferedOutputStream)) {
                bufferedOutputStream.close();
                file2.getAbsolutePath();
                boolean z = li6.a;
                throw new IOException();
            }
            bufferedOutputStream.write(wvVar.a);
            bufferedOutputStream.close();
            mp0Var.a = file2.length();
            if (this.a.containsKey(str)) {
                this.b = (mp0Var.a - ((mp0) this.a.get(str)).a) + this.b;
            } else {
                this.b += mp0Var.a;
            }
            this.a.put(str, mp0Var);
            b();
        } catch (IOException unused) {
            if (!file2.delete()) {
                file2.getAbsolutePath();
                boolean z2 = li6.a;
            }
            if (!this.c.a.exists()) {
                boolean z3 = li6.a;
                this.a.clear();
                this.b = 0L;
                a();
            }
        }
    }

    public final void b() {
        if (this.b < this.d) {
            return;
        }
        boolean z = li6.a;
        SystemClock.elapsedRealtime();
        Iterator it = this.a.entrySet().iterator();
        while (it.hasNext()) {
            mp0 mp0Var = (mp0) ((Map.Entry) it.next()).getValue();
            String str = mp0Var.b;
            File file = this.c.a;
            int length = str.length() / 2;
            StringBuilder sbC = defpackage.ad2.c(String.valueOf(str.substring(0, length).hashCode()));
            sbC.append(String.valueOf(str.substring(length).hashCode()));
            if (new File(file, sbC.toString()).delete()) {
                this.b -= mp0Var.a;
            } else {
                String str2 = mp0Var.b;
                int length2 = str2.length() / 2;
                String.valueOf(str2.substring(0, length2).hashCode());
                String.valueOf(str2.substring(length2).hashCode());
            }
            it.remove();
            if (this.b < this.d * 0.9f) {
                break;
            }
        }
        if (li6.a) {
            SystemClock.elapsedRealtime();
        }
    }

    @Override // yads.xv
    public final synchronized wv get(String str) {
        mp0 mp0Var = (mp0) this.a.get(str);
        if (mp0Var == null) {
            return null;
        }
        File file = this.c.a;
        int length = str.length() / 2;
        File file2 = new File(file, String.valueOf(str.substring(0, length).hashCode()) + String.valueOf(str.substring(length).hashCode()));
        try {
            np0 np0Var = new np0(new BufferedInputStream(new FileInputStream(file2)), file2.length());
            try {
                if (TextUtils.equals(str, mp0.a(np0Var).b)) {
                    wv wvVarA = mp0Var.a(a(np0Var, np0Var.b - np0Var.c));
                    np0Var.close();
                    return wvVarA;
                }
                file2.getAbsolutePath();
                boolean z = li6.a;
                mp0 mp0Var2 = (mp0) this.a.remove(str);
                if (mp0Var2 != null) {
                    this.b -= mp0Var2.a;
                }
                np0Var.close();
                return null;
            } catch (Throwable th) {
                np0Var.close();
                throw th;
            }
        } catch (IOException unused) {
            file2.getAbsolutePath();
            boolean z2 = li6.a;
            b(str);
            return null;
        }
    }

    public final synchronized void b(String str) {
        try {
            File file = this.c.a;
            int length = str.length() / 2;
            boolean zDelete = new File(file, String.valueOf(str.substring(0, length).hashCode()) + String.valueOf(str.substring(length).hashCode())).delete();
            mp0 mp0Var = (mp0) this.a.remove(str);
            if (mp0Var != null) {
                this.b -= mp0Var.a;
            }
            if (!zDelete) {
                int length2 = str.length() / 2;
                String.valueOf(str.substring(0, length2).hashCode());
                String.valueOf(str.substring(length2).hashCode());
                boolean z = li6.a;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static long b(np0 np0Var) throws IOException {
        int i = np0Var.read();
        if (i != -1) {
            long j = ((long) i) & 255;
            int i2 = np0Var.read();
            if (i2 != -1) {
                long j2 = j | ((((long) i2) & 255) << 8);
                int i3 = np0Var.read();
                if (i3 != -1) {
                    long j3 = j2 | ((((long) i3) & 255) << 16);
                    int i4 = np0Var.read();
                    if (i4 != -1) {
                        long j4 = j3 | ((((long) i4) & 255) << 24);
                        int i5 = np0Var.read();
                        if (i5 != -1) {
                            long j5 = j4 | ((((long) i5) & 255) << 32);
                            int i6 = np0Var.read();
                            if (i6 != -1) {
                                long j6 = j5 | ((((long) i6) & 255) << 40);
                                int i7 = np0Var.read();
                                if (i7 != -1) {
                                    long j7 = j6 | ((((long) i7) & 255) << 48);
                                    int i8 = np0Var.read();
                                    if (i8 != -1) {
                                        return ((((long) i8) & 255) << 56) | j7;
                                    }
                                    defpackage.n7.e();
                                    return 0L;
                                }
                                defpackage.n7.e();
                                return 0L;
                            }
                            defpackage.n7.e();
                            return 0L;
                        }
                        defpackage.n7.e();
                        return 0L;
                    }
                    defpackage.n7.e();
                    return 0L;
                }
                defpackage.n7.e();
                return 0L;
            }
            defpackage.n7.e();
            return 0L;
        }
        defpackage.n7.e();
        return 0L;
    }

    @Override // yads.xv
    public final synchronized void a(String str) {
        wv wvVar = get(str);
        if (wvVar != null) {
            wvVar.f = 0L;
            wvVar.e = 0L;
            a(str, wvVar);
        }
    }

    @Override // yads.xv
    public final synchronized void a() {
        try {
            File file = this.c.a;
            if (!file.exists()) {
                if (!file.mkdirs()) {
                    file.getAbsolutePath();
                    boolean z = li6.a;
                }
                return;
            }
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                return;
            }
            for (File file2 : fileArrListFiles) {
                try {
                    try {
                        long length = file2.length();
                        np0 np0Var = new np0(new BufferedInputStream(new FileInputStream(file2)), length);
                        try {
                            mp0 mp0VarA = mp0.a(np0Var);
                            mp0VarA.a = length;
                            String str = mp0VarA.b;
                            if (this.a.containsKey(str)) {
                                this.b = (mp0VarA.a - ((mp0) this.a.get(str)).a) + this.b;
                            } else {
                                this.b += mp0VarA.a;
                            }
                            this.a.put(str, mp0VarA);
                            np0Var.close();
                        } catch (Throwable th) {
                            np0Var.close();
                            throw th;
                        }
                    } catch (Throwable unused) {
                    }
                } catch (IOException unused2) {
                    file2.delete();
                } catch (Throwable unused3) {
                    file2.delete();
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public static byte[] a(np0 np0Var, long j) throws IOException {
        long j2 = np0Var.b - np0Var.c;
        if (j >= 0 && j <= j2) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(np0Var).readFully(bArr);
                return bArr;
            }
        }
        StringBuilder sbF = defpackage.xp.f(j, "streamToBytes length=", ", maxLength=");
        sbF.append(j2);
        throw new IOException(sbF.toString());
    }

    public static int a(np0 np0Var) throws IOException {
        int i = np0Var.read();
        if (i != -1) {
            int i2 = np0Var.read();
            if (i2 != -1) {
                int i3 = i | (i2 << 8);
                int i4 = np0Var.read();
                if (i4 != -1) {
                    int i5 = i3 | (i4 << 16);
                    int i6 = np0Var.read();
                    if (i6 != -1) {
                        return (i6 << 24) | i5;
                    }
                    defpackage.n7.e();
                    return 0;
                }
                defpackage.n7.e();
                return 0;
            }
            defpackage.n7.e();
            return 0;
        }
        defpackage.n7.e();
        return 0;
    }

    public static void a(BufferedOutputStream bufferedOutputStream, int i) throws IOException {
        bufferedOutputStream.write(i & 255);
        bufferedOutputStream.write((i >> 8) & 255);
        bufferedOutputStream.write((i >> 16) & 255);
        bufferedOutputStream.write((i >> 24) & 255);
    }

    public static void a(BufferedOutputStream bufferedOutputStream, long j) throws IOException {
        bufferedOutputStream.write((byte) j);
        bufferedOutputStream.write((byte) (j >>> 8));
        bufferedOutputStream.write((byte) (j >>> 16));
        bufferedOutputStream.write((byte) (j >>> 24));
        bufferedOutputStream.write((byte) (j >>> 32));
        bufferedOutputStream.write((byte) (j >>> 40));
        bufferedOutputStream.write((byte) (j >>> 48));
        bufferedOutputStream.write((byte) (j >>> 56));
    }
}
