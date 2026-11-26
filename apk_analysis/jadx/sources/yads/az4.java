package yads;

import android.content.Context;
import com.monetization.ads.mediation.base.prefetch.MediatedAdapterPrefetcher;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.yv8;

/* JADX INFO: loaded from: classes6.dex */
public final class az4 extends pg8 implements defpackage.bm3 {
    public x54 b;
    public MediatedAdapterPrefetcher c;
    public int d;
    public final /* synthetic */ fz4 e;
    public final /* synthetic */ l74 f;
    public final /* synthetic */ Context g;
    public final /* synthetic */ n70 h;
    public final /* synthetic */ long i;
    public final /* synthetic */ sl5 j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public az4(fz4 fz4Var, l74 l74Var, Context context, n70 n70Var, long j, sl5 sl5Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.e = fz4Var;
        this.f = l74Var;
        this.g = context;
        this.h = n70Var;
        this.i = j;
        this.j = sl5Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new az4(this.e, this.f, this.g, this.h, this.i, this.j, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((az4) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        Throwable th;
        MediatedAdapterPrefetcher mediatedAdapterPrefetcher;
        x54 x54Var;
        Exception exc;
        MediatedAdapterPrefetcher mediatedAdapterPrefetcher2;
        x54 x54Var2;
        MediatedAdapterPrefetcher mediatedAdapterPrefetcher3;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        ?? r1 = this.d;
        try {
            if (r1 == 0) {
                r57.b(obj);
                vy4 vy4Var = this.e.e;
                l74 l74Var = this.f;
                vy4Var.getClass();
                String str = l74Var.b;
                x54Var = new x54(str, l74Var.c, null, null, null, null, null, null);
                try {
                    fz4.a(this.e, x54Var);
                    Object objA = this.e.c.a(this.g, x54Var, com.monetization.ads.mediation.base.a.class);
                    MediatedAdapterPrefetcher mediatedAdapterPrefetcher4 = objA instanceof MediatedAdapterPrefetcher ? (MediatedAdapterPrefetcher) objA : null;
                    if (mediatedAdapterPrefetcher4 == null) {
                        qy4 qy4VarA = q54.a(str);
                        this.e.a.a(this.g, this.h, qy4VarA, null);
                        return qy4VarA;
                    }
                    m00 m00Var = this.e.b;
                    m00Var.a.a();
                    m00Var.a.a(m00Var.c, null);
                    try {
                        try {
                            long j = this.i;
                            try {
                                zy4 zy4Var = new zy4(this.e, this.g, this.j, x54Var, mediatedAdapterPrefetcher4, null);
                                x54Var = x54Var;
                                try {
                                    this.b = x54Var;
                                    this.c = mediatedAdapterPrefetcher4;
                                    this.d = 1;
                                    obj = yv8.b(j, zy4Var, this);
                                    if (obj == a32Var) {
                                        return a32Var;
                                    }
                                    x54Var2 = x54Var;
                                    mediatedAdapterPrefetcher3 = mediatedAdapterPrefetcher4;
                                } catch (Exception e) {
                                    e = e;
                                    exc = e;
                                    mediatedAdapterPrefetcher2 = mediatedAdapterPrefetcher4;
                                    m00 m00Var2 = this.e.b;
                                    m00Var2.a.a(m00Var2.c, m00Var2.b, null);
                                    Long lA = this.e.b.a();
                                    qy4 qy4VarA2 = q54.a(exc, x54Var.b);
                                    this.e.a.a(this.g, this.h, qy4VarA2, lA);
                                    mediatedAdapterPrefetcher2.onInvalidate();
                                    return qy4VarA2;
                                }
                            } catch (Exception e2) {
                                e = e2;
                                x54Var = x54Var;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            mediatedAdapterPrefetcher = mediatedAdapterPrefetcher4;
                            mediatedAdapterPrefetcher.onInvalidate();
                            throw th;
                        }
                    } catch (Exception e3) {
                        e = e3;
                    }
                } catch (IllegalArgumentException e4) {
                    return q54.a(e4, x54Var.b);
                }
            } else {
                if (r1 != 1) {
                    defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                mediatedAdapterPrefetcher3 = this.c;
                x54Var2 = this.b;
                try {
                    r57.b(obj);
                    mediatedAdapterPrefetcher3 = mediatedAdapterPrefetcher3;
                } catch (Exception e5) {
                    exc = e5;
                    x54Var = x54Var2;
                    mediatedAdapterPrefetcher2 = mediatedAdapterPrefetcher3;
                    m00 m00Var3 = this.e.b;
                    m00Var3.a.a(m00Var3.c, m00Var3.b, null);
                    Long lA2 = this.e.b.a();
                    qy4 qy4VarA3 = q54.a(exc, x54Var.b);
                    this.e.a.a(this.g, this.h, qy4VarA3, lA2);
                    mediatedAdapterPrefetcher2.onInvalidate();
                    return qy4VarA3;
                }
            }
            qy4 qy4Var = (qy4) obj;
            m00 m00Var4 = this.e.b;
            m00Var4.a.a(m00Var4.c, m00Var4.b, null);
            Long lA3 = this.e.b.a();
            if (qy4Var != null) {
                this.e.a.a(this.g, this.h, qy4Var, lA3);
            }
            mediatedAdapterPrefetcher3.onInvalidate();
            return qy4Var;
        } catch (Throwable th3) {
            th = th3;
            mediatedAdapterPrefetcher = r1;
        }
    }
}
