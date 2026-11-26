package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public interface j37 {

    public enum a {
        RUNNING(false),
        PAUSED(false),
        CLEARED(false),
        SUCCESS(true),
        FAILED(true);

        private final boolean isComplete;

        a(boolean z) {
            this.isComplete = z;
        }

        public final boolean a() {
            return this.isComplete;
        }
    }

    boolean a();

    void b(c37 c37Var);

    boolean e(c37 c37Var);

    boolean f(c37 c37Var);

    boolean g(c37 c37Var);

    j37 getRoot();

    void h(c37 c37Var);
}
