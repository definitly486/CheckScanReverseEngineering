package defpackage;

import android.content.Context;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "coil3.intercept.EngineInterceptor$intercept$2", f = "EngineInterceptor.kt", l = {77}, m = "invokeSuspend", v = 1)
public final class rz2 extends pg8 implements bm3<y22, e02<? super zc8>, Object> {
    public int l;
    public final /* synthetic */ lz2 m;
    public final /* synthetic */ b24 n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ zz5 p;
    public final /* synthetic */ a13 q;
    public final /* synthetic */ o95.b r;
    public final /* synthetic */ e94.a s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rz2(lz2 lz2Var, b24 b24Var, Object obj, zz5 zz5Var, a13 a13Var, o95.b bVar, e94.a aVar, e02<? super rz2> e02Var) {
        super(2, e02Var);
        this.m = lz2Var;
        this.n = b24Var;
        this.o = obj;
        this.p = zz5Var;
        this.q = a13Var;
        this.r = bVar;
        this.s = aVar;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new rz2(this.m, this.n, this.o, this.p, this.q, this.r, this.s, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super zc8> e02Var) {
        return ((rz2) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        rz2 rz2Var;
        boolean z;
        o95 o95VarC;
        o95.b bVar = this.r;
        lz2 lz2Var = this.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        if (i == 0) {
            r57.b(obj);
            lz2 lz2Var2 = this.m;
            b24 b24Var = this.n;
            Object obj2 = this.o;
            zz5 zz5Var = this.p;
            a13 a13Var = this.q;
            this.l = 1;
            rz2Var = this;
            obj = lz2Var2.c(b24Var, obj2, zz5Var, a13Var, rz2Var);
            if (obj == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            rz2Var = this;
        }
        lz2.a aVar = (lz2.a) obj;
        gk gkVar = lz2Var.b;
        synchronized (gkVar) {
            try {
                sy6 sy6Var = gkVar.a.get();
                if (sy6Var == null) {
                    gkVar.a();
                } else if (gkVar.d == null) {
                    Context context = sy6Var.a.a;
                    gkVar.d = context;
                    context.registerComponentCallbacks(gkVar.c);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        p95 p95Var = lz2Var.d;
        b24 b24Var2 = rz2Var.n;
        if (bVar == null || !b24Var2.i.d() || !aVar.a.a() || (o95VarC = p95Var.a.c()) == null) {
            z = false;
        } else {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("coil#is_sampled", Boolean.valueOf(aVar.b));
            String str = aVar.d;
            if (str != null) {
                linkedHashMap.put("coil#disk_cache_key", str);
            }
            o95VarC.f(bVar, new o95.c(aVar.a, linkedHashMap));
            z = true;
        }
        x04 x04Var = aVar.a;
        b24 b24Var3 = rz2Var.n;
        z82 z82Var = aVar.c;
        o95.b bVar2 = z ? bVar : null;
        rz2 rz2Var2 = rz2Var;
        String str2 = aVar.d;
        boolean z2 = aVar.b;
        e94.a aVar2 = rz2Var2.s;
        return new zc8(x04Var, b24Var3, z82Var, bVar2, str2, z2, (aVar2 instanceof fz6) && ((fz6) aVar2).g);
    }
}
