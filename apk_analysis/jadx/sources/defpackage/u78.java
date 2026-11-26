package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class u78 extends gh4 implements bm3<Integer, b36<Object, ? extends Long>, dk8.a> {
    public final /* synthetic */ x78 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u78(x78 x78Var) {
        super(2);
        this.f = x78Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.bm3
    public final dk8.a invoke(Integer num, b36<Object, ? extends Long> b36Var) {
        int iIntValue = num.intValue();
        b36<Object, ? extends Long> b36Var2 = b36Var;
        b36Var2.getClass();
        return (dk8.a) this.f.invoke(Integer.valueOf(iIntValue), b36Var2.b);
    }
}
