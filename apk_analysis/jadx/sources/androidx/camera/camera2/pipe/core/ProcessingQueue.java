package androidx.camera.camera2.pipe.core;

import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.fr;
import defpackage.ht;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kt;
import defpackage.l91;
import defpackage.nl3;
import defpackage.ny2;
import defpackage.p91;
import defpackage.qn1;
import defpackage.vh;
import defpackage.wu2;
import defpackage.x81;
import defpackage.y22;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ProcessingQueue<T> {
    public static final Companion Companion = new Companion(null);
    private final int capacity;
    private final x81<T> channel;
    private final nl3<List<? extends T>, j59> onUnprocessedElements;
    private final bm3<List<T>, e02<? super j59>, Object> process;
    private final fr<T> queue;
    private final ht started;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.ProcessingQueue$processingLoop$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.core.ProcessingQueue", f = "ProcessingQueue.kt", l = {102, 117}, m = "processingLoop", v = 1)
    public static final class AnonymousClass1 extends f02 {
        int I$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ ProcessingQueue<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ProcessingQueue<T> processingQueue, e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
            this.this$0 = processingQueue;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.processingLoop(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ProcessingQueue(int i, nl3<? super List<? extends T>, j59> nl3Var, bm3<? super List<T>, ? super e02<? super j59>, ? extends Object> bm3Var) {
        nl3Var.getClass();
        bm3Var.getClass();
        this.capacity = i;
        this.onUnprocessedElements = nl3Var;
        this.process = bm3Var;
        this.started = kt.a(false);
        this.channel = l91.a(i, null, new ny2(this, 2), 2);
        this.queue = new fr<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _init_$lambda$0(List list) {
        list.getClass();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 channel$lambda$0(ProcessingQueue processingQueue, Object obj) {
        processingQueue.queue.addLast(obj);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:32:0x0060 A[Catch: all -> 0x002c, LOOP:0: B:29:0x005a->B:32:0x0060, LOOP_END, TRY_ENTER, TryCatch #0 {all -> 0x002c, blocks: (B:13:0x0028, B:36:0x0080, B:26:0x004c, B:28:0x0054, B:29:0x005a, B:32:0x0060, B:33:0x006d, B:22:0x003c, B:25:0x0047, B:19:0x0035), top: B:41:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x006d A[EDGE_INSN: B:44:0x006d->B:33:0x006d BREAK  A[LOOP:0: B:29:0x005a->B:32:0x0060], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x007d -> B:36:0x0080). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:29:0x005a
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object processingLoop(defpackage.e02<? super defpackage.j59> r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof androidx.camera.camera2.pipe.core.ProcessingQueue.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.camera.camera2.pipe.core.ProcessingQueue$processingLoop$1 r0 = (androidx.camera.camera2.pipe.core.ProcessingQueue.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.camera.camera2.pipe.core.ProcessingQueue$processingLoop$1 r0 = new androidx.camera.camera2.pipe.core.ProcessingQueue$processingLoop$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.result
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L39
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2e
            int r2 = r0.I$0
            defpackage.r57.b(r7)     // Catch: java.lang.Throwable -> L2c
            goto L80
        L2c:
            r7 = move-exception
            goto L89
        L2e:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            r6 = 0
            return r6
        L35:
            defpackage.r57.b(r7)     // Catch: java.lang.Throwable -> L2c
            goto L47
        L39:
            defpackage.r57.b(r7)
        L3c:
            x81<T> r7 = r6.channel     // Catch: java.lang.Throwable -> L2c
            r0.label = r4     // Catch: java.lang.Throwable -> L2c
            java.lang.Object r7 = r7.b(r0)     // Catch: java.lang.Throwable -> L2c
            if (r7 != r1) goto L47
            goto L7f
        L47:
            fr<T> r2 = r6.queue     // Catch: java.lang.Throwable -> L2c
            r2.addLast(r7)     // Catch: java.lang.Throwable -> L2c
        L4c:
            fr<T> r7 = r6.queue     // Catch: java.lang.Throwable -> L2c
            boolean r7 = r7.isEmpty()     // Catch: java.lang.Throwable -> L2c
            if (r7 != 0) goto L3c
            x81<T> r7 = r6.channel     // Catch: java.lang.Throwable -> L2c
            java.lang.Object r7 = r7.i()     // Catch: java.lang.Throwable -> L2c
        L5a:
            boolean r2 = r7 instanceof p91.b     // Catch: java.lang.Throwable -> L2c
            fr<T> r5 = r6.queue
            if (r2 != 0) goto L6d
            defpackage.p91.c(r7)     // Catch: java.lang.Throwable -> L2c
            r5.addLast(r7)     // Catch: java.lang.Throwable -> L2c
            x81<T> r7 = r6.channel     // Catch: java.lang.Throwable -> L2c
            java.lang.Object r7 = r7.i()     // Catch: java.lang.Throwable -> L2c
            goto L5a
        L6d:
            int r2 = r5.size()     // Catch: java.lang.Throwable -> L2c
            bm3<java.util.List<T>, e02<? super j59>, java.lang.Object> r7 = r6.process     // Catch: java.lang.Throwable -> L2c
            fr<T> r5 = r6.queue     // Catch: java.lang.Throwable -> L2c
            r0.I$0 = r2     // Catch: java.lang.Throwable -> L2c
            r0.label = r3     // Catch: java.lang.Throwable -> L2c
            java.lang.Object r7 = r7.invoke(r5, r0)     // Catch: java.lang.Throwable -> L2c
            if (r7 != r1) goto L80
        L7f:
            return r1
        L80:
            fr<T> r7 = r6.queue     // Catch: java.lang.Throwable -> L2c
            int r7 = r7.size()     // Catch: java.lang.Throwable -> L2c
            if (r2 != r7) goto L4c
            goto L3c
        L89:
            r6.releaseUnprocessedElements(r7)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.core.ProcessingQueue.processingLoop(e02):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void releaseUnprocessedElements(Throwable th) {
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

        public final <T> ProcessingQueue<T> processIn(ProcessingQueue<T> processingQueue, y22 y22Var) {
            processingQueue.getClass();
            y22Var.getClass();
            if (!((ProcessingQueue) processingQueue).started.a()) {
                ah.f("ProcessingQueue cannot be re-started!");
                return null;
            }
            if (av0.c(y22Var, null, null, new ProcessingQueue$Companion$processIn$job$1(processingQueue, null), 3).isCancelled()) {
                processingQueue.releaseUnprocessedElements(null);
            }
            return processingQueue;
        }

        private Companion() {
        }
    }

    public /* synthetic */ ProcessingQueue(int i, nl3 nl3Var, bm3 bm3Var, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? Integer.MAX_VALUE : i, (i2 & 2) != 0 ? new wu2(4) : nl3Var, bm3Var);
    }
}
