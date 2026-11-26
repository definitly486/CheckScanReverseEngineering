package defpackage;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class dn5 extends p54 {
    public static final Pattern e = Pattern.compile(" *$");

    @Override // defpackage.p54
    public final zn5 b() {
        this.d++;
        zn5 zn5Var = this.b.c;
        if (zn5Var instanceof dq8) {
            dq8 dq8Var = (dq8) zn5Var;
            if (dq8Var.f.endsWith(" ")) {
                String str = dq8Var.f;
                Matcher matcher = e.matcher(str);
                int iEnd = matcher.find() ? matcher.end() - matcher.start() : 0;
                if (iEnd > 0) {
                    dq8Var.f = rg.f(iEnd, 0, str);
                }
                return iEnd >= 2 ? new pu3() : new o48();
            }
        }
        return new o48();
    }

    @Override // defpackage.p54
    public final char d() {
        return '\n';
    }
}
