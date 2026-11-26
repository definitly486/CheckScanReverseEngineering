package androidx.datastore.core;

import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.p07;
import defpackage.pg8;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.datastore.core.DataStoreImpl$writeData$2", f = "DataStoreImpl.kt", l = {352, 353}, m = "invokeSuspend")
public final class DataStoreImpl$writeData$2<T> extends pg8 implements bm3<WriteScope<T>, e02<? super j59>, Object> {
    final /* synthetic */ T $newData;
    final /* synthetic */ p07 $newVersion;
    final /* synthetic */ boolean $updateCache;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ DataStoreImpl<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$writeData$2(p07 p07Var, DataStoreImpl<T> dataStoreImpl, T t, boolean z, e02<? super DataStoreImpl$writeData$2> e02Var) {
        super(2, e02Var);
        this.$newVersion = p07Var;
        this.this$0 = dataStoreImpl;
        this.$newData = t;
        this.$updateCache = z;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        DataStoreImpl$writeData$2 dataStoreImpl$writeData$2 = new DataStoreImpl$writeData$2(this.$newVersion, this.this$0, this.$newData, this.$updateCache, e02Var);
        dataStoreImpl$writeData$2.L$0 = obj;
        return dataStoreImpl$writeData$2;
    }

    @Override // defpackage.bm3
    public final Object invoke(WriteScope<T> writeScope, e02<? super j59> e02Var) {
        return ((DataStoreImpl$writeData$2) create(writeScope, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0056, code lost:
    
        if (r4.writeData(r8, r7) == r0) goto L16;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r7.label
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L23
            if (r1 == r4) goto L17
            if (r1 != r3) goto L11
            defpackage.r57.b(r8)
            goto L59
        L11:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            return r2
        L17:
            java.lang.Object r1 = r7.L$1
            p07 r1 = (defpackage.p07) r1
            java.lang.Object r4 = r7.L$0
            androidx.datastore.core.WriteScope r4 = (androidx.datastore.core.WriteScope) r4
            defpackage.r57.b(r8)
            goto L42
        L23:
            defpackage.r57.b(r8)
            java.lang.Object r8 = r7.L$0
            androidx.datastore.core.WriteScope r8 = (androidx.datastore.core.WriteScope) r8
            p07 r1 = r7.$newVersion
            androidx.datastore.core.DataStoreImpl<T> r5 = r7.this$0
            androidx.datastore.core.InterProcessCoordinator r5 = androidx.datastore.core.DataStoreImpl.access$getCoordinator(r5)
            r7.L$0 = r8
            r7.L$1 = r1
            r7.label = r4
            java.lang.Object r4 = r5.incrementAndGetVersion(r7)
            if (r4 != r0) goto L3f
            goto L58
        L3f:
            r6 = r4
            r4 = r8
            r8 = r6
        L42:
            java.lang.Number r8 = (java.lang.Number) r8
            int r8 = r8.intValue()
            r1.b = r8
            T r8 = r7.$newData
            r7.L$0 = r2
            r7.L$1 = r2
            r7.label = r3
            java.lang.Object r8 = r4.writeData(r8, r7)
            if (r8 != r0) goto L59
        L58:
            return r0
        L59:
            boolean r8 = r7.$updateCache
            if (r8 == 0) goto L79
            androidx.datastore.core.DataStoreImpl<T> r8 = r7.this$0
            androidx.datastore.core.DataStoreInMemoryCache r8 = androidx.datastore.core.DataStoreImpl.access$getInMemoryCache$p(r8)
            androidx.datastore.core.Data r0 = new androidx.datastore.core.Data
            T r1 = r7.$newData
            if (r1 == 0) goto L6e
            int r2 = r1.hashCode()
            goto L6f
        L6e:
            r2 = 0
        L6f:
            p07 r7 = r7.$newVersion
            int r7 = r7.b
            r0.<init>(r1, r2, r7)
            r8.tryUpdate(r0)
        L79:
            j59 r7 = defpackage.j59.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl$writeData$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
