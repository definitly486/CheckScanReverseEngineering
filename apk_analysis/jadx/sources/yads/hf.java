package yads;

import defpackage.fh8;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public abstract class hf {
    public static final defpackage.cl4 a = new fh8(new defpackage.tc4(4));

    public static String a(long j) {
        if (j < 1024) {
            return j + "B";
        }
        if (j < 1048576) {
            return (j / 1024) + "KB";
        }
        if (j < 1073741824) {
            return (j / 1048576) + "MB";
        }
        return (j / 1073741824) + "GB";
    }

    public static final SimpleDateFormat a() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);
    }
}
