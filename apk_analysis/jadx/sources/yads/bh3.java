package yads;

import android.content.Context;
import androidx.core.content.FileProvider;
import defpackage.j59;
import java.io.File;
import java.io.FileOutputStream;

/* JADX INFO: loaded from: classes6.dex */
public final class bh3 {
    public final Context a;
    public final vg3 b;

    public bh3(Context context, vg3 vg3Var) {
        this.a = context;
        this.b = vg3Var;
    }

    public final ah3 a(String str) {
        try {
            File fileA = this.b.a();
            File parentFile = fileA.getParentFile();
            long freeSpace = parentFile != null ? parentFile.getFreeSpace() : 0L;
            byte[] bytes = str.getBytes(defpackage.ha1.b);
            bytes.getClass();
            if (bytes.length >= freeSpace) {
                return new xg3("Not enough space error");
            }
            FileOutputStream fileOutputStream = new FileOutputStream(fileA);
            try {
                fileOutputStream.write(bytes);
                j59 j59Var = j59.a;
                fileOutputStream.close();
                return new zg3(FileProvider.getUriForFile(this.a, this.a.getPackageName() + ".monetization.ads.inspector.fileprovider", fileA));
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    defpackage.m96.c(fileOutputStream, th);
                    throw th2;
                }
            }
        } catch (Exception unused) {
            return new xg3("Failed to save report");
        }
    }
}
