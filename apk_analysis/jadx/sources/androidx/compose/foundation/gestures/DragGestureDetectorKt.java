package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.ah;
import defpackage.ar2;
import defpackage.bc;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.br2;
import defpackage.cr2;
import defpackage.dm3;
import defpackage.dr2;
import defpackage.e02;
import defpackage.er2;
import defpackage.f02;
import defpackage.f57;
import defpackage.fr2;
import defpackage.gr2;
import defpackage.hr2;
import defpackage.ir2;
import defpackage.j59;
import defpackage.jh2;
import defpackage.jr2;
import defpackage.ju1;
import defpackage.k31;
import defpackage.kr2;
import defpackage.ll3;
import defpackage.lr2;
import defpackage.n07;
import defpackage.nl3;
import defpackage.o07;
import defpackage.q07;
import defpackage.r07;
import defpackage.r57;
import defpackage.v71;
import defpackage.w82;
import defpackage.yq2;
import defpackage.zq2;
import java.util.List;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class DragGestureDetectorKt {
    private static final int GestureAngleThreshold = 30;
    private static final float defaultTouchSlop;
    private static final float mouseSlop;
    private static final float mouseToTouchSlopRatio;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitAllPointersUpWithSlopDetection$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt", f = "DragGestureDetector.kt", l = {921}, m = "awaitAllPointersUpWithSlopDetection", v = 1)
    public static final class AnonymousClass1 extends f02 {
        float F$0;
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DragGestureDetectorKt.awaitAllPointersUpWithSlopDetection(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGestures$13, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGestures$13", f = "DragGestureDetector.kt", l = {248, 249}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass13 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
        final /* synthetic */ bm3<PointerInputChange, Offset, j59> $onDrag;
        final /* synthetic */ ll3<j59> $onDragCancel;
        final /* synthetic */ nl3<PointerInputChange, j59> $onDragEnd;
        final /* synthetic */ dm3<PointerInputChange, PointerInputChange, Offset, j59> $onDragStart;
        final /* synthetic */ Orientation $orientationLock;
        final /* synthetic */ ll3<Boolean> $shouldAwaitTouchSlop;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass13(ll3<Boolean> ll3Var, Orientation orientation, dm3<? super PointerInputChange, ? super PointerInputChange, ? super Offset, j59> dm3Var, bm3<? super PointerInputChange, ? super Offset, j59> bm3Var, ll3<j59> ll3Var2, nl3<? super PointerInputChange, j59> nl3Var, e02<? super AnonymousClass13> e02Var) {
            super(2, e02Var);
            this.$shouldAwaitTouchSlop = ll3Var;
            this.$orientationLock = orientation;
            this.$onDragStart = dm3Var;
            this.$onDrag = bm3Var;
            this.$onDragCancel = ll3Var2;
            this.$onDragEnd = nl3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass13 anonymousClass13 = new AnonymousClass13(this.$shouldAwaitTouchSlop, this.$orientationLock, this.$onDragStart, this.$onDrag, this.$onDragCancel, this.$onDragEnd, e02Var);
            anonymousClass13.L$0 = obj;
            return anonymousClass13;
        }

        @Override // defpackage.bm3
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
            return ((AnonymousClass13) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x004f, code lost:
        
            if (androidx.compose.foundation.gestures.DragGestureDetectorKt.processDragGesture(r3, (androidx.compose.ui.input.pointer.PointerInputChange) r13, r5, r6, r7, r8, r9, r10, r12) == r0) goto L16;
         */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r13) {
            /*
                r12 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r12.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L20
                if (r1 == r3) goto L17
                if (r1 != r2) goto L10
                defpackage.r57.b(r13)
                goto L52
            L10:
                java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r12)
                r12 = 0
                return r12
            L17:
                java.lang.Object r1 = r12.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                defpackage.r57.b(r13)
            L1e:
                r3 = r1
                goto L36
            L20:
                defpackage.r57.b(r13)
                java.lang.Object r13 = r12.L$0
                r1 = r13
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                androidx.compose.ui.input.pointer.PointerEventPass r13 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                r12.L$0 = r1
                r12.label = r3
                r3 = 0
                java.lang.Object r13 = androidx.compose.foundation.gestures.TapGestureDetectorKt.awaitFirstDown(r1, r3, r13, r12)
                if (r13 != r0) goto L1e
                goto L51
            L36:
                r4 = r13
                androidx.compose.ui.input.pointer.PointerInputChange r4 = (androidx.compose.ui.input.pointer.PointerInputChange) r4
                ll3<java.lang.Boolean> r5 = r12.$shouldAwaitTouchSlop
                androidx.compose.foundation.gestures.Orientation r6 = r12.$orientationLock
                dm3<androidx.compose.ui.input.pointer.PointerInputChange, androidx.compose.ui.input.pointer.PointerInputChange, androidx.compose.ui.geometry.Offset, j59> r7 = r12.$onDragStart
                bm3<androidx.compose.ui.input.pointer.PointerInputChange, androidx.compose.ui.geometry.Offset, j59> r8 = r12.$onDrag
                ll3<j59> r9 = r12.$onDragCancel
                nl3<androidx.compose.ui.input.pointer.PointerInputChange, j59> r10 = r12.$onDragEnd
                r13 = 0
                r12.L$0 = r13
                r12.label = r2
                r11 = r12
                java.lang.Object r12 = androidx.compose.foundation.gestures.DragGestureDetectorKt.processDragGesture(r3, r4, r5, r6, r7, r8, r9, r10, r11)
                if (r12 != r0) goto L52
            L51:
                return r0
            L52:
                j59 r12 = defpackage.j59.a
                return r12
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.AnonymousClass13.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGesturesAfterLongPress$5, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGesturesAfterLongPress$5", f = "DragGestureDetector.kt", l = {RendererCapabilities.DECODER_SUPPORT_MASK, 385, 390}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass5 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
        final /* synthetic */ bm3<PointerInputChange, Offset, j59> $onDrag;
        final /* synthetic */ ll3<j59> $onDragCancel;
        final /* synthetic */ ll3<j59> $onDragEnd;
        final /* synthetic */ nl3<Offset, j59> $onDragStart;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass5(nl3<? super Offset, j59> nl3Var, ll3<j59> ll3Var, ll3<j59> ll3Var2, bm3<? super PointerInputChange, ? super Offset, j59> bm3Var, e02<? super AnonymousClass5> e02Var) {
            super(2, e02Var);
            this.$onDragStart = nl3Var;
            this.$onDragEnd = ll3Var;
            this.$onDragCancel = ll3Var2;
            this.$onDrag = bm3Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0(bm3 bm3Var, PointerInputChange pointerInputChange) {
            bm3Var.invoke(pointerInputChange, Offset.m5976boximpl(PointerEventKt.positionChange(pointerInputChange)));
            pointerInputChange.consume();
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass5 anonymousClass5 = new AnonymousClass5(this.$onDragStart, this.$onDragEnd, this.$onDragCancel, this.$onDrag, e02Var);
            anonymousClass5.L$0 = obj;
            return anonymousClass5;
        }

        @Override // defpackage.bm3
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
            return ((AnonymousClass5) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:29:0x0060  */
        /* JADX WARN: Code duplicated, block: B:30:0x0061 A[Catch: CancellationException -> 0x00b3, PHI: r1 r8 r12
          0x0061: PHI (r1v7 androidx.compose.ui.input.pointer.AwaitPointerEventScope) = 
          (r1v4 androidx.compose.ui.input.pointer.AwaitPointerEventScope)
          (r1v8 androidx.compose.ui.input.pointer.AwaitPointerEventScope)
         binds: [B:16:0x002c, B:28:0x005e] A[DONT_GENERATE, DONT_INLINE]
          0x0061: PHI (r8v6 androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGesturesAfterLongPress$5) = 
          (r8v2 androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGesturesAfterLongPress$5)
          (r8v7 androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGesturesAfterLongPress$5)
         binds: [B:16:0x002c, B:28:0x005e] A[DONT_GENERATE, DONT_INLINE]
          0x0061: PHI (r12v8 java.lang.Object) = (r12v0 java.lang.Object), (r12v13 java.lang.Object) binds: [B:16:0x002c, B:28:0x005e] A[DONT_GENERATE, DONT_INLINE], TryCatch #2 {CancellationException -> 0x00b3, blocks: (B:36:0x0089, B:38:0x0091, B:40:0x00a3, B:42:0x00af, B:45:0x00b6, B:46:0x00b9, B:47:0x00bf, B:30:0x0061, B:32:0x0065, B:27:0x0050, B:23:0x0048), top: B:57:0x0048 }] */
        /* JADX WARN: Code duplicated, block: B:32:0x0065 A[Catch: CancellationException -> 0x00b3, TryCatch #2 {CancellationException -> 0x00b3, blocks: (B:36:0x0089, B:38:0x0091, B:40:0x00a3, B:42:0x00af, B:45:0x00b6, B:46:0x00b9, B:47:0x00bf, B:30:0x0061, B:32:0x0065, B:27:0x0050, B:23:0x0048), top: B:57:0x0048 }] */
        /* JADX WARN: Code duplicated, block: B:35:0x0088  */
        /* JADX WARN: Code duplicated, block: B:38:0x0091 A[Catch: CancellationException -> 0x00b3, TryCatch #2 {CancellationException -> 0x00b3, blocks: (B:36:0x0089, B:38:0x0091, B:40:0x00a3, B:42:0x00af, B:45:0x00b6, B:46:0x00b9, B:47:0x00bf, B:30:0x0061, B:32:0x0065, B:27:0x0050, B:23:0x0048), top: B:57:0x0048 }] */
        /* JADX WARN: Code duplicated, block: B:40:0x00a3 A[Catch: CancellationException -> 0x00b3, TryCatch #2 {CancellationException -> 0x00b3, blocks: (B:36:0x0089, B:38:0x0091, B:40:0x00a3, B:42:0x00af, B:45:0x00b6, B:46:0x00b9, B:47:0x00bf, B:30:0x0061, B:32:0x0065, B:27:0x0050, B:23:0x0048), top: B:57:0x0048 }] */
        /* JADX WARN: Code duplicated, block: B:42:0x00af A[Catch: CancellationException -> 0x00b3, TryCatch #2 {CancellationException -> 0x00b3, blocks: (B:36:0x0089, B:38:0x0091, B:40:0x00a3, B:42:0x00af, B:45:0x00b6, B:46:0x00b9, B:47:0x00bf, B:30:0x0061, B:32:0x0065, B:27:0x0050, B:23:0x0048), top: B:57:0x0048 }] */
        /* JADX WARN: Code duplicated, block: B:47:0x00bf A[Catch: CancellationException -> 0x00b3, TRY_LEAVE, TryCatch #2 {CancellationException -> 0x00b3, blocks: (B:36:0x0089, B:38:0x0091, B:40:0x00a3, B:42:0x00af, B:45:0x00b6, B:46:0x00b9, B:47:0x00bf, B:30:0x0061, B:32:0x0065, B:27:0x0050, B:23:0x0048), top: B:57:0x0048 }] */
        /* JADX WARN: Code duplicated, block: B:59:0x00b6 A[SYNTHETIC] */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            CancellationException cancellationException;
            AnonymousClass5 anonymousClass5;
            AwaitPointerEventScope awaitPointerEventScope;
            AwaitPointerEventScope awaitPointerEventScope2;
            List<PointerInputChange> changes;
            int size;
            int i;
            PointerInputChange pointerInputChange;
            PointerInputChange pointerInputChange2;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = this.label;
            if (i2 != 0) {
                try {
                    if (i2 == 1) {
                        awaitPointerEventScope = (AwaitPointerEventScope) this.L$0;
                        r57.b(obj);
                        anonymousClass5 = this;
                        long jM7566getIdJ3iCeTQ = ((PointerInputChange) obj).m7566getIdJ3iCeTQ();
                        anonymousClass5.L$0 = awaitPointerEventScope;
                        anonymousClass5.label = 2;
                        obj = DragGestureDetectorKt.m1495awaitLongPressOrCancellationrnUCldI(awaitPointerEventScope, jM7566getIdJ3iCeTQ, anonymousClass5);
                        if (obj == a32Var) {
                            pointerInputChange2 = (PointerInputChange) obj;
                            if (pointerInputChange2 != null) {
                                anonymousClass5.$onDragStart.invoke(Offset.m5976boximpl(pointerInputChange2.m7569getPositionF1C5BW0()));
                                long jM7566getIdJ3iCeTQ2 = pointerInputChange2.m7566getIdJ3iCeTQ();
                                final bm3<PointerInputChange, Offset, j59> bm3Var = anonymousClass5.$onDrag;
                                nl3 nl3Var = new nl3() { // from class: androidx.compose.foundation.gestures.k
                                    @Override // defpackage.nl3
                                    public final Object invoke(Object obj2) {
                                        return DragGestureDetectorKt.AnonymousClass5.invokeSuspend$lambda$0(bm3Var, (PointerInputChange) obj2);
                                    }
                                };
                                anonymousClass5.L$0 = awaitPointerEventScope;
                                anonymousClass5.label = 3;
                                obj = DragGestureDetectorKt.m1505dragjO51t88(awaitPointerEventScope, jM7566getIdJ3iCeTQ2, nl3Var, anonymousClass5);
                                if (obj != a32Var) {
                                    awaitPointerEventScope2 = awaitPointerEventScope;
                                }
                            }
                        }
                        return a32Var;
                    }
                    if (i2 == 2) {
                        awaitPointerEventScope = (AwaitPointerEventScope) this.L$0;
                        r57.b(obj);
                        anonymousClass5 = this;
                        pointerInputChange2 = (PointerInputChange) obj;
                        if (pointerInputChange2 != null) {
                            anonymousClass5.$onDragStart.invoke(Offset.m5976boximpl(pointerInputChange2.m7569getPositionF1C5BW0()));
                            long jM7566getIdJ3iCeTQ3 = pointerInputChange2.m7566getIdJ3iCeTQ();
                            final bm3 bm3Var2 = anonymousClass5.$onDrag;
                            nl3 nl3Var2 = new nl3() { // from class: androidx.compose.foundation.gestures.k
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj2) {
                                    return DragGestureDetectorKt.AnonymousClass5.invokeSuspend$lambda$0(bm3Var2, (PointerInputChange) obj2);
                                }
                            };
                            anonymousClass5.L$0 = awaitPointerEventScope;
                            anonymousClass5.label = 3;
                            obj = DragGestureDetectorKt.m1505dragjO51t88(awaitPointerEventScope, jM7566getIdJ3iCeTQ3, nl3Var2, anonymousClass5);
                            if (obj != a32Var) {
                                awaitPointerEventScope2 = awaitPointerEventScope;
                            }
                            return a32Var;
                        }
                    } else {
                        if (i2 != 3) {
                            ah.f("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        awaitPointerEventScope2 = (AwaitPointerEventScope) this.L$0;
                        r57.b(obj);
                        anonymousClass5 = this;
                    }
                    if (((Boolean) obj).booleanValue()) {
                        changes = awaitPointerEventScope2.getCurrentEvent().getChanges();
                        size = changes.size();
                        for (i = 0; i < size; i++) {
                            pointerInputChange = changes.get(i);
                            if (PointerEventKt.changedToUp(pointerInputChange)) {
                                pointerInputChange.consume();
                            }
                        }
                        anonymousClass5.$onDragEnd.invoke();
                    } else {
                        anonymousClass5.$onDragCancel.invoke();
                    }
                } catch (CancellationException e) {
                    cancellationException = e;
                    anonymousClass5 = this;
                    anonymousClass5.$onDragCancel.invoke();
                    throw cancellationException;
                }
            } else {
                r57.b(obj);
                AwaitPointerEventScope awaitPointerEventScope3 = (AwaitPointerEventScope) this.L$0;
                try {
                    this.L$0 = awaitPointerEventScope3;
                    this.label = 1;
                    anonymousClass5 = this;
                    try {
                        obj = TapGestureDetectorKt.awaitFirstDown$default(awaitPointerEventScope3, false, null, anonymousClass5, 2, null);
                        if (obj != a32Var) {
                            awaitPointerEventScope = awaitPointerEventScope3;
                            long jM7566getIdJ3iCeTQ4 = ((PointerInputChange) obj).m7566getIdJ3iCeTQ();
                            anonymousClass5.L$0 = awaitPointerEventScope;
                            anonymousClass5.label = 2;
                            obj = DragGestureDetectorKt.m1495awaitLongPressOrCancellationrnUCldI(awaitPointerEventScope, jM7566getIdJ3iCeTQ4, anonymousClass5);
                            if (obj == a32Var) {
                                pointerInputChange2 = (PointerInputChange) obj;
                                if (pointerInputChange2 != null) {
                                    anonymousClass5.$onDragStart.invoke(Offset.m5976boximpl(pointerInputChange2.m7569getPositionF1C5BW0()));
                                    long jM7566getIdJ3iCeTQ5 = pointerInputChange2.m7566getIdJ3iCeTQ();
                                    final bm3 bm3Var3 = anonymousClass5.$onDrag;
                                    nl3 nl3Var3 = new nl3() { // from class: androidx.compose.foundation.gestures.k
                                        @Override // defpackage.nl3
                                        public final Object invoke(Object obj2) {
                                            return DragGestureDetectorKt.AnonymousClass5.invokeSuspend$lambda$0(bm3Var3, (PointerInputChange) obj2);
                                        }
                                    };
                                    anonymousClass5.L$0 = awaitPointerEventScope;
                                    anonymousClass5.label = 3;
                                    obj = DragGestureDetectorKt.m1505dragjO51t88(awaitPointerEventScope, jM7566getIdJ3iCeTQ5, nl3Var3, anonymousClass5);
                                    if (obj != a32Var) {
                                        awaitPointerEventScope2 = awaitPointerEventScope;
                                        if (((Boolean) obj).booleanValue()) {
                                            changes = awaitPointerEventScope2.getCurrentEvent().getChanges();
                                            size = changes.size();
                                            while (i < size) {
                                                pointerInputChange = changes.get(i);
                                                if (PointerEventKt.changedToUp(pointerInputChange)) {
                                                    pointerInputChange.consume();
                                                }
                                            }
                                            anonymousClass5.$onDragEnd.invoke();
                                        } else {
                                            anonymousClass5.$onDragCancel.invoke();
                                        }
                                    }
                                }
                            }
                        }
                        return a32Var;
                    } catch (CancellationException e2) {
                        e = e2;
                        cancellationException = e;
                        anonymousClass5.$onDragCancel.invoke();
                        throw cancellationException;
                    }
                } catch (CancellationException e3) {
                    e = e3;
                    anonymousClass5 = this;
                }
            }
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectHorizontalDragGestures$5, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$detectHorizontalDragGestures$5", f = "DragGestureDetector.kt", l = {727, 730, 738}, m = "invokeSuspend", v = 1)
    public static final class C04835 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
        final /* synthetic */ ll3<j59> $onDragCancel;
        final /* synthetic */ ll3<j59> $onDragEnd;
        final /* synthetic */ nl3<Offset, j59> $onDragStart;
        final /* synthetic */ bm3<PointerInputChange, Float, j59> $onHorizontalDrag;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04835(nl3<? super Offset, j59> nl3Var, bm3<? super PointerInputChange, ? super Float, j59> bm3Var, ll3<j59> ll3Var, ll3<j59> ll3Var2, e02<? super C04835> e02Var) {
            super(2, e02Var);
            this.$onDragStart = nl3Var;
            this.$onHorizontalDrag = bm3Var;
            this.$onDragEnd = ll3Var;
            this.$onDragCancel = ll3Var2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0(o07 o07Var, PointerInputChange pointerInputChange, float f) {
            pointerInputChange.consume();
            o07Var.b = f;
            return j59.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$1(bm3 bm3Var, PointerInputChange pointerInputChange) {
            bm3Var.invoke(pointerInputChange, Float.valueOf(Float.intBitsToFloat((int) (PointerEventKt.positionChange(pointerInputChange) >> 32))));
            pointerInputChange.consume();
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C04835 c04835 = new C04835(this.$onDragStart, this.$onHorizontalDrag, this.$onDragEnd, this.$onDragCancel, e02Var);
            c04835.L$0 = obj;
            return c04835;
        }

        @Override // defpackage.bm3
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
            return ((C04835) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:22:0x0074  */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x00a2, code lost:
        
            if (r14 == r0) goto L24;
         */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r14) {
            /*
                r13 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r13.label
                r2 = 0
                r3 = 3
                r4 = 2
                r5 = 1
                if (r1 == 0) goto L33
                if (r1 == r5) goto L29
                if (r1 == r4) goto L1c
                if (r1 != r3) goto L16
                defpackage.r57.b(r14)
                r9 = r13
                goto La5
            L16:
                java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r13)
                return r2
            L1c:
                java.lang.Object r1 = r13.L$1
                o07 r1 = (defpackage.o07) r1
                java.lang.Object r4 = r13.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r4 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r4
                defpackage.r57.b(r14)
                r9 = r13
                goto L70
            L29:
                java.lang.Object r1 = r13.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                defpackage.r57.b(r14)
                r9 = r13
                r7 = r1
                goto L4c
            L33:
                defpackage.r57.b(r14)
                java.lang.Object r14 = r13.L$0
                r6 = r14
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r6 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r6
                r13.L$0 = r6
                r13.label = r5
                r7 = 0
                r8 = 0
                r10 = 2
                r11 = 0
                r9 = r13
                java.lang.Object r14 = androidx.compose.foundation.gestures.TapGestureDetectorKt.awaitFirstDown$default(r6, r7, r8, r9, r10, r11)
                if (r14 != r0) goto L4b
                goto La4
            L4b:
                r7 = r6
            L4c:
                androidx.compose.ui.input.pointer.PointerInputChange r14 = (androidx.compose.ui.input.pointer.PointerInputChange) r14
                o07 r1 = new o07
                r1.<init>()
                r12 = r9
                long r8 = r14.m7566getIdJ3iCeTQ()
                int r10 = r14.m7572getTypeT8wyACA()
                androidx.compose.foundation.gestures.l r11 = new androidx.compose.foundation.gestures.l
                r11.<init>()
                r12.L$0 = r7
                r12.L$1 = r1
                r12.label = r4
                java.lang.Object r14 = androidx.compose.foundation.gestures.DragGestureDetectorKt.m1493awaitHorizontalPointerSlopOrCancellationgDDlDlE(r7, r8, r10, r11, r12)
                r9 = r12
                if (r14 != r0) goto L6f
                goto La4
            L6f:
                r4 = r7
            L70:
                androidx.compose.ui.input.pointer.PointerInputChange r14 = (androidx.compose.ui.input.pointer.PointerInputChange) r14
                if (r14 == 0) goto Lb8
                nl3<androidx.compose.ui.geometry.Offset, j59> r13 = r9.$onDragStart
                long r5 = r14.m7569getPositionF1C5BW0()
                androidx.compose.ui.geometry.Offset r5 = androidx.compose.ui.geometry.Offset.m5976boximpl(r5)
                r13.invoke(r5)
                bm3<androidx.compose.ui.input.pointer.PointerInputChange, java.lang.Float, j59> r13 = r9.$onHorizontalDrag
                float r1 = r1.b
                java.lang.Float r5 = new java.lang.Float
                r5.<init>(r1)
                r13.invoke(r14, r5)
                long r13 = r14.m7566getIdJ3iCeTQ()
                bm3<androidx.compose.ui.input.pointer.PointerInputChange, java.lang.Float, j59> r1 = r9.$onHorizontalDrag
                androidx.compose.foundation.gestures.m r5 = new androidx.compose.foundation.gestures.m
                r5.<init>()
                r9.L$0 = r2
                r9.L$1 = r2
                r9.label = r3
                java.lang.Object r14 = androidx.compose.foundation.gestures.DragGestureDetectorKt.m1506horizontalDragjO51t88(r4, r13, r5, r9)
                if (r14 != r0) goto La5
            La4:
                return r0
            La5:
                java.lang.Boolean r14 = (java.lang.Boolean) r14
                boolean r13 = r14.booleanValue()
                if (r13 == 0) goto Lb3
                ll3<j59> r13 = r9.$onDragEnd
                r13.invoke()
                goto Lb8
            Lb3:
                ll3<j59> r13 = r9.$onDragCancel
                r13.invoke()
            Lb8:
                j59 r13 = defpackage.j59.a
                return r13
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.C04835.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectVerticalDragGestures$5, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$detectVerticalDragGestures$5", f = "DragGestureDetector.kt", l = {558, 561, 569}, m = "invokeSuspend", v = 1)
    public static final class C04845 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
        final /* synthetic */ ll3<j59> $onDragCancel;
        final /* synthetic */ ll3<j59> $onDragEnd;
        final /* synthetic */ nl3<Offset, j59> $onDragStart;
        final /* synthetic */ bm3<PointerInputChange, Float, j59> $onVerticalDrag;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04845(nl3<? super Offset, j59> nl3Var, bm3<? super PointerInputChange, ? super Float, j59> bm3Var, ll3<j59> ll3Var, ll3<j59> ll3Var2, e02<? super C04845> e02Var) {
            super(2, e02Var);
            this.$onDragStart = nl3Var;
            this.$onVerticalDrag = bm3Var;
            this.$onDragEnd = ll3Var;
            this.$onDragCancel = ll3Var2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0(o07 o07Var, PointerInputChange pointerInputChange, float f) {
            pointerInputChange.consume();
            o07Var.b = f;
            return j59.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$1(bm3 bm3Var, PointerInputChange pointerInputChange) {
            bm3Var.invoke(pointerInputChange, Float.valueOf(Float.intBitsToFloat((int) (PointerEventKt.positionChange(pointerInputChange) & MuxerUtil.UNSIGNED_INT_MAX_VALUE))));
            pointerInputChange.consume();
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C04845 c04845 = new C04845(this.$onDragStart, this.$onVerticalDrag, this.$onDragEnd, this.$onDragCancel, e02Var);
            c04845.L$0 = obj;
            return c04845;
        }

        @Override // defpackage.bm3
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
            return ((C04845) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:22:0x0074  */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x00a2, code lost:
        
            if (r14 == r0) goto L24;
         */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r14) {
            /*
                r13 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r13.label
                r2 = 0
                r3 = 3
                r4 = 2
                r5 = 1
                if (r1 == 0) goto L33
                if (r1 == r5) goto L29
                if (r1 == r4) goto L1c
                if (r1 != r3) goto L16
                defpackage.r57.b(r14)
                r9 = r13
                goto La5
            L16:
                java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r13)
                return r2
            L1c:
                java.lang.Object r1 = r13.L$1
                o07 r1 = (defpackage.o07) r1
                java.lang.Object r4 = r13.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r4 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r4
                defpackage.r57.b(r14)
                r9 = r13
                goto L70
            L29:
                java.lang.Object r1 = r13.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                defpackage.r57.b(r14)
                r9 = r13
                r7 = r1
                goto L4c
            L33:
                defpackage.r57.b(r14)
                java.lang.Object r14 = r13.L$0
                r6 = r14
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r6 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r6
                r13.L$0 = r6
                r13.label = r5
                r7 = 0
                r8 = 0
                r10 = 2
                r11 = 0
                r9 = r13
                java.lang.Object r14 = androidx.compose.foundation.gestures.TapGestureDetectorKt.awaitFirstDown$default(r6, r7, r8, r9, r10, r11)
                if (r14 != r0) goto L4b
                goto La4
            L4b:
                r7 = r6
            L4c:
                androidx.compose.ui.input.pointer.PointerInputChange r14 = (androidx.compose.ui.input.pointer.PointerInputChange) r14
                o07 r1 = new o07
                r1.<init>()
                r12 = r9
                long r8 = r14.m7566getIdJ3iCeTQ()
                int r10 = r14.m7572getTypeT8wyACA()
                androidx.compose.foundation.gestures.n r11 = new androidx.compose.foundation.gestures.n
                r11.<init>()
                r12.L$0 = r7
                r12.L$1 = r1
                r12.label = r4
                java.lang.Object r14 = androidx.compose.foundation.gestures.DragGestureDetectorKt.m1501awaitVerticalPointerSlopOrCancellationgDDlDlE(r7, r8, r10, r11, r12)
                r9 = r12
                if (r14 != r0) goto L6f
                goto La4
            L6f:
                r4 = r7
            L70:
                androidx.compose.ui.input.pointer.PointerInputChange r14 = (androidx.compose.ui.input.pointer.PointerInputChange) r14
                if (r14 == 0) goto Lb8
                nl3<androidx.compose.ui.geometry.Offset, j59> r13 = r9.$onDragStart
                long r5 = r14.m7569getPositionF1C5BW0()
                androidx.compose.ui.geometry.Offset r5 = androidx.compose.ui.geometry.Offset.m5976boximpl(r5)
                r13.invoke(r5)
                bm3<androidx.compose.ui.input.pointer.PointerInputChange, java.lang.Float, j59> r13 = r9.$onVerticalDrag
                float r1 = r1.b
                java.lang.Float r5 = new java.lang.Float
                r5.<init>(r1)
                r13.invoke(r14, r5)
                long r13 = r14.m7566getIdJ3iCeTQ()
                bm3<androidx.compose.ui.input.pointer.PointerInputChange, java.lang.Float, j59> r1 = r9.$onVerticalDrag
                androidx.compose.foundation.gestures.o r5 = new androidx.compose.foundation.gestures.o
                r5.<init>()
                r9.L$0 = r2
                r9.L$1 = r2
                r9.label = r3
                java.lang.Object r14 = androidx.compose.foundation.gestures.DragGestureDetectorKt.m1509verticalDragjO51t88(r4, r13, r5, r9)
                if (r14 != r0) goto La5
            La4:
                return r0
            La5:
                java.lang.Boolean r14 = (java.lang.Boolean) r14
                boolean r13 = r14.booleanValue()
                if (r13 == 0) goto Lb3
                ll3<j59> r13 = r9.$onDragEnd
                r13.invoke()
                goto Lb8
            Lb3:
                ll3<j59> r13 = r9.$onDragCancel
                r13.invoke()
            Lb8:
                j59 r13 = defpackage.j59.a
                return r13
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.C04845.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureDetectorKt$processDragGesture$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt", f = "DragGestureDetector.kt", l = {284, 1172, 1213, 307, 1252, 1294, 1306}, m = "processDragGesture", v = 1)
    public static final class C04851 extends f02 {
        float F$0;
        Object L$0;
        Object L$1;
        Object L$10;
        Object L$11;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        Object L$8;
        Object L$9;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        public C04851(e02<? super C04851> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DragGestureDetectorKt.processDragGesture(null, null, null, null, null, null, null, null, this);
        }
    }

    static {
        float fM9042constructorimpl = Dp.m9042constructorimpl(0.125f);
        mouseSlop = fM9042constructorimpl;
        float fM9042constructorimpl2 = Dp.m9042constructorimpl(18.0f);
        defaultTouchSlop = fM9042constructorimpl2;
        mouseToTouchSlopRatio = fM9042constructorimpl / fM9042constructorimpl2;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:28:0x00c1 A[LOOP:0: B:24:0x00a8->B:28:0x00c1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:66:0x00cb A[EDGE_INSN: B:66:0x00cb->B:30:0x00cb BREAK  A[LOOP:0: B:24:0x00a8->B:28:0x00c1], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0094 -> B:23:0x009a). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object awaitAllPointersUpWithSlopDetection(androidx.compose.ui.input.pointer.AwaitPointerEventScope r19, androidx.compose.ui.input.pointer.PointerInputChange r20, androidx.compose.ui.input.pointer.PointerEventPass r21, defpackage.e02<? super java.lang.Boolean> r22) {
        /*
            Method dump skipped, instruction units count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.awaitAllPointersUpWithSlopDetection(androidx.compose.ui.input.pointer.AwaitPointerEventScope, androidx.compose.ui.input.pointer.PointerInputChange, androidx.compose.ui.input.pointer.PointerEventPass, e02):java.lang.Object");
    }

    public static /* synthetic */ Object awaitAllPointersUpWithSlopDetection$default(AwaitPointerEventScope awaitPointerEventScope, PointerInputChange pointerInputChange, PointerEventPass pointerEventPass, e02 e02Var, int i, Object obj) {
        if ((i & 2) != 0) {
            pointerEventPass = PointerEventPass.Main;
        }
        return awaitAllPointersUpWithSlopDetection(awaitPointerEventScope, pointerInputChange, pointerEventPass, e02Var);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0079  */
    /* JADX WARN: Code duplicated, block: B:27:0x008d A[LOOP:0: B:23:0x0077->B:27:0x008d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:54:0x0091 A[EDGE_INSN: B:54:0x0091->B:29:0x0091 BREAK  A[LOOP:0: B:23:0x0077->B:27:0x008d], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0063 -> B:22:0x0068). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX INFO: renamed from: awaitDragOrCancellation-rnUCldI, reason: not valid java name */
    public static final java.lang.Object m1490awaitDragOrCancellationrnUCldI(androidx.compose.ui.input.pointer.AwaitPointerEventScope r17, long r18, defpackage.e02<? super androidx.compose.ui.input.pointer.PointerInputChange> r20) {
        /*
            Method dump skipped, instruction units count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m1490awaitDragOrCancellationrnUCldI(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, e02):java.lang.Object");
    }

    /* JADX INFO: renamed from: awaitDragOrUp-jO51t88, reason: not valid java name */
    private static final Object m1491awaitDragOrUpjO51t88(AwaitPointerEventScope awaitPointerEventScope, long j, nl3<? super PointerInputChange, Boolean> nl3Var, e02<? super PointerInputChange> e02Var) {
        PointerInputChange pointerInputChange;
        q07 q07Var = new q07();
        q07Var.b = j;
        while (true) {
            PointerInputChange pointerInputChange2 = null;
            PointerEvent pointerEvent = (PointerEvent) AwaitPointerEventScope.awaitPointerEvent$default(awaitPointerEventScope, null, e02Var, 1, null);
            List<PointerInputChange> changes = pointerEvent.getChanges();
            int size = changes.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    pointerInputChange = null;
                    break;
                }
                pointerInputChange = changes.get(i);
                if (Boolean.valueOf(PointerId.m7548equalsimpl0(pointerInputChange.m7566getIdJ3iCeTQ(), q07Var.b)).booleanValue()) {
                    break;
                }
                i++;
            }
            PointerInputChange pointerInputChange3 = pointerInputChange;
            if (pointerInputChange3 == null) {
                return null;
            }
            if (PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange3)) {
                List<PointerInputChange> changes2 = pointerEvent.getChanges();
                int size2 = changes2.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    PointerInputChange pointerInputChange4 = changes2.get(i2);
                    if (Boolean.valueOf(pointerInputChange4.getPressed()).booleanValue()) {
                        pointerInputChange2 = pointerInputChange4;
                        break;
                    }
                }
                PointerInputChange pointerInputChange5 = pointerInputChange2;
                if (pointerInputChange5 == null) {
                    return pointerInputChange3;
                }
                q07Var.b = pointerInputChange5.m7566getIdJ3iCeTQ();
            } else if (nl3Var.invoke(pointerInputChange3).booleanValue()) {
                return pointerInputChange3;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0079  */
    /* JADX WARN: Code duplicated, block: B:27:0x008d A[LOOP:0: B:23:0x0077->B:27:0x008d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:56:0x0091 A[EDGE_INSN: B:56:0x0091->B:29:0x0091 BREAK  A[LOOP:0: B:23:0x0077->B:27:0x008d], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0063 -> B:22:0x0068). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX INFO: renamed from: awaitHorizontalDragOrCancellation-rnUCldI, reason: not valid java name */
    public static final java.lang.Object m1492awaitHorizontalDragOrCancellationrnUCldI(androidx.compose.ui.input.pointer.AwaitPointerEventScope r17, long r18, defpackage.e02<? super androidx.compose.ui.input.pointer.PointerInputChange> r20) {
        /*
            Method dump skipped, instruction units count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m1492awaitHorizontalDragOrCancellationrnUCldI(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, e02):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:29:0x00e0 A[LOOP:0: B:25:0x00c5->B:29:0x00e0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:67:0x00ed A[EDGE_INSN: B:67:0x00ed->B:31:0x00ed BREAK  A[LOOP:0: B:25:0x00c5->B:29:0x00e0], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v0, types: [jh2] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9, types: [androidx.compose.ui.input.pointer.PointerEventPass, java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:60:0x0189 -> B:61:0x018d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX INFO: renamed from: awaitHorizontalPointerSlopOrCancellation-gDDlDlE, reason: not valid java name */
    public static final java.lang.Object m1493awaitHorizontalPointerSlopOrCancellationgDDlDlE(androidx.compose.ui.input.pointer.AwaitPointerEventScope r20, long r21, int r23, defpackage.bm3<? super androidx.compose.ui.input.pointer.PointerInputChange, ? super java.lang.Float, defpackage.j59> r24, defpackage.e02<? super androidx.compose.ui.input.pointer.PointerInputChange> r25) {
        /*
            Method dump skipped, instruction units count: 415
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m1493awaitHorizontalPointerSlopOrCancellationgDDlDlE(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, int, bm3, e02):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:29:0x00e9 A[LOOP:0: B:25:0x00ce->B:29:0x00e9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:67:0x00f6 A[EDGE_INSN: B:67:0x00f6->B:31:0x00f6 BREAK  A[LOOP:0: B:25:0x00ce->B:29:0x00e9], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v14, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v0, types: [jh2] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9, types: [androidx.compose.ui.input.pointer.PointerEventPass, java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:60:0x0192 -> B:61:0x0197). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX INFO: renamed from: awaitHorizontalTouchSlopOrCancellation-jO51t88, reason: not valid java name */
    public static final java.lang.Object m1494awaitHorizontalTouchSlopOrCancellationjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope r20, long r21, defpackage.bm3<? super androidx.compose.ui.input.pointer.PointerInputChange, ? super java.lang.Float, defpackage.j59> r23, defpackage.e02<? super androidx.compose.ui.input.pointer.PointerInputChange> r24) {
        /*
            Method dump skipped, instruction units count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m1494awaitHorizontalTouchSlopOrCancellationjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, bm3, e02):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v3, types: [r07] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r11v3, types: [T, androidx.compose.ui.input.pointer.PointerInputChange, java.lang.Object] */
    /* JADX INFO: renamed from: awaitLongPressOrCancellation-rnUCldI, reason: not valid java name */
    public static final Object m1495awaitLongPressOrCancellationrnUCldI(AwaitPointerEventScope awaitPointerEventScope, long j, e02<? super PointerInputChange> e02Var) {
        DragGestureDetectorKt$awaitLongPressOrCancellation$1 dragGestureDetectorKt$awaitLongPressOrCancellation$1;
        PointerInputChange pointerInputChange;
        n07 n07Var;
        Object obj;
        if (e02Var instanceof DragGestureDetectorKt$awaitLongPressOrCancellation$1) {
            dragGestureDetectorKt$awaitLongPressOrCancellation$1 = (DragGestureDetectorKt$awaitLongPressOrCancellation$1) e02Var;
            int i = dragGestureDetectorKt$awaitLongPressOrCancellation$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                dragGestureDetectorKt$awaitLongPressOrCancellation$1.label = i - Integer.MIN_VALUE;
            } else {
                dragGestureDetectorKt$awaitLongPressOrCancellation$1 = new DragGestureDetectorKt$awaitLongPressOrCancellation$1(e02Var);
            }
        } else {
            dragGestureDetectorKt$awaitLongPressOrCancellation$1 = new DragGestureDetectorKt$awaitLongPressOrCancellation$1(e02Var);
        }
        Object obj2 = dragGestureDetectorKt$awaitLongPressOrCancellation$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = dragGestureDetectorKt$awaitLongPressOrCancellation$1.label;
        try {
            if (i2 == 0) {
                r57.b(obj2);
                if (m1507isPointerUpDmW0f2w(awaitPointerEventScope.getCurrentEvent(), j)) {
                    return null;
                }
                List<PointerInputChange> changes = awaitPointerEventScope.getCurrentEvent().getChanges();
                int size = changes.size();
                int i3 = 0;
                while (true) {
                    if (i3 >= size) {
                        pointerInputChange = null;
                        break;
                    }
                    pointerInputChange = changes.get(i3);
                    if (PointerId.m7548equalsimpl0(pointerInputChange.m7566getIdJ3iCeTQ(), j)) {
                        break;
                    }
                    i3++;
                }
                PointerInputChange pointerInputChange2 = pointerInputChange;
                if (pointerInputChange2 == 0) {
                    return null;
                }
                r07 r07Var = new r07();
                r07 r07Var2 = new r07();
                r07Var2.b = pointerInputChange2;
                long longPressTimeoutMillis = awaitPointerEventScope.getViewConfiguration().getLongPressTimeoutMillis();
                n07 n07Var2 = new n07();
                DragGestureDetectorKt$awaitLongPressOrCancellation$2 dragGestureDetectorKt$awaitLongPressOrCancellation$2 = new DragGestureDetectorKt$awaitLongPressOrCancellation$2(n07Var2, r07Var2, r07Var, null);
                dragGestureDetectorKt$awaitLongPressOrCancellation$1.L$0 = pointerInputChange2;
                dragGestureDetectorKt$awaitLongPressOrCancellation$1.L$1 = r07Var;
                dragGestureDetectorKt$awaitLongPressOrCancellation$1.L$2 = n07Var2;
                dragGestureDetectorKt$awaitLongPressOrCancellation$1.label = 1;
                if (awaitPointerEventScope.withTimeout(longPressTimeoutMillis, dragGestureDetectorKt$awaitLongPressOrCancellation$2, dragGestureDetectorKt$awaitLongPressOrCancellation$1) == a32Var) {
                    return a32Var;
                }
                n07Var = n07Var2;
                j = r07Var;
                obj = pointerInputChange2;
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                n07Var = (n07) dragGestureDetectorKt$awaitLongPressOrCancellation$1.L$2;
                r07 r07Var3 = (r07) dragGestureDetectorKt$awaitLongPressOrCancellation$1.L$1;
                PointerInputChange pointerInputChange3 = (PointerInputChange) dragGestureDetectorKt$awaitLongPressOrCancellation$1.L$0;
                r57.b(obj2);
                j = r07Var3;
                obj = pointerInputChange3;
            }
            if (!n07Var.b) {
                return null;
            }
            PointerInputChange pointerInputChange4 = (PointerInputChange) j.b;
            return pointerInputChange4 == null ? obj : pointerInputChange4;
        } catch (PointerEventTimeoutCancellationException unused) {
            PointerInputChange pointerInputChange5 = (PointerInputChange) j.b;
            return pointerInputChange5 == null ? obj : pointerInputChange5;
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:30:0x00e9 A[LOOP:0: B:26:0x00d0->B:30:0x00e9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:69:0x00ef A[EDGE_INSN: B:69:0x00ef->B:32:0x00ef BREAK  A[LOOP:0: B:26:0x00d0->B:30:0x00e9], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x0190 -> B:63:0x0194). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX INFO: renamed from: awaitPointerSlopOrCancellation-6ksA65w, reason: not valid java name */
    public static final java.lang.Object m1496awaitPointerSlopOrCancellation6ksA65w(androidx.compose.ui.input.pointer.AwaitPointerEventScope r18, long r19, int r21, androidx.compose.foundation.gestures.Orientation r22, long r23, defpackage.bm3<? super androidx.compose.ui.input.pointer.PointerInputChange, ? super androidx.compose.ui.geometry.Offset, defpackage.j59> r25, defpackage.e02<? super androidx.compose.ui.input.pointer.PointerInputChange> r26) {
        /*
            Method dump skipped, instruction units count: 415
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m1496awaitPointerSlopOrCancellation6ksA65w(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, int, androidx.compose.foundation.gestures.Orientation, long, bm3, e02):java.lang.Object");
    }

    /* JADX INFO: renamed from: awaitPointerSlopOrCancellation-6ksA65w$$forInline, reason: not valid java name */
    private static final Object m1497awaitPointerSlopOrCancellation6ksA65w$$forInline(AwaitPointerEventScope awaitPointerEventScope, long j, int i, Orientation orientation, long j2, bm3<? super PointerInputChange, ? super Offset, j59> bm3Var, e02<? super PointerInputChange> e02Var) {
        PointerInputChange pointerInputChange;
        PointerInputChange pointerInputChange2;
        jh2 jh2Var = null;
        if (m1507isPointerUpDmW0f2w(awaitPointerEventScope.getCurrentEvent(), j)) {
            return null;
        }
        float fM1508pointerSlopE8SPZFQ = m1508pointerSlopE8SPZFQ(awaitPointerEventScope.getViewConfiguration(), i);
        q07 q07Var = new q07();
        q07Var.b = j;
        TouchSlopDetector touchSlopDetector = new TouchSlopDetector(orientation, j2, jh2Var);
        while (true) {
            PointerEvent pointerEvent = (PointerEvent) AwaitPointerEventScope.awaitPointerEvent$default(awaitPointerEventScope, null, e02Var, 1, null);
            List<PointerInputChange> changes = pointerEvent.getChanges();
            int size = changes.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    pointerInputChange = null;
                    break;
                }
                pointerInputChange = changes.get(i2);
                int i3 = i2;
                if (Boolean.valueOf(PointerId.m7548equalsimpl0(pointerInputChange.m7566getIdJ3iCeTQ(), q07Var.b)).booleanValue()) {
                    break;
                }
                i2 = i3 + 1;
            }
            PointerInputChange pointerInputChange3 = pointerInputChange;
            if (pointerInputChange3 == null || pointerInputChange3.isConsumed()) {
                return null;
            }
            if (PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange3)) {
                List<PointerInputChange> changes2 = pointerEvent.getChanges();
                int size2 = changes2.size();
                int i4 = 0;
                while (true) {
                    if (i4 >= size2) {
                        pointerInputChange2 = null;
                        break;
                    }
                    pointerInputChange2 = changes2.get(i4);
                    if (Boolean.valueOf(pointerInputChange2.getPressed()).booleanValue()) {
                        break;
                    }
                    i4++;
                }
                PointerInputChange pointerInputChange4 = pointerInputChange2;
                if (pointerInputChange4 == null) {
                    return null;
                }
                q07Var.b = pointerInputChange4.m7566getIdJ3iCeTQ();
            } else {
                long jM1633getPostSlopOffsetqto3Fdw$default = TouchSlopDetector.m1633getPostSlopOffsetqto3Fdw$default(touchSlopDetector, PointerEventKt.positionChangeIgnoreConsumed(pointerInputChange3), fM1508pointerSlopE8SPZFQ, false, 4, null);
                if ((9223372034707292159L & jM1633getPostSlopOffsetqto3Fdw$default) != InlineClassHelperKt.UnspecifiedPackedFloats) {
                    bm3Var.invoke(pointerInputChange3, Offset.m5976boximpl(jM1633getPostSlopOffsetqto3Fdw$default));
                    if (pointerInputChange3.isConsumed()) {
                        return pointerInputChange3;
                    }
                    TouchSlopDetector.m1634resetk4lQ0M$default(touchSlopDetector, 0L, 1, null);
                } else {
                    awaitPointerEventScope.awaitPointerEvent(PointerEventPass.Final, e02Var);
                    if (pointerInputChange3.isConsumed()) {
                        break;
                    }
                }
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: awaitPointerSlopOrCancellation-6ksA65w$default, reason: not valid java name */
    public static Object m1498awaitPointerSlopOrCancellation6ksA65w$default(AwaitPointerEventScope awaitPointerEventScope, long j, int i, Orientation orientation, long j2, bm3 bm3Var, e02 e02Var, int i2, Object obj) {
        PointerInputChange pointerInputChange;
        PointerInputChange pointerInputChange2;
        long jM6003getZeroF1C5BW0 = (i2 & 8) != 0 ? Offset.Companion.m6003getZeroF1C5BW0() : j2;
        long jM7566getIdJ3iCeTQ = j;
        jh2 jh2Var = null;
        if (m1507isPointerUpDmW0f2w(awaitPointerEventScope.getCurrentEvent(), jM7566getIdJ3iCeTQ)) {
            return null;
        }
        float fM1508pointerSlopE8SPZFQ = m1508pointerSlopE8SPZFQ(awaitPointerEventScope.getViewConfiguration(), i);
        TouchSlopDetector touchSlopDetector = new TouchSlopDetector(orientation, jM6003getZeroF1C5BW0, jh2Var);
        while (true) {
            PointerEvent pointerEvent = (PointerEvent) AwaitPointerEventScope.awaitPointerEvent$default(awaitPointerEventScope, null, e02Var, 1, null);
            List<PointerInputChange> changes = pointerEvent.getChanges();
            int size = changes.size();
            int i3 = 0;
            int i4 = 0;
            while (true) {
                if (i4 >= size) {
                    pointerInputChange = null;
                    break;
                }
                pointerInputChange = changes.get(i4);
                if (PointerId.m7548equalsimpl0(pointerInputChange.m7566getIdJ3iCeTQ(), jM7566getIdJ3iCeTQ)) {
                    break;
                }
                i4++;
            }
            PointerInputChange pointerInputChange3 = pointerInputChange;
            if (pointerInputChange3 == null || pointerInputChange3.isConsumed()) {
                return null;
            }
            if (PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange3)) {
                List<PointerInputChange> changes2 = pointerEvent.getChanges();
                int size2 = changes2.size();
                while (true) {
                    if (i3 >= size2) {
                        pointerInputChange2 = null;
                        break;
                    }
                    pointerInputChange2 = changes2.get(i3);
                    if (pointerInputChange2.getPressed()) {
                        break;
                    }
                    i3++;
                }
                PointerInputChange pointerInputChange4 = pointerInputChange2;
                if (pointerInputChange4 == null) {
                    return null;
                }
                jM7566getIdJ3iCeTQ = pointerInputChange4.m7566getIdJ3iCeTQ();
            } else {
                long jM1633getPostSlopOffsetqto3Fdw$default = TouchSlopDetector.m1633getPostSlopOffsetqto3Fdw$default(touchSlopDetector, PointerEventKt.positionChangeIgnoreConsumed(pointerInputChange3), fM1508pointerSlopE8SPZFQ, false, 4, null);
                if ((9223372034707292159L & jM1633getPostSlopOffsetqto3Fdw$default) != InlineClassHelperKt.UnspecifiedPackedFloats) {
                    bm3Var.invoke(pointerInputChange3, Offset.m5976boximpl(jM1633getPostSlopOffsetqto3Fdw$default));
                    if (pointerInputChange3.isConsumed()) {
                        return pointerInputChange3;
                    }
                    TouchSlopDetector.m1634resetk4lQ0M$default(touchSlopDetector, 0L, 1, null);
                } else {
                    awaitPointerEventScope.awaitPointerEvent(PointerEventPass.Final, e02Var);
                    if (pointerInputChange3.isConsumed()) {
                        break;
                    }
                }
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:29:0x00e5 A[LOOP:0: B:25:0x00cc->B:29:0x00e5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:67:0x00eb A[EDGE_INSN: B:67:0x00eb->B:31:0x00eb BREAK  A[LOOP:0: B:25:0x00cc->B:29:0x00e5], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:60:0x017a -> B:61:0x017f). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX INFO: renamed from: awaitTouchSlopOrCancellation-jO51t88, reason: not valid java name */
    public static final java.lang.Object m1499awaitTouchSlopOrCancellationjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope r18, long r19, defpackage.bm3<? super androidx.compose.ui.input.pointer.PointerInputChange, ? super androidx.compose.ui.geometry.Offset, defpackage.j59> r21, defpackage.e02<? super androidx.compose.ui.input.pointer.PointerInputChange> r22) {
        /*
            Method dump skipped, instruction units count: 396
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m1499awaitTouchSlopOrCancellationjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, bm3, e02):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0079  */
    /* JADX WARN: Code duplicated, block: B:27:0x008d A[LOOP:0: B:23:0x0077->B:27:0x008d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:56:0x0091 A[EDGE_INSN: B:56:0x0091->B:29:0x0091 BREAK  A[LOOP:0: B:23:0x0077->B:27:0x008d], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0063 -> B:22:0x0068). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX INFO: renamed from: awaitVerticalDragOrCancellation-rnUCldI, reason: not valid java name */
    public static final java.lang.Object m1500awaitVerticalDragOrCancellationrnUCldI(androidx.compose.ui.input.pointer.AwaitPointerEventScope r17, long r18, defpackage.e02<? super androidx.compose.ui.input.pointer.PointerInputChange> r20) {
        /*
            Method dump skipped, instruction units count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m1500awaitVerticalDragOrCancellationrnUCldI(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, e02):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:29:0x00e0 A[LOOP:0: B:25:0x00c5->B:29:0x00e0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:67:0x00ed A[EDGE_INSN: B:67:0x00ed->B:31:0x00ed BREAK  A[LOOP:0: B:25:0x00c5->B:29:0x00e0], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v0, types: [jh2] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10, types: [androidx.compose.ui.input.pointer.PointerEventPass, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:60:0x018c -> B:61:0x0190). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX INFO: renamed from: awaitVerticalPointerSlopOrCancellation-gDDlDlE, reason: not valid java name */
    public static final java.lang.Object m1501awaitVerticalPointerSlopOrCancellationgDDlDlE(androidx.compose.ui.input.pointer.AwaitPointerEventScope r20, long r21, int r23, defpackage.bm3<? super androidx.compose.ui.input.pointer.PointerInputChange, ? super java.lang.Float, defpackage.j59> r24, defpackage.e02<? super androidx.compose.ui.input.pointer.PointerInputChange> r25) {
        /*
            Method dump skipped, instruction units count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m1501awaitVerticalPointerSlopOrCancellationgDDlDlE(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, int, bm3, e02):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:29:0x00e9 A[LOOP:0: B:25:0x00ce->B:29:0x00e9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:67:0x00f6 A[EDGE_INSN: B:67:0x00f6->B:31:0x00f6 BREAK  A[LOOP:0: B:25:0x00ce->B:29:0x00e9], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v14, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v0, types: [jh2] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10, types: [androidx.compose.ui.input.pointer.PointerEventPass, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:60:0x0195 -> B:61:0x019a). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX INFO: renamed from: awaitVerticalTouchSlopOrCancellation-jO51t88, reason: not valid java name */
    public static final java.lang.Object m1502awaitVerticalTouchSlopOrCancellationjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope r20, long r21, defpackage.bm3<? super androidx.compose.ui.input.pointer.PointerInputChange, ? super java.lang.Float, defpackage.j59> r23, defpackage.e02<? super androidx.compose.ui.input.pointer.PointerInputChange> r24) {
        /*
            Method dump skipped, instruction units count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m1502awaitVerticalTouchSlopOrCancellationjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, bm3, e02):java.lang.Object");
    }

    public static final Object detectDragGestures(PointerInputScope pointerInputScope, nl3<? super Offset, j59> nl3Var, ll3<j59> ll3Var, ll3<j59> ll3Var2, bm3<? super PointerInputChange, ? super Offset, j59> bm3Var, e02<? super j59> e02Var) {
        Object objDetectDragGestures = detectDragGestures(pointerInputScope, null, new hr2(nl3Var, 0), new ir2(ll3Var, 0), ll3Var2, new bc(1), bm3Var, e02Var);
        return objDetectDragGestures == a32.COROUTINE_SUSPENDED ? objDetectDragGestures : j59.a;
    }

    public static /* synthetic */ Object detectDragGestures$default(PointerInputScope pointerInputScope, Orientation orientation, dm3 dm3Var, nl3 nl3Var, ll3 ll3Var, ll3 ll3Var2, bm3 bm3Var, e02 e02Var, int i, Object obj) {
        if ((i & 2) != 0) {
            dm3Var = new jr2();
        }
        dm3 dm3Var2 = dm3Var;
        if ((i & 4) != 0) {
            nl3Var = new k31(1);
        }
        nl3 nl3Var2 = nl3Var;
        if ((i & 8) != 0) {
            ll3Var = new kr2(0);
        }
        ll3 ll3Var3 = ll3Var;
        if ((i & 16) != 0) {
            ll3Var2 = new lr2(0);
        }
        return detectDragGestures(pointerInputScope, orientation, dm3Var2, nl3Var2, ll3Var3, ll3Var2, bm3Var, e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 detectDragGestures$lambda$0(Offset offset) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 detectDragGestures$lambda$3(nl3 nl3Var, PointerInputChange pointerInputChange, PointerInputChange pointerInputChange2, Offset offset) {
        nl3Var.invoke(Offset.m5976boximpl(pointerInputChange2.m7569getPositionF1C5BW0()));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 detectDragGestures$lambda$4(ll3 ll3Var, PointerInputChange pointerInputChange) {
        ll3Var.invoke();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean detectDragGestures$lambda$5() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 detectDragGestures$lambda$6(PointerInputChange pointerInputChange, PointerInputChange pointerInputChange2, Offset offset) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 detectDragGestures$lambda$7(PointerInputChange pointerInputChange) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean detectDragGestures$lambda$9() {
        return true;
    }

    public static final Object detectDragGesturesAfterLongPress(PointerInputScope pointerInputScope, nl3<? super Offset, j59> nl3Var, ll3<j59> ll3Var, ll3<j59> ll3Var2, bm3<? super PointerInputChange, ? super Offset, j59> bm3Var, e02<? super j59> e02Var) {
        Object objAwaitEachGesture = ForEachGestureKt.awaitEachGesture(pointerInputScope, new AnonymousClass5(nl3Var, ll3Var, ll3Var2, bm3Var, null), e02Var);
        return objAwaitEachGesture == a32.COROUTINE_SUSPENDED ? objAwaitEachGesture : j59.a;
    }

    public static /* synthetic */ Object detectDragGesturesAfterLongPress$default(PointerInputScope pointerInputScope, nl3 nl3Var, ll3 ll3Var, ll3 ll3Var2, bm3 bm3Var, e02 e02Var, int i, Object obj) {
        if ((i & 1) != 0) {
            nl3Var = new v71(2);
        }
        nl3 nl3Var2 = nl3Var;
        if ((i & 2) != 0) {
            ll3Var = new zq2(0);
        }
        ll3 ll3Var3 = ll3Var;
        if ((i & 4) != 0) {
            ll3Var2 = new ar2(0);
        }
        return detectDragGesturesAfterLongPress(pointerInputScope, nl3Var2, ll3Var3, ll3Var2, bm3Var, e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 detectDragGesturesAfterLongPress$lambda$0(Offset offset) {
        return j59.a;
    }

    public static final Object detectHorizontalDragGestures(PointerInputScope pointerInputScope, nl3<? super Offset, j59> nl3Var, ll3<j59> ll3Var, ll3<j59> ll3Var2, bm3<? super PointerInputChange, ? super Float, j59> bm3Var, e02<? super j59> e02Var) {
        Object objAwaitEachGesture = ForEachGestureKt.awaitEachGesture(pointerInputScope, new C04835(nl3Var, bm3Var, ll3Var, ll3Var2, null), e02Var);
        return objAwaitEachGesture == a32.COROUTINE_SUSPENDED ? objAwaitEachGesture : j59.a;
    }

    public static /* synthetic */ Object detectHorizontalDragGestures$default(PointerInputScope pointerInputScope, nl3 nl3Var, ll3 ll3Var, ll3 ll3Var2, bm3 bm3Var, e02 e02Var, int i, Object obj) {
        if ((i & 1) != 0) {
            nl3Var = new yq2(0);
        }
        nl3 nl3Var2 = nl3Var;
        if ((i & 2) != 0) {
            ll3Var = new ju1(1);
        }
        ll3 ll3Var3 = ll3Var;
        if ((i & 4) != 0) {
            ll3Var2 = new gr2(0);
        }
        return detectHorizontalDragGestures(pointerInputScope, nl3Var2, ll3Var3, ll3Var2, bm3Var, e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 detectHorizontalDragGestures$lambda$0(Offset offset) {
        return j59.a;
    }

    public static final Object detectVerticalDragGestures(PointerInputScope pointerInputScope, nl3<? super Offset, j59> nl3Var, ll3<j59> ll3Var, ll3<j59> ll3Var2, bm3<? super PointerInputChange, ? super Float, j59> bm3Var, e02<? super j59> e02Var) {
        Object objAwaitEachGesture = ForEachGestureKt.awaitEachGesture(pointerInputScope, new C04845(nl3Var, bm3Var, ll3Var, ll3Var2, null), e02Var);
        return objAwaitEachGesture == a32.COROUTINE_SUSPENDED ? objAwaitEachGesture : j59.a;
    }

    public static /* synthetic */ Object detectVerticalDragGestures$default(PointerInputScope pointerInputScope, nl3 nl3Var, ll3 ll3Var, ll3 ll3Var2, bm3 bm3Var, e02 e02Var, int i, Object obj) {
        if ((i & 1) != 0) {
            nl3Var = new w82(1);
        }
        nl3 nl3Var2 = nl3Var;
        if ((i & 2) != 0) {
            ll3Var = new er2(0);
        }
        ll3 ll3Var3 = ll3Var;
        if ((i & 4) != 0) {
            ll3Var2 = new fr2(0);
        }
        return detectVerticalDragGestures(pointerInputScope, nl3Var2, ll3Var3, ll3Var2, bm3Var, e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 detectVerticalDragGestures$lambda$0(Offset offset) {
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x009f  */
    /* JADX WARN: Code duplicated, block: B:28:0x00b8 A[LOOP:0: B:24:0x009d->B:28:0x00b8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:69:0x00c2 A[EDGE_INSN: B:69:0x00c2->B:30:0x00c2 BREAK  A[LOOP:0: B:24:0x009d->B:28:0x00b8], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0089 -> B:23:0x008f). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX INFO: renamed from: drag-VnAYq1g, reason: not valid java name */
    public static final java.lang.Object m1503dragVnAYq1g(androidx.compose.ui.input.pointer.AwaitPointerEventScope r18, long r19, defpackage.nl3<? super androidx.compose.ui.input.pointer.PointerInputChange, defpackage.j59> r21, androidx.compose.foundation.gestures.Orientation r22, defpackage.nl3<? super androidx.compose.ui.input.pointer.PointerInputChange, java.lang.Boolean> r23, defpackage.e02<? super androidx.compose.ui.input.pointer.PointerInputChange> r24) {
        /*
            Method dump skipped, instruction units count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m1503dragVnAYq1g(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, nl3, androidx.compose.foundation.gestures.Orientation, nl3, e02):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: drag-VnAYq1g$$forInline, reason: not valid java name */
    private static final Object m1504dragVnAYq1g$$forInline(AwaitPointerEventScope awaitPointerEventScope, long j, nl3<? super PointerInputChange, j59> nl3Var, Orientation orientation, nl3<? super PointerInputChange, Boolean> nl3Var2, e02<? super PointerInputChange> e02Var) {
        PointerInputChange pointerInputChange;
        PointerInputChange pointerInputChange2;
        PointerInputChange pointerInputChange3;
        float fIntBitsToFloat;
        long jM7566getIdJ3iCeTQ = j;
        if (m1507isPointerUpDmW0f2w(awaitPointerEventScope.getCurrentEvent(), jM7566getIdJ3iCeTQ)) {
            return null;
        }
        while (true) {
            q07 q07Var = new q07();
            q07Var.b = jM7566getIdJ3iCeTQ;
            while (true) {
                PointerEvent pointerEvent = (PointerEvent) AwaitPointerEventScope.awaitPointerEvent$default(awaitPointerEventScope, null, e02Var, 1, null);
                List<PointerInputChange> changes = pointerEvent.getChanges();
                int size = changes.size();
                int i = 0;
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        pointerInputChange = null;
                        break;
                    }
                    pointerInputChange = changes.get(i2);
                    if (Boolean.valueOf(PointerId.m7548equalsimpl0(pointerInputChange.m7566getIdJ3iCeTQ(), q07Var.b)).booleanValue()) {
                        break;
                    }
                    i2++;
                }
                pointerInputChange2 = pointerInputChange;
                if (pointerInputChange2 == null) {
                    pointerInputChange2 = null;
                    break;
                }
                if (PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange2)) {
                    List<PointerInputChange> changes2 = pointerEvent.getChanges();
                    int size2 = changes2.size();
                    while (true) {
                        if (i >= size2) {
                            pointerInputChange3 = null;
                            break;
                        }
                        pointerInputChange3 = changes2.get(i);
                        if (Boolean.valueOf(pointerInputChange3.getPressed()).booleanValue()) {
                            break;
                        }
                        i++;
                    }
                    PointerInputChange pointerInputChange4 = pointerInputChange3;
                    if (pointerInputChange4 == null) {
                        break;
                    }
                    q07Var.b = pointerInputChange4.m7566getIdJ3iCeTQ();
                } else {
                    long jPositionChangeIgnoreConsumed = PointerEventKt.positionChangeIgnoreConsumed(pointerInputChange2);
                    if (orientation == null) {
                        fIntBitsToFloat = Offset.m5985getDistanceimpl(jPositionChangeIgnoreConsumed);
                    } else {
                        fIntBitsToFloat = orientation == Orientation.Vertical ? Float.intBitsToFloat((int) (jPositionChangeIgnoreConsumed & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) : Float.intBitsToFloat((int) (jPositionChangeIgnoreConsumed >> 32));
                    }
                    if (Boolean.valueOf(1 ^ (fIntBitsToFloat == 0.0f ? 1 : 0)).booleanValue()) {
                        break;
                    }
                }
            }
            if (pointerInputChange2 == null || nl3Var2.invoke(pointerInputChange2).booleanValue()) {
                return null;
            }
            if (PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange2)) {
                return pointerInputChange2;
            }
            nl3Var.invoke(pointerInputChange2);
            jM7566getIdJ3iCeTQ = pointerInputChange2.m7566getIdJ3iCeTQ();
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0047 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:22:0x004f  */
    /* JADX WARN: Code duplicated, block: B:24:0x0055  */
    /* JADX WARN: Code duplicated, block: B:26:0x0058  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0045 -> B:18:0x0048). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX INFO: renamed from: drag-jO51t88, reason: not valid java name */
    public static final java.lang.Object m1505dragjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope r4, long r5, defpackage.nl3<? super androidx.compose.ui.input.pointer.PointerInputChange, defpackage.j59> r7, defpackage.e02<? super java.lang.Boolean> r8) {
        /*
            boolean r0 = r8 instanceof androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1 r0 = (androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1 r0 = new androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.result
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L38
            if (r2 != r3) goto L31
            java.lang.Object r4 = r0.L$1
            nl3 r4 = (defpackage.nl3) r4
            java.lang.Object r5 = r0.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r5 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r5
            defpackage.r57.b(r8)
            r7 = r4
            r4 = r5
            goto L48
        L31:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r4)
            r4 = 0
            return r4
        L38:
            defpackage.r57.b(r8)
        L3b:
            r0.L$0 = r4
            r0.L$1 = r7
            r0.label = r3
            java.lang.Object r8 = m1490awaitDragOrCancellationrnUCldI(r4, r5, r0)
            if (r8 != r1) goto L48
            return r1
        L48:
            androidx.compose.ui.input.pointer.PointerInputChange r8 = (androidx.compose.ui.input.pointer.PointerInputChange) r8
            if (r8 != 0) goto L4f
            java.lang.Boolean r4 = java.lang.Boolean.FALSE
            return r4
        L4f:
            boolean r5 = androidx.compose.ui.input.pointer.PointerEventKt.changedToUpIgnoreConsumed(r8)
            if (r5 == 0) goto L58
            java.lang.Boolean r4 = java.lang.Boolean.TRUE
            return r4
        L58:
            r7.invoke(r8)
            long r5 = r8.m7566getIdJ3iCeTQ()
            goto L3b
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m1505dragjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, nl3, e02):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0095  */
    /* JADX WARN: Code duplicated, block: B:28:0x00ab A[LOOP:0: B:24:0x0093->B:28:0x00ab, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:75:0x00b5 A[EDGE_INSN: B:75:0x00b5->B:30:0x00b5 BREAK  A[LOOP:0: B:24:0x0093->B:28:0x00ab], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x007f -> B:23:0x0085). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX INFO: renamed from: horizontalDrag-jO51t88, reason: not valid java name */
    public static final java.lang.Object m1506horizontalDragjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope r17, long r18, defpackage.nl3<? super androidx.compose.ui.input.pointer.PointerInputChange, defpackage.j59> r20, defpackage.e02<? super java.lang.Boolean> r21) {
        /*
            Method dump skipped, instruction units count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m1506horizontalDragjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, nl3, e02):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: isPointerUp-DmW0f2w, reason: not valid java name */
    public static final boolean m1507isPointerUpDmW0f2w(PointerEvent pointerEvent, long j) {
        PointerInputChange pointerInputChange;
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int size = changes.size();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= size) {
                pointerInputChange = null;
                break;
            }
            pointerInputChange = changes.get(i);
            if (PointerId.m7548equalsimpl0(pointerInputChange.m7566getIdJ3iCeTQ(), j)) {
                break;
            }
            i++;
        }
        PointerInputChange pointerInputChange2 = pointerInputChange;
        if (pointerInputChange2 != null && pointerInputChange2.getPressed()) {
            z = true;
        }
        return true ^ z;
    }

    /* JADX INFO: renamed from: pointerSlop-E8SPZFQ, reason: not valid java name */
    public static final float m1508pointerSlopE8SPZFQ(ViewConfiguration viewConfiguration, int i) {
        return PointerType.m7642equalsimpl0(i, PointerType.Companion.m7647getMouseT8wyACA()) ? viewConfiguration.getTouchSlop() * mouseToTouchSlopRatio : viewConfiguration.getTouchSlop();
    }

    /* JADX WARN: Code duplicated, block: B:239:0x02d4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:42:0x02d7 A[LOOP:8: B:38:0x02b6->B:42:0x02d7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:101:0x0444 -> B:91:0x03ea). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:115:0x0498 -> B:116:0x04a0). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:159:0x05fa -> B:160:0x0602). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:166:0x0621 -> B:85:0x03c1). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:174:0x0687 -> B:176:0x068a). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x0253 -> B:78:0x03a6). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x02e9 -> B:47:0x02ed). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x0356 -> B:78:0x03a6). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:74:0x039b -> B:75:0x039d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object processDragGesture(androidx.compose.ui.input.pointer.AwaitPointerEventScope r27, androidx.compose.ui.input.pointer.PointerInputChange r28, defpackage.ll3<java.lang.Boolean> r29, androidx.compose.foundation.gestures.Orientation r30, defpackage.dm3<? super androidx.compose.ui.input.pointer.PointerInputChange, ? super androidx.compose.ui.input.pointer.PointerInputChange, ? super androidx.compose.ui.geometry.Offset, defpackage.j59> r31, defpackage.bm3<? super androidx.compose.ui.input.pointer.PointerInputChange, ? super androidx.compose.ui.geometry.Offset, defpackage.j59> r32, defpackage.ll3<defpackage.j59> r33, defpackage.nl3<? super androidx.compose.ui.input.pointer.PointerInputChange, defpackage.j59> r34, defpackage.e02<? super defpackage.j59> r35) {
        /*
            Method dump skipped, instruction units count: 1880
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.processDragGesture(androidx.compose.ui.input.pointer.AwaitPointerEventScope, androidx.compose.ui.input.pointer.PointerInputChange, ll3, androidx.compose.foundation.gestures.Orientation, dm3, bm3, ll3, nl3, e02):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0095  */
    /* JADX WARN: Code duplicated, block: B:28:0x00ab A[LOOP:0: B:24:0x0093->B:28:0x00ab, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:75:0x00b5 A[EDGE_INSN: B:75:0x00b5->B:30:0x00b5 BREAK  A[LOOP:0: B:24:0x0093->B:28:0x00ab], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x007f -> B:23:0x0085). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX INFO: renamed from: verticalDrag-jO51t88, reason: not valid java name */
    public static final java.lang.Object m1509verticalDragjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope r17, long r18, defpackage.nl3<? super androidx.compose.ui.input.pointer.PointerInputChange, defpackage.j59> r20, defpackage.e02<? super java.lang.Boolean> r21) {
        /*
            Method dump skipped, instruction units count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m1509verticalDragjO51t88(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, nl3, e02):java.lang.Object");
    }

    public static final Object detectDragGestures(PointerInputScope pointerInputScope, Orientation orientation, dm3<? super PointerInputChange, ? super PointerInputChange, ? super Offset, j59> dm3Var, nl3<? super PointerInputChange, j59> nl3Var, ll3<j59> ll3Var, ll3<Boolean> ll3Var2, bm3<? super PointerInputChange, ? super Offset, j59> bm3Var, e02<? super j59> e02Var) {
        Object objAwaitEachGesture = ForEachGestureKt.awaitEachGesture(pointerInputScope, new AnonymousClass13(ll3Var2, orientation, dm3Var, bm3Var, ll3Var, nl3Var, null), e02Var);
        return objAwaitEachGesture == a32.COROUTINE_SUSPENDED ? objAwaitEachGesture : j59.a;
    }

    public static /* synthetic */ Object detectDragGestures$default(PointerInputScope pointerInputScope, nl3 nl3Var, ll3 ll3Var, ll3 ll3Var2, bm3 bm3Var, e02 e02Var, int i, Object obj) {
        if ((i & 1) != 0) {
            nl3Var = new br2(0);
        }
        nl3 nl3Var2 = nl3Var;
        if ((i & 2) != 0) {
            ll3Var = new cr2(0);
        }
        ll3 ll3Var3 = ll3Var;
        if ((i & 4) != 0) {
            ll3Var2 = new dr2(0);
        }
        return detectDragGestures(pointerInputScope, nl3Var2, ll3Var3, ll3Var2, bm3Var, e02Var);
    }
}
