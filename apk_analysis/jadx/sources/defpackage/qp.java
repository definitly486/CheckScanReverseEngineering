package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class qp extends gh4 implements nl3<kv.a, j59> {
    public final /* synthetic */ com.warefly.checkscan.presentation.a f;
    public final /* synthetic */ up g;

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[kv.a.values().length];
            try {
                iArr[kv.a.UnsupportedApi.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[kv.a.LoggedIn.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[kv.a.NeedLogInAgain.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[kv.a.Offline.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[kv.a.Error.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qp(com.warefly.checkscan.presentation.a aVar, up upVar) {
        super(1);
        this.f = aVar;
        this.g = upVar;
    }

    @Override // defpackage.nl3
    public final j59 invoke(kv.a aVar) {
        kv.a aVar2 = aVar;
        o87 o87Var = this.f.d;
        int i = aVar2 == null ? -1 : a.a[aVar2.ordinal()];
        if (i != 1) {
            up upVar = this.g;
            if (i == 2) {
                upVar.invoke();
            } else if (i == 3) {
                o87Var.g(if7.a);
            } else if (i == 4 || i != 5) {
                upVar.invoke();
            } else {
                upVar.invoke();
            }
        } else {
            o87Var.g(mi7.a);
        }
        return j59.a;
    }
}
