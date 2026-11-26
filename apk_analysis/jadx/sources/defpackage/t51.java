package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class t51 extends gh4 implements nl3 {
    public static final t51 g;
    public static final t51 h;
    public final /* synthetic */ int f;

    static {
        int i = 1;
        g = new t51(i, 0);
        h = new t51(i, 1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ t51(int i, int i2) {
        super(i);
        this.f = i2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.f) {
            case 0:
                t99 t99Var = (t99) obj;
                t99Var.getClass();
                return new la4(new fc(t99Var.a().c(), t99Var.a().b()));
            default:
                o36 o36Var = (o36) obj;
                o36Var.getClass();
                StringBuilder sb = new StringBuilder("position ");
                sb.append(o36Var.a);
                sb.append(": '");
                return xp.e(sb, o36Var.b.invoke(), '\'');
        }
    }
}
