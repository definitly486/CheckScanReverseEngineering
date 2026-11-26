package defpackage;

import java.util.Collection;

/* JADX INFO: loaded from: classes5.dex */
public class ua8 extends ta8 {
    public static String h0(int i, String str) {
        str.getClass();
        if (i < 0) {
            c9.f(kv2.b(i, "Requested character count ", " is less than zero."));
            return null;
        }
        int length = str.length();
        if (i > length) {
            i = length;
        }
        return str.substring(i);
    }

    public static char i0(CharSequence charSequence) {
        charSequence.getClass();
        if (charSequence.length() != 0) {
            return charSequence.charAt(0);
        }
        ag.g("Char sequence is empty.");
        return (char) 0;
    }

    public static Character j0(CharSequence charSequence) {
        charSequence.getClass();
        if (charSequence.length() == 0) {
            return null;
        }
        return Character.valueOf(charSequence.charAt(0));
    }

    public static char k0(CharSequence charSequence) {
        charSequence.getClass();
        if (charSequence.length() != 0) {
            return charSequence.charAt(charSequence.length() - 1);
        }
        ag.g("Char sequence is empty.");
        return (char) 0;
    }

    public static String l0(int i, String str) {
        str.getClass();
        if (i < 0) {
            c9.f(kv2.b(i, "Requested character count ", " is less than zero."));
            return null;
        }
        int length = str.length();
        if (i > length) {
            i = length;
        }
        return str.substring(0, i);
    }

    public static void m0(CharSequence charSequence, Collection collection) {
        charSequence.getClass();
        collection.getClass();
        for (int i = 0; i < charSequence.length(); i++) {
            collection.add(Character.valueOf(charSequence.charAt(i)));
        }
    }
}
