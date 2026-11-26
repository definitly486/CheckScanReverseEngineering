package androidx.compose.foundation.gestures;

import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.PointerInputModifierNode;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c32;
import defpackage.e02;
import defpackage.f57;
import defpackage.j59;
import defpackage.l91;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r07;
import defpackage.r57;
import defpackage.x81;
import defpackage.y22;
import defpackage.z22;
import java.util.List;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes.dex */
final class TransformableNode extends DelegatingNode implements PointerInputModifierNode, CompositionLocalConsumerModifierNode {
    private nl3<? super Offset, Boolean> canPan;
    private boolean enabled;
    private boolean lockRotationOnZoomPan;
    private PointerInputModifierNode pointerInputModifierMouse;
    private ScrollConfig scrollConfig;
    private TransformableState state;
    private final nl3<Offset, Boolean> updatedCanPan = new nl3() { // from class: androidx.compose.foundation.gestures.d0
        @Override // defpackage.nl3
        public final Object invoke(Object obj) {
            return Boolean.valueOf(TransformableNode.updatedCanPan$lambda$0(this.b, (Offset) obj));
        }
    };
    private final x81<TransformEvent> channel = l91.a(Integer.MAX_VALUE, null, null, 6);
    private final SuspendingPointerInputModifierNode pointerInputNode = (SuspendingPointerInputModifierNode) delegate(SuspendingPointerInputFilterKt.SuspendingPointerInputModifierNode(new PointerInputEventHandler() { // from class: androidx.compose.foundation.gestures.TransformableNode$pointerInputNode$1

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TransformableNode$pointerInputNode$1$1, reason: invalid class name */
        @bd2(c = "androidx.compose.foundation.gestures.TransformableNode$pointerInputNode$1$1", f = "Transformable.kt", l = {199}, m = "invokeSuspend", v = 1)
        public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ PointerInputScope $this_SuspendingPointerInputModifierNode;
            private /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ TransformableNode this$0;

            /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TransformableNode$pointerInputNode$1$1$1, reason: invalid class name and collision with other inner class name */
            @bd2(c = "androidx.compose.foundation.gestures.TransformableNode$pointerInputNode$1$1$1", f = "Transformable.kt", l = {177, 180}, m = "invokeSuspend", v = 1)
            public static final class C00341 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                private /* synthetic */ Object L$0;
                Object L$1;
                Object L$2;
                int label;
                final /* synthetic */ TransformableNode this$0;

                /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TransformableNode$pointerInputNode$1$1$1$1, reason: invalid class name and collision with other inner class name */
                @bd2(c = "androidx.compose.foundation.gestures.TransformableNode$pointerInputNode$1$1$1$1", f = "Transformable.kt", l = {190}, m = "invokeSuspend", v = 1)
                public static final class C00351 extends pg8 implements bm3<TransformScope, e02<? super j59>, Object> {
                    final /* synthetic */ r07<TransformEvent> $event;
                    private /* synthetic */ Object L$0;
                    Object L$1;
                    int label;
                    final /* synthetic */ TransformableNode this$0;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C00351(r07<TransformEvent> r07Var, TransformableNode transformableNode, e02<? super C00351> e02Var) {
                        super(2, e02Var);
                        this.$event = r07Var;
                        this.this$0 = transformableNode;
                    }

                    @Override // defpackage.cd0
                    public final e02<j59> create(Object obj, e02<?> e02Var) {
                        C00351 c00351 = new C00351(this.$event, this.this$0, e02Var);
                        c00351.L$0 = obj;
                        return c00351;
                    }

                    @Override // defpackage.bm3
                    public final Object invoke(TransformScope transformScope, e02<? super j59> e02Var) {
                        return ((C00351) create(transformScope, e02Var)).invokeSuspend(j59.a);
                    }

                    /* JADX WARN: Code duplicated, block: B:11:0x002c  */
                    /* JADX WARN: Code duplicated, block: B:13:0x0030  */
                    /* JADX WARN: Code duplicated, block: B:14:0x0033  */
                    /* JADX WARN: Code duplicated, block: B:16:0x0036  */
                    /* JADX WARN: Code duplicated, block: B:19:0x005d A[RETURN] */
                    /* JADX WARN: Code duplicated, block: B:21:0x0061  */
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005b -> B:20:0x005e). Please report as a decompilation issue!!! */
                    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:11:0x002c
                        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
                        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
                        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
                        */
                    @Override // defpackage.cd0
                    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
                        /*
                            r11 = this;
                            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                            int r1 = r11.label
                            r2 = 0
                            r3 = 1
                            if (r1 == 0) goto L1c
                            if (r1 != r3) goto L16
                            java.lang.Object r1 = r11.L$1
                            r07 r1 = (defpackage.r07) r1
                            java.lang.Object r4 = r11.L$0
                            androidx.compose.foundation.gestures.TransformScope r4 = (androidx.compose.foundation.gestures.TransformScope) r4
                            defpackage.r57.b(r12)
                            goto L5e
                        L16:
                            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
                            defpackage.ah.f(r11)
                            return r2
                        L1c:
                            defpackage.r57.b(r12)
                            java.lang.Object r12 = r11.L$0
                            androidx.compose.foundation.gestures.TransformScope r12 = (androidx.compose.foundation.gestures.TransformScope) r12
                            r4 = r12
                        L24:
                            r07<androidx.compose.foundation.gestures.TransformEvent> r12 = r11.$event
                            T r12 = r12.b
                            boolean r1 = r12 instanceof androidx.compose.foundation.gestures.TransformEvent.TransformStopped
                            if (r1 != 0) goto L61
                            boolean r1 = r12 instanceof androidx.compose.foundation.gestures.TransformEvent.TransformDelta
                            if (r1 == 0) goto L33
                            androidx.compose.foundation.gestures.TransformEvent$TransformDelta r12 = (androidx.compose.foundation.gestures.TransformEvent.TransformDelta) r12
                            goto L34
                        L33:
                            r12 = r2
                        L34:
                            if (r12 == 0) goto L49
                            long r5 = r12.m1642getCentroidF1C5BW0()
                            float r7 = r12.getZoomChange()
                            long r8 = r12.m1643getPanChangeF1C5BW0()
                            float r10 = r12.getRotationChange()
                            r4.mo1477transformByWithCentroidIEwrmTk(r5, r7, r8, r10)
                        L49:
                            r07<androidx.compose.foundation.gestures.TransformEvent> r1 = r11.$event
                            androidx.compose.foundation.gestures.TransformableNode r12 = r11.this$0
                            x81 r12 = androidx.compose.foundation.gestures.TransformableNode.access$getChannel$p(r12)
                            r11.L$0 = r4
                            r11.L$1 = r1
                            r11.label = r3
                            java.lang.Object r12 = r12.b(r11)
                            if (r12 != r0) goto L5e
                            return r0
                        L5e:
                            r1.b = r12
                            goto L24
                        L61:
                            j59 r11 = defpackage.j59.a
                            return r11
                        */
                        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TransformableNode$pointerInputNode$1.AnonymousClass1.C00341.C00351.invokeSuspend(java.lang.Object):java.lang.Object");
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C00341(TransformableNode transformableNode, e02<? super C00341> e02Var) {
                    super(2, e02Var);
                    this.this$0 = transformableNode;
                }

                @Override // defpackage.cd0
                public final e02<j59> create(Object obj, e02<?> e02Var) {
                    C00341 c00341 = new C00341(this.this$0, e02Var);
                    c00341.L$0 = obj;
                    return c00341;
                }

                @Override // defpackage.bm3
                public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                    return ((C00341) create(y22Var, e02Var)).invokeSuspend(j59.a);
                }

                /* JADX WARN: Code duplicated, block: B:15:0x0039  */
                /* JADX WARN: Code duplicated, block: B:18:0x0053  */
                /* JADX WARN: Code duplicated, block: B:29:0x005e A[EXC_TOP_SPLITTER, SYNTHETIC] */
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007c -> B:13:0x0033). Please report as a decompilation issue!!! */
                /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                    jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
                    	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
                    	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
                    	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
                    */
                @Override // defpackage.cd0
                public final java.lang.Object invokeSuspend(java.lang.Object r10) {
                    /*
                        r9 = this;
                        a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                        int r1 = r9.label
                        r2 = 2
                        r3 = 1
                        r4 = 0
                        if (r1 == 0) goto L2c
                        if (r1 == r3) goto L1c
                        if (r1 != r2) goto L16
                        java.lang.Object r1 = r9.L$0
                        y22 r1 = (defpackage.y22) r1
                        defpackage.r57.b(r10)     // Catch: java.util.concurrent.CancellationException -> L14
                    L14:
                        r10 = r1
                        goto L33
                    L16:
                        java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                        defpackage.ah.f(r9)
                        return r4
                    L1c:
                        java.lang.Object r1 = r9.L$2
                        r07 r1 = (defpackage.r07) r1
                        java.lang.Object r5 = r9.L$1
                        r07 r5 = (defpackage.r07) r5
                        java.lang.Object r6 = r9.L$0
                        y22 r6 = (defpackage.y22) r6
                        defpackage.r57.b(r10)
                        goto L56
                    L2c:
                        defpackage.r57.b(r10)
                        java.lang.Object r10 = r9.L$0
                        y22 r10 = (defpackage.y22) r10
                    L33:
                        boolean r1 = defpackage.z22.e(r10)
                        if (r1 == 0) goto L7e
                        r07 r1 = new r07
                        r1.<init>()
                        androidx.compose.foundation.gestures.TransformableNode r5 = r9.this$0
                        x81 r5 = androidx.compose.foundation.gestures.TransformableNode.access$getChannel$p(r5)
                        r9.L$0 = r10
                        r9.L$1 = r1
                        r9.L$2 = r1
                        r9.label = r3
                        java.lang.Object r5 = r5.b(r9)
                        if (r5 != r0) goto L53
                        goto L7b
                    L53:
                        r6 = r10
                        r10 = r5
                        r5 = r1
                    L56:
                        r1.b = r10
                        T r10 = r5.b
                        boolean r10 = r10 instanceof androidx.compose.foundation.gestures.TransformEvent.TransformStarted
                        if (r10 == 0) goto L7c
                        androidx.compose.foundation.gestures.TransformableNode r10 = r9.this$0     // Catch: java.util.concurrent.CancellationException -> L7c
                        androidx.compose.foundation.gestures.TransformableState r10 = androidx.compose.foundation.gestures.TransformableNode.access$getState$p(r10)     // Catch: java.util.concurrent.CancellationException -> L7c
                        androidx.compose.foundation.MutatePriority r1 = androidx.compose.foundation.MutatePriority.UserInput     // Catch: java.util.concurrent.CancellationException -> L7c
                        androidx.compose.foundation.gestures.TransformableNode$pointerInputNode$1$1$1$1 r7 = new androidx.compose.foundation.gestures.TransformableNode$pointerInputNode$1$1$1$1     // Catch: java.util.concurrent.CancellationException -> L7c
                        androidx.compose.foundation.gestures.TransformableNode r8 = r9.this$0     // Catch: java.util.concurrent.CancellationException -> L7c
                        r7.<init>(r5, r8, r4)     // Catch: java.util.concurrent.CancellationException -> L7c
                        r9.L$0 = r6     // Catch: java.util.concurrent.CancellationException -> L7c
                        r9.L$1 = r4     // Catch: java.util.concurrent.CancellationException -> L7c
                        r9.L$2 = r4     // Catch: java.util.concurrent.CancellationException -> L7c
                        r9.label = r2     // Catch: java.util.concurrent.CancellationException -> L7c
                        java.lang.Object r10 = r10.transform(r1, r7, r9)     // Catch: java.util.concurrent.CancellationException -> L7c
                        if (r10 != r0) goto L7c
                    L7b:
                        return r0
                    L7c:
                        r10 = r6
                        goto L33
                    L7e:
                        j59 r9 = defpackage.j59.a
                        return r9
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TransformableNode$pointerInputNode$1.AnonymousClass1.C00341.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TransformableNode$pointerInputNode$1$1$2, reason: invalid class name */
            @bd2(c = "androidx.compose.foundation.gestures.TransformableNode$pointerInputNode$1$1$2", f = "Transformable.kt", l = {ComposerKt.providerKey}, m = "invokeSuspend", v = 1)
            public static final class AnonymousClass2 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
                final /* synthetic */ y22 $$this$coroutineScope;
                private /* synthetic */ Object L$0;
                int label;
                final /* synthetic */ TransformableNode this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass2(TransformableNode transformableNode, y22 y22Var, e02<? super AnonymousClass2> e02Var) {
                    super(2, e02Var);
                    this.this$0 = transformableNode;
                    this.$$this$coroutineScope = y22Var;
                }

                @Override // defpackage.cd0
                public final e02<j59> create(Object obj, e02<?> e02Var) {
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, this.$$this$coroutineScope, e02Var);
                    anonymousClass2.L$0 = obj;
                    return anonymousClass2;
                }

                @Override // defpackage.bm3
                public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
                    return ((AnonymousClass2) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
                }

                @Override // defpackage.cd0
                public final Object invokeSuspend(Object obj) {
                    a32 a32Var = a32.COROUTINE_SUSPENDED;
                    int i = this.label;
                    try {
                        try {
                            if (i == 0) {
                                r57.b(obj);
                                AwaitPointerEventScope awaitPointerEventScope = (AwaitPointerEventScope) this.L$0;
                                boolean z = this.this$0.lockRotationOnZoomPan;
                                x81 x81Var = this.this$0.channel;
                                nl3 nl3Var = this.this$0.updatedCanPan;
                                this.label = 1;
                                if (TransformableKt.detectZoom(awaitPointerEventScope, z, x81Var, nl3Var, this) == a32Var) {
                                    return a32Var;
                                }
                            } else {
                                if (i != 1) {
                                    ah.f("call to 'resume' before 'invoke' with coroutine");
                                    return null;
                                }
                                r57.b(obj);
                            }
                        } catch (CancellationException e) {
                            if (!z22.e(this.$$this$coroutineScope)) {
                                throw e;
                            }
                        }
                        this.this$0.channel.mo0trySendJP2dKIU(TransformEvent.TransformStopped.INSTANCE);
                        return j59.a;
                    } catch (Throwable th) {
                        this.this$0.channel.mo0trySendJP2dKIU(TransformEvent.TransformStopped.INSTANCE);
                        throw th;
                    }
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(PointerInputScope pointerInputScope, TransformableNode transformableNode, e02<? super AnonymousClass1> e02Var) {
                super(2, e02Var);
                this.$this_SuspendingPointerInputModifierNode = pointerInputScope;
                this.this$0 = transformableNode;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_SuspendingPointerInputModifierNode, this.this$0, e02Var);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    y22 y22Var = (y22) this.L$0;
                    av0.c(y22Var, null, c32.UNDISPATCHED, new C00341(this.this$0, null), 1);
                    PointerInputScope pointerInputScope = this.$this_SuspendingPointerInputModifierNode;
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, y22Var, null);
                    this.label = 1;
                    if (ForEachGestureKt.awaitEachGesture(pointerInputScope, anonymousClass2, this) == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (i != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                }
                return j59.a;
            }
        }

        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
        public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
            Object objC;
            return (this.this$0.enabled && (objC = z22.c(new AnonymousClass1(pointerInputScope, this.this$0, null), e02Var)) == a32.COROUTINE_SUSPENDED) ? objC : j59.a;
        }
    }));

    public TransformableNode(TransformableState transformableState, nl3<? super Offset, Boolean> nl3Var, boolean z, boolean z2) {
        this.state = transformableState;
        this.canPan = nl3Var;
        this.lockRotationOnZoomPan = z;
        this.enabled = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean updatedCanPan$lambda$0(TransformableNode transformableNode, Offset offset) {
        return transformableNode.canPan.invoke(offset).booleanValue();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        super.onAttach();
        this.scrollConfig = AndroidScrollable_androidKt.platformScrollConfig(this);
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public void onCancelPointerInput() {
        this.pointerInputNode.onCancelPointerInput();
        PointerInputModifierNode pointerInputModifierNode = this.pointerInputModifierMouse;
        if (pointerInputModifierNode != null) {
            pointerInputModifierNode.onCancelPointerInput();
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* JADX INFO: renamed from: onPointerEvent-H0pRuoY */
    public void mo1259onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        final ScrollConfig scrollConfig = this.scrollConfig;
        if (this.enabled) {
            List<PointerInputChange> changes = pointerEvent.getChanges();
            int size = changes.size();
            for (int i = 0; i < size; i++) {
                if (PointerType.m7642equalsimpl0(changes.get(i).m7572getTypeT8wyACA(), PointerType.Companion.m7647getMouseT8wyACA())) {
                    if (scrollConfig != null && this.pointerInputModifierMouse == null) {
                        this.pointerInputModifierMouse = (PointerInputModifierNode) delegate(SuspendingPointerInputFilterKt.SuspendingPointerInputModifierNode(new PointerInputEventHandler() { // from class: androidx.compose.foundation.gestures.TransformableNode$onPointerEvent$2
                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
                                Object objDetectNonTouchGestures = TransformableKt.detectNonTouchGestures(pointerInputScope, this.this$0.channel, scrollConfig, e02Var);
                                return objDetectNonTouchGestures == a32.COROUTINE_SUSPENDED ? objDetectNonTouchGestures : j59.a;
                            }
                        }));
                        break;
                    } else {
                        break;
                        break;
                    }
                }
            }
        }
        this.pointerInputNode.mo1259onPointerEventH0pRuoY(pointerEvent, pointerEventPass, j);
        PointerInputModifierNode pointerInputModifierNode = this.pointerInputModifierMouse;
        if (pointerInputModifierNode != null) {
            pointerInputModifierNode.mo1259onPointerEventH0pRuoY(pointerEvent, pointerEventPass, j);
        }
    }

    public final void update(TransformableState transformableState, nl3<? super Offset, Boolean> nl3Var, boolean z, boolean z2) {
        this.canPan = nl3Var;
        if (aa4.e(this.state, transformableState) && this.enabled == z2 && this.lockRotationOnZoomPan == z) {
            return;
        }
        this.state = transformableState;
        this.enabled = z2;
        this.lockRotationOnZoomPan = z;
        this.pointerInputNode.resetPointerInputHandler();
    }
}
