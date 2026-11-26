package defpackage;

import android.content.Context;
import androidx.compose.material3.internal.CalendarModelKt;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class uy9 {
    public static final ry9 c = new ry9();
    public static final sy9 d = new sy9();
    public static final ty9 e = new ty9();
    public static volatile uy9 f;
    public final Set a = Collections.newSetFromMap(new ConcurrentHashMap());
    public final File b;

    public uy9(File file) {
        this.b = file;
    }

    public static File a(Context context) throws Exception {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            throw new Exception("can't get context cache dir");
        }
        File file = new File(cacheDir, "mytargetcache");
        if (!file.exists() && !file.mkdirs()) {
            throw new Exception("can't create mytarget cache dir");
        }
        if (file.isDirectory() && file.canWrite()) {
            return file;
        }
        throw new Exception("can't write to mytarget cache dir");
    }

    public static File b(InputStream inputStream, File file) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                d(inputStream, fileOutputStream);
                fileOutputStream.close();
                return file;
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            y14.t("DiskCache: exception - " + th3);
            return null;
        }
    }

    public static void d(InputStream inputStream, FileOutputStream fileOutputStream) {
        byte[] bArr = new byte[8192];
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 8192);
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream, 8192);
                while (true) {
                    try {
                        int i = bufferedInputStream.read(bArr, 0, 8192);
                        if (i == -1) {
                            bufferedOutputStream.flush();
                            bufferedOutputStream.close();
                            bufferedInputStream.close();
                            return;
                        }
                        bufferedOutputStream.write(bArr, 0, i);
                    } catch (Throwable th) {
                        try {
                            bufferedOutputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                    try {
                        bufferedInputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th;
                }
            } catch (Throwable th4) {
                bufferedInputStream.close();
                throw th4;
            }
        } catch (Throwable th5) {
            fg.e(null, new StringBuilder("DiskCache: Error - "), th5);
            throw th5;
        }
    }

    public final File c(String str, String str2) {
        String lowerCase;
        StringBuilder sb = new StringBuilder("mytrg_");
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("md5");
            messageDigest.update(str.getBytes(StandardCharsets.UTF_8));
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb2 = new StringBuilder();
            for (byte b : bArrDigest) {
                sb2.append(String.format("%02X", Byte.valueOf(b)));
            }
            lowerCase = sb2.toString().toLowerCase(Locale.ROOT);
        } catch (Throwable unused) {
            lowerCase = null;
        }
        String strD = me0.d(sb, lowerCase, str2);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(this.b.getAbsolutePath());
        return new File(me0.d(sb3, File.separator, strD));
    }

    public final synchronized File e(InputStream inputStream, String str) {
        File fileC;
        k();
        fileC = c(str, ".mp4");
        y14.r(null, "DiskCache: Save video - " + fileC.getPath());
        return b(inputStream, fileC);
    }

    public final synchronized void f() {
        try {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                File file = (File) it.next();
                if (file.exists() && file.isFile()) {
                    y14.r(null, "DiskCache: Perform pending deletion - " + file.getPath());
                    if (!file.delete()) {
                        y14.r(null, "DiskCache: Unable to delete file - " + file.getAbsolutePath());
                    }
                }
                it.remove();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void g() {
        File[] fileArrListFiles = this.b.listFiles(c);
        if (fileArrListFiles == null) {
            return;
        }
        Arrays.sort(fileArrListFiles, new wj2(1));
        long j = 0;
        boolean z = false;
        for (File file : fileArrListFiles) {
            if (!z) {
                long length = file.length() + j;
                if (length > 104857600) {
                    z = true;
                }
                j = length;
            }
            if (z) {
                y14.r(null, "DiskCache: Remove file to enforce size limit - " + file.getPath());
                if (!file.delete()) {
                    y14.r(null, "DiskCache: Unable to delete file - " + file.getAbsolutePath());
                }
            }
        }
    }

    public final void h() {
        File[] fileArrListFiles;
        long jCurrentTimeMillis = System.currentTimeMillis();
        File file = this.b;
        if (jCurrentTimeMillis - file.lastModified() > CalendarModelKt.MillisecondsIn24Hours && (fileArrListFiles = file.listFiles(c)) != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isFile() && jCurrentTimeMillis - file2.lastModified() > CalendarModelKt.MillisecondsIn24Hours) {
                    y14.r(null, "DiskCache: Remove expired file - " + file2.getPath());
                    if (!file2.delete()) {
                        y14.r(null, "DiskCache: Unable to delete file - " + file2.getAbsolutePath());
                    }
                }
            }
            if (file.setLastModified(jCurrentTimeMillis)) {
                return;
            }
            y14.r(null, "DiskCache: Unable to set last modified to dir - " + file.getAbsolutePath());
        }
    }

    public final void i() {
        File[] fileArrListFiles = this.b.listFiles(e);
        if (fileArrListFiles != null) {
            if (fileArrListFiles.length <= 10) {
                return;
            }
            Arrays.sort(fileArrListFiles, new qy9());
            for (int i = 10; i < fileArrListFiles.length; i++) {
                String path = fileArrListFiles[i].getPath();
                y14.r(null, "DiskCache: Remove redundant audio - " + path);
                if (!fileArrListFiles[i].delete()) {
                    y14.r(null, "DiskCache: Unable to remove file - " + path);
                }
            }
        }
    }

    public final void j() {
        File[] fileArrListFiles = this.b.listFiles(d);
        if (fileArrListFiles != null) {
            if (fileArrListFiles.length <= 10) {
                return;
            }
            Arrays.sort(fileArrListFiles, new py9());
            for (int i = 10; i < fileArrListFiles.length; i++) {
                String path = fileArrListFiles[i].getPath();
                y14.r(null, "DiskCache: Remove redundant video - " + path);
                if (!fileArrListFiles[i].delete()) {
                    y14.r(null, "DiskCache: Unable to remove file - " + path);
                }
            }
        }
    }

    public final synchronized void k() {
        try {
            if (!this.b.exists()) {
                y14.r(null, "DiskCache: cache dir was deleted during runtime, re-creating...");
                if (!this.b.mkdirs()) {
                    throw new Exception("can't re-create cache dir in runtime");
                }
            } else {
                f();
                g();
                h();
                j();
                i();
            }
        } catch (Throwable th) {
            y14.t("DiskCache: exception - " + th);
        }
    }
}
