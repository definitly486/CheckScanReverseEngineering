package defpackage;

import androidx.core.net.MailTo;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class jz extends p54 {
    public static final Pattern e = Pattern.compile("^<([a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*)>");
    public static final Pattern f = Pattern.compile("^<[a-zA-Z][a-zA-Z0-9.+-]{1,31}:[^<>\u0000- ]*>");

    @Override // defpackage.p54
    public final zn5 b() {
        String strA = a(e);
        if (strA != null) {
            String strF = rg.f(1, 1, strA);
            hq4 hq4Var = new hq4(MailTo.MAILTO_SCHEME.concat(strF), null);
            hq4Var.b(new dq8(strF));
            return hq4Var;
        }
        String strA2 = a(f);
        if (strA2 == null) {
            return null;
        }
        String strF2 = rg.f(1, 1, strA2);
        hq4 hq4Var2 = new hq4(strF2, null);
        hq4Var2.b(new dq8(strF2));
        return hq4Var2;
    }

    @Override // defpackage.p54
    public final char d() {
        return '<';
    }
}
