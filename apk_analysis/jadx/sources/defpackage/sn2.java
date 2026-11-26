package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public abstract class sn2 {
    public static final a a = new a();
    public static final b b = new b();
    public static final c c = new c();
    public static final e d;

    public class a extends sn2 {
        @Override // defpackage.sn2
        public final boolean a() {
            return true;
        }

        @Override // defpackage.sn2
        public final boolean b() {
            return true;
        }

        @Override // defpackage.sn2
        public final boolean c(y82 y82Var) {
            return y82Var == y82.REMOTE;
        }

        @Override // defpackage.sn2
        public final boolean d(boolean z, y82 y82Var, rx2 rx2Var) {
            return (y82Var == y82.RESOURCE_DISK_CACHE || y82Var == y82.MEMORY_CACHE) ? false : true;
        }
    }

    public class b extends sn2 {
        @Override // defpackage.sn2
        public final boolean a() {
            return false;
        }

        @Override // defpackage.sn2
        public final boolean b() {
            return false;
        }

        @Override // defpackage.sn2
        public final boolean c(y82 y82Var) {
            return false;
        }

        @Override // defpackage.sn2
        public final boolean d(boolean z, y82 y82Var, rx2 rx2Var) {
            return false;
        }
    }

    public class c extends sn2 {
        @Override // defpackage.sn2
        public final boolean a() {
            return true;
        }

        @Override // defpackage.sn2
        public final boolean b() {
            return false;
        }

        @Override // defpackage.sn2
        public final boolean c(y82 y82Var) {
            return (y82Var == y82.DATA_DISK_CACHE || y82Var == y82.MEMORY_CACHE) ? false : true;
        }

        @Override // defpackage.sn2
        public final boolean d(boolean z, y82 y82Var, rx2 rx2Var) {
            return false;
        }
    }

    public class d extends sn2 {
        @Override // defpackage.sn2
        public final boolean a() {
            return false;
        }

        @Override // defpackage.sn2
        public final boolean b() {
            return true;
        }

        @Override // defpackage.sn2
        public final boolean c(y82 y82Var) {
            return false;
        }

        @Override // defpackage.sn2
        public final boolean d(boolean z, y82 y82Var, rx2 rx2Var) {
            return (y82Var == y82.RESOURCE_DISK_CACHE || y82Var == y82.MEMORY_CACHE) ? false : true;
        }
    }

    public class e extends sn2 {
        @Override // defpackage.sn2
        public final boolean a() {
            return true;
        }

        @Override // defpackage.sn2
        public final boolean b() {
            return true;
        }

        @Override // defpackage.sn2
        public final boolean c(y82 y82Var) {
            return y82Var == y82.REMOTE;
        }

        @Override // defpackage.sn2
        public final boolean d(boolean z, y82 y82Var, rx2 rx2Var) {
            return ((z && y82Var == y82.DATA_DISK_CACHE) || y82Var == y82.LOCAL) && rx2Var == rx2.TRANSFORMED;
        }
    }

    static {
        new d();
        d = new e();
    }

    public abstract boolean a();

    public abstract boolean b();

    public abstract boolean c(y82 y82Var);

    public abstract boolean d(boolean z, y82 y82Var, rx2 rx2Var);
}
