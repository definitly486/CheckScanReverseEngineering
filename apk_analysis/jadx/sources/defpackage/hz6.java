package defpackage;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class hz6 extends b57 {
    public final String c;
    public final long d;
    public final iy6 e;

    public hz6(String str, long j, iy6 iy6Var) {
        this.c = str;
        this.d = j;
        this.e = iy6Var;
    }

    @Override // defpackage.b57
    public final wu0 L() {
        return this.e;
    }

    @Override // defpackage.b57
    public final long o() {
        return this.d;
    }

    @Override // defpackage.b57
    public final j95 p() {
        String str = this.c;
        if (str != null) {
            Pattern pattern = j95.e;
            try {
                return j95.a.a(str);
            } catch (IllegalArgumentException unused) {
            }
        }
        return null;
    }
}
