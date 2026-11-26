package androidx.camera.camera2.pipe.compat;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;
import defpackage.g03;
import defpackage.h03;
import defpackage.j59;
import defpackage.kt;
import defpackage.ot;
import defpackage.r57;
import defpackage.yg5;

/* JADX INFO: loaded from: classes.dex */
public final class SessionSequencer {
    private final ConcurrentSessionSequencer concurrentSequencer;
    private final ot<State> state;

    public enum State {
        PENDING,
        CREATING,
        CREATED;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<State> getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.SessionSequencer$awaitSessionLock$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.compat.SessionSequencer", f = "ConcurrentSessionSequencers.kt", l = {98}, m = "awaitSessionLock", v = 1)
    public static final class AnonymousClass1 extends f02 {
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SessionSequencer.this.awaitSessionLock(this);
        }
    }

    public SessionSequencer(ConcurrentSessionSequencer concurrentSessionSequencer) {
        concurrentSessionSequencer.getClass();
        this.concurrentSequencer = concurrentSessionSequencer;
        this.state = kt.d(State.PENDING);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object awaitSessionLock(e02<? super j59> e02Var) {
        AnonymousClass1 anonymousClass1;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(obj);
            yg5 sharedMutex = this.concurrentSequencer.getSharedMutex();
            anonymousClass1.label = 1;
            if (sharedMutex.lock(null, anonymousClass1) == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        if (!this.state.a(State.PENDING, State.CREATING)) {
            this.concurrentSequencer.getSharedMutex().unlock(null);
        }
        return j59.a;
    }

    public final void release() {
        if (this.state.b(State.CREATED) == State.CREATING) {
            this.concurrentSequencer.getSharedMutex().unlock(null);
        }
    }
}
