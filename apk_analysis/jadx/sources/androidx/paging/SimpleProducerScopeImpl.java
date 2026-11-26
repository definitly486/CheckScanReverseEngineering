package androidx.paging;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.c31;
import defpackage.e02;
import defpackage.f02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.nl3;
import defpackage.no7;
import defpackage.o22;
import defpackage.r57;
import defpackage.ul2;
import defpackage.xl7;
import defpackage.y22;
import defpackage.zya;

/* JADX INFO: loaded from: classes3.dex */
public final class SimpleProducerScopeImpl<T> implements SimpleProducerScope<T>, y22, no7<T> {
    private final /* synthetic */ y22 $$delegate_0;
    private final no7<T> channel;

    /* JADX INFO: renamed from: androidx.paging.SimpleProducerScopeImpl$awaitClose$1, reason: invalid class name */
    @bd2(c = "androidx.paging.SimpleProducerScopeImpl", f = "SimpleChannelFlow.kt", l = {96}, m = "awaitClose", v = 1)
    public static final class AnonymousClass1 extends f02 {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ SimpleProducerScopeImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(SimpleProducerScopeImpl<T> simpleProducerScopeImpl, e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
            this.this$0 = simpleProducerScopeImpl;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.awaitClose(null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SimpleProducerScopeImpl(y22 y22Var, no7<? super T> no7Var) {
        y22Var.getClass();
        no7Var.getClass();
        this.$$delegate_0 = y22Var;
        this.channel = no7Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.paging.SimpleProducerScope
    public Object awaitClose(ll3<j59> ll3Var, e02<? super j59> e02Var) {
        AnonymousClass1 anonymousClass1;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(this, e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(this, e02Var);
        }
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        try {
            if (i2 == 0) {
                r57.b(obj);
                o22.a aVar = getCoroutineContext().get(mb4.a.b);
                if (aVar == null) {
                    throw new IllegalStateException("Internal error, context should have a job.");
                }
                mb4 mb4Var = (mb4) aVar;
                anonymousClass1.L$0 = ll3Var;
                anonymousClass1.L$1 = mb4Var;
                anonymousClass1.label = 1;
                final c31 c31Var = new c31(1, zya.b(anonymousClass1));
                c31Var.u();
                mb4Var.g(new nl3<Throwable, j59>() { // from class: androidx.paging.SimpleProducerScopeImpl$awaitClose$2$1
                    @Override // defpackage.nl3
                    public /* bridge */ /* synthetic */ j59 invoke(Throwable th) {
                        invoke2(th);
                        return j59.a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Throwable th) {
                        c31Var.resumeWith(j59.a);
                    }
                });
                if (c31Var.s() == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ll3Var = (ll3) anonymousClass1.L$0;
                r57.b(obj);
            }
            ll3Var.invoke();
            return j59.a;
        } catch (Throwable th) {
            ll3Var.invoke();
            throw th;
        }
    }

    @Override // androidx.paging.SimpleProducerScope, defpackage.no7
    public boolean close(Throwable th) {
        return this.channel.close(th);
    }

    @Override // androidx.paging.SimpleProducerScope
    public no7<T> getChannel() {
        return this.channel;
    }

    @Override // androidx.paging.SimpleProducerScope, defpackage.y22
    public o22 getCoroutineContext() {
        return this.$$delegate_0.getCoroutineContext();
    }

    @Override // androidx.paging.SimpleProducerScope, defpackage.no7
    public xl7<T, no7<T>> getOnSend() {
        return this.channel.getOnSend();
    }

    @Override // androidx.paging.SimpleProducerScope, defpackage.no7
    public void invokeOnClose(nl3<? super Throwable, j59> nl3Var) {
        nl3Var.getClass();
        this.channel.invokeOnClose(nl3Var);
    }

    @Override // androidx.paging.SimpleProducerScope, defpackage.no7
    public boolean isClosedForSend() {
        return this.channel.isClosedForSend();
    }

    @Override // androidx.paging.SimpleProducerScope, defpackage.no7
    @ul2
    public boolean offer(T t) {
        return this.channel.offer(t);
    }

    @Override // androidx.paging.SimpleProducerScope, defpackage.no7
    public Object send(T t, e02<? super j59> e02Var) {
        return this.channel.send(t, e02Var);
    }

    @Override // androidx.paging.SimpleProducerScope, defpackage.no7
    /* JADX INFO: renamed from: trySend-JP2dKIU */
    public Object mo0trySendJP2dKIU(T t) {
        return this.channel.mo0trySendJP2dKIU(t);
    }
}
