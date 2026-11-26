package yads;

import java.util.HashSet;

/* JADX INFO: loaded from: classes6.dex */
public abstract class nq2 {
    public static final HashSet a = new HashSet();
    public static String b = "goog.exo.core";

    public static synchronized void a(String str) {
        if (a.add(str)) {
            b += ", " + str;
        }
    }
}
