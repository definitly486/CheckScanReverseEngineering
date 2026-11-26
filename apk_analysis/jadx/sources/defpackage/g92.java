package defpackage;

import java.nio.charset.Charset;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class g92 {
    public static final Charset a;

    static {
        Pattern.compile("(?i)\\bcharset=\\s*(?:[\"'])?([^\\s,;\"']*)");
        Charset charsetForName = Charset.forName("UTF-8");
        a = charsetForName;
        charsetForName.name();
        ov6.Q("meta[http-equiv=content-type], meta[charset]");
    }
}
