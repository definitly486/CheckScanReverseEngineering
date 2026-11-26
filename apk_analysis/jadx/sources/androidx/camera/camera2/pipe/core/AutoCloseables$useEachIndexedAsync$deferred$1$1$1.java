package androidx.camera.camera2.pipe.core;

import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.fm3;
import defpackage.j59;
import defpackage.pg8;
import defpackage.y22;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.core.AutoCloseables$useEachIndexedAsync$deferred$1$1$1", f = "AutoCloseables.kt", l = {107}, m = "invokeSuspend", v = 1)
public final class AutoCloseables$useEachIndexedAsync$deferred$1$1$1<R> extends pg8 implements bm3<y22, e02<? super R>, Object> {
    final /* synthetic */ fm3<y22, Integer, T, e02<? super R>, Object> $action;
    final /* synthetic */ int $i;

    /* JADX INFO: Incorrect field signature: TT; */
    final /* synthetic */ AutoCloseable $it;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Incorrect types in method signature: (Lfm3<-Ly22;-Ljava/lang/Integer;-TT;-Le02<-TR;>;+Ljava/lang/Object;>;ITT;Le02<-Landroidx/camera/camera2/pipe/core/AutoCloseables$useEachIndexedAsync$deferred$1$1$1;>;)V */
    public AutoCloseables$useEachIndexedAsync$deferred$1$1$1(fm3 fm3Var, int i, AutoCloseable autoCloseable, e02 e02Var) {
        super(2, e02Var);
        this.$action = fm3Var;
        this.$i = i;
        this.$it = autoCloseable;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        AutoCloseables$useEachIndexedAsync$deferred$1$1$1 autoCloseables$useEachIndexedAsync$deferred$1$1$1 = new AutoCloseables$useEachIndexedAsync$deferred$1$1$1(this.$action, this.$i, this.$it, e02Var);
        autoCloseables$useEachIndexedAsync$deferred$1$1$1.L$0 = obj;
        return autoCloseables$useEachIndexedAsync$deferred$1$1$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super R> e02Var) {
        return ((AutoCloseables$useEachIndexedAsync$deferred$1$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to androidx.camera.camera2.pipe.core.AutoCloseables$useEachIndexedAsync$deferred$1$1$1<R> for r5v2 'this'  java.lang.Object
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r5.label
            r2 = 1
            if (r1 == 0) goto L14
            if (r1 != r2) goto Ld
            defpackage.r57.b(r6)
            return r6
        Ld:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r5)
            r5 = 0
            return r5
        L14:
            defpackage.r57.b(r6)
            java.lang.Object r6 = r5.L$0
            y22 r6 = (defpackage.y22) r6
            fm3<y22, java.lang.Integer, T, e02<? super R>, java.lang.Object> r1 = r5.$action
            int r3 = r5.$i
            java.lang.Integer r4 = new java.lang.Integer
            r4.<init>(r3)
            java.lang.AutoCloseable r3 = r5.$it
            r5.label = r2
            java.lang.Object r5 = r1.invoke(r6, r4, r3, r5)
            if (r5 != r0) goto L2f
            return r0
        L2f:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.core.AutoCloseables$useEachIndexedAsync$deferred$1$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to androidx.camera.camera2.pipe.core.AutoCloseables$useEachIndexedAsync$deferred$1$1$1<R> for r3v2 'this'  java.lang.Object
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    public final java.lang.Object invokeSuspend$$forInline(java.lang.Object r4) {
        /*
            r3 = this;
            java.lang.Object r4 = r3.L$0
            y22 r4 = (defpackage.y22) r4
            fm3<y22, java.lang.Integer, T, e02<? super R>, java.lang.Object> r0 = r3.$action
            int r1 = r3.$i
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.AutoCloseable r2 = r3.$it
            java.lang.Object r3 = r0.invoke(r4, r1, r2, r3)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.core.AutoCloseables$useEachIndexedAsync$deferred$1$1$1.invokeSuspend$$forInline(java.lang.Object):java.lang.Object");
    }
}
