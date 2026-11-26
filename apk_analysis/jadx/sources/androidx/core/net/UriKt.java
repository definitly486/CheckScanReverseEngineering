package androidx.core.net;

import android.net.Uri;
import defpackage.aa4;
import defpackage.c9;
import defpackage.rk3;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final class UriKt {
    public static final File toFile(Uri uri) {
        if (!aa4.e(uri.getScheme(), "file")) {
            c9.f(rk3.c(uri, "Uri lacks 'file' scheme: "));
            return null;
        }
        String path = uri.getPath();
        if (path != null) {
            return new File(path);
        }
        c9.f(rk3.c(uri, "Uri path is null: "));
        return null;
    }

    public static final Uri toUri(String str) {
        return Uri.parse(str);
    }

    public static final Uri toUri(File file) {
        return Uri.fromFile(file);
    }
}
