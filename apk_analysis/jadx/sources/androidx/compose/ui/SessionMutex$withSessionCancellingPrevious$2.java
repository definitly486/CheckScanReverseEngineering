package androidx.compose.ui;

import androidx.compose.ui.spatial.RectListKt;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.y22;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.ui.SessionMutex$withSessionCancellingPrevious$2", f = "SessionMutex.kt", l = {RectListKt.BitOffsetForFocusable, 63}, m = "invokeSuspend", v = 1)
public final class SessionMutex$withSessionCancellingPrevious$2<R> extends pg8 implements bm3<y22, e02<? super R>, Object> {
    final /* synthetic */ AtomicReference<SessionMutex.Session<T>> $arg0;
    final /* synthetic */ bm3<T, e02<? super R>, Object> $session;
    final /* synthetic */ nl3<y22, T> $sessionInitializer;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SessionMutex$withSessionCancellingPrevious$2(nl3<? super y22, ? extends T> nl3Var, AtomicReference<SessionMutex.Session<T>> atomicReference, bm3<? super T, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super SessionMutex$withSessionCancellingPrevious$2> e02Var) {
        super(2, e02Var);
        this.$sessionInitializer = nl3Var;
        this.$arg0 = atomicReference;
        this.$session = bm3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        SessionMutex$withSessionCancellingPrevious$2 sessionMutex$withSessionCancellingPrevious$2 = new SessionMutex$withSessionCancellingPrevious$2(this.$sessionInitializer, this.$arg0, this.$session, e02Var);
        sessionMutex$withSessionCancellingPrevious$2.L$0 = obj;
        return sessionMutex$withSessionCancellingPrevious$2;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super R> e02Var) {
        return ((SessionMutex$withSessionCancellingPrevious$2) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to androidx.compose.ui.SessionMutex$withSessionCancellingPrevious$2<R> for r7v4 'this'  java.lang.Object
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r7.label
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L25
            if (r1 == r4) goto L1d
            if (r1 != r3) goto L17
            java.lang.Object r0 = r7.L$0
            androidx.compose.ui.SessionMutex$Session r0 = (androidx.compose.ui.SessionMutex.Session) r0
            defpackage.r57.b(r8)     // Catch: java.lang.Throwable -> L15
            goto L6c
        L15:
            r8 = move-exception
            goto L7e
        L17:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            return r2
        L1d:
            java.lang.Object r1 = r7.L$0
            androidx.compose.ui.SessionMutex$Session r1 = (androidx.compose.ui.SessionMutex.Session) r1
            defpackage.r57.b(r8)
            goto L5a
        L25:
            defpackage.r57.b(r8)
            java.lang.Object r8 = r7.L$0
            y22 r8 = (defpackage.y22) r8
            androidx.compose.ui.SessionMutex$Session r1 = new androidx.compose.ui.SessionMutex$Session
            o22 r5 = r8.getCoroutineContext()
            mb4 r5 = defpackage.qb4.f(r5)
            nl3<y22, T> r6 = r7.$sessionInitializer
            java.lang.Object r8 = r6.invoke(r8)
            r1.<init>(r5, r8)
            java.util.concurrent.atomic.AtomicReference<androidx.compose.ui.SessionMutex$Session<T>> r8 = r7.$arg0
            java.lang.Object r8 = r8.getAndSet(r1)
            androidx.compose.ui.SessionMutex$Session r8 = (androidx.compose.ui.SessionMutex.Session) r8
            if (r8 == 0) goto L5a
            mb4 r8 = r8.getJob()
            if (r8 == 0) goto L5a
            r7.L$0 = r1
            r7.label = r4
            java.lang.Object r8 = defpackage.qb4.c(r8, r7)
            if (r8 != r0) goto L5a
            goto L6a
        L5a:
            bm3<T, e02<? super R>, java.lang.Object> r8 = r7.$session     // Catch: java.lang.Throwable -> L7c
            java.lang.Object r4 = r1.getValue()     // Catch: java.lang.Throwable -> L7c
            r7.L$0 = r1     // Catch: java.lang.Throwable -> L7c
            r7.label = r3     // Catch: java.lang.Throwable -> L7c
            java.lang.Object r8 = r8.invoke(r4, r7)     // Catch: java.lang.Throwable -> L7c
            if (r8 != r0) goto L6b
        L6a:
            return r0
        L6b:
            r0 = r1
        L6c:
            java.util.concurrent.atomic.AtomicReference<androidx.compose.ui.SessionMutex$Session<T>> r3 = r7.$arg0
        L6e:
            boolean r7 = r3.compareAndSet(r0, r2)
            if (r7 == 0) goto L75
            goto L7b
        L75:
            java.lang.Object r7 = r3.get()
            if (r7 == r0) goto L6e
        L7b:
            return r8
        L7c:
            r8 = move-exception
            r0 = r1
        L7e:
            java.util.concurrent.atomic.AtomicReference<androidx.compose.ui.SessionMutex$Session<T>> r7 = r7.$arg0
        L80:
            boolean r1 = r7.compareAndSet(r0, r2)
            if (r1 != 0) goto L8d
            java.lang.Object r1 = r7.get()
            if (r1 != r0) goto L8d
            goto L80
        L8d:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.SessionMutex$withSessionCancellingPrevious$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
