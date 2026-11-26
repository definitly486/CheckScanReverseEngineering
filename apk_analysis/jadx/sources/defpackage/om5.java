package defpackage;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class om5 {
    public final fm5 a;
    public final uh2 b;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[l93.values().length];
            a = iArr;
            try {
                iArr[l93.ZIP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[l93.GZIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public om5(fm5 fm5Var, uh2 uh2Var) {
        this.a = fm5Var;
        this.b = uh2Var;
    }

    public final wx4<nw4> a(Context context, String str, InputStream inputStream, String str2, String str3) {
        wx4<nw4> wx4VarG;
        l93 l93Var;
        if (str2 == null) {
            str2 = "application/json";
        }
        boolean zContains = str2.contains("application/zip");
        fm5 fm5Var = this.a;
        if (zContains || str2.contains("application/x-zip") || str2.contains("application/x-zip-compressed") || str.split("\\?")[0].endsWith(".lottie")) {
            gv4.a();
            l93 l93Var2 = l93.ZIP;
            wx4VarG = str3 != null ? ww4.g(context, new ZipInputStream(new FileInputStream(fm5Var.d(str, inputStream, l93Var2))), str) : ww4.g(context, new ZipInputStream(inputStream), null);
            l93Var = l93Var2;
        } else if (str2.contains("application/gzip") || str2.contains("application/x-gzip") || str.split("\\?")[0].endsWith(".tgs")) {
            gv4.a();
            l93Var = l93.GZIP;
            wx4VarG = str3 != null ? ww4.d(new GZIPInputStream(new FileInputStream(fm5Var.d(str, inputStream, l93Var))), str) : ww4.d(new GZIPInputStream(inputStream), null);
        } else {
            gv4.a();
            l93Var = l93.JSON;
            wx4VarG = str3 != null ? ww4.d(new FileInputStream(fm5Var.d(str, inputStream, l93Var).getAbsolutePath()), str) : ww4.d(inputStream, null);
        }
        if (str3 != null && wx4VarG.a != null) {
            File file = new File(fm5Var.c(), fm5.a(str, l93Var, true));
            File file2 = new File(file.getAbsolutePath().replace(".temp", ""));
            boolean zRenameTo = file.renameTo(file2);
            file2.toString();
            gv4.a();
            if (!zRenameTo) {
                gv4.b("Unable to rename cache file " + file.getAbsolutePath() + " to " + file2.getAbsolutePath() + ".");
            }
        }
        return wx4VarG;
    }
}
