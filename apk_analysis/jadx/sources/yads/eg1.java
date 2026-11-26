package yads;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public abstract class eg1 {
    public static final l66 a = new defpackage.jn();

    public static final boolean a(String str) {
        return Pattern.matches("^[a-zA-Z_][a-zA-Z0-9_]*$", str);
    }
}
