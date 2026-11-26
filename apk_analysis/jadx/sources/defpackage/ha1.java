package defpackage;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes6.dex */
public final class ha1 {
    public static final ha1 a = new ha1();
    public static final Charset b;
    public static final Charset c;
    public static volatile Charset d;
    public static volatile Charset e;

    static {
        Charset charsetForName = Charset.forName("UTF-8");
        charsetForName.getClass();
        b = charsetForName;
        Charset.forName("UTF-16").getClass();
        Charset.forName("UTF-16BE").getClass();
        Charset.forName("UTF-16LE").getClass();
        Charset.forName("US-ASCII").getClass();
        Charset charsetForName2 = Charset.forName("ISO-8859-1");
        charsetForName2.getClass();
        c = charsetForName2;
    }
}
