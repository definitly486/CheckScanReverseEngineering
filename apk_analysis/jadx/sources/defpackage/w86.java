package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class w86<Output> implements y36<Output> {
    public final String a;

    public w86(String str) {
        str.getClass();
        this.a = str;
        if (str.length() <= 0) {
            fg.c("Empty string is not allowed");
            throw null;
        }
        if (ex0.c(str.charAt(0))) {
            c9.f(me0.c("String '", str, "' starts with a digit"));
            throw null;
        }
        if (ex0.c(str.charAt(str.length() - 1))) {
            c9.f(me0.c("String '", str, "' ends with a digit"));
            throw null;
        }
    }

    @Override // defpackage.y36
    public final Object a(m02 m02Var, CharSequence charSequence, int i) {
        String str = this.a;
        if (str.length() + i > charSequence.length()) {
            return new o36(i, new u86(this));
        }
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (charSequence.charAt(i + i2) != str.charAt(i2)) {
                return new o36(i, new v86(this, charSequence, i, i2));
            }
        }
        return Integer.valueOf(str.length() + i);
    }

    public final String toString() {
        return xp.e(new StringBuilder("'"), this.a, '\'');
    }
}
