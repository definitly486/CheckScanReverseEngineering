package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$1$1", f = "Zip.kt", l = {29, 29}, m = "invokeSuspend", v = 1)
public final class gf3 extends pg8 implements dm3<id3<Object>, Object[], e02<? super j59>, Object> {
    public id3 l;
    public int m;
    public /* synthetic */ id3 n;
    public /* synthetic */ Object[] o;
    public final /* synthetic */ dm3<Object, Object, e02<Object>, Object> p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public gf3(dm3<Object, Object, ? super e02<Object>, ? extends Object> dm3Var, e02<? super gf3> e02Var) {
        super(3, e02Var);
        this.p = dm3Var;
    }

    @Override // defpackage.dm3
    public final Object invoke(id3<Object> id3Var, Object[] objArr, e02<? super j59> e02Var) {
        gf3 gf3Var = new gf3(this.p, e02Var);
        gf3Var.n = id3Var;
        gf3Var.o = objArr;
        return gf3Var.invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0046, code lost:
    
        if (r0.emit(r8, r7) == r2) goto L15;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        id3 id3Var = this.n;
        Object[] objArr = this.o;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.m;
        if (i != 0) {
            if (i == 1) {
                id3Var = this.l;
                r57.b(obj);
            } else {
                if (i != 2) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
        r57.b(obj);
        Object obj2 = objArr[0];
        Object obj3 = objArr[1];
        this.n = null;
        this.o = null;
        this.l = id3Var;
        this.m = 1;
        obj = this.p.invoke(obj2, obj3, this);
        if (obj != a32Var) {
        }
        return a32Var;
        this.n = null;
        this.o = null;
        this.l = null;
        this.m = 2;
    }
}
