package defpackage;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class d03 extends p54 {
    public static final Pattern e = Pattern.compile("^&(?:#x[a-f0-9]{1,6}|#[0-9]{1,7}|[a-z][a-z0-9]{1,31});", 2);

    @Override // defpackage.p54
    public final zn5 b() {
        String strA = a(e);
        if (strA != null) {
            return f(kx3.a(strA));
        }
        return null;
    }

    @Override // defpackage.p54
    public final char d() {
        return '&';
    }
}
