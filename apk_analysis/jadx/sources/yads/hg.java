package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.yv8;

/* JADX INFO: loaded from: classes6.dex */
public final class hg extends pg8 implements defpackage.bm3 {
    public defpackage.yg5 b;
    public ig c;
    public Context d;
    public int e;
    public final /* synthetic */ ig f;
    public final /* synthetic */ Context g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hg(ig igVar, Context context, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.f = igVar;
        this.g = context;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new hg(this.f, this.g, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new hg(this.f, this.g, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0065 A[Catch: all -> 0x0015, TryCatch #1 {all -> 0x0015, blocks: (B:7:0x0011, B:23:0x0061, B:25:0x0065, B:28:0x0077, B:30:0x0084, B:34:0x008d, B:38:0x0096, B:41:0x009d, B:45:0x00a3), top: B:53:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x0074  */
    /* JADX WARN: Code duplicated, block: B:28:0x0077 A[Catch: all -> 0x0015, TryCatch #1 {all -> 0x0015, blocks: (B:7:0x0011, B:23:0x0061, B:25:0x0065, B:28:0x0077, B:30:0x0084, B:34:0x008d, B:38:0x0096, B:41:0x009d, B:45:0x00a3), top: B:53:0x0011 }] */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        ig igVar;
        defpackage.yg5 yg5Var;
        Context context;
        defpackage.yg5 yg5Var2;
        ig igVar2;
        pg pgVar;
        fg fgVar;
        String str;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.e;
        try {
            if (i == 0) {
                r57.b(obj);
                igVar = this.f;
                yg5Var = igVar.e;
                context = this.g;
                this.b = yg5Var;
                this.c = igVar;
                this.d = context;
                this.e = 1;
                if (yg5Var.lock(null, this) != a32Var) {
                }
                return a32Var;
            }
            if (i != 1) {
                if (i != 2) {
                    defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                igVar2 = this.c;
                yg5Var2 = this.b;
                try {
                    r57.b(obj);
                    pgVar = (pg) obj;
                    if (pgVar != null) {
                        igVar2.getClass();
                        fgVar = new fg(pgVar.c, pgVar.b, pgVar.a);
                    } else {
                        fgVar = null;
                    }
                    if (fgVar != null) {
                        igVar2.a.getClass();
                        String str2 = fgVar.a;
                        String str3 = fgVar.b;
                        str = fgVar.c;
                        if (str != null && str.length() != 0 && str2 != null && str2.length() != 0 && str3 != null && str3.length() != 0) {
                            igVar2.d = fgVar;
                        }
                    }
                    j59 j59Var = j59.a;
                    yg5Var2.unlock(null);
                    return j59Var;
                } catch (Throwable th) {
                    yg5Var = yg5Var2;
                    th = th;
                    yg5Var.unlock(null);
                    throw th;
                }
            }
            Context context2 = this.d;
            ig igVar3 = this.c;
            defpackage.yg5 yg5Var3 = this.b;
            r57.b(obj);
            context = context2;
            yg5Var = yg5Var3;
            igVar = igVar3;
            if (igVar.d == null) {
                long j = ig.f;
                gg ggVar = new gg(igVar, context, null);
                this.b = yg5Var;
                this.c = igVar;
                this.d = null;
                this.e = 2;
                Object objC = yv8.c(j, ggVar, this);
                if (objC != a32Var) {
                    igVar2 = igVar;
                    obj = objC;
                    yg5Var2 = yg5Var;
                    pgVar = (pg) obj;
                    if (pgVar != null) {
                        igVar2.getClass();
                        fgVar = new fg(pgVar.c, pgVar.b, pgVar.a);
                    } else {
                        fgVar = null;
                    }
                    if (fgVar != null) {
                        igVar2.a.getClass();
                        String str4 = fgVar.a;
                        String str5 = fgVar.b;
                        str = fgVar.c;
                        if (str != null) {
                            igVar2.d = fgVar;
                        }
                    }
                }
                return a32Var;
            }
            yg5Var2 = yg5Var;
            j59 j59Var2 = j59.a;
            yg5Var2.unlock(null);
            return j59Var2;
        } catch (Throwable th2) {
            th = th2;
            yg5Var.unlock(null);
            throw th;
        }
    }
}
