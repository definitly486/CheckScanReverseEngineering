package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class v78 extends gh4 implements bm3<Integer, b36<Object, ? extends Long>, dk8.a> {
    public final /* synthetic */ w78 f;
    public final /* synthetic */ long g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v78(w78 w78Var, long j) {
        super(2);
        this.f = w78Var;
        this.g = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.bm3
    public final dk8.a invoke(Integer num, b36<Object, ? extends Long> b36Var) {
        int iIntValue = num.intValue();
        b36<Object, ? extends Long> b36Var2 = b36Var;
        b36Var2.getClass();
        return (dk8.a) this.f.invoke(Integer.valueOf(iIntValue), b36Var2.b, Long.valueOf(this.g));
    }
}
