package androidx.compose.foundation.gestures;

import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.input.pointer.HistoricalChange;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerEventType;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Velocity;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.l91;
import defpackage.mb4;
import defpackage.og8;
import defpackage.p91;
import defpackage.pg8;
import defpackage.qn1;
import defpackage.r07;
import defpackage.x81;
import defpackage.y22;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class TrackpadScrollingLogic extends NonTouchScrollingLogic {
    public static final int $stable = 8;
    private final x81<TrackpadScrollDelta> channel;
    private mb4 receivingPanEventsJob;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TrackpadScrollingLogic$dispatchTrackpadScroll$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.TrackpadScrollingLogic", f = "TrackpadScrollingLogic.kt", l = {173, 190}, m = "dispatchTrackpadScroll", v = 1)
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
            return TrackpadScrollingLogic.this.dispatchTrackpadScroll(null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TrackpadScrollingLogic$dispatchTrackpadScroll$3, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.TrackpadScrollingLogic$dispatchTrackpadScroll$3", f = "TrackpadScrollingLogic.kt", l = {178}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass3 extends pg8 implements bm3<NestedScrollScope, e02<? super j59>, Object> {
        final /* synthetic */ r07<TrackpadScrollDelta> $targetScrollDelta;
        final /* synthetic */ ScrollingLogic $this_dispatchTrackpadScroll;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(ScrollingLogic scrollingLogic, r07<TrackpadScrollDelta> r07Var, e02<? super AnonymousClass3> e02Var) {
            super(2, e02Var);
            this.$this_dispatchTrackpadScroll = scrollingLogic;
            this.$targetScrollDelta = r07Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass3 anonymousClass3 = TrackpadScrollingLogic.this.new AnonymousClass3(this.$this_dispatchTrackpadScroll, this.$targetScrollDelta, e02Var);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override // defpackage.bm3
        public final Object invoke(NestedScrollScope nestedScrollScope, e02<? super j59> e02Var) {
            return ((AnonymousClass3) create(nestedScrollScope, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0049  */
        /* JADX WARN: Code duplicated, block: B:13:0x005d A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:16:0x0077  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r7v15, types: [T, androidx.compose.foundation.gestures.TrackpadScrollingLogic$TrackpadScrollDelta] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x005b -> B:14:0x005e). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:11:0x0049
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
                r2 = 1
                if (r1 == 0) goto L1c
                if (r1 != r2) goto L15
                java.lang.Object r1 = r6.L$1
                r07 r1 = (defpackage.r07) r1
                java.lang.Object r3 = r6.L$0
                androidx.compose.foundation.gestures.NestedScrollScope r3 = (androidx.compose.foundation.gestures.NestedScrollScope) r3
                defpackage.r57.b(r7)
                goto L5e
            L15:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r6)
                r6 = 0
                return r6
            L1c:
                defpackage.r57.b(r7)
                java.lang.Object r7 = r6.L$0
                androidx.compose.foundation.gestures.NestedScrollScope r7 = (androidx.compose.foundation.gestures.NestedScrollScope) r7
                androidx.compose.foundation.gestures.TrackpadScrollingLogic r1 = androidx.compose.foundation.gestures.TrackpadScrollingLogic.this
                androidx.compose.foundation.gestures.ScrollingLogic r3 = r6.$this_dispatchTrackpadScroll
                r07<androidx.compose.foundation.gestures.TrackpadScrollingLogic$TrackpadScrollDelta> r4 = r6.$targetScrollDelta
                T r4 = r4.b
                androidx.compose.foundation.gestures.TrackpadScrollingLogic$TrackpadScrollDelta r4 = (androidx.compose.foundation.gestures.TrackpadScrollingLogic.TrackpadScrollDelta) r4
                long r4 = r4.m1641getValueF1C5BW0()
                long r4 = r3.m1617reverseIfNeededMKHz9U(r4)
                float r3 = r3.m1621toSingleAxisDeltaFromAnglek4lQ0M(r4)
                androidx.compose.foundation.gestures.TrackpadScrollingLogic.access$dispatchTrackpadScroll(r1, r7, r3)
                r3 = r7
            L3d:
                r07<androidx.compose.foundation.gestures.TrackpadScrollingLogic$TrackpadScrollDelta> r7 = r6.$targetScrollDelta
                T r7 = r7.b
                androidx.compose.foundation.gestures.TrackpadScrollingLogic$TrackpadScrollDelta r7 = (androidx.compose.foundation.gestures.TrackpadScrollingLogic.TrackpadScrollDelta) r7
                boolean r7 = r7.isEnd()
                if (r7 != 0) goto La2
                r07<androidx.compose.foundation.gestures.TrackpadScrollingLogic$TrackpadScrollDelta> r1 = r6.$targetScrollDelta
                androidx.compose.foundation.gestures.TrackpadScrollingLogic r7 = androidx.compose.foundation.gestures.TrackpadScrollingLogic.this
                x81 r7 = androidx.compose.foundation.gestures.TrackpadScrollingLogic.access$getChannel$p(r7)
                r6.L$0 = r3
                r6.L$1 = r1
                r6.label = r2
                java.lang.Object r7 = androidx.compose.foundation.gestures.NonTouchScrollingLogicKt.busyReceive(r7, r6)
                if (r7 != r0) goto L5e
                return r0
            L5e:
                r1.b = r7
                androidx.compose.foundation.gestures.TrackpadScrollingLogic r7 = androidx.compose.foundation.gestures.TrackpadScrollingLogic.this
                r07<androidx.compose.foundation.gestures.TrackpadScrollingLogic$TrackpadScrollDelta> r1 = r6.$targetScrollDelta
                T r1 = r1.b
                androidx.compose.foundation.gestures.TrackpadScrollingLogic$TrackpadScrollDelta r1 = (androidx.compose.foundation.gestures.TrackpadScrollingLogic.TrackpadScrollDelta) r1
                androidx.compose.foundation.gestures.TrackpadScrollingLogic.access$trackVelocity(r7, r1)
                androidx.compose.foundation.gestures.TrackpadScrollingLogic r7 = androidx.compose.foundation.gestures.TrackpadScrollingLogic.this
                x81 r1 = androidx.compose.foundation.gestures.TrackpadScrollingLogic.access$getChannel$p(r7)
                androidx.compose.foundation.gestures.TrackpadScrollingLogic$TrackpadScrollDelta r7 = androidx.compose.foundation.gestures.TrackpadScrollingLogic.access$sumOrNull(r7, r1)
                if (r7 == 0) goto L88
                androidx.compose.foundation.gestures.TrackpadScrollingLogic r1 = androidx.compose.foundation.gestures.TrackpadScrollingLogic.this
                r07<androidx.compose.foundation.gestures.TrackpadScrollingLogic$TrackpadScrollDelta> r4 = r6.$targetScrollDelta
                androidx.compose.foundation.gestures.TrackpadScrollingLogic.access$trackVelocity(r1, r7)
                T r1 = r4.b
                androidx.compose.foundation.gestures.TrackpadScrollingLogic$TrackpadScrollDelta r1 = (androidx.compose.foundation.gestures.TrackpadScrollingLogic.TrackpadScrollDelta) r1
                androidx.compose.foundation.gestures.TrackpadScrollingLogic$TrackpadScrollDelta r7 = r1.plus(r7)
                r4.b = r7
            L88:
                androidx.compose.foundation.gestures.TrackpadScrollingLogic r7 = androidx.compose.foundation.gestures.TrackpadScrollingLogic.this
                androidx.compose.foundation.gestures.ScrollingLogic r1 = r6.$this_dispatchTrackpadScroll
                r07<androidx.compose.foundation.gestures.TrackpadScrollingLogic$TrackpadScrollDelta> r4 = r6.$targetScrollDelta
                T r4 = r4.b
                androidx.compose.foundation.gestures.TrackpadScrollingLogic$TrackpadScrollDelta r4 = (androidx.compose.foundation.gestures.TrackpadScrollingLogic.TrackpadScrollDelta) r4
                long r4 = r4.m1641getValueF1C5BW0()
                long r4 = r1.m1617reverseIfNeededMKHz9U(r4)
                float r1 = r1.m1621toSingleAxisDeltaFromAnglek4lQ0M(r4)
                androidx.compose.foundation.gestures.TrackpadScrollingLogic.access$dispatchTrackpadScroll(r7, r3, r1)
                goto L3d
            La2:
                j59 r6 = defpackage.j59.a
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TrackpadScrollingLogic.AnonymousClass3.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TrackpadScrollingLogic$startReceivingEvents$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.TrackpadScrollingLogic$startReceivingEvents$1", f = "TrackpadScrollingLogic.kt", l = {99, 99}, m = "invokeSuspend", v = 1)
    public static final class C05111 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        public C05111(e02<? super C05111> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C05111 c05111 = TrackpadScrollingLogic.this.new C05111(e02Var);
            c05111.L$0 = obj;
            return c05111;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C05111) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:20:0x0041 A[Catch: all -> 0x0016, TRY_ENTER, TryCatch #0 {all -> 0x0016, blocks: (B:7:0x0011, B:17:0x0035, B:20:0x0041, B:24:0x005d, B:14:0x002a), top: B:32:0x0007 }] */
        /* JADX WARN: Code duplicated, block: B:22:0x0059  */
        /* JADX WARN: Code duplicated, block: B:23:0x005a  */
        /* JADX WARN: Code duplicated, block: B:27:0x006e  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x006e -> B:17:0x0035). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            /*
                r8 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r8.label
                r2 = 2
                r3 = 1
                r4 = 0
                if (r1 == 0) goto L2e
                if (r1 == r3) goto L1e
                if (r1 != r2) goto L18
                java.lang.Object r1 = r8.L$0
                y22 r1 = (defpackage.y22) r1
                defpackage.r57.b(r9)     // Catch: java.lang.Throwable -> L16
                r9 = r1
                goto L35
            L16:
                r9 = move-exception
                goto L76
            L18:
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r8)
                return r4
            L1e:
                java.lang.Object r1 = r8.L$2
                androidx.compose.foundation.gestures.ScrollingLogic r1 = (androidx.compose.foundation.gestures.ScrollingLogic) r1
                java.lang.Object r5 = r8.L$1
                androidx.compose.foundation.gestures.TrackpadScrollingLogic r5 = (androidx.compose.foundation.gestures.TrackpadScrollingLogic) r5
                java.lang.Object r6 = r8.L$0
                y22 r6 = (defpackage.y22) r6
                defpackage.r57.b(r9)     // Catch: java.lang.Throwable -> L16
                goto L5d
            L2e:
                defpackage.r57.b(r9)
                java.lang.Object r9 = r8.L$0
                y22 r9 = (defpackage.y22) r9
            L35:
                o22 r1 = r9.getCoroutineContext()     // Catch: java.lang.Throwable -> L16
                boolean r1 = defpackage.qb4.h(r1)     // Catch: java.lang.Throwable -> L16
                androidx.compose.foundation.gestures.TrackpadScrollingLogic r5 = androidx.compose.foundation.gestures.TrackpadScrollingLogic.this
                if (r1 == 0) goto L70
                androidx.compose.foundation.gestures.ScrollingLogic r1 = r5.getScrollingLogic()     // Catch: java.lang.Throwable -> L16
                androidx.compose.foundation.gestures.TrackpadScrollingLogic r6 = androidx.compose.foundation.gestures.TrackpadScrollingLogic.this     // Catch: java.lang.Throwable -> L16
                x81 r6 = androidx.compose.foundation.gestures.TrackpadScrollingLogic.access$getChannel$p(r6)     // Catch: java.lang.Throwable -> L16
                r8.L$0 = r9     // Catch: java.lang.Throwable -> L16
                r8.L$1 = r5     // Catch: java.lang.Throwable -> L16
                r8.L$2 = r1     // Catch: java.lang.Throwable -> L16
                r8.label = r3     // Catch: java.lang.Throwable -> L16
                java.lang.Object r6 = r6.b(r8)     // Catch: java.lang.Throwable -> L16
                if (r6 != r0) goto L5a
                goto L6d
            L5a:
                r7 = r6
                r6 = r9
                r9 = r7
            L5d:
                androidx.compose.foundation.gestures.TrackpadScrollingLogic$TrackpadScrollDelta r9 = (androidx.compose.foundation.gestures.TrackpadScrollingLogic.TrackpadScrollDelta) r9     // Catch: java.lang.Throwable -> L16
                r8.L$0 = r6     // Catch: java.lang.Throwable -> L16
                r8.L$1 = r4     // Catch: java.lang.Throwable -> L16
                r8.L$2 = r4     // Catch: java.lang.Throwable -> L16
                r8.label = r2     // Catch: java.lang.Throwable -> L16
                java.lang.Object r9 = androidx.compose.foundation.gestures.TrackpadScrollingLogic.access$dispatchTrackpadScroll(r5, r1, r9, r8)     // Catch: java.lang.Throwable -> L16
                if (r9 != r0) goto L6e
            L6d:
                return r0
            L6e:
                r9 = r6
                goto L35
            L70:
                androidx.compose.foundation.gestures.TrackpadScrollingLogic.access$setReceivingPanEventsJob$p(r5, r4)
                j59 r8 = defpackage.j59.a
                return r8
            L76:
                androidx.compose.foundation.gestures.TrackpadScrollingLogic r8 = androidx.compose.foundation.gestures.TrackpadScrollingLogic.this
                androidx.compose.foundation.gestures.TrackpadScrollingLogic.access$setReceivingPanEventsJob$p(r8, r4)
                throw r9
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TrackpadScrollingLogic.C05111.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public TrackpadScrollingLogic(ScrollingLogic scrollingLogic, bm3<? super Velocity, ? super e02<? super j59>, ? extends Object> bm3Var, Density density) {
        super(scrollingLogic, bm3Var, density);
        this.channel = l91.a(Integer.MAX_VALUE, null, null, 6);
    }

    /* JADX INFO: renamed from: canConsumeDelta-Uv8p0NA, reason: not valid java name */
    private final boolean m1640canConsumeDeltaUv8p0NA(ScrollingLogic scrollingLogic, long j) {
        return !(scrollingLogic.m1621toSingleAxisDeltaFromAnglek4lQ0M(scrollingLogic.m1617reverseIfNeededMKHz9U(j)) == 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x007b, code lost:
    
        if (r7.invoke(r6, r0) == r1) goto L24;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v4, types: [T, androidx.compose.foundation.gestures.TrackpadScrollingLogic$TrackpadScrollDelta] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object dispatchTrackpadScroll(androidx.compose.foundation.gestures.ScrollingLogic r7, androidx.compose.foundation.gestures.TrackpadScrollingLogic.TrackpadScrollDelta r8, defpackage.e02<? super defpackage.j59> r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof androidx.compose.foundation.gestures.TrackpadScrollingLogic.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.foundation.gestures.TrackpadScrollingLogic$dispatchTrackpadScroll$1 r0 = (androidx.compose.foundation.gestures.TrackpadScrollingLogic.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.TrackpadScrollingLogic$dispatchTrackpadScroll$1 r0 = new androidx.compose.foundation.gestures.TrackpadScrollingLogic$dispatchTrackpadScroll$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.result
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L35
            if (r2 == r5) goto L31
            if (r2 != r4) goto L2b
            defpackage.r57.b(r9)
            goto L7e
        L2b:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            return r3
        L31:
            defpackage.r57.b(r9)
            goto L65
        L35:
            defpackage.r57.b(r9)
            r07 r9 = new r07
            r9.<init>()
            r9.b = r8
            r6.trackVelocity(r8)
            x81<androidx.compose.foundation.gestures.TrackpadScrollingLogic$TrackpadScrollDelta> r8 = r6.channel
            androidx.compose.foundation.gestures.TrackpadScrollingLogic$TrackpadScrollDelta r8 = r6.sumOrNull(r8)
            if (r8 == 0) goto L57
            r6.trackVelocity(r8)
            T r2 = r9.b
            androidx.compose.foundation.gestures.TrackpadScrollingLogic$TrackpadScrollDelta r2 = (androidx.compose.foundation.gestures.TrackpadScrollingLogic.TrackpadScrollDelta) r2
            androidx.compose.foundation.gestures.TrackpadScrollingLogic$TrackpadScrollDelta r8 = r2.plus(r8)
            r9.b = r8
        L57:
            androidx.compose.foundation.gestures.TrackpadScrollingLogic$dispatchTrackpadScroll$3 r8 = new androidx.compose.foundation.gestures.TrackpadScrollingLogic$dispatchTrackpadScroll$3
            r8.<init>(r7, r9, r3)
            r0.label = r5
            java.lang.Object r7 = r6.userScroll$foundation(r8, r0)
            if (r7 != r1) goto L65
            goto L7d
        L65:
            bm3 r7 = r6.getOnScrollStopped()
            androidx.compose.foundation.gestures.DifferentialVelocityTracker r6 = r6.getVelocityTracker$foundation()
            long r8 = r6.m1479calculateVelocity9UxMQ8M()
            androidx.compose.ui.unit.Velocity r6 = androidx.compose.ui.unit.Velocity.m9271boximpl(r8)
            r0.label = r4
            java.lang.Object r6 = r7.invoke(r6, r0)
            if (r6 != r1) goto L7e
        L7d:
            return r1
        L7e:
            j59 r6 = defpackage.j59.a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TrackpadScrollingLogic.dispatchTrackpadScroll(androidx.compose.foundation.gestures.ScrollingLogic, androidx.compose.foundation.gestures.TrackpadScrollingLogic$TrackpadScrollDelta, e02):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:26:0x009e  */
    private final boolean onPan(PointerEvent pointerEvent) {
        boolean z;
        if (ComposeFoundationFlags.isTrackpadGestureHandlingEnabled) {
            PointerInputChange pointerInputChange = (PointerInputChange) qn1.V(pointerEvent.getChanges());
            if (pointerInputChange != null) {
                List<HistoricalChange> historical = pointerInputChange.getHistorical();
                int size = historical.size();
                z = false;
                for (int i = 0; i < size; i++) {
                    HistoricalChange historicalChange = historical.get(i);
                    long jM5979constructorimpl = Offset.m5979constructorimpl((-9223372034707292160L) ^ historicalChange.m7469getPanOffsetF1C5BW0());
                    if (m1640canConsumeDeltaUv8p0NA(getScrollingLogic(), jM5979constructorimpl)) {
                        z = !(this.channel.mo0trySendJP2dKIU(new TrackpadScrollDelta(jM5979constructorimpl, historicalChange.getUptimeMillis(), false, null)) instanceof p91.b) || z;
                    }
                }
                long jM5979constructorimpl2 = Offset.m5979constructorimpl(pointerInputChange.m7568getPanOffsetF1C5BW0() ^ (-9223372034707292160L));
                boolean zM7509equalsimpl0 = PointerEventType.m7509equalsimpl0(pointerEvent.m7502getType7fucELk(), PointerEventType.Companion.m7516getPanEnd7fucELk());
                if (m1640canConsumeDeltaUv8p0NA(getScrollingLogic(), jM5979constructorimpl2) || zM7509equalsimpl0) {
                    if (!(this.channel.mo0trySendJP2dKIU(new TrackpadScrollDelta(jM5979constructorimpl2, pointerInputChange.getUptimeMillis(), zM7509equalsimpl0, null)) instanceof p91.b) || z) {
                        z = true;
                    } else {
                        z = false;
                    }
                }
            } else {
                z = false;
            }
            if (z || isScrolling$foundation()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TrackpadScrollDelta sumOrNull(x81<TrackpadScrollDelta> x81Var) {
        TrackpadScrollDelta trackpadScrollDeltaPlus = null;
        for (TrackpadScrollDelta trackpadScrollDelta : NonTouchScrollingLogicKt.untilNull(new og8(x81Var, 2))) {
            trackpadScrollDeltaPlus = trackpadScrollDeltaPlus == null ? trackpadScrollDelta : trackpadScrollDeltaPlus.plus(trackpadScrollDelta);
        }
        return trackpadScrollDeltaPlus;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TrackpadScrollDelta sumOrNull$lambda$0(x81 x81Var) {
        return (TrackpadScrollDelta) p91.b(x81Var.i());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void trackVelocity(TrackpadScrollDelta trackpadScrollDelta) {
        getVelocityTracker$foundation().m1478addDeltaUv8p0NA(trackpadScrollDelta.getTimeMillis(), trackpadScrollDelta.m1641getValueF1C5BW0());
    }

    @Override // androidx.compose.foundation.gestures.NonTouchScrollingLogic
    /* JADX INFO: renamed from: onPointerEvent-H0pRuoY */
    public void mo1554onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        if (ComposeFoundationFlags.isTrackpadGestureHandlingEnabled) {
            int iM7502getType7fucELk = pointerEvent.m7502getType7fucELk();
            PointerEventType.Companion companion = PointerEventType.Companion;
            if (PointerEventType.m7509equalsimpl0(iM7502getType7fucELk, companion.m7518getPanStart7fucELk()) || PointerEventType.m7509equalsimpl0(pointerEvent.m7502getType7fucELk(), companion.m7517getPanMove7fucELk()) || PointerEventType.m7509equalsimpl0(pointerEvent.m7502getType7fucELk(), companion.m7516getPanEnd7fucELk())) {
                List<PointerInputChange> changes = pointerEvent.getChanges();
                int size = changes.size();
                for (int i = 0; i < size; i++) {
                    if (changes.get(i).isConsumed()) {
                        return;
                    }
                }
                if (pointerEventPass == PointerEventPass.Initial && isScrolling$foundation()) {
                    onPan(pointerEvent);
                    consume$foundation(pointerEvent);
                }
                if (pointerEventPass == PointerEventPass.Main && !isScrolling$foundation() && onPan(pointerEvent)) {
                    consume$foundation(pointerEvent);
                }
            }
        }
    }

    @Override // androidx.compose.foundation.gestures.NonTouchScrollingLogic
    public void startReceivingEvents(y22 y22Var) {
        if (this.receivingPanEventsJob == null) {
            this.receivingPanEventsJob = av0.c(y22Var, null, null, new C05111(null), 3);
        }
    }

    public static final class TrackpadScrollDelta {
        private final boolean isEnd;
        private final long timeMillis;
        private final long value;

        private TrackpadScrollDelta(long j, long j2, boolean z) {
            this.value = j;
            this.timeMillis = j2;
            this.isEnd = z;
        }

        public final long getTimeMillis() {
            return this.timeMillis;
        }

        /* JADX INFO: renamed from: getValue-F1C5BW0, reason: not valid java name */
        public final long m1641getValueF1C5BW0() {
            return this.value;
        }

        public final boolean isEnd() {
            return this.isEnd;
        }

        public final TrackpadScrollDelta plus(TrackpadScrollDelta trackpadScrollDelta) {
            return new TrackpadScrollDelta(Offset.m5992plusMKHz9U(this.value, trackpadScrollDelta.value), Math.max(this.timeMillis, trackpadScrollDelta.timeMillis), this.isEnd || trackpadScrollDelta.isEnd, null);
        }

        public /* synthetic */ TrackpadScrollDelta(long j, long j2, boolean z, jh2 jh2Var) {
            this(j, j2, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float dispatchTrackpadScroll(NestedScrollScope nestedScrollScope, float f) {
        ScrollingLogic scrollingLogic = getScrollingLogic();
        return scrollingLogic.m1619toFloatk4lQ0M(scrollingLogic.m1617reverseIfNeededMKHz9U(nestedScrollScope.mo1560scrollByWithOverscrollOzD1aCk(scrollingLogic.m1620toOffsettuRUvjQ(scrollingLogic.reverseIfNeeded(f)), NestedScrollSource.Companion.m7438getUserInputWNlRxjI())));
    }
}
