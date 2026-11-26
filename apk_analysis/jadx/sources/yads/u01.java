package yads;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public abstract class u01 {
    public static final l66 a = new defpackage.i01(7);

    public static final boolean a(String str) {
        return Pattern.matches("^(?!/)(.+)(?<!/)$", str);
    }
}
