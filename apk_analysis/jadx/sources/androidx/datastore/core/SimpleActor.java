package androidx.datastore.core;

import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.gh4;
import defpackage.j59;
import defpackage.l91;
import defpackage.mb4;
import defpackage.nl3;
import defpackage.p91;
import defpackage.pg8;
import defpackage.x81;
import defpackage.y22;
import kotlinx.coroutines.channels.ClosedSendChannelException;

/* JADX INFO: loaded from: classes2.dex */
public final class SimpleActor<T> {
    private final bm3<T, e02<? super j59>, Object> consumeMessage;
    private final x81<T> messageQueue;
    private final AtomicInt remainingMessages;
    private final y22 scope;

    /* JADX INFO: renamed from: androidx.datastore.core.SimpleActor$offer$2, reason: invalid class name */
    @bd2(c = "androidx.datastore.core.SimpleActor$offer$2", f = "SimpleActor.kt", l = {121, 121}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        Object L$0;
        int label;
        final /* synthetic */ SimpleActor<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(SimpleActor<T> simpleActor, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.this$0 = simpleActor;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass2(this.this$0, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:16:0x004e A[PHI: r1 r6
          0x004e: PHI (r1v1 bm3) = (r1v2 bm3), (r1v4 bm3) binds: [B:14:0x004b, B:10:0x0017] A[DONT_GENERATE, DONT_INLINE]
          0x004e: PHI (r6v4 java.lang.Object) = (r6v11 java.lang.Object), (r6v0 java.lang.Object) binds: [B:14:0x004b, B:10:0x0017] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0057, code lost:
        
            if (r1.invoke(r6, r5) == r0) goto L18;
         */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0057 -> B:19:0x005a). Please report as a decompilation issue!!! */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r5.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1f
                if (r1 == r3) goto L17
                if (r1 != r2) goto L10
                defpackage.r57.b(r6)
                goto L5a
            L10:
                java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r5)
            L15:
                r5 = 0
                return r5
            L17:
                java.lang.Object r1 = r5.L$0
                bm3 r1 = (defpackage.bm3) r1
                defpackage.r57.b(r6)
                goto L4e
            L1f:
                defpackage.r57.b(r6)
                androidx.datastore.core.SimpleActor<T> r6 = r5.this$0
                androidx.datastore.core.AtomicInt r6 = androidx.datastore.core.SimpleActor.access$getRemainingMessages$p(r6)
                int r6 = r6.get()
                if (r6 <= 0) goto L69
            L2e:
                androidx.datastore.core.SimpleActor<T> r6 = r5.this$0
                y22 r6 = androidx.datastore.core.SimpleActor.access$getScope$p(r6)
                defpackage.z22.d(r6)
                androidx.datastore.core.SimpleActor<T> r6 = r5.this$0
                bm3 r1 = androidx.datastore.core.SimpleActor.access$getConsumeMessage$p(r6)
                androidx.datastore.core.SimpleActor<T> r6 = r5.this$0
                x81 r6 = androidx.datastore.core.SimpleActor.access$getMessageQueue$p(r6)
                r5.L$0 = r1
                r5.label = r3
                java.lang.Object r6 = r6.b(r5)
                if (r6 != r0) goto L4e
                goto L59
            L4e:
                r4 = 0
                r5.L$0 = r4
                r5.label = r2
                java.lang.Object r6 = r1.invoke(r6, r5)
                if (r6 != r0) goto L5a
            L59:
                return r0
            L5a:
                androidx.datastore.core.SimpleActor<T> r6 = r5.this$0
                androidx.datastore.core.AtomicInt r6 = androidx.datastore.core.SimpleActor.access$getRemainingMessages$p(r6)
                int r6 = r6.decrementAndGet()
                if (r6 != 0) goto L2e
                j59 r5 = defpackage.j59.a
                return r5
            L69:
                java.lang.String r5 = "Check failed."
                defpackage.ah.f(r5)
                goto L15
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SimpleActor.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SimpleActor(y22 y22Var, nl3<? super Throwable, j59> nl3Var, bm3<? super T, ? super Throwable, j59> bm3Var, bm3<? super T, ? super e02<? super j59>, ? extends Object> bm3Var2) {
        y22Var.getClass();
        nl3Var.getClass();
        bm3Var.getClass();
        bm3Var2.getClass();
        this.scope = y22Var;
        this.consumeMessage = bm3Var2;
        this.messageQueue = l91.a(Integer.MAX_VALUE, null, null, 6);
        this.remainingMessages = new AtomicInt(0);
        mb4 mb4Var = (mb4) y22Var.getCoroutineContext().get(mb4.a.b);
        if (mb4Var != null) {
            mb4Var.g(new AnonymousClass1(nl3Var, this, bm3Var));
        }
    }

    public final void offer(T t) {
        Object objMo0trySendJP2dKIU = this.messageQueue.mo0trySendJP2dKIU(t);
        if (objMo0trySendJP2dKIU instanceof p91.a) {
            Throwable thA = p91.a(objMo0trySendJP2dKIU);
            if (thA != null) {
                throw thA;
            }
            throw new ClosedSendChannelException("Channel was closed normally");
        }
        if (objMo0trySendJP2dKIU instanceof p91.b) {
            ah.f("Check failed.");
        } else if (this.remainingMessages.getAndIncrement() == 0) {
            av0.c(this.scope, null, null, new AnonymousClass2(this, null), 3);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.SimpleActor$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<Throwable, j59> {
        final /* synthetic */ nl3<Throwable, j59> $onComplete;
        final /* synthetic */ bm3<T, Throwable, j59> $onUndeliveredElement;
        final /* synthetic */ SimpleActor<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(nl3<? super Throwable, j59> nl3Var, SimpleActor<T> simpleActor, bm3<? super T, ? super Throwable, j59> bm3Var) {
            super(1);
            this.$onComplete = nl3Var;
            this.this$0 = simpleActor;
            this.$onUndeliveredElement = bm3Var;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Throwable th) {
            j59 j59Var;
            this.$onComplete.invoke(th);
            ((SimpleActor) this.this$0).messageQueue.close(th);
            do {
                Object objB = p91.b(((SimpleActor) this.this$0).messageQueue.i());
                if (objB != null) {
                    this.$onUndeliveredElement.invoke((T) objB, th);
                    j59Var = j59.a;
                } else {
                    j59Var = null;
                }
            } while (j59Var != null);
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(Throwable th) {
            invoke2(th);
            return j59.a;
        }
    }
}
