package androidx.work;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.y22;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.work.ListenableFutureKt$launchFuture$1$2", f = "ListenableFuture.kt", l = {42}, m = "invokeSuspend")
public final class ListenableFutureKt$launchFuture$1$2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ bm3<y22, e02<? super T>, Object> $block;
    final /* synthetic */ CallbackToFutureAdapter.Completer<T> $completer;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ListenableFutureKt$launchFuture$1$2(bm3<? super y22, ? super e02<? super T>, ? extends Object> bm3Var, CallbackToFutureAdapter.Completer<T> completer, e02<? super ListenableFutureKt$launchFuture$1$2> e02Var) {
        super(2, e02Var);
        this.$block = bm3Var;
        this.$completer = completer;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        ListenableFutureKt$launchFuture$1$2 listenableFutureKt$launchFuture$1$2 = new ListenableFutureKt$launchFuture$1$2(this.$block, this.$completer, e02Var);
        listenableFutureKt$launchFuture$1$2.L$0 = obj;
        return listenableFutureKt$launchFuture$1$2;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((ListenableFutureKt$launchFuture$1$2) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to androidx.work.ListenableFutureKt$launchFuture$1$2 for r3v4 'this'  java.lang.Object
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
            if (r1 == 0) goto L16
            if (r1 != r2) goto Lf
            defpackage.r57.b(r4)     // Catch: java.lang.Throwable -> Ld java.util.concurrent.CancellationException -> L34
            goto L28
        Ld:
            r4 = move-exception
            goto L2e
        Lf:
            java.lang.String r3 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r3)
            r3 = 0
            return r3
        L16:
            defpackage.r57.b(r4)
            java.lang.Object r4 = r3.L$0
            y22 r4 = (defpackage.y22) r4
            bm3<y22, e02<? super T>, java.lang.Object> r1 = r3.$block     // Catch: java.lang.Throwable -> Ld java.util.concurrent.CancellationException -> L34
            r3.label = r2     // Catch: java.lang.Throwable -> Ld java.util.concurrent.CancellationException -> L34
            java.lang.Object r4 = r1.invoke(r4, r3)     // Catch: java.lang.Throwable -> Ld java.util.concurrent.CancellationException -> L34
            if (r4 != r0) goto L28
            return r0
        L28:
            androidx.concurrent.futures.CallbackToFutureAdapter$Completer<T> r0 = r3.$completer     // Catch: java.lang.Throwable -> Ld java.util.concurrent.CancellationException -> L34
            r0.set(r4)     // Catch: java.lang.Throwable -> Ld java.util.concurrent.CancellationException -> L34
            goto L39
        L2e:
            androidx.concurrent.futures.CallbackToFutureAdapter$Completer<T> r3 = r3.$completer
            r3.setException(r4)
            goto L39
        L34:
            androidx.concurrent.futures.CallbackToFutureAdapter$Completer<T> r3 = r3.$completer
            r3.setCancelled()
        L39:
            j59 r3 = defpackage.j59.a
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.ListenableFutureKt$launchFuture$1$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
