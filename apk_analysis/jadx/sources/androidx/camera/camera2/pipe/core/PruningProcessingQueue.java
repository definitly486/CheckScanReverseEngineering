package androidx.camera.camera2.pipe.core;

import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.ay;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.en4;
import defpackage.fr;
import defpackage.ht;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kt;
import defpackage.l91;
import defpackage.nl3;
import defpackage.p91;
import defpackage.pg8;
import defpackage.qn1;
import defpackage.rm9;
import defpackage.us2;
import defpackage.vh;
import defpackage.x81;
import defpackage.y22;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class PruningProcessingQueue<T> {
    public static final Companion Companion = new Companion(null);
    private final int capacity;
    private final x81<T> channel;
    private final nl3<List<? extends T>, j59> onUnprocessedElements;
    private final bm3<T, e02<? super j59>, Object> process;
    private final nl3<List<T>, j59> prune;
    private final fr<T> queue;
    private final ht started;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.PruningProcessingQueue$processingLoop$2, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.core.PruningProcessingQueue$processingLoop$2", f = "PruningProcessingQueue.kt", l = {218}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02, Object> {
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;
        final /* synthetic */ PruningProcessingQueue<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(PruningProcessingQueue<T> pruningProcessingQueue, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.this$0 = pruningProcessingQueue;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02 e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:15:0x0034 A[Catch: all -> 0x0018, CancellationException -> 0x00d6, TRY_ENTER, TryCatch #2 {CancellationException -> 0x00d6, all -> 0x0018, blocks: (B:6:0x0014, B:15:0x0034, B:17:0x0055, B:18:0x0061), top: B:43:0x0014 }] */
        /* JADX WARN: Code duplicated, block: B:17:0x0055 A[Catch: all -> 0x0018, CancellationException -> 0x00d6, TryCatch #2 {CancellationException -> 0x00d6, all -> 0x0018, blocks: (B:6:0x0014, B:15:0x0034, B:17:0x0055, B:18:0x0061), top: B:43:0x0014 }] */
        /* JADX WARN: Code duplicated, block: B:20:0x006d A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:23:0x007a  */
        /* JADX WARN: Type inference failed for: r6v2, types: [T, nk2, sb4] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x006b -> B:21:0x006e). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r10) {
            /*
                Method dump skipped, instruction units count: 237
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.core.PruningProcessingQueue.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PruningProcessingQueue(int i, nl3<? super List<T>, j59> nl3Var, nl3<? super List<? extends T>, j59> nl3Var2, bm3<? super T, ? super e02<? super j59>, ? extends Object> bm3Var) {
        nl3Var.getClass();
        nl3Var2.getClass();
        bm3Var.getClass();
        this.capacity = i;
        this.prune = nl3Var;
        this.onUnprocessedElements = nl3Var2;
        this.process = bm3Var;
        this.started = kt.a(false);
        this.channel = l91.a(i, null, new en4(this, 1), 2);
        this.queue = new fr<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _init_$lambda$0(List list) {
        list.getClass();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _init_$lambda$1(List list) {
        list.getClass();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 channel$lambda$0(PruningProcessingQueue pruningProcessingQueue, Object obj) {
        pruningProcessingQueue.queue.addLast(obj);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void closeAndReleaseUnprocessedElements(Throwable th) {
        fr<T> frVar;
        if (this.channel.close(th)) {
            Object objI = this.channel.i();
            while (true) {
                boolean z = objI instanceof p91.b;
                frVar = this.queue;
                if (z) {
                    break;
                }
                p91.c(objI);
                frVar.addLast((T) objI);
                objI = this.channel.i();
            }
            if (frVar.isEmpty()) {
                return;
            }
            this.onUnprocessedElements.invoke(qn1.v0(this.queue));
            this.queue.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object processingLoop(e02 e02Var) {
        return rm9.c(new AnonymousClass2(this, null), e02Var);
    }

    public final Object emit(T t, e02<? super j59> e02Var) {
        Object objSend = this.channel.send(t, e02Var);
        return objSend == a32.COROUTINE_SUSPENDED ? objSend : j59.a;
    }

    public final void emitChecked(T t) {
        Object objMo0trySendJP2dKIU = this.channel.mo0trySendJP2dKIU(t);
        if (objMo0trySendJP2dKIU instanceof p91.b) {
            vh.e(p91.d(objMo0trySendJP2dKIU), "Failed to emit item to ProcessingQueue!: ");
        }
    }

    public final int getCapacity() {
        return this.capacity;
    }

    public final boolean tryEmit(T t) {
        return !(this.channel.mo0trySendJP2dKIU(t) instanceof p91.b);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final <T> PruningProcessingQueue<T> processIn(PruningProcessingQueue<T> pruningProcessingQueue, y22 y22Var) {
            pruningProcessingQueue.getClass();
            y22Var.getClass();
            if (!((PruningProcessingQueue) pruningProcessingQueue).started.a()) {
                ah.f("PruningProcessingQueue cannot be re-started!");
                return null;
            }
            if (av0.c(y22Var, null, null, new PruningProcessingQueue$Companion$processIn$job$1(pruningProcessingQueue, null), 3).isCancelled()) {
                pruningProcessingQueue.closeAndReleaseUnprocessedElements(null);
            }
            return pruningProcessingQueue;
        }

        private Companion() {
        }
    }

    public /* synthetic */ PruningProcessingQueue(int i, nl3 nl3Var, nl3 nl3Var2, bm3 bm3Var, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? Integer.MAX_VALUE : i, (i2 & 2) != 0 ? new ay(2) : nl3Var, (i2 & 4) != 0 ? new us2(4) : nl3Var2, bm3Var);
    }
}
