package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ce1 extends gh4 implements bm3<c81, c81, Integer> {
    public static final ce1 f = new ce1(2);

    @Override // defpackage.bm3
    public final Integer invoke(c81 c81Var, c81 c81Var2) {
        c81 c81Var3 = c81Var;
        c81 c81Var4 = c81Var2;
        return Integer.valueOf(c81Var3.b() == c81Var4.b() ? c81Var4.a().a() - c81Var3.a().a() : (int) (c81Var4.b() - c81Var3.b()));
    }
}
