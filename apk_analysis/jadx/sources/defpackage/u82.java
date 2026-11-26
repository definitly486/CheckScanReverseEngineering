package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public abstract class u82 {
    public static final u82[] a = {new a(), new b(), new c(), new d(), new e(), new f(), new g(), new h()};

    public static final class a extends u82 {
        @Override // defpackage.u82
        public final boolean a(int i, int i2) {
            return ((i + i2) & 1) == 0;
        }
    }

    public static final class b extends u82 {
        @Override // defpackage.u82
        public final boolean a(int i, int i2) {
            return (i & 1) == 0;
        }
    }

    public static final class c extends u82 {
        @Override // defpackage.u82
        public final boolean a(int i, int i2) {
            return i2 % 3 == 0;
        }
    }

    public static final class d extends u82 {
        @Override // defpackage.u82
        public final boolean a(int i, int i2) {
            return (i + i2) % 3 == 0;
        }
    }

    public static final class e extends u82 {
        @Override // defpackage.u82
        public final boolean a(int i, int i2) {
            return (((i2 / 3) + (i / 2)) & 1) == 0;
        }
    }

    public static final class f extends u82 {
        @Override // defpackage.u82
        public final boolean a(int i, int i2) {
            int i3 = i * i2;
            return (i3 % 3) + (i3 & 1) == 0;
        }
    }

    public static final class g extends u82 {
        @Override // defpackage.u82
        public final boolean a(int i, int i2) {
            int i3 = i * i2;
            return (((i3 % 3) + (i3 & 1)) & 1) == 0;
        }
    }

    public static final class h extends u82 {
        @Override // defpackage.u82
        public final boolean a(int i, int i2) {
            return ((((i * i2) % 3) + ((i + i2) & 1)) & 1) == 0;
        }
    }

    public abstract boolean a(int i, int i2);
}
