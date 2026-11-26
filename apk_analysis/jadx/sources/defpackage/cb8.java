package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public abstract class cb8 extends y03 {
    public final y03 a;
    public boolean b;

    public static class a extends cb8 {
        @Override // defpackage.y03
        public final int a() {
            return this.a.a() * 8;
        }

        public final String toString() {
            return String.format("%s ", this.a);
        }
    }

    public static class b extends cb8 {
        static {
            ThreadLocal.withInitial(new p48());
        }

        @Override // defpackage.y03
        public final int a() {
            return this.a.a() * 10;
        }

        public final String toString() {
            return String.format(":has(%s)", this.a);
        }
    }

    public static class c extends cb8 {
        public final ArrayList<y03> c;
        public int d;

        public c(y03 y03Var) {
            super(y03Var);
            ArrayList<y03> arrayList = new ArrayList<>();
            this.c = arrayList;
            this.d = 2;
            arrayList.add(y03Var);
            this.d = y03Var.a() + this.d;
        }

        @Override // defpackage.y03
        public final int a() {
            return this.d;
        }

        public final String toString() {
            return ja8.i(" > ", this.c);
        }
    }

    public static class d extends cb8 {
        @Override // defpackage.y03
        public final int a() {
            return this.a.a() + 2;
        }

        public final String toString() {
            return String.format("%s + ", this.a);
        }
    }

    public static class e extends cb8 {
        @Override // defpackage.y03
        public final int a() {
            return this.a.a() + 2;
        }

        public final String toString() {
            return String.format(":is(%s)", this.a);
        }
    }

    public static class f extends cb8 {
        @Override // defpackage.y03
        public final int a() {
            return this.a.a() + 2;
        }

        public final String toString() {
            return String.format(":not(%s)", this.a);
        }
    }

    public static class g extends cb8 {
        @Override // defpackage.y03
        public final int a() {
            return this.a.a() * 3;
        }

        public final String toString() {
            return String.format("%s ~ ", this.a);
        }
    }

    public static class h extends y03 {
        @Override // defpackage.y03
        public final int a() {
            return 1;
        }

        public final String toString() {
            return ">";
        }
    }

    public cb8(y03 y03Var) {
        ThreadLocal.withInitial(new bb8());
        this.a = y03Var;
        this.b = y03Var.b();
    }

    @Override // defpackage.y03
    public final boolean b() {
        return this.b;
    }
}
