package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class i68 extends k68.a {
    public final /* synthetic */ y91.f i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i68(k68 k68Var, CharSequence charSequence, y91.f fVar) {
        super(k68Var, charSequence);
        this.i = fVar;
    }

    @Override // k68.a
    public final int a(int i) {
        return i + 1;
    }

    @Override // k68.a
    public final int b(int i) {
        CharSequence charSequence = this.d;
        int length = charSequence.length();
        o8.n(i, length);
        while (i < length) {
            if (this.i.c(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }
}
