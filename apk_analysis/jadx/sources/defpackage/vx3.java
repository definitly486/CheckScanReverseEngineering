package defpackage;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class vx3 extends p54 {
    public static final Pattern e = Pattern.compile("^(?:<[A-Za-z][A-Za-z0-9-]*(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"'=<>`\\x00-\\x20]+|'[^']*'|\"[^\"]*\"))?)*\\s*/?>|</[A-Za-z][A-Za-z0-9-]*\\s*[>]|<!---->|<!--(?:-?[^>-])(?:-?[^-])*-->|[<][?].*?[?][>]|<![A-Z]+\\s+[^>]*>|<!\\[CDATA\\[[\\s\\S]*?\\]\\]>)", 2);

    @Override // defpackage.p54
    public final zn5 b() {
        if (a(e) != null) {
            return new ux3();
        }
        return null;
    }

    @Override // defpackage.p54
    public final char d() {
        return '<';
    }
}
