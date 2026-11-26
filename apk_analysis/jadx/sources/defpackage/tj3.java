package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class tj3<Receiver> extends cq5<Receiver> {
    public final hs<Receiver, ed2> c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tj3(d3 d3Var, String str) {
        super(null, str);
        d3Var.getClass();
        str.getClass();
        this.c = d3Var;
    }

    @Override // defpackage.cq5
    public final dq5 a(Receiver receiver, CharSequence charSequence, int i, int i2) {
        int i3 = i2 - i;
        if (i3 < 1) {
            return new dq5.c(1);
        }
        if (i3 > 9) {
            return new dq5.d(9);
        }
        int iCharAt = 0;
        while (i < i2) {
            iCharAt = (iCharAt * 10) + (charSequence.charAt(i) - '0');
            i++;
        }
        ed2 ed2VarC = this.c.c(receiver, new ed2(iCharAt, i3));
        if (ed2VarC == null) {
            return null;
        }
        return new dq5.a(ed2VarC);
    }
}
