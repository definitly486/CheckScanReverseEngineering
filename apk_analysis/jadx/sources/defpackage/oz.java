package defpackage;

import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class oz {

    @bd2(c = "kotlinx.coroutines.AwaitKt", f = "Await.kt", l = {58}, m = "joinAll", v = 1)
    public static final class a extends f02 {
        public Iterator l;
        public int m;
        public /* synthetic */ Object n;
        public int o;

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.n = obj;
            this.o |= Integer.MIN_VALUE;
            return oz.b(null, this);
        }
    }

    public static final Object a(Collection collection, f02 f02Var) {
        if (collection.isEmpty()) {
            return kx2.b;
        }
        mk2[] mk2VarArr = (mk2[]) collection.toArray(new mk2[0]);
        mz mzVar = new mz(mk2VarArr);
        c31 c31Var = new c31(1, zya.b(f02Var));
        c31Var.u();
        int length = mk2VarArr.length;
        mz.a[] aVarArr = new mz.a[length];
        for (int i = 0; i < length; i++) {
            mk2 mk2Var = mk2VarArr[i];
            mk2Var.start();
            mz.a aVar = new mz.a(c31Var);
            aVar.g = qb4.g(mk2Var, aVar);
            j59 j59Var = j59.a;
            aVarArr[i] = aVar;
        }
        mz.b bVar = new mz.b(aVarArr);
        for (int i2 = 0; i2 < length; i2++) {
            mz.a aVar2 = aVarArr[i2];
            aVar2.getClass();
            pz0.a.putObjectVolatile(aVar2, mz.a.i, bVar);
        }
        if (c31Var.t() instanceof no5) {
            c31Var.w(bVar);
        } else {
            bVar.a();
        }
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object b(Collection<? extends mb4> collection, e02<? super j59> e02Var) {
        a aVar;
        Iterator it;
        int i;
        if (e02Var instanceof a) {
            aVar = (a) e02Var;
            int i2 = aVar.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                aVar.o = i2 - Integer.MIN_VALUE;
            } else {
                aVar = new a(e02Var);
            }
        } else {
            aVar = new a(e02Var);
        }
        Object obj = aVar.n;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = aVar.o;
        if (i3 == 0) {
            r57.b(obj);
            it = collection.iterator();
            i = 0;
        } else {
            if (i3 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            i = aVar.m;
            it = aVar.l;
            r57.b(obj);
        }
        while (it.hasNext()) {
            mb4 mb4Var = (mb4) it.next();
            aVar.l = it;
            aVar.m = i;
            aVar.o = 1;
            if (mb4Var.e0(aVar) == a32Var) {
                return a32Var;
            }
        }
        return j59.a;
    }
}
