package androidx.datastore.core;

import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.y22;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.datastore.core.DataStoreImpl$transformAndWrite$2$newData$1", f = "DataStoreImpl.kt", l = {331}, m = "invokeSuspend")
public final class DataStoreImpl$transformAndWrite$2$newData$1<T> extends pg8 implements bm3<y22, e02<? super T>, Object> {
    final /* synthetic */ Data<T> $curData;
    final /* synthetic */ bm3<T, e02<? super T>, Object> $transform;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DataStoreImpl$transformAndWrite$2$newData$1(bm3<? super T, ? super e02<? super T>, ? extends Object> bm3Var, Data<T> data, e02<? super DataStoreImpl$transformAndWrite$2$newData$1> e02Var) {
        super(2, e02Var);
        this.$transform = bm3Var;
        this.$curData = data;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new DataStoreImpl$transformAndWrite$2$newData$1(this.$transform, this.$curData, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super T> e02Var) {
        return ((DataStoreImpl$transformAndWrite$2$newData$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to androidx.datastore.core.DataStoreImpl$transformAndWrite$2$newData$1<T> for r3v2 'this'  java.lang.Object
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r4) {
        /*
            r3 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r3.label
            r2 = 1
            if (r1 == 0) goto L14
            if (r1 != r2) goto Ld
            defpackage.r57.b(r4)
            return r4
        Ld:
            java.lang.String r3 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r3)
            r3 = 0
            return r3
        L14:
            defpackage.r57.b(r4)
            bm3<T, e02<? super T>, java.lang.Object> r4 = r3.$transform
            androidx.datastore.core.Data<T> r1 = r3.$curData
            java.lang.Object r1 = r1.getValue()
            r3.label = r2
            java.lang.Object r3 = r4.invoke(r1, r3)
            if (r3 != r0) goto L28
            return r0
        L28:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl$transformAndWrite$2$newData$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
