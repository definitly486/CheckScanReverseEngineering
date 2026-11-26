package com.warefly.checkscan.presentation.bonuses.onlineShops.presenter;

import com.warefly.checkscan.presentation.bonuses.onlineShops.presenter.a;
import defpackage.aq1;
import defpackage.cp2;
import defpackage.dq1;
import defpackage.gh4;
import defpackage.h08;
import defpackage.j59;
import defpackage.k57;
import defpackage.ll3;
import defpackage.mz7;
import defpackage.nl3;
import defpackage.pz3;
import defpackage.qp1;
import defpackage.qq1;
import defpackage.qx1;
import defpackage.v52;
import defpackage.xz7;
import defpackage.z26;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public final class a<T extends pz3, Param> {
    public final InterfaceC0161a<T, Param> a;
    public int b;
    public boolean c;
    public boolean d;
    public Param e;

    /* JADX INFO: renamed from: com.warefly.checkscan.presentation.bonuses.onlineShops.presenter.a$a, reason: collision with other inner class name */
    public interface InterfaceC0161a<T extends pz3, Param> {
        mz7<k57<Boolean>> loadNextPage(int i, Param param);
    }

    public static final class b extends gh4 implements nl3<cp2, j59> {
        public final /* synthetic */ a<T, Param> f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(a<T, Param> aVar) {
            super(1);
            this.f = aVar;
        }

        @Override // defpackage.nl3
        public final j59 invoke(cp2 cp2Var) {
            this.f.d = true;
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<k57<? extends Boolean>, qq1> {
        public final /* synthetic */ a<T, Param> f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(a<T, Param> aVar) {
            super(1);
            this.f = aVar;
        }

        @Override // defpackage.nl3
        public final qq1 invoke(k57<? extends Boolean> k57Var) {
            final Object obj = k57Var.b;
            final a<T, Param> aVar = this.f;
            return new dq1(new Callable() { // from class: a36
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Object obj2 = Boolean.FALSE;
                    Object obj3 = obj;
                    if (!(obj3 instanceof k57.a)) {
                        obj2 = obj3;
                    }
                    boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                    a aVar2 = aVar;
                    aVar2.c = zBooleanValue;
                    int i = aVar2.b;
                    aVar2.b = i + 1;
                    return Integer.valueOf(i);
                }
            });
        }
    }

    public a(ll3<j59> ll3Var, InterfaceC0161a<T, Param> interfaceC0161a) {
        this.a = interfaceC0161a;
        ll3Var.invoke();
        this.b = 1;
        this.c = true;
    }

    public final qp1 a() {
        Param param;
        if (!this.c || this.d || (param = this.e) == null) {
            aq1 aq1Var = aq1.b;
            aq1Var.getClass();
            return aq1Var;
        }
        mz7<k57<Boolean>> mz7VarLoadNextPage = this.a.loadNextPage(this.b, param);
        final b bVar = new b(this);
        qx1 qx1Var = new qx1() { // from class: y26
            @Override // defpackage.qx1
            public final void accept(Object obj) {
                bVar.invoke(obj);
            }
        };
        mz7VarLoadNextPage.getClass();
        return new h08(new xz7(mz7VarLoadNextPage, qx1Var), new v52(new c(this), 1)).e(new z26(this, 0));
    }

    public final void b(Param param) {
        param.getClass();
        this.b = 1;
        this.c = true;
        this.d = false;
        this.e = param;
    }
}
