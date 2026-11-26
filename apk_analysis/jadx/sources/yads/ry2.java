package yads;

import android.content.Context;
import android.graphics.Typeface;
import defpackage.fh8;
import defpackage.j59;
import defpackage.nl3;
import defpackage.og8;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Arrays;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class ry2 {
    public static final byte[] d = {0, 1, 0, 0};
    public static final byte[] e;
    public final Context a;
    public final ConcurrentHashMap b = new ConcurrentHashMap();
    public final defpackage.cl4 c = new fh8(new og8(this, 4));

    static {
        byte[] bytes = "OTTO".getBytes(defpackage.ha1.b);
        bytes.getClass();
        e = bytes;
    }

    public ry2(Context context) {
        this.a = context;
    }

    public static boolean a(File file) {
        if (file.isFile() && file.length() >= 1024) {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    byte[] bArr = new byte[4];
                    boolean z = fileInputStream.read(bArr) == 4 && (Arrays.equals(bArr, d) || Arrays.equals(bArr, e));
                    fileInputStream.close();
                    return z;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        defpackage.m96.c(fileInputStream, th);
                        throw th2;
                    }
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static final defpackage.yg5 d(cz2 cz2Var) {
        return new defpackage.ch5();
    }

    public final File b(cz2 cz2Var) {
        return new File((File) this.c.getValue(), ps5.a(cz2Var.name() + ".ttf"));
    }

    public final defpackage.yg5 c(cz2 cz2Var) {
        return (defpackage.yg5) this.b.computeIfAbsent(cz2Var, new defpackage.h55(new defpackage.ji(4), 1));
    }

    public final File e(cz2 cz2Var) {
        return new File((File) this.c.getValue(), ps5.a(cz2Var.name() + ".ttf.tmp"));
    }

    public static final File a(ry2 ry2Var) {
        return new File(ry2Var.a.getFilesDir(), "downloaded_fonts");
    }

    public final Typeface a(cz2 cz2Var) {
        File fileB = b(cz2Var);
        if (fileB.exists() && a(fileB)) {
            try {
                try {
                    return Typeface.createFromFile(fileB);
                } catch (Exception unused) {
                    return null;
                }
            } catch (Throwable unused2) {
                fileB.delete();
                return null;
            }
        }
        try {
            fileB.delete();
        } catch (Exception unused3) {
        }
        return null;
    }

    public static final defpackage.yg5 a(nl3 nl3Var, Object obj) {
        return (defpackage.yg5) nl3Var.invoke(obj);
    }

    public static final File a(ry2 ry2Var, byte[] bArr, cz2 cz2Var) {
        try {
            ((File) ry2Var.c.getValue()).mkdirs();
            File fileE = ry2Var.e(cz2Var);
            FileOutputStream fileOutputStream = new FileOutputStream(fileE);
            try {
                fileOutputStream.write(bArr);
                j59 j59Var = j59.a;
                fileOutputStream.close();
                return fileE;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    defpackage.m96.c(fileOutputStream, th);
                    throw th2;
                }
            }
        } catch (Exception unused) {
            try {
                ry2Var.e(cz2Var).delete();
                return null;
            } catch (Exception unused2) {
                return null;
            }
        }
    }
}
