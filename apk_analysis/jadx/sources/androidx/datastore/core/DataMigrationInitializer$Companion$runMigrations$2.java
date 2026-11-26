package androidx.datastore.core;

import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import java.util.List;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2", f = "DataMigrationInitializer.kt", l = {44, 46}, m = "invokeSuspend")
public final class DataMigrationInitializer$Companion$runMigrations$2<T> extends pg8 implements bm3<T, e02<? super T>, Object> {
    final /* synthetic */ List<nl3<e02<? super j59>, Object>> $cleanUps;
    final /* synthetic */ List<DataMigration<T>> $migrations;
    /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DataMigrationInitializer$Companion$runMigrations$2(List<? extends DataMigration<T>> list, List<nl3<e02<? super j59>, Object>> list2, e02<? super DataMigrationInitializer$Companion$runMigrations$2> e02Var) {
        super(2, e02Var);
        this.$migrations = list;
        this.$cleanUps = list2;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        DataMigrationInitializer$Companion$runMigrations$2 dataMigrationInitializer$Companion$runMigrations$2 = new DataMigrationInitializer$Companion$runMigrations$2(this.$migrations, this.$cleanUps, e02Var);
        dataMigrationInitializer$Companion$runMigrations$2.L$0 = obj;
        return dataMigrationInitializer$Companion$runMigrations$2;
    }

    @Override // defpackage.bm3
    public final Object invoke(T t, e02<? super T> e02Var) {
        return ((DataMigrationInitializer$Companion$runMigrations$2) create(t, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0049  */
    /* JADX WARN: Code duplicated, block: B:16:0x0060  */
    /* JADX WARN: Code duplicated, block: B:19:0x006d  */
    /* JADX WARN: Code duplicated, block: B:22:0x0086  */
    /* JADX WARN: Code duplicated, block: B:23:0x0088  */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r9.label
            r2 = 2
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L34
            if (r1 == r3) goto L1f
            if (r1 != r2) goto L19
            java.lang.Object r1 = r9.L$1
            java.util.Iterator r1 = (java.util.Iterator) r1
            java.lang.Object r5 = r9.L$0
            java.util.List r5 = (java.util.List) r5
            defpackage.r57.b(r10)
            goto L43
        L19:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r9)
            return r4
        L1f:
            java.lang.Object r1 = r9.L$3
            java.lang.Object r5 = r9.L$2
            androidx.datastore.core.DataMigration r5 = (androidx.datastore.core.DataMigration) r5
            java.lang.Object r6 = r9.L$1
            java.util.Iterator r6 = (java.util.Iterator) r6
            java.lang.Object r7 = r9.L$0
            java.util.List r7 = (java.util.List) r7
            defpackage.r57.b(r10)
            r8 = r7
            r7 = r5
            r5 = r8
            goto L65
        L34:
            defpackage.r57.b(r10)
            java.lang.Object r10 = r9.L$0
            java.util.List<androidx.datastore.core.DataMigration<T>> r1 = r9.$migrations
            java.lang.Iterable r1 = (java.lang.Iterable) r1
            java.util.List<nl3<e02<? super j59>, java.lang.Object>> r5 = r9.$cleanUps
            java.util.Iterator r1 = r1.iterator()
        L43:
            boolean r6 = r1.hasNext()
            if (r6 == 0) goto L8a
            java.lang.Object r6 = r1.next()
            androidx.datastore.core.DataMigration r6 = (androidx.datastore.core.DataMigration) r6
            r9.L$0 = r5
            r9.L$1 = r1
            r9.L$2 = r6
            r9.L$3 = r10
            r9.label = r3
            java.lang.Object r7 = r6.shouldMigrate(r10, r9)
            if (r7 != r0) goto L60
            goto L85
        L60:
            r8 = r1
            r1 = r10
            r10 = r7
            r7 = r6
            r6 = r8
        L65:
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto L88
            androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2$1$1 r10 = new androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2$1$1
            r10.<init>(r7, r4)
            r5.add(r10)
            r9.L$0 = r5
            r9.L$1 = r6
            r9.L$2 = r4
            r9.L$3 = r4
            r9.label = r2
            java.lang.Object r10 = r7.migrate(r1, r9)
            if (r10 != r0) goto L86
        L85:
            return r0
        L86:
            r1 = r6
            goto L43
        L88:
            r10 = r1
            goto L86
        L8a:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
