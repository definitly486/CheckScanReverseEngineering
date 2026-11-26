package yads;

import java.net.MalformedURLException;
import java.net.URL;

/* JADX INFO: loaded from: classes6.dex */
public abstract class p46 {
    public static String a(String str) {
        try {
            new URL(str);
            return q46.a(str);
        } catch (MalformedURLException unused) {
            defpackage.fg.c(defpackage.bj.c("Invalid url ", str));
            return null;
        }
    }
}
