package androidx.compose.ui.platform;

import androidx.compose.runtime.snapshots.Snapshot;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.gh4;
import defpackage.j59;
import defpackage.l91;
import defpackage.mu0;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.x81;
import defpackage.y22;
import defpackage.z22;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public final class GlobalSnapshotManager {
    public static final GlobalSnapshotManager INSTANCE = new GlobalSnapshotManager();
    private static final AtomicBoolean started = new AtomicBoolean(false);
    private static final AtomicBoolean sent = new AtomicBoolean(false);
    public static final int $stable = 8;

    /* JADX INFO: renamed from: androidx.compose.ui.platform.GlobalSnapshotManager$ensureStarted$1, reason: invalid class name */
    @bd2(c = "androidx.compose.ui.platform.GlobalSnapshotManager$ensureStarted$1", f = "GlobalSnapshotManager.android.kt", l = {64}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ x81<j59> $channel;
        Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(x81<j59> x81Var, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$channel = x81Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass1(this.$channel, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0034 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:19:0x003d A[Catch: all -> 0x0016, TryCatch #0 {all -> 0x0016, blocks: (B:6:0x0012, B:17:0x0035, B:19:0x003d, B:14:0x0028, B:20:0x0051, B:13:0x0023), top: B:32:0x0006 }] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0032 -> B:17:0x0035). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r6.label
                r2 = 0
                r3 = 1
                if (r1 == 0) goto L1e
                if (r1 != r3) goto L18
                java.lang.Object r1 = r6.L$1
                k91 r1 = (defpackage.k91) r1
                java.lang.Object r4 = r6.L$0
                qz6 r4 = (defpackage.qz6) r4
                defpackage.r57.b(r7)     // Catch: java.lang.Throwable -> L16
                goto L35
            L16:
                r6 = move-exception
                goto L59
            L18:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r6)
                return r2
            L1e:
                defpackage.r57.b(r7)
                x81<j59> r4 = r6.$channel
                k91 r7 = r4.iterator()     // Catch: java.lang.Throwable -> L16
                r1 = r7
            L28:
                r6.L$0 = r4     // Catch: java.lang.Throwable -> L16
                r6.L$1 = r1     // Catch: java.lang.Throwable -> L16
                r6.label = r3     // Catch: java.lang.Throwable -> L16
                java.lang.Object r7 = r1.b(r6)     // Catch: java.lang.Throwable -> L16
                if (r7 != r0) goto L35
                return r0
            L35:
                java.lang.Boolean r7 = (java.lang.Boolean) r7     // Catch: java.lang.Throwable -> L16
                boolean r7 = r7.booleanValue()     // Catch: java.lang.Throwable -> L16
                if (r7 == 0) goto L51
                java.lang.Object r7 = r1.next()     // Catch: java.lang.Throwable -> L16
                j59 r7 = (defpackage.j59) r7     // Catch: java.lang.Throwable -> L16
                java.util.concurrent.atomic.AtomicBoolean r7 = androidx.compose.ui.platform.GlobalSnapshotManager.access$getSent$p()     // Catch: java.lang.Throwable -> L16
                r5 = 0
                r7.set(r5)     // Catch: java.lang.Throwable -> L16
                androidx.compose.runtime.snapshots.Snapshot$Companion r7 = androidx.compose.runtime.snapshots.Snapshot.Companion     // Catch: java.lang.Throwable -> L16
                r7.sendApplyNotifications()     // Catch: java.lang.Throwable -> L16
                goto L28
            L51:
                j59 r6 = defpackage.j59.a     // Catch: java.lang.Throwable -> L16
                r4.cancel(r2)
                j59 r6 = defpackage.j59.a
                return r6
            L59:
                throw r6     // Catch: java.lang.Throwable -> L5a
            L5a:
                r7 = move-exception
                boolean r0 = r6 instanceof java.util.concurrent.CancellationException
                if (r0 == 0) goto L62
                r2 = r6
                java.util.concurrent.CancellationException r2 = (java.util.concurrent.CancellationException) r2
            L62:
                if (r2 != 0) goto L6a
                java.lang.String r0 = "Channel was consumed, consumer had failed"
                java.util.concurrent.CancellationException r2 = defpackage.pib.a(r0, r6)
            L6a:
                r4.cancel(r2)
                throw r7
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.GlobalSnapshotManager.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private GlobalSnapshotManager() {
    }

    public final void ensureStarted() {
        if (started.compareAndSet(false, true)) {
            mu0 mu0VarA = l91.a(1, null, null, 6);
            av0.c(z22.a(AndroidUiDispatcher.Companion.getMain()), null, null, new AnonymousClass1(mu0VarA, null), 3);
            Snapshot.Companion.registerGlobalWriteObserver(new AnonymousClass2(mu0VarA));
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.platform.GlobalSnapshotManager$ensureStarted$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements nl3<Object, j59> {
        final /* synthetic */ x81<j59> $channel;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(x81<j59> x81Var) {
            super(1);
            this.$channel = x81Var;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Object obj) {
            if (GlobalSnapshotManager.sent.compareAndSet(false, true)) {
                this.$channel.mo0trySendJP2dKIU(j59.a);
            }
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(Object obj) {
            invoke2(obj);
            return j59.a;
        }
    }
}
