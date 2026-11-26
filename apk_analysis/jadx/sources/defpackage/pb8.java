package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class pb8 extends gh4 implements bm3<Integer, String, j59> {
    public final /* synthetic */ ob8 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pb8(ob8 ob8Var) {
        super(2);
        this.f = ob8Var;
    }

    @Override // defpackage.bm3
    public final j59 invoke(Integer num, String str) {
        int iIntValue = num.intValue();
        String str2 = str;
        str2.getClass();
        this.f.i.invoke(Integer.valueOf(iIntValue), str2);
        return j59.a;
    }
}
