package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class h13 implements ws6 {

    public static final class a {
        public static final h13 a = new h13();
    }

    @Override // defpackage.ws6
    public final Object get() {
        ty tyVar = ty.f;
        if (tyVar != null) {
            return tyVar;
        }
        o2.d("Cannot return null from a non-@Nullable @Provides method");
        return null;
    }
}
