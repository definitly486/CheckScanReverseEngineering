package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public interface l89 {

    public static final class a implements l89 {
        public static final a a = new a();

        @Override // defpackage.l89
        public final void a(cu3 cu3Var) {
            cu3Var.showError();
        }
    }

    public static final class b implements l89 {
        public static final b a = new b();

        @Override // defpackage.l89
        public final void a(cu3 cu3Var) {
            cu3Var.showSuccess();
        }
    }

    void a(cu3 cu3Var);
}
