package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class s26<T> {
    public final nl3<Integer, mz7<List<T>>> a;
    public final m<T> b;
    public int d;
    public rx1 f;
    public l<T> c = new e();
    public final ArrayList e = new ArrayList();

    public static final class a extends gh4 implements nl3<List<? extends T>, j59> {
        public final /* synthetic */ s26<T> f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(s26<T> s26Var) {
            super(1);
            this.f = s26Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Object obj) {
            List<? extends T> list = (List) obj;
            l<T> lVar = this.f.c;
            list.getClass();
            lVar.a(list);
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<Throwable, j59> {
        public final /* synthetic */ s26<T> f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(s26<T> s26Var) {
            super(1);
            this.f = s26Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            Throwable th2 = th;
            l<T> lVar = this.f.c;
            th2.getClass();
            lVar.b(th2);
            return j59.a;
        }
    }

    public final class c implements l<T> {
        public c() {
        }

        @Override // s26.l
        public final void a(List<? extends T> list) {
        }

        @Override // s26.l
        public final void b(Throwable th) {
        }

        @Override // s26.l
        public final void c() {
        }

        @Override // s26.l
        public final void refresh() {
            s26<T> s26Var = s26.this;
            s26Var.c = s26Var.new j();
            s26Var.b.f(true);
            s26Var.b(0);
        }

        @Override // s26.l
        public final void release() {
            k kVar = new k();
            s26<T> s26Var = s26.this;
            s26Var.c = kVar;
            rx1 rx1Var = s26Var.f;
            if (rx1Var != null) {
                ip2.a(rx1Var);
            }
        }
    }

    public final class d implements l<T> {
        public d() {
        }

        @Override // s26.l
        public final void a(List<? extends T> list) {
        }

        @Override // s26.l
        public final void b(Throwable th) {
        }

        @Override // s26.l
        public final void c() {
            s26<T> s26Var = s26.this;
            s26Var.c = s26Var.new i();
            s26Var.b.c(true);
            s26Var.b(s26Var.d + 1);
        }

        @Override // s26.l
        public final void refresh() {
            s26<T> s26Var = s26.this;
            s26Var.c = s26Var.new j();
            s26Var.b.f(true);
            s26Var.b(0);
        }

        @Override // s26.l
        public final void release() {
            k kVar = new k();
            s26<T> s26Var = s26.this;
            s26Var.c = kVar;
            rx1 rx1Var = s26Var.f;
            if (rx1Var != null) {
                ip2.a(rx1Var);
            }
        }
    }

    public final class e implements l<T> {
        public e() {
        }

        @Override // s26.l
        public final void a(List<? extends T> list) {
        }

        @Override // s26.l
        public final void b(Throwable th) {
        }

        @Override // s26.l
        public final void c() {
        }

        @Override // s26.l
        public final void refresh() {
            s26<T> s26Var = s26.this;
            s26Var.c = s26Var.new h();
            s26Var.b.e(true);
            s26Var.b(0);
        }

        @Override // s26.l
        public final void release() {
            k kVar = new k();
            s26<T> s26Var = s26.this;
            s26Var.c = kVar;
            rx1 rx1Var = s26Var.f;
            if (rx1Var != null) {
                ip2.a(rx1Var);
            }
        }
    }

    public final class f implements l<T> {
        public f() {
        }

        @Override // s26.l
        public final void a(List<? extends T> list) {
        }

        @Override // s26.l
        public final void b(Throwable th) {
        }

        @Override // s26.l
        public final void c() {
        }

        @Override // s26.l
        public final void refresh() {
            s26<T> s26Var = s26.this;
            s26Var.c = s26Var.new h();
            m<T> mVar = s26Var.b;
            mVar.g(false);
            mVar.e(true);
            s26Var.b(0);
        }

        @Override // s26.l
        public final void release() {
            k kVar = new k();
            s26<T> s26Var = s26.this;
            s26Var.c = kVar;
            rx1 rx1Var = s26Var.f;
            if (rx1Var != null) {
                ip2.a(rx1Var);
            }
        }
    }

    public final class g implements l<T> {
        public g() {
        }

        @Override // s26.l
        public final void a(List<? extends T> list) {
        }

        @Override // s26.l
        public final void b(Throwable th) {
        }

        @Override // s26.l
        public final void c() {
        }

        @Override // s26.l
        public final void refresh() {
            s26<T> s26Var = s26.this;
            s26Var.c = s26Var.new h();
            m<T> mVar = s26Var.b;
            mVar.h(false);
            mVar.e(true);
            s26Var.b(0);
        }

        @Override // s26.l
        public final void release() {
            k kVar = new k();
            s26<T> s26Var = s26.this;
            s26Var.c = kVar;
            rx1 rx1Var = s26Var.f;
            if (rx1Var != null) {
                ip2.a(rx1Var);
            }
        }
    }

    public final class h implements l<T> {
        public h() {
        }

        @Override // s26.l
        public final void a(List<? extends T> list) {
            List<? extends T> list2 = list;
            boolean zIsEmpty = list2.isEmpty();
            s26<T> s26Var = s26.this;
            ArrayList arrayList = s26Var.e;
            m<T> mVar = s26Var.b;
            if (zIsEmpty) {
                s26Var.c = s26Var.new f();
                mVar.e(false);
                mVar.g(true);
            } else {
                s26Var.c = s26Var.new d();
                arrayList.clear();
                arrayList.addAll(list2);
                s26Var.d = 0;
                mVar.d(arrayList, true);
                mVar.e(false);
            }
        }

        @Override // s26.l
        public final void b(Throwable th) {
            s26<T> s26Var = s26.this;
            s26Var.c = s26Var.new g();
            m<T> mVar = s26Var.b;
            mVar.e(false);
            mVar.h(true);
        }

        @Override // s26.l
        public final void c() {
        }

        @Override // s26.l
        public final void refresh() {
        }

        @Override // s26.l
        public final void release() {
            k kVar = new k();
            s26<T> s26Var = s26.this;
            s26Var.c = kVar;
            rx1 rx1Var = s26Var.f;
            if (rx1Var != null) {
                ip2.a(rx1Var);
            }
        }
    }

    public final class i implements l<T> {
        public i() {
        }

        @Override // s26.l
        public final void a(List<? extends T> list) {
            List<? extends T> list2 = list;
            boolean zIsEmpty = list2.isEmpty();
            s26<T> s26Var = s26.this;
            ArrayList arrayList = s26Var.e;
            m<T> mVar = s26Var.b;
            if (zIsEmpty) {
                s26Var.c = s26Var.new c();
                mVar.c(false);
                mVar.b();
            } else {
                s26Var.c = s26Var.new d();
                arrayList.addAll(list2);
                s26Var.d++;
                mVar.c(false);
                mVar.d(arrayList, true);
            }
        }

        @Override // s26.l
        public final void b(Throwable th) {
            s26<T> s26Var = s26.this;
            s26Var.c = s26Var.new d();
            m<T> mVar = s26Var.b;
            mVar.c(false);
            mVar.a(th);
        }

        @Override // s26.l
        public final void c() {
        }

        @Override // s26.l
        public final void refresh() {
            s26<T> s26Var = s26.this;
            s26Var.c = s26Var.new j();
            m<T> mVar = s26Var.b;
            mVar.c(false);
            mVar.f(true);
            s26Var.b(0);
        }

        @Override // s26.l
        public final void release() {
            k kVar = new k();
            s26<T> s26Var = s26.this;
            s26Var.c = kVar;
            rx1 rx1Var = s26Var.f;
            if (rx1Var != null) {
                ip2.a(rx1Var);
            }
        }
    }

    public final class j implements l<T> {
        public j() {
        }

        @Override // s26.l
        public final void a(List<? extends T> list) {
            List<? extends T> list2 = list;
            boolean zIsEmpty = list2.isEmpty();
            s26<T> s26Var = s26.this;
            ArrayList arrayList = s26Var.e;
            m<T> mVar = s26Var.b;
            if (zIsEmpty) {
                s26Var.c = s26Var.new f();
                arrayList.clear();
                mVar.d(kx2.b, false);
                mVar.f(false);
                mVar.g(true);
                return;
            }
            s26Var.c = s26Var.new d();
            arrayList.clear();
            arrayList.addAll(list2);
            s26Var.d = 0;
            mVar.f(false);
            mVar.d(arrayList, true);
        }

        @Override // s26.l
        public final void b(Throwable th) {
            s26<T> s26Var = s26.this;
            s26Var.c = s26Var.new d();
            m<T> mVar = s26Var.b;
            mVar.f(false);
            mVar.a(th);
        }

        @Override // s26.l
        public final void c() {
        }

        @Override // s26.l
        public final void refresh() {
        }

        @Override // s26.l
        public final void release() {
            k kVar = new k();
            s26<T> s26Var = s26.this;
            s26Var.c = kVar;
            rx1 rx1Var = s26Var.f;
            if (rx1Var != null) {
                ip2.a(rx1Var);
            }
        }
    }

    public final class k implements l<T> {
        @Override // s26.l
        public final void a(List<? extends T> list) {
        }

        @Override // s26.l
        public final void b(Throwable th) {
        }

        @Override // s26.l
        public final void c() {
        }

        @Override // s26.l
        public final void refresh() {
        }

        @Override // s26.l
        public final void release() {
        }
    }

    public interface l<T> {
        void a(List<? extends T> list);

        void b(Throwable th);

        void c();

        void refresh();

        void release();
    }

    public interface m<T> {
        void a(Throwable th);

        void b();

        void c(boolean z);

        void d(List list, boolean z);

        void e(boolean z);

        void f(boolean z);

        void g(boolean z);

        void h(boolean z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public s26(nl3<? super Integer, ? extends mz7<List<T>>> nl3Var, m<T> mVar) {
        this.a = nl3Var;
        this.b = mVar;
    }

    public final void a() {
        this.c.c();
    }

    public final void b(int i2) {
        rx1 rx1Var = this.f;
        if (rx1Var != null) {
            ip2.a(rx1Var);
        }
        mz7<List<T>> mz7VarInvoke = this.a.invoke(Integer.valueOf(i2));
        final a aVar = new a(this);
        qx1 qx1Var = new qx1() { // from class: l26
            @Override // defpackage.qx1
            public final void accept(Object obj) {
                aVar.invoke(obj);
            }
        };
        final b bVar = new b(this);
        this.f = mz7VarInvoke.g(qx1Var, new qx1() { // from class: m26
            @Override // defpackage.qx1
            public final void accept(Object obj) {
                bVar.invoke(obj);
            }
        });
    }

    public final void c() {
        this.c.refresh();
    }
}
