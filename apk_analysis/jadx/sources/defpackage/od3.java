package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class od3 extends gh4 implements nl3 {
    public static final od3 g;
    public static final od3 h;
    public final /* synthetic */ int f;

    static {
        int i = 1;
        g = new od3(i, 0);
        h = new od3(i, 1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ od3(int i, int i2) {
        super(i);
        this.f = i2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.f) {
            case 0:
                ((Throwable) obj).getClass();
                return j59.a;
            default:
                Integer num = (Integer) obj;
                num.getClass();
                return Boolean.valueOf(num.intValue() > 0);
        }
    }
}
