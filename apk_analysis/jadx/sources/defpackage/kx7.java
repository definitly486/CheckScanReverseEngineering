package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class kx7<Output> implements y36<Output> {
    public final ox7.b a;
    public final String b;

    public kx7(ox7.b bVar, String str) {
        this.a = bVar;
        this.b = str;
    }

    @Override // defpackage.y36
    public final Object a(m02 m02Var, CharSequence charSequence, int i) {
        if (i >= charSequence.length()) {
            return Integer.valueOf(i);
        }
        char cCharAt = charSequence.charAt(i);
        ox7.b bVar = this.a;
        if (cCharAt == '-') {
            bVar.invoke(m02Var, Boolean.TRUE);
            return Integer.valueOf(i + 1);
        }
        if (cCharAt != '+') {
            return new o36(i, new jx7(this, cCharAt));
        }
        bVar.invoke(m02Var, Boolean.FALSE);
        return Integer.valueOf(i + 1);
    }

    public final String toString() {
        return this.b;
    }
}
