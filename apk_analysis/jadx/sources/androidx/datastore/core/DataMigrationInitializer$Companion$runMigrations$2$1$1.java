package androidx.datastore.core;

import defpackage.bd2;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2$1$1", f = "DataMigrationInitializer.kt", l = {45}, m = "invokeSuspend")
public final class DataMigrationInitializer$Companion$runMigrations$2$1$1 extends pg8 implements nl3<e02<? super j59>, Object> {
    final /* synthetic */ DataMigration<T> $migration;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataMigrationInitializer$Companion$runMigrations$2$1$1(DataMigration<T> dataMigration, e02<? super DataMigrationInitializer$Companion$runMigrations$2$1$1> e02Var) {
        super(1, e02Var);
        this.$migration = dataMigration;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(e02<?> e02Var) {
        return new DataMigrationInitializer$Companion$runMigrations$2$1$1(this.$migration, e02Var);
    }

    @Override // defpackage.nl3
    public final Object invoke(e02<? super j59> e02Var) {
        return ((DataMigrationInitializer$Companion$runMigrations$2$1$1) create(e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type e02 to androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2$1$1 for r3v3 'this'  e02
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
            goto L22
        Ld:
            java.lang.String r3 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r3)
            r3 = 0
            return r3
        L14:
            defpackage.r57.b(r4)
            androidx.datastore.core.DataMigration<T> r4 = r3.$migration
            r3.label = r2
            java.lang.Object r3 = r4.cleanUp(r3)
            if (r3 != r0) goto L22
            return r0
        L22:
            j59 r3 = defpackage.j59.a
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
