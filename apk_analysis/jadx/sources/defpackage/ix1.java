package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ix1<Receiver> extends cq5<Receiver> {
    public final String c;

    public ix1(String str) {
        super(Integer.valueOf(str.length()), "the predefined string ".concat(str));
        this.c = str;
    }

    @Override // defpackage.cq5
    public final dq5 a(Receiver receiver, CharSequence charSequence, int i, int i2) {
        String string = charSequence.subSequence(i, i2).toString();
        String str = this.c;
        if (aa4.e(string, str)) {
            return null;
        }
        return new dq5.e(str);
    }
}
