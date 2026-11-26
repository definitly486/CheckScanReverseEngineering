package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.selection.SelectionGesturesKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEvent_androidKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.platform.ViewConfiguration;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.f57;
import defpackage.j59;
import defpackage.n07;
import defpackage.nl3;
import defpackage.r57;
import defpackage.rk5;
import java.util.List;
import org.conscrypt.metrics.ConscryptStatsLog;

/* JADX INFO: loaded from: classes.dex */
public final class SelectionGesturesKt {
    private static final int STATIC_KEY = 8675309;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionGesturesKt$awaitDown$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.selection.SelectionGesturesKt", f = "SelectionGestures.kt", l = {340}, m = "awaitDown", v = 1)
    public static final class AnonymousClass1 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SelectionGesturesKt.awaitDown(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionGesturesKt$awaitSelectionGestures$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.selection.SelectionGesturesKt$awaitSelectionGestures$2", f = "SelectionGestures.kt", l = {111, 119, 122, 124}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
        final /* synthetic */ ClicksCounter $clicksCounter;
        final /* synthetic */ MouseSelectionObserver $mouseSelectionObserver;
        final /* synthetic */ TextDragObserver $textDragObserver;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(ClicksCounter clicksCounter, MouseSelectionObserver mouseSelectionObserver, TextDragObserver textDragObserver, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$clicksCounter = clicksCounter;
            this.$mouseSelectionObserver = mouseSelectionObserver;
            this.$textDragObserver = textDragObserver;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$clicksCounter, this.$mouseSelectionObserver, this.$textDragObserver, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:27:0x007b, code lost:
        
            if (androidx.compose.foundation.text.selection.SelectionGesturesKt.mouseSelection(r1, r2, r3, r13, r12) == r0) goto L37;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0092, code lost:
        
            if (androidx.compose.foundation.text.selection.SelectionGesturesKt.touchSelectionFirstPress(r1, r7, r13, r12) == r0) goto L37;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00a3, code lost:
        
            if (androidx.compose.foundation.text.selection.SelectionGesturesKt.touchSelectionSubsequentPress(r1, r7, r13, r3, r12) == r0) goto L37;
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
                r2 = 4
                r3 = 3
                r4 = 2
                r5 = 0
                r6 = 1
                if (r1 == 0) goto L27
                if (r1 == r6) goto L1f
                if (r1 == r4) goto L1a
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L14
                goto L1a
            L14:
                java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r12)
                return r5
            L1a:
                defpackage.r57.b(r13)
                goto La6
            L1f:
                java.lang.Object r1 = r12.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                defpackage.r57.b(r13)
                goto L3a
            L27:
                defpackage.r57.b(r13)
                java.lang.Object r13 = r12.L$0
                r1 = r13
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                r12.L$0 = r1
                r12.label = r6
                java.lang.Object r13 = androidx.compose.foundation.text.selection.SelectionGesturesKt.access$awaitDown(r1, r12)
                if (r13 != r0) goto L3a
                goto La5
            L3a:
                androidx.compose.ui.input.pointer.PointerEvent r13 = (androidx.compose.ui.input.pointer.PointerEvent) r13
                androidx.compose.foundation.text.selection.ClicksCounter r7 = r12.$clicksCounter
                r7.update(r13)
                boolean r7 = androidx.compose.foundation.text.selection.SelectionGestures_androidKt.isMouseOrTouchPad(r13)
                if (r7 == 0) goto L7e
                int r8 = r13.m7500getButtonsry648PA()
                boolean r8 = androidx.compose.ui.input.pointer.PointerEvent_androidKt.m7539isPrimaryPressedaHzCxE(r8)
                if (r8 == 0) goto L7e
                java.util.List r8 = r13.getChanges()
                r9 = r8
                java.util.Collection r9 = (java.util.Collection) r9
                int r9 = r9.size()
                r10 = 0
            L5d:
                if (r10 >= r9) goto L6f
                java.lang.Object r11 = r8.get(r10)
                androidx.compose.ui.input.pointer.PointerInputChange r11 = (androidx.compose.ui.input.pointer.PointerInputChange) r11
                boolean r11 = r11.isConsumed()
                if (r11 == 0) goto L6c
                goto L7e
            L6c:
                int r10 = r10 + 1
                goto L5d
            L6f:
                androidx.compose.foundation.text.selection.MouseSelectionObserver r2 = r12.$mouseSelectionObserver
                androidx.compose.foundation.text.selection.ClicksCounter r3 = r12.$clicksCounter
                r12.L$0 = r5
                r12.label = r4
                java.lang.Object r12 = androidx.compose.foundation.text.selection.SelectionGesturesKt.mouseSelection(r1, r2, r3, r13, r12)
                if (r12 != r0) goto La6
                goto La5
            L7e:
                if (r7 != 0) goto La6
                androidx.compose.foundation.text.selection.ClicksCounter r4 = r12.$clicksCounter
                int r4 = r4.getClicks()
                androidx.compose.foundation.text.TextDragObserver r7 = r12.$textDragObserver
                if (r4 != r6) goto L95
                r12.L$0 = r5
                r12.label = r3
                java.lang.Object r12 = androidx.compose.foundation.text.selection.SelectionGesturesKt.touchSelectionFirstPress(r1, r7, r13, r12)
                if (r12 != r0) goto La6
                goto La5
            L95:
                androidx.compose.foundation.text.selection.ClicksCounter r3 = r12.$clicksCounter
                int r3 = r3.getClicks()
                r12.L$0 = r5
                r12.label = r2
                java.lang.Object r12 = androidx.compose.foundation.text.selection.SelectionGesturesKt.access$touchSelectionSubsequentPress(r1, r7, r13, r3, r12)
                if (r12 != r0) goto La6
            La5:
                return r0
            La6:
                j59 r12 = defpackage.j59.a
                return r12
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.SelectionGesturesKt.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionGesturesKt$mouseSelection$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.text.selection.SelectionGesturesKt", f = "SelectionGestures.kt", l = {267, 294}, m = "mouseSelection", v = 1)
    public static final class C05701 extends f02 {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C05701(e02<? super C05701> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SelectionGesturesKt.mouseSelection(null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionGesturesKt$touchSelectionFirstPress$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.text.selection.SelectionGesturesKt", f = "SelectionGestures.kt", l = {ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_PSK_WITH_AES_256_CBC_SHA, 145}, m = "touchSelectionFirstPress", v = 1)
    public static final class C05711 extends f02 {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C05711(e02<? super C05711> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SelectionGesturesKt.touchSelectionFirstPress(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionGesturesKt$touchSelectionSubsequentPress$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.text.selection.SelectionGesturesKt", f = "SelectionGestures.kt", l = {193, 232}, m = "touchSelectionSubsequentPress", v = 1)
    public static final class C05721 extends f02 {
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C05721(e02<? super C05721> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SelectionGesturesKt.touchSelectionSubsequentPress(null, null, null, 0, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:17:0x0041 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x0052  */
    /* JADX WARN: Code duplicated, block: B:23:0x005f A[LOOP:0: B:19:0x0050->B:23:0x005f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:26:0x0035 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x003f -> B:18:0x0042). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object awaitDown(androidx.compose.ui.input.pointer.AwaitPointerEventScope r7, defpackage.e02<? super androidx.compose.ui.input.pointer.PointerEvent> r8) {
        /*
            boolean r0 = r8 instanceof androidx.compose.foundation.text.selection.SelectionGesturesKt.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.compose.foundation.text.selection.SelectionGesturesKt$awaitDown$1 r0 = (androidx.compose.foundation.text.selection.SelectionGesturesKt.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.text.selection.SelectionGesturesKt$awaitDown$1 r0 = new androidx.compose.foundation.text.selection.SelectionGesturesKt$awaitDown$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.result
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L32
            if (r2 != r3) goto L2b
            java.lang.Object r7 = r0.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r7 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r7
            defpackage.r57.b(r8)
            goto L42
        L2b:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            r7 = 0
            return r7
        L32:
            defpackage.r57.b(r8)
        L35:
            androidx.compose.ui.input.pointer.PointerEventPass r8 = androidx.compose.ui.input.pointer.PointerEventPass.Main
            r0.L$0 = r7
            r0.label = r3
            java.lang.Object r8 = r7.awaitPointerEvent(r8, r0)
            if (r8 != r1) goto L42
            return r1
        L42:
            androidx.compose.ui.input.pointer.PointerEvent r8 = (androidx.compose.ui.input.pointer.PointerEvent) r8
            java.util.List r2 = r8.getChanges()
            r4 = r2
            java.util.Collection r4 = (java.util.Collection) r4
            int r4 = r4.size()
            r5 = 0
        L50:
            if (r5 >= r4) goto L62
            java.lang.Object r6 = r2.get(r5)
            androidx.compose.ui.input.pointer.PointerInputChange r6 = (androidx.compose.ui.input.pointer.PointerInputChange) r6
            boolean r6 = androidx.compose.ui.input.pointer.PointerEventKt.changedToDown(r6)
            if (r6 != 0) goto L5f
            goto L35
        L5f:
            int r5 = r5 + 1
            goto L50
        L62:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.SelectionGesturesKt.awaitDown(androidx.compose.ui.input.pointer.AwaitPointerEventScope, e02):java.lang.Object");
    }

    public static final Object awaitSelectionGestures(PointerInputScope pointerInputScope, MouseSelectionObserver mouseSelectionObserver, TextDragObserver textDragObserver, e02<? super j59> e02Var) {
        Object objAwaitEachGesture = ForEachGestureKt.awaitEachGesture(pointerInputScope, new AnonymousClass2(new ClicksCounter(pointerInputScope.getViewConfiguration()), mouseSelectionObserver, textDragObserver, null), e02Var);
        return objAwaitEachGesture == a32.COROUTINE_SUSPENDED ? objAwaitEachGesture : j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean distanceIsTolerable(ViewConfiguration viewConfiguration, PointerInputChange pointerInputChange, PointerInputChange pointerInputChange2) {
        return Offset.m5985getDistanceimpl(Offset.m5991minusMKHz9U(pointerInputChange.m7569getPositionF1C5BW0(), pointerInputChange2.m7569getPositionF1C5BW0())) < DragGestureDetectorKt.m1508pointerSlopE8SPZFQ(viewConfiguration, pointerInputChange.m7572getTypeT8wyACA());
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0094 A[Catch: all -> 0x004f, TryCatch #1 {all -> 0x004f, blocks: (B:20:0x004b, B:31:0x008c, B:33:0x0094, B:35:0x00a5, B:37:0x00b1, B:28:0x0072), top: B:69:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00a5 A[Catch: all -> 0x004f, TryCatch #1 {all -> 0x004f, blocks: (B:20:0x004b, B:31:0x008c, B:33:0x0094, B:35:0x00a5, B:37:0x00b1, B:28:0x0072), top: B:69:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00b1 A[Catch: all -> 0x004f, TRY_LEAVE, TryCatch #1 {all -> 0x004f, blocks: (B:20:0x004b, B:31:0x008c, B:33:0x0094, B:35:0x00a5, B:37:0x00b1, B:28:0x0072), top: B:69:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0132 A[Catch: all -> 0x0038, TryCatch #0 {all -> 0x0038, blocks: (B:13:0x0033, B:54:0x0115, B:56:0x011d, B:58:0x0121, B:60:0x0132, B:62:0x013e, B:50:0x00ea), top: B:69:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x013e A[Catch: all -> 0x0038, TRY_LEAVE, TryCatch #0 {all -> 0x0038, blocks: (B:13:0x0033, B:54:0x0115, B:56:0x011d, B:58:0x0121, B:60:0x0132, B:62:0x013e, B:50:0x00ea), top: B:69:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0141 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x00b4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object mouseSelection(AwaitPointerEventScope awaitPointerEventScope, final MouseSelectionObserver mouseSelectionObserver, ClicksCounter clicksCounter, PointerEvent pointerEvent, e02<? super j59> e02Var) {
        C05701 c05701;
        SelectionAdjustment.Companion companion;
        final SelectionAdjustment none;
        AwaitPointerEventScope awaitPointerEventScope2;
        n07 n07Var;
        List<PointerInputChange> changes;
        int size;
        PointerInputChange pointerInputChange;
        List<PointerInputChange> changes2;
        int size2;
        PointerInputChange pointerInputChange2;
        if (e02Var instanceof C05701) {
            c05701 = (C05701) e02Var;
            int i = c05701.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05701.label = i - Integer.MIN_VALUE;
            } else {
                c05701 = new C05701(e02Var);
            }
        } else {
            c05701 = new C05701(e02Var);
        }
        Object objM1505dragjO51t88 = c05701.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c05701.label;
        int i3 = 0;
        int i4 = 1;
        try {
            try {
                if (i2 == 0) {
                    r57.b(objM1505dragjO51t88);
                    PointerInputChange pointerInputChange3 = pointerEvent.getChanges().get(0);
                    if (!PointerEvent_androidKt.m7542isShiftPressed5xRPYO0(pointerEvent.m7501getKeyboardModifiersk7X9c1A())) {
                        int clicks = clicksCounter.getClicks();
                        if (clicks == 1) {
                            companion = SelectionAdjustment.Companion;
                            none = companion.getNone();
                        } else if (clicks != 2) {
                            companion = SelectionAdjustment.Companion;
                            none = companion.getParagraph();
                        } else {
                            companion = SelectionAdjustment.Companion;
                            none = companion.getWord();
                        }
                        if (mouseSelectionObserver.mo2887onStart9KIMszo(pointerInputChange3.m7569getPositionF1C5BW0(), none, clicksCounter.getClicks())) {
                            final n07 n07Var2 = new n07();
                            n07Var2.b = !aa4.e(none, companion.getNone());
                            long jM7566getIdJ3iCeTQ = pointerInputChange3.m7566getIdJ3iCeTQ();
                            nl3 nl3Var = new nl3() { // from class: hn7
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return SelectionGesturesKt.mouseSelection$lambda$2(mouseSelectionObserver, none, n07Var2, (PointerInputChange) obj);
                                }
                            };
                            c05701.L$0 = awaitPointerEventScope;
                            c05701.L$1 = mouseSelectionObserver;
                            c05701.L$2 = n07Var2;
                            c05701.label = 2;
                            objM1505dragjO51t88 = DragGestureDetectorKt.m1505dragjO51t88(awaitPointerEventScope, jM7566getIdJ3iCeTQ, nl3Var, c05701);
                            if (objM1505dragjO51t88 != a32Var) {
                                awaitPointerEventScope2 = awaitPointerEventScope;
                                n07Var = n07Var2;
                                if (((Boolean) objM1505dragjO51t88).booleanValue()) {
                                    changes2 = awaitPointerEventScope2.getCurrentEvent().getChanges();
                                    size2 = changes2.size();
                                    while (i3 < size2) {
                                        pointerInputChange2 = changes2.get(i3);
                                        if (PointerEventKt.changedToUp(pointerInputChange2)) {
                                            pointerInputChange2.consume();
                                        }
                                        i3++;
                                    }
                                }
                                mouseSelectionObserver.onDragDone();
                            }
                            return a32Var;
                        }
                    } else if (mouseSelectionObserver.mo2885onExtendk4lQ0M(pointerInputChange3.m7569getPositionF1C5BW0())) {
                        pointerInputChange3.consume();
                        long jM7566getIdJ3iCeTQ2 = pointerInputChange3.m7566getIdJ3iCeTQ();
                        rk5 rk5Var = new rk5(mouseSelectionObserver, i4);
                        c05701.L$0 = awaitPointerEventScope;
                        c05701.L$1 = mouseSelectionObserver;
                        c05701.label = 1;
                        objM1505dragjO51t88 = DragGestureDetectorKt.m1505dragjO51t88(awaitPointerEventScope, jM7566getIdJ3iCeTQ2, rk5Var, c05701);
                        if (objM1505dragjO51t88 == a32Var) {
                            return a32Var;
                        }
                        if (((Boolean) objM1505dragjO51t88).booleanValue()) {
                            changes = awaitPointerEventScope.getCurrentEvent().getChanges();
                            size = changes.size();
                            while (i3 < size) {
                                pointerInputChange = changes.get(i3);
                                if (PointerEventKt.changedToUp(pointerInputChange)) {
                                    pointerInputChange.consume();
                                }
                                i3++;
                            }
                        }
                        mouseSelectionObserver.onDragDone();
                    }
                } else if (i2 == 1) {
                    mouseSelectionObserver = (MouseSelectionObserver) c05701.L$1;
                    awaitPointerEventScope = (AwaitPointerEventScope) c05701.L$0;
                    r57.b(objM1505dragjO51t88);
                    if (((Boolean) objM1505dragjO51t88).booleanValue()) {
                        changes = awaitPointerEventScope.getCurrentEvent().getChanges();
                        size = changes.size();
                        while (i3 < size) {
                            pointerInputChange = changes.get(i3);
                            if (PointerEventKt.changedToUp(pointerInputChange)) {
                                pointerInputChange.consume();
                            }
                            i3++;
                        }
                    }
                    mouseSelectionObserver.onDragDone();
                } else {
                    if (i2 != 2) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    n07Var = (n07) c05701.L$2;
                    mouseSelectionObserver = (MouseSelectionObserver) c05701.L$1;
                    awaitPointerEventScope2 = (AwaitPointerEventScope) c05701.L$0;
                    r57.b(objM1505dragjO51t88);
                    if (((Boolean) objM1505dragjO51t88).booleanValue() && n07Var.b) {
                        changes2 = awaitPointerEventScope2.getCurrentEvent().getChanges();
                        size2 = changes2.size();
                        while (i3 < size2) {
                            pointerInputChange2 = changes2.get(i3);
                            if (PointerEventKt.changedToUp(pointerInputChange2)) {
                                pointerInputChange2.consume();
                            }
                            i3++;
                        }
                    }
                    mouseSelectionObserver.onDragDone();
                }
                return j59.a;
            } catch (Throwable th) {
                mouseSelectionObserver.onDragDone();
                throw th;
            }
        } catch (Throwable th2) {
            mouseSelectionObserver.onDragDone();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 mouseSelection$lambda$0(MouseSelectionObserver mouseSelectionObserver, PointerInputChange pointerInputChange) {
        if (mouseSelectionObserver.mo2886onExtendDragk4lQ0M(pointerInputChange.m7569getPositionF1C5BW0())) {
            pointerInputChange.consume();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 mouseSelection$lambda$2(MouseSelectionObserver mouseSelectionObserver, SelectionAdjustment selectionAdjustment, n07 n07Var, PointerInputChange pointerInputChange) {
        if (mouseSelectionObserver.mo2884onDrag3MmeM6k(pointerInputChange.m7569getPositionF1C5BW0(), selectionAdjustment)) {
            pointerInputChange.consume();
            n07Var.b = true;
        }
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x009e, code lost:
    
        if (r12 == r1) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object touchSelectionFirstPress(androidx.compose.ui.input.pointer.AwaitPointerEventScope r9, androidx.compose.foundation.text.TextDragObserver r10, androidx.compose.ui.input.pointer.PointerEvent r11, defpackage.e02<? super defpackage.j59> r12) {
        /*
            Method dump skipped, instruction units count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.SelectionGesturesKt.touchSelectionFirstPress(androidx.compose.ui.input.pointer.AwaitPointerEventScope, androidx.compose.foundation.text.TextDragObserver, androidx.compose.ui.input.pointer.PointerEvent, e02):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 touchSelectionFirstPress$lambda$0(TextDragObserver textDragObserver, PointerInputChange pointerInputChange) {
        textDragObserver.mo2597onDragk4lQ0M(PointerEventKt.positionChange(pointerInputChange));
        pointerInputChange.consume();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00dd, code lost:
    
        if (r14 == r1) goto L48;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object touchSelectionSubsequentPress(androidx.compose.ui.input.pointer.AwaitPointerEventScope r10, androidx.compose.foundation.text.TextDragObserver r11, androidx.compose.ui.input.pointer.PointerEvent r12, int r13, defpackage.e02<? super defpackage.j59> r14) {
        /*
            Method dump skipped, instruction units count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.SelectionGesturesKt.touchSelectionSubsequentPress(androidx.compose.ui.input.pointer.AwaitPointerEventScope, androidx.compose.foundation.text.TextDragObserver, androidx.compose.ui.input.pointer.PointerEvent, int, e02):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 touchSelectionSubsequentPress$lambda$0(TextDragObserver textDragObserver, PointerInputChange pointerInputChange) {
        textDragObserver.mo2597onDragk4lQ0M(PointerEventKt.positionChange(pointerInputChange));
        pointerInputChange.consume();
        return j59.a;
    }

    public static final Modifier updateSelectionTouchMode(Modifier modifier, final nl3<? super Boolean, j59> nl3Var) {
        return SuspendingPointerInputFilterKt.pointerInput(modifier, Integer.valueOf(STATIC_KEY), new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.selection.SelectionGesturesKt.updateSelectionTouchMode.1

            /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionGesturesKt$updateSelectionTouchMode$1$1, reason: invalid class name and collision with other inner class name */
            @bd2(c = "androidx.compose.foundation.text.selection.SelectionGesturesKt$updateSelectionTouchMode$1$1", f = "SelectionGestures.kt", l = {94}, m = "invokeSuspend", v = 1)
            public static final class C00531 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
                final /* synthetic */ nl3<Boolean, j59> $updateTouchMode;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                public C00531(nl3<? super Boolean, j59> nl3Var, e02<? super C00531> e02Var) {
                    super(2, e02Var);
                    this.$updateTouchMode = nl3Var;
                }

                @Override // defpackage.cd0
                public final e02<j59> create(Object obj, e02<?> e02Var) {
                    C00531 c00531 = new C00531(this.$updateTouchMode, e02Var);
                    c00531.L$0 = obj;
                    return c00531;
                }

                @Override // defpackage.bm3
                public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
                    return ((C00531) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
                }

                /* JADX WARN: Code duplicated, block: B:11:0x002c A[RETURN] */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002a -> B:12:0x002d). Please report as a decompilation issue!!! */
                /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                    jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:11:0x002c
                    	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
                    	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
                    	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
                    */
                @Override // defpackage.cd0
                public final java.lang.Object invokeSuspend(java.lang.Object r5) {
                    /*
                        r4 = this;
                        a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                        int r1 = r4.label
                        r2 = 1
                        if (r1 == 0) goto L18
                        if (r1 != r2) goto L11
                        java.lang.Object r1 = r4.L$0
                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                        defpackage.r57.b(r5)
                        goto L2d
                    L11:
                        java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                        defpackage.ah.f(r4)
                        r4 = 0
                        return r4
                    L18:
                        defpackage.r57.b(r5)
                        java.lang.Object r5 = r4.L$0
                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r5 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r5
                        r1 = r5
                    L20:
                        androidx.compose.ui.input.pointer.PointerEventPass r5 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                        r4.L$0 = r1
                        r4.label = r2
                        java.lang.Object r5 = r1.awaitPointerEvent(r5, r4)
                        if (r5 != r0) goto L2d
                        return r0
                    L2d:
                        androidx.compose.ui.input.pointer.PointerEvent r5 = (androidx.compose.ui.input.pointer.PointerEvent) r5
                        nl3<java.lang.Boolean, j59> r3 = r4.$updateTouchMode
                        boolean r5 = androidx.compose.foundation.text.selection.SelectionGestures_androidKt.isMouseOrTouchPad(r5)
                        r5 = r5 ^ r2
                        java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)
                        r3.invoke(r5)
                        goto L20
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.SelectionGesturesKt.C05731.C00531.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
            public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
                Object objAwaitPointerEventScope = pointerInputScope.awaitPointerEventScope(new C00531(nl3Var, null), e02Var);
                return objAwaitPointerEventScope == a32.COROUTINE_SUSPENDED ? objAwaitPointerEventScope : j59.a;
            }
        });
    }
}
