package androidx.compose.foundation;

import androidx.tracing.Trace;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.ch5;
import defpackage.e02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.nl3;
import defpackage.o22;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.yg5;
import defpackage.z22;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class MutatorMutex {
    public static final int $stable = 0;
    private final AtomicReference<Mutator> currentMutator = new AtomicReference<>(null);
    private final yg5 mutex = new ch5();

    public static final class Mutator {
        private final mb4 job;
        private final MutatePriority priority;

        public Mutator(MutatePriority mutatePriority, mb4 mb4Var) {
            this.priority = mutatePriority;
            this.job = mb4Var;
        }

        public final boolean canInterrupt(Mutator mutator) {
            return this.priority.compareTo(mutator.priority) >= 0;
        }

        public final void cancel() {
            this.job.cancel(new MutationInterruptedException());
        }

        public final mb4 getJob() {
            return this.job;
        }

        public final MutatePriority getPriority() {
            return this.priority;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.compose.foundation.MutatorMutex$mutate$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.MutatorMutex$mutate$2", f = "MutatorMutex.kt", l = {212, Trace.MAX_TRACE_LABEL_LENGTH}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2<R> extends pg8 implements bm3<y22, e02<? super R>, Object> {
        final /* synthetic */ nl3<e02<? super R>, Object> $block;
        final /* synthetic */ MutatePriority $priority;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        final /* synthetic */ MutatorMutex this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(MutatePriority mutatePriority, MutatorMutex mutatorMutex, nl3<? super e02<? super R>, ? extends Object> nl3Var, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$priority = mutatePriority;
            this.this$0 = mutatorMutex;
            this.$block = nl3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$priority, this.this$0, this.$block, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super R> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [int, yg5] */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            Mutator mutator;
            yg5 yg5Var;
            MutatorMutex mutatorMutex;
            nl3<e02<? super R>, Object> nl3Var;
            Throwable th;
            Mutator mutator2;
            MutatorMutex mutatorMutex2;
            yg5 yg5Var2;
            AtomicReference atomicReference;
            AtomicReference atomicReference2;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            ?? r1 = this.label;
            try {
                try {
                    if (r1 == 0) {
                        r57.b(obj);
                        y22 y22Var = (y22) this.L$0;
                        MutatePriority mutatePriority = this.$priority;
                        o22.a aVar = y22Var.getCoroutineContext().get(mb4.a.b);
                        aVar.getClass();
                        mutator = new Mutator(mutatePriority, (mb4) aVar);
                        this.this$0.tryMutateOrCancel(mutator);
                        yg5Var = this.this$0.mutex;
                        nl3<e02<? super R>, Object> nl3Var2 = this.$block;
                        mutatorMutex = this.this$0;
                        this.L$0 = mutator;
                        this.L$1 = yg5Var;
                        this.L$2 = nl3Var2;
                        this.L$3 = mutatorMutex;
                        this.label = 1;
                        if (yg5Var.lock(null, this) != a32Var) {
                            nl3Var = nl3Var2;
                        }
                        return a32Var;
                    }
                    if (r1 != 1) {
                        if (r1 != 2) {
                            ah.f("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        mutatorMutex2 = (MutatorMutex) this.L$2;
                        yg5Var2 = (yg5) this.L$1;
                        mutator2 = (Mutator) this.L$0;
                        try {
                            r57.b(obj);
                            atomicReference2 = mutatorMutex2.currentMutator;
                            while (!atomicReference2.compareAndSet(mutator2, null) && atomicReference2.get() == mutator2) {
                            }
                            yg5Var2.unlock(null);
                            return obj;
                        } catch (Throwable th2) {
                            th = th2;
                            atomicReference = mutatorMutex2.currentMutator;
                            while (!atomicReference.compareAndSet(mutator2, null)) {
                            }
                            throw th;
                        }
                    }
                    MutatorMutex mutatorMutex3 = (MutatorMutex) this.L$3;
                    nl3Var = (nl3) this.L$2;
                    yg5 yg5Var3 = (yg5) this.L$1;
                    Mutator mutator3 = (Mutator) this.L$0;
                    r57.b(obj);
                    mutatorMutex = mutatorMutex3;
                    mutator = mutator3;
                    yg5Var = yg5Var3;
                    this.L$0 = mutator;
                    this.L$1 = yg5Var;
                    this.L$2 = mutatorMutex;
                    this.L$3 = null;
                    this.label = 2;
                    Object objInvoke = nl3Var.invoke(this);
                    if (objInvoke != a32Var) {
                        yg5 yg5Var4 = yg5Var;
                        obj = objInvoke;
                        mutator2 = mutator;
                        yg5Var2 = yg5Var4;
                        mutatorMutex2 = mutatorMutex;
                        atomicReference2 = mutatorMutex2.currentMutator;
                        while (!atomicReference2.compareAndSet(mutator2, null)) {
                        }
                        yg5Var2.unlock(null);
                        return obj;
                    }
                    return a32Var;
                } catch (Throwable th3) {
                    th = th3;
                    mutator2 = mutator;
                    mutatorMutex2 = mutatorMutex;
                    atomicReference = mutatorMutex2.currentMutator;
                    while (!atomicReference.compareAndSet(mutator2, null) && atomicReference.get() == mutator2) {
                    }
                    throw th;
                }
            } catch (Throwable th4) {
                r1.unlock(null);
                throw th4;
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.compose.foundation.MutatorMutex$mutateWith$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.MutatorMutex$mutateWith$2", f = "MutatorMutex.kt", l = {212, 167}, m = "invokeSuspend", v = 1)
    public static final class C04762<R> extends pg8 implements bm3<y22, e02<? super R>, Object> {
        final /* synthetic */ bm3<T, e02<? super R>, Object> $block;
        final /* synthetic */ MutatePriority $priority;
        final /* synthetic */ T $receiver;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        final /* synthetic */ MutatorMutex this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04762(MutatePriority mutatePriority, MutatorMutex mutatorMutex, bm3<? super T, ? super e02<? super R>, ? extends Object> bm3Var, T t, e02<? super C04762> e02Var) {
            super(2, e02Var);
            this.$priority = mutatePriority;
            this.this$0 = mutatorMutex;
            this.$block = bm3Var;
            this.$receiver = t;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C04762 c04762 = new C04762(this.$priority, this.this$0, this.$block, this.$receiver, e02Var);
            c04762.L$0 = obj;
            return c04762;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super R> e02Var) {
            return ((C04762) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [int, yg5] */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            Mutator mutator;
            yg5 yg5Var;
            bm3 bm3Var;
            MutatorMutex mutatorMutex;
            Object obj2;
            Throwable th;
            Mutator mutator2;
            MutatorMutex mutatorMutex2;
            yg5 yg5Var2;
            AtomicReference atomicReference;
            AtomicReference atomicReference2;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            ?? r1 = this.label;
            try {
                try {
                    if (r1 == 0) {
                        r57.b(obj);
                        y22 y22Var = (y22) this.L$0;
                        MutatePriority mutatePriority = this.$priority;
                        o22.a aVar = y22Var.getCoroutineContext().get(mb4.a.b);
                        aVar.getClass();
                        mutator = new Mutator(mutatePriority, (mb4) aVar);
                        this.this$0.tryMutateOrCancel(mutator);
                        yg5Var = this.this$0.mutex;
                        bm3Var = this.$block;
                        Object obj3 = this.$receiver;
                        mutatorMutex = this.this$0;
                        this.L$0 = mutator;
                        this.L$1 = yg5Var;
                        this.L$2 = bm3Var;
                        this.L$3 = obj3;
                        this.L$4 = mutatorMutex;
                        this.label = 1;
                        if (yg5Var.lock(null, this) != a32Var) {
                            obj2 = obj3;
                        }
                        return a32Var;
                    }
                    if (r1 != 1) {
                        if (r1 != 2) {
                            ah.f("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        mutatorMutex2 = (MutatorMutex) this.L$2;
                        yg5Var2 = (yg5) this.L$1;
                        mutator2 = (Mutator) this.L$0;
                        try {
                            r57.b(obj);
                            atomicReference2 = mutatorMutex2.currentMutator;
                            while (!atomicReference2.compareAndSet(mutator2, null) && atomicReference2.get() == mutator2) {
                            }
                            yg5Var2.unlock(null);
                            return obj;
                        } catch (Throwable th2) {
                            th = th2;
                            atomicReference = mutatorMutex2.currentMutator;
                            while (!atomicReference.compareAndSet(mutator2, null)) {
                            }
                            throw th;
                        }
                    }
                    MutatorMutex mutatorMutex3 = (MutatorMutex) this.L$4;
                    obj2 = this.L$3;
                    bm3Var = (bm3) this.L$2;
                    yg5 yg5Var3 = (yg5) this.L$1;
                    Mutator mutator3 = (Mutator) this.L$0;
                    r57.b(obj);
                    mutatorMutex = mutatorMutex3;
                    mutator = mutator3;
                    yg5Var = yg5Var3;
                    this.L$0 = mutator;
                    this.L$1 = yg5Var;
                    this.L$2 = mutatorMutex;
                    this.L$3 = null;
                    this.L$4 = null;
                    this.label = 2;
                    Object objInvoke = bm3Var.invoke(obj2, this);
                    if (objInvoke != a32Var) {
                        yg5 yg5Var4 = yg5Var;
                        obj = objInvoke;
                        mutator2 = mutator;
                        yg5Var2 = yg5Var4;
                        mutatorMutex2 = mutatorMutex;
                        atomicReference2 = mutatorMutex2.currentMutator;
                        while (!atomicReference2.compareAndSet(mutator2, null)) {
                        }
                        yg5Var2.unlock(null);
                        return obj;
                    }
                    return a32Var;
                } catch (Throwable th3) {
                    th = th3;
                    mutator2 = mutator;
                    mutatorMutex2 = mutatorMutex;
                    atomicReference = mutatorMutex2.currentMutator;
                    while (!atomicReference.compareAndSet(mutator2, null) && atomicReference.get() == mutator2) {
                    }
                    throw th;
                }
            } catch (Throwable th4) {
                r1.unlock(null);
                throw th4;
            }
        }
    }

    public static /* synthetic */ Object mutate$default(MutatorMutex mutatorMutex, MutatePriority mutatePriority, nl3 nl3Var, e02 e02Var, int i, Object obj) {
        if ((i & 1) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return mutatorMutex.mutate(mutatePriority, nl3Var, e02Var);
    }

    public static /* synthetic */ Object mutateWith$default(MutatorMutex mutatorMutex, Object obj, MutatePriority mutatePriority, bm3 bm3Var, e02 e02Var, int i, Object obj2) {
        if ((i & 2) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return mutatorMutex.mutateWith(obj, mutatePriority, bm3Var, e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void tryMutateOrCancel(Mutator mutator) {
        while (true) {
            Mutator mutator2 = this.currentMutator.get();
            if (mutator2 != null && !mutator.canInterrupt(mutator2)) {
                throw new CancellationException("Current mutation had a higher priority");
            }
            AtomicReference<Mutator> atomicReference = this.currentMutator;
            do {
                if (atomicReference.compareAndSet(mutator2, mutator)) {
                    if (mutator2 != null) {
                        mutator2.cancel();
                        return;
                    }
                    return;
                }
            } while (atomicReference.get() == mutator2);
        }
    }

    public final <R> Object mutate(MutatePriority mutatePriority, nl3<? super e02<? super R>, ? extends Object> nl3Var, e02<? super R> e02Var) {
        return z22.c(new AnonymousClass2(mutatePriority, this, nl3Var, null), e02Var);
    }

    public final <T, R> Object mutateWith(T t, MutatePriority mutatePriority, bm3<? super T, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super R> e02Var) {
        return z22.c(new C04762(mutatePriority, this, bm3Var, t, null), e02Var);
    }

    public final boolean tryLock() {
        return this.mutex.tryLock(null);
    }

    public final boolean tryMutate(ll3<j59> ll3Var) {
        boolean zTryLock = tryLock();
        if (!zTryLock) {
            return zTryLock;
        }
        try {
            ll3Var.invoke();
            return zTryLock;
        } finally {
            unlock();
        }
    }

    public final void unlock() {
        this.mutex.unlock(null);
    }
}
