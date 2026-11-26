package androidx.compose.foundation.gestures;

import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException;
import androidx.compose.ui.input.pointer.PointerEvent_androidKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c32;
import defpackage.dm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.f57;
import defpackage.j59;
import defpackage.mb4;
import defpackage.me0;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r07;
import defpackage.r57;
import defpackage.s68;
import defpackage.ul2;
import defpackage.y22;
import defpackage.z22;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class TapGestureDetectorKt {
    private static final dm3<PressGestureScope, Offset, e02<? super j59>, Object> NoPressGesture = new TapGestureDetectorKt$NoPressGesture$1(null);

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDown$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt", f = "TapGestureDetector.kt", l = {317}, m = "awaitFirstDown", v = 1)
    public static final class AnonymousClass2 extends f02 {
        Object L$0;
        Object L$1;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass2(e02<? super AnonymousClass2> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TapGestureDetectorKt.awaitFirstDown(null, false, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitPrimaryFirstDown$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt", f = "TapGestureDetector.kt", l = {330}, m = "awaitPrimaryFirstDown", v = 1)
    public static final class AnonymousClass1 extends f02 {
        Object L$0;
        Object L$1;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TapGestureDetectorKt.awaitPrimaryFirstDown(null, false, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitSecondDown$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitSecondDown$2", f = "TapGestureDetector.kt", l = {254}, m = "invokeSuspend", v = 1)
    public static final class C05012 extends f57 implements bm3<AwaitPointerEventScope, e02<? super PointerInputChange>, Object> {
        final /* synthetic */ PointerInputChange $firstUp;
        long J$0;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05012(PointerInputChange pointerInputChange, e02<? super C05012> e02Var) {
            super(2, e02Var);
            this.$firstUp = pointerInputChange;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C05012 c05012 = new C05012(this.$firstUp, e02Var);
            c05012.L$0 = obj;
            return c05012;
        }

        @Override // defpackage.bm3
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super PointerInputChange> e02Var) {
            return ((C05012) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0045 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:14:0x0050 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:15:0x0051  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0043 -> B:12:0x0046). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:15:0x0051
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r14) {
            /*
                r13 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r13.label
                r2 = 1
                if (r1 == 0) goto L1c
                if (r1 != r2) goto L15
                long r3 = r13.J$0
                java.lang.Object r1 = r13.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                defpackage.r57.b(r14)
                r10 = r13
                r7 = r1
                goto L46
            L15:
                java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r13)
                r13 = 0
                return r13
            L1c:
                defpackage.r57.b(r14)
                java.lang.Object r14 = r13.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r14 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r14
                androidx.compose.ui.input.pointer.PointerInputChange r1 = r13.$firstUp
                long r3 = r1.getUptimeMillis()
                androidx.compose.ui.platform.ViewConfiguration r1 = r14.getViewConfiguration()
                long r5 = r1.getDoubleTapMinTimeMillis()
                long r5 = r5 + r3
                r7 = r14
                r3 = r5
            L34:
                r13.L$0 = r7
                r13.J$0 = r3
                r13.label = r2
                r8 = 0
                r9 = 0
                r11 = 3
                r12 = 0
                r10 = r13
                java.lang.Object r14 = androidx.compose.foundation.gestures.TapGestureDetectorKt.awaitFirstDown$default(r7, r8, r9, r10, r11, r12)
                if (r14 != r0) goto L46
                return r0
            L46:
                androidx.compose.ui.input.pointer.PointerInputChange r14 = (androidx.compose.ui.input.pointer.PointerInputChange) r14
                long r5 = r14.getUptimeMillis()
                int r13 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
                if (r13 < 0) goto L51
                return r14
            L51:
                r13 = r10
                goto L34
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TapGestureDetectorKt.C05012.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$consumeUntilUp$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt", f = "TapGestureDetector.kt", l = {WebmConstants.MkvEbmlElement.VOID}, m = "consumeUntilUp", v = 1)
    public static final class C05021 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C05021(e02<? super C05021> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TapGestureDetectorKt.consumeUntilUp(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2", f = "TapGestureDetector.kt", l = {274}, m = "invokeSuspend", v = 1)
    public static final class C05032 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ dm3<PressGestureScope, Offset, e02<? super j59>, Object> $onPress;
        final /* synthetic */ nl3<Offset, j59> $onTap;
        final /* synthetic */ PressGestureScopeImpl $pressScope;
        final /* synthetic */ PointerInputScope $this_detectTapAndPress;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1, reason: invalid class name */
        @bd2(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1", f = "TapGestureDetector.kt", l = {277, 283}, m = "invokeSuspend", v = 1)
        public static final class AnonymousClass1 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
            final /* synthetic */ y22 $$this$coroutineScope;
            final /* synthetic */ dm3<PressGestureScope, Offset, e02<? super j59>, Object> $onPress;
            final /* synthetic */ nl3<Offset, j59> $onTap;
            final /* synthetic */ PressGestureScopeImpl $pressScope;
            private /* synthetic */ Object L$0;
            Object L$1;
            int label;

            /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$1, reason: invalid class name and collision with other inner class name */
            @bd2(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$1", f = "TapGestureDetector.kt", l = {280}, m = "invokeSuspend", v = 1)
            public static final class C00321 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                final /* synthetic */ PointerInputChange $down;
                final /* synthetic */ dm3<PressGestureScope, Offset, e02<? super j59>, Object> $onPress;
                final /* synthetic */ PressGestureScopeImpl $pressScope;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                public C00321(dm3<? super PressGestureScope, ? super Offset, ? super e02<? super j59>, ? extends Object> dm3Var, PressGestureScopeImpl pressGestureScopeImpl, PointerInputChange pointerInputChange, e02<? super C00321> e02Var) {
                    super(2, e02Var);
                    this.$onPress = dm3Var;
                    this.$pressScope = pressGestureScopeImpl;
                    this.$down = pointerInputChange;
                }

                @Override // defpackage.cd0
                public final e02<j59> create(Object obj, e02<?> e02Var) {
                    return new C00321(this.$onPress, this.$pressScope, this.$down, e02Var);
                }

                @Override // defpackage.bm3
                public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                    return ((C00321) create(y22Var, e02Var)).invokeSuspend(j59.a);
                }

                @Override // defpackage.cd0
                public final Object invokeSuspend(Object obj) {
                    a32 a32Var = a32.COROUTINE_SUSPENDED;
                    int i = this.label;
                    if (i == 0) {
                        r57.b(obj);
                        dm3<PressGestureScope, Offset, e02<? super j59>, Object> dm3Var = this.$onPress;
                        PressGestureScopeImpl pressGestureScopeImpl = this.$pressScope;
                        Offset offsetM5976boximpl = Offset.m5976boximpl(this.$down.m7569getPositionF1C5BW0());
                        this.label = 1;
                        if (dm3Var.invoke(pressGestureScopeImpl, offsetM5976boximpl, this) == a32Var) {
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

            /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$2, reason: invalid class name and collision with other inner class name */
            @bd2(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$2", f = "TapGestureDetector.kt", l = {}, m = "invokeSuspend", v = 1)
            public static final class C00332 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                final /* synthetic */ PressGestureScopeImpl $pressScope;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C00332(PressGestureScopeImpl pressGestureScopeImpl, e02<? super C00332> e02Var) {
                    super(2, e02Var);
                    this.$pressScope = pressGestureScopeImpl;
                }

                @Override // defpackage.cd0
                public final e02<j59> create(Object obj, e02<?> e02Var) {
                    return new C00332(this.$pressScope, e02Var);
                }

                @Override // defpackage.bm3
                public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                    return ((C00332) create(y22Var, e02Var)).invokeSuspend(j59.a);
                }

                @Override // defpackage.cd0
                public final Object invokeSuspend(Object obj) {
                    a32 a32Var = a32.COROUTINE_SUSPENDED;
                    if (this.label != 0) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                    this.$pressScope.cancel();
                    return j59.a;
                }
            }

            /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$3, reason: invalid class name */
            @bd2(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$3", f = "TapGestureDetector.kt", l = {}, m = "invokeSuspend", v = 1)
            public static final class AnonymousClass3 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                final /* synthetic */ PressGestureScopeImpl $pressScope;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(PressGestureScopeImpl pressGestureScopeImpl, e02<? super AnonymousClass3> e02Var) {
                    super(2, e02Var);
                    this.$pressScope = pressGestureScopeImpl;
                }

                @Override // defpackage.cd0
                public final e02<j59> create(Object obj, e02<?> e02Var) {
                    return new AnonymousClass3(this.$pressScope, e02Var);
                }

                @Override // defpackage.bm3
                public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                    return ((AnonymousClass3) create(y22Var, e02Var)).invokeSuspend(j59.a);
                }

                @Override // defpackage.cd0
                public final Object invokeSuspend(Object obj) {
                    a32 a32Var = a32.COROUTINE_SUSPENDED;
                    if (this.label != 0) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                    this.$pressScope.release();
                    return j59.a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public AnonymousClass1(y22 y22Var, dm3<? super PressGestureScope, ? super Offset, ? super e02<? super j59>, ? extends Object> dm3Var, nl3<? super Offset, j59> nl3Var, PressGestureScopeImpl pressGestureScopeImpl, e02<? super AnonymousClass1> e02Var) {
                super(2, e02Var);
                this.$$this$coroutineScope = y22Var;
                this.$onPress = dm3Var;
                this.$onTap = nl3Var;
                this.$pressScope = pressGestureScopeImpl;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$$this$coroutineScope, this.$onPress, this.$onTap, this.$pressScope, e02Var);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // defpackage.bm3
            public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
                return ((AnonymousClass1) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
            }

            /* JADX WARN: Code duplicated, block: B:23:0x0088  */
            /* JADX WARN: Code duplicated, block: B:24:0x0098  */
            /* JADX WARN: Code duplicated, block: B:26:0x00af  */
            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                AwaitPointerEventScope awaitPointerEventScope;
                Object objAwaitFirstDown$default;
                mb4 mb4Var;
                Object objWaitForUpOrCancellation$default;
                mb4 mb4Var2;
                PointerInputChange pointerInputChange;
                nl3<Offset, j59> nl3Var;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    awaitPointerEventScope = (AwaitPointerEventScope) this.L$0;
                    s68 s68VarC = av0.c(this.$$this$coroutineScope, null, c32.UNDISPATCHED, new TapGestureDetectorKt$detectTapAndPress$2$1$resetJob$1(this.$pressScope, null), 1);
                    this.L$0 = awaitPointerEventScope;
                    this.L$1 = s68VarC;
                    this.label = 1;
                    objAwaitFirstDown$default = TapGestureDetectorKt.awaitFirstDown$default(awaitPointerEventScope, false, null, this, 3, null);
                    if (objAwaitFirstDown$default != a32Var) {
                        mb4Var = s68VarC;
                    }
                    return a32Var;
                }
                if (i == 1) {
                    mb4 mb4Var3 = (mb4) this.L$1;
                    AwaitPointerEventScope awaitPointerEventScope2 = (AwaitPointerEventScope) this.L$0;
                    r57.b(obj);
                    mb4Var = mb4Var3;
                    awaitPointerEventScope = awaitPointerEventScope2;
                    objAwaitFirstDown$default = obj;
                } else {
                    if (i != 2) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    mb4 mb4Var4 = (mb4) this.L$0;
                    r57.b(obj);
                    mb4Var2 = mb4Var4;
                    objWaitForUpOrCancellation$default = obj;
                }
                pointerInputChange = (PointerInputChange) objWaitForUpOrCancellation$default;
                if (pointerInputChange == null) {
                    TapGestureDetectorKt.launchAwaitingReset$default(this.$$this$coroutineScope, mb4Var2, null, new C00332(this.$pressScope, null), 2, null);
                } else {
                    pointerInputChange.consume();
                    TapGestureDetectorKt.launchAwaitingReset$default(this.$$this$coroutineScope, mb4Var2, null, new AnonymousClass3(this.$pressScope, null), 2, null);
                    nl3Var = this.$onTap;
                    if (nl3Var != null) {
                        nl3Var.invoke(Offset.m5976boximpl(pointerInputChange.m7569getPositionF1C5BW0()));
                    }
                }
                return j59.a;
                PointerInputChange pointerInputChange2 = (PointerInputChange) objAwaitFirstDown$default;
                pointerInputChange2.consume();
                if (this.$onPress != TapGestureDetectorKt.NoPressGesture) {
                    TapGestureDetectorKt.launchAwaitingReset$default(this.$$this$coroutineScope, mb4Var, null, new C00321(this.$onPress, this.$pressScope, pointerInputChange2, null), 2, null);
                }
                this.L$0 = mb4Var;
                this.L$1 = null;
                this.label = 2;
                objWaitForUpOrCancellation$default = TapGestureDetectorKt.waitForUpOrCancellation$default(awaitPointerEventScope, null, this, 1, null);
                if (objWaitForUpOrCancellation$default != a32Var) {
                    mb4Var2 = mb4Var;
                    pointerInputChange = (PointerInputChange) objWaitForUpOrCancellation$default;
                    if (pointerInputChange == null) {
                        TapGestureDetectorKt.launchAwaitingReset$default(this.$$this$coroutineScope, mb4Var2, null, new C00332(this.$pressScope, null), 2, null);
                    } else {
                        pointerInputChange.consume();
                        TapGestureDetectorKt.launchAwaitingReset$default(this.$$this$coroutineScope, mb4Var2, null, new AnonymousClass3(this.$pressScope, null), 2, null);
                        nl3Var = this.$onTap;
                        if (nl3Var != null) {
                            nl3Var.invoke(Offset.m5976boximpl(pointerInputChange.m7569getPositionF1C5BW0()));
                        }
                    }
                    return j59.a;
                }
                return a32Var;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C05032(PointerInputScope pointerInputScope, dm3<? super PressGestureScope, ? super Offset, ? super e02<? super j59>, ? extends Object> dm3Var, nl3<? super Offset, j59> nl3Var, PressGestureScopeImpl pressGestureScopeImpl, e02<? super C05032> e02Var) {
            super(2, e02Var);
            this.$this_detectTapAndPress = pointerInputScope;
            this.$onPress = dm3Var;
            this.$onTap = nl3Var;
            this.$pressScope = pressGestureScopeImpl;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C05032 c05032 = new C05032(this.$this_detectTapAndPress, this.$onPress, this.$onTap, this.$pressScope, e02Var);
            c05032.L$0 = obj;
            return c05032;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C05032) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                y22 y22Var = (y22) this.L$0;
                PointerInputScope pointerInputScope = this.$this_detectTapAndPress;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(y22Var, this.$onPress, this.$onTap, this.$pressScope, null);
                this.label = 1;
                if (ForEachGestureKt.awaitEachGesture(pointerInputScope, anonymousClass1, this) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2", f = "TapGestureDetector.kt", l = {104}, m = "invokeSuspend", v = 1)
    public static final class C05042 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ nl3<Offset, j59> $onDoubleTap;
        final /* synthetic */ nl3<Offset, j59> $onLongPress;
        final /* synthetic */ dm3<PressGestureScope, Offset, e02<? super j59>, Object> $onPress;
        final /* synthetic */ nl3<Offset, j59> $onTap;
        final /* synthetic */ PointerInputScope $this_detectTapGestures;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1, reason: invalid class name */
        @bd2(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1", f = "TapGestureDetector.kt", l = {105}, m = "invokeSuspend", v = 1)
        public static final class AnonymousClass1 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
            final /* synthetic */ y22 $$this$coroutineScope;
            final /* synthetic */ nl3<Offset, j59> $onDoubleTap;
            final /* synthetic */ nl3<Offset, j59> $onLongPress;
            final /* synthetic */ dm3<PressGestureScope, Offset, e02<? super j59>, Object> $onPress;
            final /* synthetic */ nl3<Offset, j59> $onTap;
            final /* synthetic */ PressGestureScopeImpl $pressScope;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public AnonymousClass1(y22 y22Var, PressGestureScopeImpl pressGestureScopeImpl, nl3<? super Offset, j59> nl3Var, nl3<? super Offset, j59> nl3Var2, dm3<? super PressGestureScope, ? super Offset, ? super e02<? super j59>, ? extends Object> dm3Var, nl3<? super Offset, j59> nl3Var3, e02<? super AnonymousClass1> e02Var) {
                super(2, e02Var);
                this.$$this$coroutineScope = y22Var;
                this.$pressScope = pressGestureScopeImpl;
                this.$onDoubleTap = nl3Var;
                this.$onLongPress = nl3Var2;
                this.$onPress = dm3Var;
                this.$onTap = nl3Var3;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$$this$coroutineScope, this.$pressScope, this.$onDoubleTap, this.$onLongPress, this.$onPress, this.$onTap, e02Var);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // defpackage.bm3
            public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
                return ((AnonymousClass1) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    AwaitPointerEventScope awaitPointerEventScope = (AwaitPointerEventScope) this.L$0;
                    y22 y22Var = this.$$this$coroutineScope;
                    PressGestureScopeImpl pressGestureScopeImpl = this.$pressScope;
                    nl3<Offset, j59> nl3Var = this.$onDoubleTap;
                    nl3<Offset, j59> nl3Var2 = this.$onLongPress;
                    dm3<PressGestureScope, Offset, e02<? super j59>, Object> dm3Var = this.$onPress;
                    nl3<Offset, j59> nl3Var3 = this.$onTap;
                    this.label = 1;
                    if (TapGestureDetectorKt.processTapGesture(awaitPointerEventScope, y22Var, pressGestureScopeImpl, nl3Var, nl3Var2, dm3Var, nl3Var3, this) == a32Var) {
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C05042(PointerInputScope pointerInputScope, nl3<? super Offset, j59> nl3Var, nl3<? super Offset, j59> nl3Var2, dm3<? super PressGestureScope, ? super Offset, ? super e02<? super j59>, ? extends Object> dm3Var, nl3<? super Offset, j59> nl3Var3, e02<? super C05042> e02Var) {
            super(2, e02Var);
            this.$this_detectTapGestures = pointerInputScope;
            this.$onDoubleTap = nl3Var;
            this.$onLongPress = nl3Var2;
            this.$onPress = dm3Var;
            this.$onTap = nl3Var3;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C05042 c05042 = new C05042(this.$this_detectTapGestures, this.$onDoubleTap, this.$onLongPress, this.$onPress, this.$onTap, e02Var);
            c05042.L$0 = obj;
            return c05042;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C05042) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                y22 y22Var = (y22) this.L$0;
                PressGestureScopeImpl pressGestureScopeImpl = new PressGestureScopeImpl(this.$this_detectTapGestures);
                PointerInputScope pointerInputScope = this.$this_detectTapGestures;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(y22Var, pressGestureScopeImpl, this.$onDoubleTap, this.$onLongPress, this.$onPress, this.$onTap, null);
                this.label = 1;
                if (ForEachGestureKt.awaitEachGesture(pointerInputScope, anonymousClass1, this) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$launchAwaitingReset$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$launchAwaitingReset$1", f = "TapGestureDetector.kt", l = {474, 475}, m = "invokeSuspend", v = 1)
    public static final class C05051 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ bm3<y22, e02<? super j59>, Object> $block;
        final /* synthetic */ mb4 $resetJob;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C05051(mb4 mb4Var, bm3<? super y22, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super C05051> e02Var) {
            super(2, e02Var);
            this.$resetJob = mb4Var;
            this.$block = bm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C05051 c05051 = new C05051(this.$resetJob, this.$block, e02Var);
            c05051.L$0 = obj;
            return c05051;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C05051) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x003f, code lost:
        
            if (r5.invoke(r1, r4) == r0) goto L15;
         */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r5) {
            /*
                r4 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r4.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1f
                if (r1 == r3) goto L17
                if (r1 != r2) goto L10
                defpackage.r57.b(r5)
                goto L42
            L10:
                java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r4)
                r4 = 0
                return r4
            L17:
                java.lang.Object r1 = r4.L$0
                y22 r1 = (defpackage.y22) r1
                defpackage.r57.b(r5)
                goto L34
            L1f:
                defpackage.r57.b(r5)
                java.lang.Object r5 = r4.L$0
                r1 = r5
                y22 r1 = (defpackage.y22) r1
                mb4 r5 = r4.$resetJob
                r4.L$0 = r1
                r4.label = r3
                java.lang.Object r5 = r5.e0(r4)
                if (r5 != r0) goto L34
                goto L41
            L34:
                bm3<y22, e02<? super j59>, java.lang.Object> r5 = r4.$block
                r3 = 0
                r4.L$0 = r3
                r4.label = r2
                java.lang.Object r4 = r5.invoke(r1, r4)
                if (r4 != r0) goto L42
            L41:
                return r0
            L42:
                j59 r4 = defpackage.j59.a
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TapGestureDetectorKt.C05051.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$processTapGesture$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt", f = "TapGestureDetector.kt", l = {WebmConstants.MkvEbmlElement.TRACK_TYPE, 142, 145, 148, WebmConstants.MkvEbmlElement.PIXEL_WIDTH, 194, 196, ComposerKt.reuseKey}, m = "processTapGesture", v = 1)
    public static final class C05061 extends f02 {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        Object L$8;
        int label;
        /* synthetic */ Object result;

        public C05061(e02<? super C05061> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TapGestureDetectorKt.processTapGesture(null, null, null, null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$processTapGesture$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$processTapGesture$2", f = "TapGestureDetector.kt", l = {136}, m = "invokeSuspend", v = 1)
    public static final class C05072 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ PointerInputChange $down;
        final /* synthetic */ dm3<PressGestureScope, Offset, e02<? super j59>, Object> $onPress;
        final /* synthetic */ PressGestureScopeImpl $pressScope;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C05072(dm3<? super PressGestureScope, ? super Offset, ? super e02<? super j59>, ? extends Object> dm3Var, PressGestureScopeImpl pressGestureScopeImpl, PointerInputChange pointerInputChange, e02<? super C05072> e02Var) {
            super(2, e02Var);
            this.$onPress = dm3Var;
            this.$pressScope = pressGestureScopeImpl;
            this.$down = pointerInputChange;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new C05072(this.$onPress, this.$pressScope, this.$down, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C05072) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                dm3<PressGestureScope, Offset, e02<? super j59>, Object> dm3Var = this.$onPress;
                PressGestureScopeImpl pressGestureScopeImpl = this.$pressScope;
                Offset offsetM5976boximpl = Offset.m5976boximpl(this.$down.m7569getPositionF1C5BW0());
                this.label = 1;
                if (dm3Var.invoke(pressGestureScopeImpl, offsetM5976boximpl, this) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$processTapGesture$3, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$processTapGesture$3", f = "TapGestureDetector.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass3 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ PressGestureScopeImpl $pressScope;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(PressGestureScopeImpl pressGestureScopeImpl, e02<? super AnonymousClass3> e02Var) {
            super(2, e02Var);
            this.$pressScope = pressGestureScopeImpl;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass3(this.$pressScope, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass3) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            this.$pressScope.release();
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$processTapGesture$4, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$processTapGesture$4", f = "TapGestureDetector.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass4 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ PressGestureScopeImpl $pressScope;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(PressGestureScopeImpl pressGestureScopeImpl, e02<? super AnonymousClass4> e02Var) {
            super(2, e02Var);
            this.$pressScope = pressGestureScopeImpl;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass4(this.$pressScope, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass4) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            this.$pressScope.cancel();
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$processTapGesture$5, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$processTapGesture$5", f = "TapGestureDetector.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass5 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ PressGestureScopeImpl $pressScope;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass5(PressGestureScopeImpl pressGestureScopeImpl, e02<? super AnonymousClass5> e02Var) {
            super(2, e02Var);
            this.$pressScope = pressGestureScopeImpl;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass5(this.$pressScope, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass5) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            this.$pressScope.release();
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$processTapGesture$6, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$processTapGesture$6", f = "TapGestureDetector.kt", l = {184, 185}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass6 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ mb4 $cancelOrReleaseJob;
        final /* synthetic */ PressGestureScopeImpl $pressScope;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass6(mb4 mb4Var, PressGestureScopeImpl pressGestureScopeImpl, e02<? super AnonymousClass6> e02Var) {
            super(2, e02Var);
            this.$cancelOrReleaseJob = mb4Var;
            this.$pressScope = pressGestureScopeImpl;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass6(this.$cancelOrReleaseJob, this.$pressScope, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass6) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0031, code lost:
        
            if (r5.reset(r4) == r0) goto L15;
         */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r5) {
            /*
                r4 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r4.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1b
                if (r1 == r3) goto L17
                if (r1 != r2) goto L10
                defpackage.r57.b(r5)
                goto L34
            L10:
                java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r4)
                r4 = 0
                return r4
            L17:
                defpackage.r57.b(r5)
                goto L29
            L1b:
                defpackage.r57.b(r5)
                mb4 r5 = r4.$cancelOrReleaseJob
                r4.label = r3
                java.lang.Object r5 = r5.e0(r4)
                if (r5 != r0) goto L29
                goto L33
            L29:
                androidx.compose.foundation.gestures.PressGestureScopeImpl r5 = r4.$pressScope
                r4.label = r2
                java.lang.Object r4 = r5.reset(r4)
                if (r4 != r0) goto L34
            L33:
                return r0
            L34:
                j59 r4 = defpackage.j59.a
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TapGestureDetectorKt.AnonymousClass6.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$processTapGesture$7, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$processTapGesture$7", f = "TapGestureDetector.kt", l = {TsExtractor.TS_PACKET_SIZE}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass7 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ dm3<PressGestureScope, Offset, e02<? super j59>, Object> $onPress;
        final /* synthetic */ PressGestureScopeImpl $pressScope;
        final /* synthetic */ PointerInputChange $secondDown;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass7(dm3<? super PressGestureScope, ? super Offset, ? super e02<? super j59>, ? extends Object> dm3Var, PressGestureScopeImpl pressGestureScopeImpl, PointerInputChange pointerInputChange, e02<? super AnonymousClass7> e02Var) {
            super(2, e02Var);
            this.$onPress = dm3Var;
            this.$pressScope = pressGestureScopeImpl;
            this.$secondDown = pointerInputChange;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass7(this.$onPress, this.$pressScope, this.$secondDown, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass7) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                dm3<PressGestureScope, Offset, e02<? super j59>, Object> dm3Var = this.$onPress;
                PressGestureScopeImpl pressGestureScopeImpl = this.$pressScope;
                Offset offsetM5976boximpl = Offset.m5976boximpl(this.$secondDown.m7569getPositionF1C5BW0());
                this.label = 1;
                if (dm3Var.invoke(pressGestureScopeImpl, offsetM5976boximpl, this) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$processTapGesture$8, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$processTapGesture$8", f = "TapGestureDetector.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass8 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ PressGestureScopeImpl $pressScope;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass8(PressGestureScopeImpl pressGestureScopeImpl, e02<? super AnonymousClass8> e02Var) {
            super(2, e02Var);
            this.$pressScope = pressGestureScopeImpl;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass8(this.$pressScope, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass8) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            this.$pressScope.release();
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$processTapGesture$9, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$processTapGesture$9", f = "TapGestureDetector.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass9 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ PressGestureScopeImpl $pressScope;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass9(PressGestureScopeImpl pressGestureScopeImpl, e02<? super AnonymousClass9> e02Var) {
            super(2, e02Var);
            this.$pressScope = pressGestureScopeImpl;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass9(this.$pressScope, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass9) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            this.$pressScope.cancel();
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$waitForLongPress$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt", f = "TapGestureDetector.kt", l = {410}, m = "waitForLongPress", v = 1)
    public static final class C05081 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C05081(e02<? super C05081> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TapGestureDetectorKt.waitForLongPress(null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$waitForLongPress$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$waitForLongPress$2", f = "TapGestureDetector.kt", l = {412, 435}, m = "invokeSuspend", v = 1)
    public static final class C05092 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
        final /* synthetic */ PointerEventPass $pass;
        final /* synthetic */ r07<LongPressResult> $result;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05092(PointerEventPass pointerEventPass, r07<LongPressResult> r07Var, e02<? super C05092> e02Var) {
            super(2, e02Var);
            this.$pass = pointerEventPass;
            this.$result = r07Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C05092 c05092 = new C05092(this.$pass, this.$result, e02Var);
            c05092.L$0 = obj;
            return c05092;
        }

        @Override // defpackage.bm3
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
            return ((C05092) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:17:0x004d  */
        /* JADX WARN: Code duplicated, block: B:21:0x005f  */
        /* JADX WARN: Code duplicated, block: B:22:0x0067  */
        /* JADX WARN: Code duplicated, block: B:26:0x0081  */
        /* JADX WARN: Code duplicated, block: B:41:0x00d0 A[LOOP:1: B:16:0x004b->B:41:0x00d0, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:47:0x00d4 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:48:0x0059 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:50:0x0093 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r0v1, types: [T, androidx.compose.foundation.gestures.LongPressResult$Released] */
        /* JADX WARN: Type inference failed for: r14v11, types: [T, androidx.compose.foundation.gestures.LongPressResult$Canceled] */
        /* JADX WARN: Type inference failed for: r14v12, types: [T, androidx.compose.foundation.gestures.LongPressResult$Success] */
        /* JADX WARN: Type inference failed for: r14v19, types: [T, androidx.compose.foundation.gestures.LongPressResult$Canceled] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a4 -> B:34:0x00a7). Please report as a decompilation issue!!! */
        /*  JADX ERROR: StackOverflowError in pass: RegionMakerVisitor
            java.lang.StackOverflowError
            	at jadx.core.dex.attributes.AttrNode.contains(AttrNode.java:98)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:60)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:590)
            	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:82)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r14) {
            /*
                Method dump skipped, instruction units count: 234
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TapGestureDetectorKt.C05092.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$waitForUpOrCancellation$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt", f = "TapGestureDetector.kt", l = {378, 392}, m = "waitForUpOrCancellation", v = 1)
    public static final class C05102 extends f02 {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C05102(e02<? super C05102> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TapGestureDetectorKt.waitForUpOrCancellation(null, null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x004d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x0058  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004b -> B:18:0x004e). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:0:?
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object awaitFirstDown(androidx.compose.ui.input.pointer.AwaitPointerEventScope r7, boolean r8, androidx.compose.ui.input.pointer.PointerEventPass r9, defpackage.e02<? super androidx.compose.ui.input.pointer.PointerInputChange> r10) {
        /*
            boolean r0 = r10 instanceof androidx.compose.foundation.gestures.TapGestureDetectorKt.AnonymousClass2
            if (r0 == 0) goto L13
            r0 = r10
            androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDown$2 r0 = (androidx.compose.foundation.gestures.TapGestureDetectorKt.AnonymousClass2) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDown$2 r0 = new androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDown$2
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.result
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 != r4) goto L36
            boolean r7 = r0.Z$0
            java.lang.Object r8 = r0.L$1
            androidx.compose.ui.input.pointer.PointerEventPass r8 = (androidx.compose.ui.input.pointer.PointerEventPass) r8
            java.lang.Object r9 = r0.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r9 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r9
            defpackage.r57.b(r10)
            r6 = r8
            r8 = r7
            r7 = r9
            r9 = r6
            goto L4e
        L36:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            return r3
        L3c:
            defpackage.r57.b(r10)
        L3f:
            r0.L$0 = r7
            r0.L$1 = r9
            r0.Z$0 = r8
            r0.label = r4
            java.lang.Object r10 = r7.awaitPointerEvent(r9, r0)
            if (r10 != r1) goto L4e
            return r1
        L4e:
            androidx.compose.ui.input.pointer.PointerEvent r10 = (androidx.compose.ui.input.pointer.PointerEvent) r10
            r2 = 2
            r5 = 0
            boolean r2 = isChangedToDown$default(r10, r8, r5, r2, r3)
            if (r2 == 0) goto L3f
            java.util.List r7 = r10.getChanges()
            java.lang.Object r7 = r7.get(r5)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TapGestureDetectorKt.awaitFirstDown(androidx.compose.ui.input.pointer.AwaitPointerEventScope, boolean, androidx.compose.ui.input.pointer.PointerEventPass, e02):java.lang.Object");
    }

    public static /* synthetic */ Object awaitFirstDown$default(AwaitPointerEventScope awaitPointerEventScope, boolean z, PointerEventPass pointerEventPass, e02 e02Var, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            pointerEventPass = PointerEventPass.Main;
        }
        return awaitFirstDown(awaitPointerEventScope, z, pointerEventPass, e02Var);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x004d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x0056  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004b -> B:18:0x004e). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:0:?
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object awaitPrimaryFirstDown(androidx.compose.ui.input.pointer.AwaitPointerEventScope r5, boolean r6, androidx.compose.ui.input.pointer.PointerEventPass r7, defpackage.e02<? super androidx.compose.ui.input.pointer.PointerInputChange> r8) {
        /*
            boolean r0 = r8 instanceof androidx.compose.foundation.gestures.TapGestureDetectorKt.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitPrimaryFirstDown$1 r0 = (androidx.compose.foundation.gestures.TapGestureDetectorKt.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitPrimaryFirstDown$1 r0 = new androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitPrimaryFirstDown$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.result
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L35
            boolean r5 = r0.Z$0
            java.lang.Object r6 = r0.L$1
            androidx.compose.ui.input.pointer.PointerEventPass r6 = (androidx.compose.ui.input.pointer.PointerEventPass) r6
            java.lang.Object r7 = r0.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r7 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r7
            defpackage.r57.b(r8)
            r4 = r6
            r6 = r5
            r5 = r7
            r7 = r4
            goto L4e
        L35:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r5)
            r5 = 0
            return r5
        L3c:
            defpackage.r57.b(r8)
        L3f:
            r0.L$0 = r5
            r0.L$1 = r7
            r0.Z$0 = r6
            r0.label = r3
            java.lang.Object r8 = r5.awaitPointerEvent(r7, r0)
            if (r8 != r1) goto L4e
            return r1
        L4e:
            androidx.compose.ui.input.pointer.PointerEvent r8 = (androidx.compose.ui.input.pointer.PointerEvent) r8
            boolean r2 = isChangedToDown(r8, r6, r3)
            if (r2 == 0) goto L3f
            java.util.List r5 = r8.getChanges()
            r6 = 0
            java.lang.Object r5 = r5.get(r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TapGestureDetectorKt.awaitPrimaryFirstDown(androidx.compose.ui.input.pointer.AwaitPointerEventScope, boolean, androidx.compose.ui.input.pointer.PointerEventPass, e02):java.lang.Object");
    }

    public static /* synthetic */ Object awaitPrimaryFirstDown$default(AwaitPointerEventScope awaitPointerEventScope, boolean z, PointerEventPass pointerEventPass, e02 e02Var, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            pointerEventPass = PointerEventPass.Main;
        }
        return awaitPrimaryFirstDown(awaitPointerEventScope, z, pointerEventPass, e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object awaitSecondDown(AwaitPointerEventScope awaitPointerEventScope, PointerInputChange pointerInputChange, e02<? super PointerInputChange> e02Var) {
        return awaitPointerEventScope.withTimeoutOrNull(awaitPointerEventScope.getViewConfiguration().getDoubleTapTimeoutMillis(), new C05012(pointerInputChange, null), e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:17:0x003f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x0051 A[LOOP:0: B:19:0x004f->B:20:0x0051, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:23:0x006a  */
    /* JADX WARN: Code duplicated, block: B:26:0x0077 A[LOOP:1: B:22:0x0068->B:26:0x0077, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:31:0x0035 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x003d -> B:18:0x0040). Please report as a decompilation issue!!! */
    /*  JADX ERROR: StackOverflowError in pass: RegionMakerVisitor
        java.lang.StackOverflowError
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:731)
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:749)
        */
    public static final java.lang.Object consumeUntilUp(androidx.compose.ui.input.pointer.AwaitPointerEventScope r9, defpackage.e02<? super defpackage.j59> r10) {
        /*
            boolean r0 = r10 instanceof androidx.compose.foundation.gestures.TapGestureDetectorKt.C05021
            if (r0 == 0) goto L13
            r0 = r10
            androidx.compose.foundation.gestures.TapGestureDetectorKt$consumeUntilUp$1 r0 = (androidx.compose.foundation.gestures.TapGestureDetectorKt.C05021) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.TapGestureDetectorKt$consumeUntilUp$1 r0 = new androidx.compose.foundation.gestures.TapGestureDetectorKt$consumeUntilUp$1
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.result
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L32
            if (r2 != r4) goto L2c
            java.lang.Object r9 = r0.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r9 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r9
            defpackage.r57.b(r10)
            goto L40
        L2c:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r9)
            return r3
        L32:
            defpackage.r57.b(r10)
        L35:
            r0.L$0 = r9
            r0.label = r4
            java.lang.Object r10 = androidx.compose.ui.input.pointer.AwaitPointerEventScope.awaitPointerEvent$default(r9, r3, r0, r4, r3)
            if (r10 != r1) goto L40
            return r1
        L40:
            androidx.compose.ui.input.pointer.PointerEvent r10 = (androidx.compose.ui.input.pointer.PointerEvent) r10
            java.util.List r2 = r10.getChanges()
            r5 = r2
            java.util.Collection r5 = (java.util.Collection) r5
            int r5 = r5.size()
            r6 = 0
            r7 = r6
        L4f:
            if (r7 >= r5) goto L5d
            java.lang.Object r8 = r2.get(r7)
            androidx.compose.ui.input.pointer.PointerInputChange r8 = (androidx.compose.ui.input.pointer.PointerInputChange) r8
            r8.consume()
            int r7 = r7 + 1
            goto L4f
        L5d:
            java.util.List r10 = r10.getChanges()
            r2 = r10
            java.util.Collection r2 = (java.util.Collection) r2
            int r2 = r2.size()
        L68:
            if (r6 >= r2) goto L7a
            java.lang.Object r5 = r10.get(r6)
            androidx.compose.ui.input.pointer.PointerInputChange r5 = (androidx.compose.ui.input.pointer.PointerInputChange) r5
            boolean r5 = r5.getPressed()
            if (r5 == 0) goto L77
            goto L35
        L77:
            int r6 = r6 + 1
            goto L68
        L7a:
            j59 r9 = defpackage.j59.a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TapGestureDetectorKt.consumeUntilUp(androidx.compose.ui.input.pointer.AwaitPointerEventScope, e02):java.lang.Object");
    }

    public static final Object detectTapAndPress(PointerInputScope pointerInputScope, dm3<? super PressGestureScope, ? super Offset, ? super e02<? super j59>, ? extends Object> dm3Var, nl3<? super Offset, j59> nl3Var, e02<? super j59> e02Var) {
        Object objC = z22.c(new C05032(pointerInputScope, dm3Var, nl3Var, new PressGestureScopeImpl(pointerInputScope), null), e02Var);
        return objC == a32.COROUTINE_SUSPENDED ? objC : j59.a;
    }

    public static /* synthetic */ Object detectTapAndPress$default(PointerInputScope pointerInputScope, dm3 dm3Var, nl3 nl3Var, e02 e02Var, int i, Object obj) {
        if ((i & 1) != 0) {
            dm3Var = NoPressGesture;
        }
        if ((i & 2) != 0) {
            nl3Var = null;
        }
        return detectTapAndPress(pointerInputScope, dm3Var, nl3Var, e02Var);
    }

    public static final Object detectTapGestures(PointerInputScope pointerInputScope, nl3<? super Offset, j59> nl3Var, nl3<? super Offset, j59> nl3Var2, dm3<? super PressGestureScope, ? super Offset, ? super e02<? super j59>, ? extends Object> dm3Var, nl3<? super Offset, j59> nl3Var3, e02<? super j59> e02Var) {
        Object objC = z22.c(new C05042(pointerInputScope, nl3Var, nl3Var2, dm3Var, nl3Var3, null), e02Var);
        return objC == a32.COROUTINE_SUSPENDED ? objC : j59.a;
    }

    public static /* synthetic */ Object detectTapGestures$default(PointerInputScope pointerInputScope, nl3 nl3Var, nl3 nl3Var2, dm3 dm3Var, nl3 nl3Var3, e02 e02Var, int i, Object obj) {
        if ((i & 1) != 0) {
            nl3Var = null;
        }
        if ((i & 2) != 0) {
            nl3Var2 = null;
        }
        if ((i & 4) != 0) {
            dm3Var = NoPressGesture;
        }
        if ((i & 8) != 0) {
            nl3Var3 = null;
        }
        return detectTapGestures(pointerInputScope, nl3Var, nl3Var2, dm3Var, nl3Var3, e02Var);
    }

    public static final boolean isChangedToDown(PointerEvent pointerEvent, boolean z, boolean z2) {
        if (z2) {
            List<PointerInputChange> changes = pointerEvent.getChanges();
            int size = changes.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    if (PointerEvent_androidKt.m7539isPrimaryPressedaHzCxE(pointerEvent.m7500getButtonsry648PA())) {
                        break;
                    }
                    return false;
                }
                if (!PointerType.m7642equalsimpl0(changes.get(i).m7572getTypeT8wyACA(), PointerType.Companion.m7647getMouseT8wyACA())) {
                    break;
                }
                i++;
            }
        }
        List<PointerInputChange> changes2 = pointerEvent.getChanges();
        int size2 = changes2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            PointerInputChange pointerInputChange = changes2.get(i2);
            if (!(z ? PointerEventKt.changedToDown(pointerInputChange) : PointerEventKt.changedToDownIgnoreConsumed(pointerInputChange))) {
                return false;
            }
        }
        return true;
    }

    public static /* synthetic */ boolean isChangedToDown$default(PointerEvent pointerEvent, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = TapGestureDetector_androidKt.firstDownRefersToPrimaryMouseButtonOnly();
        }
        return isChangedToDown(pointerEvent, z, z2);
    }

    private static final mb4 launchAwaitingReset(y22 y22Var, mb4 mb4Var, c32 c32Var, bm3<? super y22, ? super e02<? super j59>, ? extends Object> bm3Var) {
        return av0.c(y22Var, null, c32Var, new C05051(mb4Var, bm3Var, null), 1);
    }

    public static /* synthetic */ mb4 launchAwaitingReset$default(y22 y22Var, mb4 mb4Var, c32 c32Var, bm3 bm3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            c32Var = c32.UNDISPATCHED;
        }
        return launchAwaitingReset(y22Var, mb4Var, c32Var, bm3Var);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0402  */
    /* JADX WARN: Code duplicated, block: B:102:0x040e  */
    /* JADX WARN: Code duplicated, block: B:106:0x0415  */
    /* JADX WARN: Code duplicated, block: B:27:0x018a  */
    /* JADX WARN: Code duplicated, block: B:28:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:30:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:33:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:35:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:38:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:41:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:44:0x0225  */
    /* JADX WARN: Code duplicated, block: B:47:0x0242  */
    /* JADX WARN: Code duplicated, block: B:49:0x0246  */
    /* JADX WARN: Code duplicated, block: B:50:0x024d  */
    /* JADX WARN: Code duplicated, block: B:52:0x0251  */
    /* JADX WARN: Code duplicated, block: B:55:0x025c  */
    /* JADX WARN: Code duplicated, block: B:56:0x0276  */
    /* JADX WARN: Code duplicated, block: B:58:0x0294 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x0296 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x0298  */
    /* JADX WARN: Code duplicated, block: B:61:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:64:0x02c2  */
    /* JADX WARN: Code duplicated, block: B:67:0x02d4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:68:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:69:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:71:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:73:0x030c  */
    /* JADX WARN: Code duplicated, block: B:76:0x0329  */
    /* JADX WARN: Code duplicated, block: B:78:0x0331  */
    /* JADX WARN: Code duplicated, block: B:81:0x034d  */
    /* JADX WARN: Code duplicated, block: B:84:0x0362  */
    /* JADX WARN: Code duplicated, block: B:87:0x038a  */
    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    /* JADX WARN: Code duplicated, block: B:90:0x03a7  */
    /* JADX WARN: Code duplicated, block: B:92:0x03ab  */
    /* JADX WARN: Code duplicated, block: B:94:0x03b7  */
    /* JADX WARN: Code duplicated, block: B:96:0x03bb  */
    /* JADX WARN: Code duplicated, block: B:98:0x03c2  */
    /* JADX WARN: Code duplicated, block: B:99:0x03e8  */
    public static final Object processTapGesture(AwaitPointerEventScope awaitPointerEventScope, y22 y22Var, PressGestureScopeImpl pressGestureScopeImpl, nl3<? super Offset, j59> nl3Var, nl3<? super Offset, j59> nl3Var2, dm3<? super PressGestureScope, ? super Offset, ? super e02<? super j59>, ? extends Object> dm3Var, nl3<? super Offset, j59> nl3Var3, e02<? super j59> e02Var) {
        C05061 c05061;
        nl3<? super Offset, j59> nl3Var4;
        dm3<? super PressGestureScope, ? super Offset, ? super e02<? super j59>, ? extends Object> dm3Var2;
        nl3<? super Offset, j59> nl3Var5;
        PressGestureScopeImpl pressGestureScopeImpl2;
        nl3<? super Offset, j59> nl3Var6;
        AwaitPointerEventScope awaitPointerEventScope2;
        y22 y22Var2;
        PointerInputChange pointerInputChange;
        s68 s68VarC;
        mb4 mb4Var;
        nl3<? super Offset, j59> nl3Var7;
        dm3<? super PressGestureScope, ? super Offset, ? super e02<? super j59>, ? extends Object> dm3Var3;
        AwaitPointerEventScope awaitPointerEventScope3;
        PressGestureScopeImpl pressGestureScopeImpl3;
        nl3<? super Offset, j59> nl3Var8;
        nl3<? super Offset, j59> nl3Var9;
        nl3<? super Offset, j59> nl3Var10;
        nl3<? super Offset, j59> nl3Var11;
        AwaitPointerEventScope awaitPointerEventScope4;
        y22 y22Var3;
        PressGestureScopeImpl pressGestureScopeImpl4;
        dm3<? super PressGestureScope, ? super Offset, ? super e02<? super j59>, ? extends Object> dm3Var4;
        nl3<? super Offset, j59> nl3Var12;
        PointerInputChange finalUpChange;
        mb4 mb4VarLaunchAwaitingReset$default;
        Object objAwaitSecondDown;
        PointerInputChange pointerInputChange2;
        AwaitPointerEventScope awaitPointerEventScope5;
        y22 y22Var4;
        nl3<? super Offset, j59> nl3Var13;
        nl3<? super Offset, j59> nl3Var14;
        nl3<? super Offset, j59> nl3Var15;
        PressGestureScopeImpl pressGestureScopeImpl5;
        LongPressResult longPressResult;
        mb4 mb4Var2;
        y22 y22Var5;
        PressGestureScopeImpl pressGestureScopeImpl6;
        PointerInputChange pointerInputChange3;
        mb4 mb4VarC;
        Object objWaitForLongPress$default;
        PointerInputChange pointerInputChange4;
        PointerInputChange pointerInputChange5;
        PressGestureScopeImpl pressGestureScopeImpl7;
        nl3<? super Offset, j59> nl3Var16;
        nl3<? super Offset, j59> nl3Var17;
        nl3<? super Offset, j59> nl3Var18;
        y22 y22Var6;
        AwaitPointerEventScope awaitPointerEventScope6;
        y22 y22Var7;
        PointerInputChange finalUpChange2;
        LongPressResult longPressResult2;
        mb4 mb4Var3;
        PressGestureScopeImpl pressGestureScopeImpl8;
        y22 y22Var8;
        if (e02Var instanceof C05061) {
            c05061 = (C05061) e02Var;
            int i = c05061.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05061.label = i - Integer.MIN_VALUE;
            } else {
                c05061 = new C05061(e02Var);
            }
        } else {
            c05061 = new C05061(e02Var);
        }
        C05061 c05062 = c05061;
        Object objWaitForLongPress$default2 = c05062.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        switch (c05062.label) {
            case 0:
                r57.b(objWaitForLongPress$default2);
                c05062.L$0 = awaitPointerEventScope;
                c05062.L$1 = y22Var;
                c05062.L$2 = pressGestureScopeImpl;
                c05062.L$3 = nl3Var;
                nl3Var4 = nl3Var2;
                c05062.L$4 = nl3Var4;
                dm3Var2 = dm3Var;
                c05062.L$5 = dm3Var2;
                nl3Var5 = nl3Var3;
                c05062.L$6 = nl3Var5;
                c05062.label = 1;
                Object objAwaitFirstDown$default = awaitFirstDown$default(awaitPointerEventScope, false, null, c05062, 3, null);
                if (objAwaitFirstDown$default != a32Var) {
                    pressGestureScopeImpl2 = pressGestureScopeImpl;
                    nl3Var6 = nl3Var;
                    awaitPointerEventScope2 = awaitPointerEventScope;
                    y22Var2 = y22Var;
                    objWaitForLongPress$default2 = objAwaitFirstDown$default;
                    pointerInputChange = (PointerInputChange) objWaitForLongPress$default2;
                    pointerInputChange.consume();
                    s68VarC = av0.c(y22Var2, null, c32.UNDISPATCHED, new TapGestureDetectorKt$processTapGesture$resetJob$1(pressGestureScopeImpl2, null), 1);
                    if (dm3Var2 != NoPressGesture) {
                        launchAwaitingReset$default(y22Var2, s68VarC, null, new C05072(dm3Var2, pressGestureScopeImpl2, pointerInputChange, null), 2, null);
                        mb4Var = s68VarC;
                    } else {
                        mb4Var = s68VarC;
                    }
                    if (nl3Var4 == null) {
                        c05062.L$0 = awaitPointerEventScope2;
                        c05062.L$1 = y22Var2;
                        c05062.L$2 = pressGestureScopeImpl2;
                        c05062.L$3 = nl3Var6;
                        c05062.L$4 = nl3Var4;
                        c05062.L$5 = dm3Var2;
                        c05062.L$6 = nl3Var5;
                        c05062.L$7 = mb4Var;
                        c05062.label = 2;
                        objWaitForLongPress$default2 = waitForUpOrCancellation$default(awaitPointerEventScope2, null, c05062, 1, null);
                        if (objWaitForLongPress$default2 != a32Var) {
                            PressGestureScopeImpl pressGestureScopeImpl9 = pressGestureScopeImpl2;
                            nl3Var10 = nl3Var6;
                            nl3Var11 = nl3Var4;
                            awaitPointerEventScope4 = awaitPointerEventScope2;
                            y22Var3 = y22Var2;
                            pressGestureScopeImpl4 = pressGestureScopeImpl9;
                            dm3Var4 = dm3Var2;
                            nl3Var12 = nl3Var5;
                            finalUpChange = (PointerInputChange) objWaitForLongPress$default2;
                            if (finalUpChange == null) {
                                mb4VarLaunchAwaitingReset$default = launchAwaitingReset$default(y22Var3, mb4Var, null, new AnonymousClass4(pressGestureScopeImpl4, null), 2, null);
                            } else {
                                finalUpChange.consume();
                                mb4VarLaunchAwaitingReset$default = launchAwaitingReset$default(y22Var3, mb4Var, null, new AnonymousClass5(pressGestureScopeImpl4, null), 2, null);
                            }
                            if (finalUpChange != null) {
                                if (nl3Var10 == null) {
                                    c05062.L$0 = awaitPointerEventScope4;
                                    c05062.L$1 = y22Var3;
                                    c05062.L$2 = pressGestureScopeImpl4;
                                    c05062.L$3 = nl3Var10;
                                    c05062.L$4 = nl3Var11;
                                    c05062.L$5 = dm3Var4;
                                    c05062.L$6 = nl3Var12;
                                    c05062.L$7 = finalUpChange;
                                    c05062.L$8 = mb4VarLaunchAwaitingReset$default;
                                    c05062.label = 5;
                                    objAwaitSecondDown = awaitSecondDown(awaitPointerEventScope4, finalUpChange, c05062);
                                    if (objAwaitSecondDown != a32Var) {
                                        nl3<? super Offset, j59> nl3Var19 = nl3Var12;
                                        pointerInputChange2 = finalUpChange;
                                        objWaitForLongPress$default2 = objAwaitSecondDown;
                                        awaitPointerEventScope5 = awaitPointerEventScope4;
                                        y22Var4 = y22Var3;
                                        nl3Var13 = nl3Var10;
                                        nl3Var14 = nl3Var19;
                                        PressGestureScopeImpl pressGestureScopeImpl10 = pressGestureScopeImpl4;
                                        nl3Var15 = nl3Var11;
                                        pressGestureScopeImpl5 = pressGestureScopeImpl10;
                                        pointerInputChange3 = (PointerInputChange) objWaitForLongPress$default2;
                                        if (pointerInputChange3 != null) {
                                            mb4VarC = av0.c(y22Var4, null, c32.UNDISPATCHED, new AnonymousClass6(mb4VarLaunchAwaitingReset$default, pressGestureScopeImpl5, null), 1);
                                            if (dm3Var4 != NoPressGesture) {
                                                launchAwaitingReset$default(y22Var4, mb4VarC, null, new AnonymousClass7(dm3Var4, pressGestureScopeImpl5, pointerInputChange3, null), 2, null);
                                            }
                                            if (nl3Var15 == null) {
                                                c05062.L$0 = y22Var4;
                                                c05062.L$1 = pressGestureScopeImpl5;
                                                c05062.L$2 = nl3Var13;
                                                c05062.L$3 = nl3Var14;
                                                c05062.L$4 = mb4VarC;
                                                c05062.L$5 = pointerInputChange2;
                                                c05062.L$6 = null;
                                                c05062.L$7 = null;
                                                c05062.L$8 = null;
                                                c05062.label = 6;
                                                objWaitForLongPress$default2 = waitForUpOrCancellation$default(awaitPointerEventScope5, null, c05062, 1, null);
                                                if (objWaitForLongPress$default2 != a32Var) {
                                                    pointerInputChange5 = pointerInputChange2;
                                                    nl3Var16 = nl3Var14;
                                                    nl3Var18 = nl3Var13;
                                                    y22Var7 = y22Var4;
                                                    finalUpChange2 = (PointerInputChange) objWaitForLongPress$default2;
                                                    if (finalUpChange2 != null) {
                                                        finalUpChange2.consume();
                                                        launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass8(pressGestureScopeImpl5, null), 2, null);
                                                        nl3Var18.invoke(Offset.m5976boximpl(finalUpChange2.m7569getPositionF1C5BW0()));
                                                    } else {
                                                        launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass9(pressGestureScopeImpl5, null), 2, null);
                                                        if (nl3Var16 != null) {
                                                            nl3Var16.invoke(Offset.m5976boximpl(pointerInputChange5.m7569getPositionF1C5BW0()));
                                                        }
                                                    }
                                                }
                                            } else {
                                                c05062.L$0 = awaitPointerEventScope5;
                                                c05062.L$1 = y22Var4;
                                                c05062.L$2 = pressGestureScopeImpl5;
                                                c05062.L$3 = nl3Var13;
                                                c05062.L$4 = nl3Var15;
                                                c05062.L$5 = nl3Var14;
                                                c05062.L$6 = mb4VarC;
                                                c05062.L$7 = pointerInputChange2;
                                                c05062.L$8 = pointerInputChange3;
                                                c05062.label = 7;
                                                objWaitForLongPress$default = waitForLongPress$default(awaitPointerEventScope5, null, c05062, 1, null);
                                                if (objWaitForLongPress$default != a32Var) {
                                                    PointerInputChange pointerInputChange6 = pointerInputChange2;
                                                    pointerInputChange4 = pointerInputChange3;
                                                    objWaitForLongPress$default2 = objWaitForLongPress$default;
                                                    pointerInputChange5 = pointerInputChange6;
                                                    nl3<? super Offset, j59> nl3Var20 = nl3Var15;
                                                    pressGestureScopeImpl7 = pressGestureScopeImpl5;
                                                    nl3Var16 = nl3Var14;
                                                    nl3Var17 = nl3Var20;
                                                    nl3Var18 = nl3Var13;
                                                    y22Var6 = y22Var4;
                                                    awaitPointerEventScope6 = awaitPointerEventScope5;
                                                    longPressResult2 = (LongPressResult) objWaitForLongPress$default2;
                                                    if (!aa4.e(longPressResult2, LongPressResult.Success.INSTANCE)) {
                                                        nl3Var17.invoke(Offset.m5976boximpl(pointerInputChange4.m7569getPositionF1C5BW0()));
                                                        c05062.L$0 = y22Var6;
                                                        c05062.L$1 = pressGestureScopeImpl7;
                                                        c05062.L$2 = mb4VarC;
                                                        c05062.L$3 = null;
                                                        c05062.L$4 = null;
                                                        c05062.L$5 = null;
                                                        c05062.L$6 = null;
                                                        c05062.L$7 = null;
                                                        c05062.L$8 = null;
                                                        c05062.label = 8;
                                                        if (consumeUntilUp(awaitPointerEventScope6, c05062) != a32Var) {
                                                            mb4Var3 = mb4VarC;
                                                            pressGestureScopeImpl8 = pressGestureScopeImpl7;
                                                            y22Var8 = y22Var6;
                                                            launchAwaitingReset$default(y22Var8, mb4Var3, null, new TapGestureDetectorKt$processTapGesture$secondUp$1(pressGestureScopeImpl8, null), 2, null);
                                                            return j59.a;
                                                        }
                                                    } else {
                                                        if (longPressResult2 instanceof LongPressResult.Released) {
                                                            finalUpChange2 = ((LongPressResult.Released) longPressResult2).getFinalUpChange();
                                                        } else {
                                                            if (longPressResult2 instanceof LongPressResult.Canceled) {
                                                                me0.e();
                                                                return null;
                                                            }
                                                            finalUpChange2 = null;
                                                        }
                                                        pressGestureScopeImpl5 = pressGestureScopeImpl7;
                                                        y22Var7 = y22Var6;
                                                        if (finalUpChange2 != null) {
                                                            finalUpChange2.consume();
                                                            launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass8(pressGestureScopeImpl5, null), 2, null);
                                                            nl3Var18.invoke(Offset.m5976boximpl(finalUpChange2.m7569getPositionF1C5BW0()));
                                                        } else {
                                                            launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass9(pressGestureScopeImpl5, null), 2, null);
                                                            if (nl3Var16 != null) {
                                                                nl3Var16.invoke(Offset.m5976boximpl(pointerInputChange5.m7569getPositionF1C5BW0()));
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        } else if (nl3Var14 != null) {
                                            nl3Var14.invoke(Offset.m5976boximpl(pointerInputChange2.m7569getPositionF1C5BW0()));
                                        }
                                    }
                                } else if (nl3Var12 != null) {
                                    nl3Var12.invoke(Offset.m5976boximpl(finalUpChange.m7569getPositionF1C5BW0()));
                                }
                            }
                            return j59.a;
                        }
                    } else {
                        c05062.L$0 = awaitPointerEventScope2;
                        c05062.L$1 = y22Var2;
                        c05062.L$2 = pressGestureScopeImpl2;
                        c05062.L$3 = nl3Var6;
                        c05062.L$4 = nl3Var4;
                        c05062.L$5 = dm3Var2;
                        c05062.L$6 = nl3Var5;
                        c05062.L$7 = pointerInputChange;
                        c05062.L$8 = mb4Var;
                        c05062.label = 3;
                        objWaitForLongPress$default2 = waitForLongPress$default(awaitPointerEventScope2, null, c05062, 1, null);
                        if (objWaitForLongPress$default2 != a32Var) {
                            nl3<? super Offset, j59> nl3Var21 = nl3Var4;
                            nl3Var7 = nl3Var6;
                            dm3Var3 = dm3Var2;
                            awaitPointerEventScope3 = awaitPointerEventScope2;
                            pressGestureScopeImpl3 = pressGestureScopeImpl2;
                            nl3Var8 = nl3Var21;
                            nl3Var9 = nl3Var5;
                            longPressResult = (LongPressResult) objWaitForLongPress$default2;
                            if (!aa4.e(longPressResult, LongPressResult.Success.INSTANCE)) {
                                if (longPressResult instanceof LongPressResult.Released) {
                                    finalUpChange = ((LongPressResult.Released) longPressResult).getFinalUpChange();
                                } else {
                                    if (!(longPressResult instanceof LongPressResult.Canceled)) {
                                        me0.e();
                                        return null;
                                    }
                                    finalUpChange = null;
                                }
                                PressGestureScopeImpl pressGestureScopeImpl11 = pressGestureScopeImpl3;
                                y22Var3 = y22Var2;
                                pressGestureScopeImpl4 = pressGestureScopeImpl11;
                                nl3Var12 = nl3Var9;
                                dm3Var4 = dm3Var3;
                                nl3Var11 = nl3Var8;
                                nl3Var10 = nl3Var7;
                                awaitPointerEventScope4 = awaitPointerEventScope3;
                                if (finalUpChange == null) {
                                    mb4VarLaunchAwaitingReset$default = launchAwaitingReset$default(y22Var3, mb4Var, null, new AnonymousClass4(pressGestureScopeImpl4, null), 2, null);
                                } else {
                                    finalUpChange.consume();
                                    mb4VarLaunchAwaitingReset$default = launchAwaitingReset$default(y22Var3, mb4Var, null, new AnonymousClass5(pressGestureScopeImpl4, null), 2, null);
                                }
                                if (finalUpChange != null) {
                                    if (nl3Var10 == null) {
                                        c05062.L$0 = awaitPointerEventScope4;
                                        c05062.L$1 = y22Var3;
                                        c05062.L$2 = pressGestureScopeImpl4;
                                        c05062.L$3 = nl3Var10;
                                        c05062.L$4 = nl3Var11;
                                        c05062.L$5 = dm3Var4;
                                        c05062.L$6 = nl3Var12;
                                        c05062.L$7 = finalUpChange;
                                        c05062.L$8 = mb4VarLaunchAwaitingReset$default;
                                        c05062.label = 5;
                                        objAwaitSecondDown = awaitSecondDown(awaitPointerEventScope4, finalUpChange, c05062);
                                        if (objAwaitSecondDown != a32Var) {
                                            nl3<? super Offset, j59> nl3Var110 = nl3Var12;
                                            pointerInputChange2 = finalUpChange;
                                            objWaitForLongPress$default2 = objAwaitSecondDown;
                                            awaitPointerEventScope5 = awaitPointerEventScope4;
                                            y22Var4 = y22Var3;
                                            nl3Var13 = nl3Var10;
                                            nl3Var14 = nl3Var110;
                                            PressGestureScopeImpl pressGestureScopeImpl12 = pressGestureScopeImpl4;
                                            nl3Var15 = nl3Var11;
                                            pressGestureScopeImpl5 = pressGestureScopeImpl12;
                                            pointerInputChange3 = (PointerInputChange) objWaitForLongPress$default2;
                                            if (pointerInputChange3 != null) {
                                                mb4VarC = av0.c(y22Var4, null, c32.UNDISPATCHED, new AnonymousClass6(mb4VarLaunchAwaitingReset$default, pressGestureScopeImpl5, null), 1);
                                                if (dm3Var4 != NoPressGesture) {
                                                    launchAwaitingReset$default(y22Var4, mb4VarC, null, new AnonymousClass7(dm3Var4, pressGestureScopeImpl5, pointerInputChange3, null), 2, null);
                                                }
                                                if (nl3Var15 == null) {
                                                    c05062.L$0 = y22Var4;
                                                    c05062.L$1 = pressGestureScopeImpl5;
                                                    c05062.L$2 = nl3Var13;
                                                    c05062.L$3 = nl3Var14;
                                                    c05062.L$4 = mb4VarC;
                                                    c05062.L$5 = pointerInputChange2;
                                                    c05062.L$6 = null;
                                                    c05062.L$7 = null;
                                                    c05062.L$8 = null;
                                                    c05062.label = 6;
                                                    objWaitForLongPress$default2 = waitForUpOrCancellation$default(awaitPointerEventScope5, null, c05062, 1, null);
                                                    if (objWaitForLongPress$default2 != a32Var) {
                                                        pointerInputChange5 = pointerInputChange2;
                                                        nl3Var16 = nl3Var14;
                                                        nl3Var18 = nl3Var13;
                                                        y22Var7 = y22Var4;
                                                        finalUpChange2 = (PointerInputChange) objWaitForLongPress$default2;
                                                        if (finalUpChange2 != null) {
                                                            finalUpChange2.consume();
                                                            launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass8(pressGestureScopeImpl5, null), 2, null);
                                                            nl3Var18.invoke(Offset.m5976boximpl(finalUpChange2.m7569getPositionF1C5BW0()));
                                                        } else {
                                                            launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass9(pressGestureScopeImpl5, null), 2, null);
                                                            if (nl3Var16 != null) {
                                                                nl3Var16.invoke(Offset.m5976boximpl(pointerInputChange5.m7569getPositionF1C5BW0()));
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    c05062.L$0 = awaitPointerEventScope5;
                                                    c05062.L$1 = y22Var4;
                                                    c05062.L$2 = pressGestureScopeImpl5;
                                                    c05062.L$3 = nl3Var13;
                                                    c05062.L$4 = nl3Var15;
                                                    c05062.L$5 = nl3Var14;
                                                    c05062.L$6 = mb4VarC;
                                                    c05062.L$7 = pointerInputChange2;
                                                    c05062.L$8 = pointerInputChange3;
                                                    c05062.label = 7;
                                                    objWaitForLongPress$default = waitForLongPress$default(awaitPointerEventScope5, null, c05062, 1, null);
                                                    if (objWaitForLongPress$default != a32Var) {
                                                        PointerInputChange pointerInputChange7 = pointerInputChange2;
                                                        pointerInputChange4 = pointerInputChange3;
                                                        objWaitForLongPress$default2 = objWaitForLongPress$default;
                                                        pointerInputChange5 = pointerInputChange7;
                                                        nl3<? super Offset, j59> nl3Var22 = nl3Var15;
                                                        pressGestureScopeImpl7 = pressGestureScopeImpl5;
                                                        nl3Var16 = nl3Var14;
                                                        nl3Var17 = nl3Var22;
                                                        nl3Var18 = nl3Var13;
                                                        y22Var6 = y22Var4;
                                                        awaitPointerEventScope6 = awaitPointerEventScope5;
                                                        longPressResult2 = (LongPressResult) objWaitForLongPress$default2;
                                                        if (!aa4.e(longPressResult2, LongPressResult.Success.INSTANCE)) {
                                                            nl3Var17.invoke(Offset.m5976boximpl(pointerInputChange4.m7569getPositionF1C5BW0()));
                                                            c05062.L$0 = y22Var6;
                                                            c05062.L$1 = pressGestureScopeImpl7;
                                                            c05062.L$2 = mb4VarC;
                                                            c05062.L$3 = null;
                                                            c05062.L$4 = null;
                                                            c05062.L$5 = null;
                                                            c05062.L$6 = null;
                                                            c05062.L$7 = null;
                                                            c05062.L$8 = null;
                                                            c05062.label = 8;
                                                            if (consumeUntilUp(awaitPointerEventScope6, c05062) != a32Var) {
                                                                mb4Var3 = mb4VarC;
                                                                pressGestureScopeImpl8 = pressGestureScopeImpl7;
                                                                y22Var8 = y22Var6;
                                                                launchAwaitingReset$default(y22Var8, mb4Var3, null, new TapGestureDetectorKt$processTapGesture$secondUp$1(pressGestureScopeImpl8, null), 2, null);
                                                                return j59.a;
                                                            }
                                                        } else {
                                                            if (longPressResult2 instanceof LongPressResult.Released) {
                                                                finalUpChange2 = ((LongPressResult.Released) longPressResult2).getFinalUpChange();
                                                            } else {
                                                                if (longPressResult2 instanceof LongPressResult.Canceled) {
                                                                    me0.e();
                                                                    return null;
                                                                }
                                                                finalUpChange2 = null;
                                                            }
                                                            pressGestureScopeImpl5 = pressGestureScopeImpl7;
                                                            y22Var7 = y22Var6;
                                                            if (finalUpChange2 != null) {
                                                                finalUpChange2.consume();
                                                                launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass8(pressGestureScopeImpl5, null), 2, null);
                                                                nl3Var18.invoke(Offset.m5976boximpl(finalUpChange2.m7569getPositionF1C5BW0()));
                                                            } else {
                                                                launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass9(pressGestureScopeImpl5, null), 2, null);
                                                                if (nl3Var16 != null) {
                                                                    nl3Var16.invoke(Offset.m5976boximpl(pointerInputChange5.m7569getPositionF1C5BW0()));
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            } else if (nl3Var14 != null) {
                                                nl3Var14.invoke(Offset.m5976boximpl(pointerInputChange2.m7569getPositionF1C5BW0()));
                                            }
                                        }
                                    } else if (nl3Var12 != null) {
                                        nl3Var12.invoke(Offset.m5976boximpl(finalUpChange.m7569getPositionF1C5BW0()));
                                    }
                                }
                                return j59.a;
                            }
                            nl3Var8.invoke(Offset.m5976boximpl(pointerInputChange.m7569getPositionF1C5BW0()));
                            c05062.L$0 = y22Var2;
                            c05062.L$1 = pressGestureScopeImpl3;
                            c05062.L$2 = mb4Var;
                            c05062.L$3 = null;
                            c05062.L$4 = null;
                            c05062.L$5 = null;
                            c05062.L$6 = null;
                            c05062.L$7 = null;
                            c05062.L$8 = null;
                            c05062.label = 4;
                            if (consumeUntilUp(awaitPointerEventScope3, c05062) != a32Var) {
                                mb4Var2 = mb4Var;
                                y22Var5 = y22Var2;
                                pressGestureScopeImpl6 = pressGestureScopeImpl3;
                                launchAwaitingReset$default(y22Var5, mb4Var2, null, new AnonymousClass3(pressGestureScopeImpl6, null), 2, null);
                                return j59.a;
                            }
                        }
                    }
                }
                return a32Var;
            case 1:
                nl3<? super Offset, j59> nl3Var23 = (nl3) c05062.L$6;
                dm3<? super PressGestureScope, ? super Offset, ? super e02<? super j59>, ? extends Object> dm3Var5 = (dm3) c05062.L$5;
                nl3<? super Offset, j59> nl3Var24 = (nl3) c05062.L$4;
                nl3Var6 = (nl3) c05062.L$3;
                pressGestureScopeImpl2 = (PressGestureScopeImpl) c05062.L$2;
                y22Var2 = (y22) c05062.L$1;
                awaitPointerEventScope2 = (AwaitPointerEventScope) c05062.L$0;
                r57.b(objWaitForLongPress$default2);
                nl3Var5 = nl3Var23;
                dm3Var2 = dm3Var5;
                nl3Var4 = nl3Var24;
                pointerInputChange = (PointerInputChange) objWaitForLongPress$default2;
                pointerInputChange.consume();
                s68VarC = av0.c(y22Var2, null, c32.UNDISPATCHED, new TapGestureDetectorKt$processTapGesture$resetJob$1(pressGestureScopeImpl2, null), 1);
                if (dm3Var2 != NoPressGesture) {
                    launchAwaitingReset$default(y22Var2, s68VarC, null, new C05072(dm3Var2, pressGestureScopeImpl2, pointerInputChange, null), 2, null);
                    mb4Var = s68VarC;
                } else {
                    mb4Var = s68VarC;
                }
                if (nl3Var4 == null) {
                    c05062.L$0 = awaitPointerEventScope2;
                    c05062.L$1 = y22Var2;
                    c05062.L$2 = pressGestureScopeImpl2;
                    c05062.L$3 = nl3Var6;
                    c05062.L$4 = nl3Var4;
                    c05062.L$5 = dm3Var2;
                    c05062.L$6 = nl3Var5;
                    c05062.L$7 = mb4Var;
                    c05062.label = 2;
                    objWaitForLongPress$default2 = waitForUpOrCancellation$default(awaitPointerEventScope2, null, c05062, 1, null);
                    if (objWaitForLongPress$default2 != a32Var) {
                        PressGestureScopeImpl pressGestureScopeImpl13 = pressGestureScopeImpl2;
                        nl3Var10 = nl3Var6;
                        nl3Var11 = nl3Var4;
                        awaitPointerEventScope4 = awaitPointerEventScope2;
                        y22Var3 = y22Var2;
                        pressGestureScopeImpl4 = pressGestureScopeImpl13;
                        dm3Var4 = dm3Var2;
                        nl3Var12 = nl3Var5;
                        finalUpChange = (PointerInputChange) objWaitForLongPress$default2;
                        if (finalUpChange == null) {
                            mb4VarLaunchAwaitingReset$default = launchAwaitingReset$default(y22Var3, mb4Var, null, new AnonymousClass4(pressGestureScopeImpl4, null), 2, null);
                        } else {
                            finalUpChange.consume();
                            mb4VarLaunchAwaitingReset$default = launchAwaitingReset$default(y22Var3, mb4Var, null, new AnonymousClass5(pressGestureScopeImpl4, null), 2, null);
                        }
                        if (finalUpChange != null) {
                            if (nl3Var10 == null) {
                                c05062.L$0 = awaitPointerEventScope4;
                                c05062.L$1 = y22Var3;
                                c05062.L$2 = pressGestureScopeImpl4;
                                c05062.L$3 = nl3Var10;
                                c05062.L$4 = nl3Var11;
                                c05062.L$5 = dm3Var4;
                                c05062.L$6 = nl3Var12;
                                c05062.L$7 = finalUpChange;
                                c05062.L$8 = mb4VarLaunchAwaitingReset$default;
                                c05062.label = 5;
                                objAwaitSecondDown = awaitSecondDown(awaitPointerEventScope4, finalUpChange, c05062);
                                if (objAwaitSecondDown != a32Var) {
                                    nl3<? super Offset, j59> nl3Var111 = nl3Var12;
                                    pointerInputChange2 = finalUpChange;
                                    objWaitForLongPress$default2 = objAwaitSecondDown;
                                    awaitPointerEventScope5 = awaitPointerEventScope4;
                                    y22Var4 = y22Var3;
                                    nl3Var13 = nl3Var10;
                                    nl3Var14 = nl3Var111;
                                    PressGestureScopeImpl pressGestureScopeImpl14 = pressGestureScopeImpl4;
                                    nl3Var15 = nl3Var11;
                                    pressGestureScopeImpl5 = pressGestureScopeImpl14;
                                    pointerInputChange3 = (PointerInputChange) objWaitForLongPress$default2;
                                    if (pointerInputChange3 != null) {
                                        mb4VarC = av0.c(y22Var4, null, c32.UNDISPATCHED, new AnonymousClass6(mb4VarLaunchAwaitingReset$default, pressGestureScopeImpl5, null), 1);
                                        if (dm3Var4 != NoPressGesture) {
                                            launchAwaitingReset$default(y22Var4, mb4VarC, null, new AnonymousClass7(dm3Var4, pressGestureScopeImpl5, pointerInputChange3, null), 2, null);
                                        }
                                        if (nl3Var15 == null) {
                                            c05062.L$0 = y22Var4;
                                            c05062.L$1 = pressGestureScopeImpl5;
                                            c05062.L$2 = nl3Var13;
                                            c05062.L$3 = nl3Var14;
                                            c05062.L$4 = mb4VarC;
                                            c05062.L$5 = pointerInputChange2;
                                            c05062.L$6 = null;
                                            c05062.L$7 = null;
                                            c05062.L$8 = null;
                                            c05062.label = 6;
                                            objWaitForLongPress$default2 = waitForUpOrCancellation$default(awaitPointerEventScope5, null, c05062, 1, null);
                                            if (objWaitForLongPress$default2 != a32Var) {
                                                pointerInputChange5 = pointerInputChange2;
                                                nl3Var16 = nl3Var14;
                                                nl3Var18 = nl3Var13;
                                                y22Var7 = y22Var4;
                                                finalUpChange2 = (PointerInputChange) objWaitForLongPress$default2;
                                                if (finalUpChange2 != null) {
                                                    finalUpChange2.consume();
                                                    launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass8(pressGestureScopeImpl5, null), 2, null);
                                                    nl3Var18.invoke(Offset.m5976boximpl(finalUpChange2.m7569getPositionF1C5BW0()));
                                                } else {
                                                    launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass9(pressGestureScopeImpl5, null), 2, null);
                                                    if (nl3Var16 != null) {
                                                        nl3Var16.invoke(Offset.m5976boximpl(pointerInputChange5.m7569getPositionF1C5BW0()));
                                                    }
                                                }
                                            }
                                        } else {
                                            c05062.L$0 = awaitPointerEventScope5;
                                            c05062.L$1 = y22Var4;
                                            c05062.L$2 = pressGestureScopeImpl5;
                                            c05062.L$3 = nl3Var13;
                                            c05062.L$4 = nl3Var15;
                                            c05062.L$5 = nl3Var14;
                                            c05062.L$6 = mb4VarC;
                                            c05062.L$7 = pointerInputChange2;
                                            c05062.L$8 = pointerInputChange3;
                                            c05062.label = 7;
                                            objWaitForLongPress$default = waitForLongPress$default(awaitPointerEventScope5, null, c05062, 1, null);
                                            if (objWaitForLongPress$default != a32Var) {
                                                PointerInputChange pointerInputChange8 = pointerInputChange2;
                                                pointerInputChange4 = pointerInputChange3;
                                                objWaitForLongPress$default2 = objWaitForLongPress$default;
                                                pointerInputChange5 = pointerInputChange8;
                                                nl3<? super Offset, j59> nl3Var25 = nl3Var15;
                                                pressGestureScopeImpl7 = pressGestureScopeImpl5;
                                                nl3Var16 = nl3Var14;
                                                nl3Var17 = nl3Var25;
                                                nl3Var18 = nl3Var13;
                                                y22Var6 = y22Var4;
                                                awaitPointerEventScope6 = awaitPointerEventScope5;
                                                longPressResult2 = (LongPressResult) objWaitForLongPress$default2;
                                                if (!aa4.e(longPressResult2, LongPressResult.Success.INSTANCE)) {
                                                    nl3Var17.invoke(Offset.m5976boximpl(pointerInputChange4.m7569getPositionF1C5BW0()));
                                                    c05062.L$0 = y22Var6;
                                                    c05062.L$1 = pressGestureScopeImpl7;
                                                    c05062.L$2 = mb4VarC;
                                                    c05062.L$3 = null;
                                                    c05062.L$4 = null;
                                                    c05062.L$5 = null;
                                                    c05062.L$6 = null;
                                                    c05062.L$7 = null;
                                                    c05062.L$8 = null;
                                                    c05062.label = 8;
                                                    if (consumeUntilUp(awaitPointerEventScope6, c05062) != a32Var) {
                                                        mb4Var3 = mb4VarC;
                                                        pressGestureScopeImpl8 = pressGestureScopeImpl7;
                                                        y22Var8 = y22Var6;
                                                        launchAwaitingReset$default(y22Var8, mb4Var3, null, new TapGestureDetectorKt$processTapGesture$secondUp$1(pressGestureScopeImpl8, null), 2, null);
                                                        return j59.a;
                                                    }
                                                } else {
                                                    if (longPressResult2 instanceof LongPressResult.Released) {
                                                        finalUpChange2 = ((LongPressResult.Released) longPressResult2).getFinalUpChange();
                                                    } else {
                                                        if (longPressResult2 instanceof LongPressResult.Canceled) {
                                                            me0.e();
                                                            return null;
                                                        }
                                                        finalUpChange2 = null;
                                                    }
                                                    pressGestureScopeImpl5 = pressGestureScopeImpl7;
                                                    y22Var7 = y22Var6;
                                                    if (finalUpChange2 != null) {
                                                        finalUpChange2.consume();
                                                        launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass8(pressGestureScopeImpl5, null), 2, null);
                                                        nl3Var18.invoke(Offset.m5976boximpl(finalUpChange2.m7569getPositionF1C5BW0()));
                                                    } else {
                                                        launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass9(pressGestureScopeImpl5, null), 2, null);
                                                        if (nl3Var16 != null) {
                                                            nl3Var16.invoke(Offset.m5976boximpl(pointerInputChange5.m7569getPositionF1C5BW0()));
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    } else if (nl3Var14 != null) {
                                        nl3Var14.invoke(Offset.m5976boximpl(pointerInputChange2.m7569getPositionF1C5BW0()));
                                    }
                                }
                            } else if (nl3Var12 != null) {
                                nl3Var12.invoke(Offset.m5976boximpl(finalUpChange.m7569getPositionF1C5BW0()));
                            }
                        }
                        return j59.a;
                    }
                } else {
                    c05062.L$0 = awaitPointerEventScope2;
                    c05062.L$1 = y22Var2;
                    c05062.L$2 = pressGestureScopeImpl2;
                    c05062.L$3 = nl3Var6;
                    c05062.L$4 = nl3Var4;
                    c05062.L$5 = dm3Var2;
                    c05062.L$6 = nl3Var5;
                    c05062.L$7 = pointerInputChange;
                    c05062.L$8 = mb4Var;
                    c05062.label = 3;
                    objWaitForLongPress$default2 = waitForLongPress$default(awaitPointerEventScope2, null, c05062, 1, null);
                    if (objWaitForLongPress$default2 != a32Var) {
                        nl3<? super Offset, j59> nl3Var26 = nl3Var4;
                        nl3Var7 = nl3Var6;
                        dm3Var3 = dm3Var2;
                        awaitPointerEventScope3 = awaitPointerEventScope2;
                        pressGestureScopeImpl3 = pressGestureScopeImpl2;
                        nl3Var8 = nl3Var26;
                        nl3Var9 = nl3Var5;
                        longPressResult = (LongPressResult) objWaitForLongPress$default2;
                        if (!aa4.e(longPressResult, LongPressResult.Success.INSTANCE)) {
                            if (longPressResult instanceof LongPressResult.Released) {
                                finalUpChange = ((LongPressResult.Released) longPressResult).getFinalUpChange();
                            } else {
                                if (!(longPressResult instanceof LongPressResult.Canceled)) {
                                    me0.e();
                                    return null;
                                }
                                finalUpChange = null;
                            }
                            PressGestureScopeImpl pressGestureScopeImpl15 = pressGestureScopeImpl3;
                            y22Var3 = y22Var2;
                            pressGestureScopeImpl4 = pressGestureScopeImpl15;
                            nl3Var12 = nl3Var9;
                            dm3Var4 = dm3Var3;
                            nl3Var11 = nl3Var8;
                            nl3Var10 = nl3Var7;
                            awaitPointerEventScope4 = awaitPointerEventScope3;
                            if (finalUpChange == null) {
                                mb4VarLaunchAwaitingReset$default = launchAwaitingReset$default(y22Var3, mb4Var, null, new AnonymousClass4(pressGestureScopeImpl4, null), 2, null);
                            } else {
                                finalUpChange.consume();
                                mb4VarLaunchAwaitingReset$default = launchAwaitingReset$default(y22Var3, mb4Var, null, new AnonymousClass5(pressGestureScopeImpl4, null), 2, null);
                            }
                            if (finalUpChange != null) {
                                if (nl3Var10 == null) {
                                    c05062.L$0 = awaitPointerEventScope4;
                                    c05062.L$1 = y22Var3;
                                    c05062.L$2 = pressGestureScopeImpl4;
                                    c05062.L$3 = nl3Var10;
                                    c05062.L$4 = nl3Var11;
                                    c05062.L$5 = dm3Var4;
                                    c05062.L$6 = nl3Var12;
                                    c05062.L$7 = finalUpChange;
                                    c05062.L$8 = mb4VarLaunchAwaitingReset$default;
                                    c05062.label = 5;
                                    objAwaitSecondDown = awaitSecondDown(awaitPointerEventScope4, finalUpChange, c05062);
                                    if (objAwaitSecondDown != a32Var) {
                                        nl3<? super Offset, j59> nl3Var112 = nl3Var12;
                                        pointerInputChange2 = finalUpChange;
                                        objWaitForLongPress$default2 = objAwaitSecondDown;
                                        awaitPointerEventScope5 = awaitPointerEventScope4;
                                        y22Var4 = y22Var3;
                                        nl3Var13 = nl3Var10;
                                        nl3Var14 = nl3Var112;
                                        PressGestureScopeImpl pressGestureScopeImpl16 = pressGestureScopeImpl4;
                                        nl3Var15 = nl3Var11;
                                        pressGestureScopeImpl5 = pressGestureScopeImpl16;
                                        pointerInputChange3 = (PointerInputChange) objWaitForLongPress$default2;
                                        if (pointerInputChange3 != null) {
                                            mb4VarC = av0.c(y22Var4, null, c32.UNDISPATCHED, new AnonymousClass6(mb4VarLaunchAwaitingReset$default, pressGestureScopeImpl5, null), 1);
                                            if (dm3Var4 != NoPressGesture) {
                                                launchAwaitingReset$default(y22Var4, mb4VarC, null, new AnonymousClass7(dm3Var4, pressGestureScopeImpl5, pointerInputChange3, null), 2, null);
                                            }
                                            if (nl3Var15 == null) {
                                                c05062.L$0 = y22Var4;
                                                c05062.L$1 = pressGestureScopeImpl5;
                                                c05062.L$2 = nl3Var13;
                                                c05062.L$3 = nl3Var14;
                                                c05062.L$4 = mb4VarC;
                                                c05062.L$5 = pointerInputChange2;
                                                c05062.L$6 = null;
                                                c05062.L$7 = null;
                                                c05062.L$8 = null;
                                                c05062.label = 6;
                                                objWaitForLongPress$default2 = waitForUpOrCancellation$default(awaitPointerEventScope5, null, c05062, 1, null);
                                                if (objWaitForLongPress$default2 != a32Var) {
                                                    pointerInputChange5 = pointerInputChange2;
                                                    nl3Var16 = nl3Var14;
                                                    nl3Var18 = nl3Var13;
                                                    y22Var7 = y22Var4;
                                                    finalUpChange2 = (PointerInputChange) objWaitForLongPress$default2;
                                                    if (finalUpChange2 != null) {
                                                        finalUpChange2.consume();
                                                        launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass8(pressGestureScopeImpl5, null), 2, null);
                                                        nl3Var18.invoke(Offset.m5976boximpl(finalUpChange2.m7569getPositionF1C5BW0()));
                                                    } else {
                                                        launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass9(pressGestureScopeImpl5, null), 2, null);
                                                        if (nl3Var16 != null) {
                                                            nl3Var16.invoke(Offset.m5976boximpl(pointerInputChange5.m7569getPositionF1C5BW0()));
                                                        }
                                                    }
                                                }
                                            } else {
                                                c05062.L$0 = awaitPointerEventScope5;
                                                c05062.L$1 = y22Var4;
                                                c05062.L$2 = pressGestureScopeImpl5;
                                                c05062.L$3 = nl3Var13;
                                                c05062.L$4 = nl3Var15;
                                                c05062.L$5 = nl3Var14;
                                                c05062.L$6 = mb4VarC;
                                                c05062.L$7 = pointerInputChange2;
                                                c05062.L$8 = pointerInputChange3;
                                                c05062.label = 7;
                                                objWaitForLongPress$default = waitForLongPress$default(awaitPointerEventScope5, null, c05062, 1, null);
                                                if (objWaitForLongPress$default != a32Var) {
                                                    PointerInputChange pointerInputChange9 = pointerInputChange2;
                                                    pointerInputChange4 = pointerInputChange3;
                                                    objWaitForLongPress$default2 = objWaitForLongPress$default;
                                                    pointerInputChange5 = pointerInputChange9;
                                                    nl3<? super Offset, j59> nl3Var27 = nl3Var15;
                                                    pressGestureScopeImpl7 = pressGestureScopeImpl5;
                                                    nl3Var16 = nl3Var14;
                                                    nl3Var17 = nl3Var27;
                                                    nl3Var18 = nl3Var13;
                                                    y22Var6 = y22Var4;
                                                    awaitPointerEventScope6 = awaitPointerEventScope5;
                                                    longPressResult2 = (LongPressResult) objWaitForLongPress$default2;
                                                    if (!aa4.e(longPressResult2, LongPressResult.Success.INSTANCE)) {
                                                        nl3Var17.invoke(Offset.m5976boximpl(pointerInputChange4.m7569getPositionF1C5BW0()));
                                                        c05062.L$0 = y22Var6;
                                                        c05062.L$1 = pressGestureScopeImpl7;
                                                        c05062.L$2 = mb4VarC;
                                                        c05062.L$3 = null;
                                                        c05062.L$4 = null;
                                                        c05062.L$5 = null;
                                                        c05062.L$6 = null;
                                                        c05062.L$7 = null;
                                                        c05062.L$8 = null;
                                                        c05062.label = 8;
                                                        if (consumeUntilUp(awaitPointerEventScope6, c05062) != a32Var) {
                                                            mb4Var3 = mb4VarC;
                                                            pressGestureScopeImpl8 = pressGestureScopeImpl7;
                                                            y22Var8 = y22Var6;
                                                            launchAwaitingReset$default(y22Var8, mb4Var3, null, new TapGestureDetectorKt$processTapGesture$secondUp$1(pressGestureScopeImpl8, null), 2, null);
                                                            return j59.a;
                                                        }
                                                    } else {
                                                        if (longPressResult2 instanceof LongPressResult.Released) {
                                                            finalUpChange2 = ((LongPressResult.Released) longPressResult2).getFinalUpChange();
                                                        } else {
                                                            if (longPressResult2 instanceof LongPressResult.Canceled) {
                                                                me0.e();
                                                                return null;
                                                            }
                                                            finalUpChange2 = null;
                                                        }
                                                        pressGestureScopeImpl5 = pressGestureScopeImpl7;
                                                        y22Var7 = y22Var6;
                                                        if (finalUpChange2 != null) {
                                                            finalUpChange2.consume();
                                                            launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass8(pressGestureScopeImpl5, null), 2, null);
                                                            nl3Var18.invoke(Offset.m5976boximpl(finalUpChange2.m7569getPositionF1C5BW0()));
                                                        } else {
                                                            launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass9(pressGestureScopeImpl5, null), 2, null);
                                                            if (nl3Var16 != null) {
                                                                nl3Var16.invoke(Offset.m5976boximpl(pointerInputChange5.m7569getPositionF1C5BW0()));
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        } else if (nl3Var14 != null) {
                                            nl3Var14.invoke(Offset.m5976boximpl(pointerInputChange2.m7569getPositionF1C5BW0()));
                                        }
                                    }
                                } else if (nl3Var12 != null) {
                                    nl3Var12.invoke(Offset.m5976boximpl(finalUpChange.m7569getPositionF1C5BW0()));
                                }
                            }
                            return j59.a;
                        }
                        nl3Var8.invoke(Offset.m5976boximpl(pointerInputChange.m7569getPositionF1C5BW0()));
                        c05062.L$0 = y22Var2;
                        c05062.L$1 = pressGestureScopeImpl3;
                        c05062.L$2 = mb4Var;
                        c05062.L$3 = null;
                        c05062.L$4 = null;
                        c05062.L$5 = null;
                        c05062.L$6 = null;
                        c05062.L$7 = null;
                        c05062.L$8 = null;
                        c05062.label = 4;
                        if (consumeUntilUp(awaitPointerEventScope3, c05062) != a32Var) {
                            mb4Var2 = mb4Var;
                            y22Var5 = y22Var2;
                            pressGestureScopeImpl6 = pressGestureScopeImpl3;
                            launchAwaitingReset$default(y22Var5, mb4Var2, null, new AnonymousClass3(pressGestureScopeImpl6, null), 2, null);
                            return j59.a;
                        }
                    }
                }
                return a32Var;
            case 2:
                mb4Var = (mb4) c05062.L$7;
                nl3Var12 = (nl3) c05062.L$6;
                dm3Var4 = (dm3) c05062.L$5;
                nl3Var11 = (nl3) c05062.L$4;
                nl3Var10 = (nl3) c05062.L$3;
                pressGestureScopeImpl4 = (PressGestureScopeImpl) c05062.L$2;
                y22Var3 = (y22) c05062.L$1;
                awaitPointerEventScope4 = (AwaitPointerEventScope) c05062.L$0;
                r57.b(objWaitForLongPress$default2);
                finalUpChange = (PointerInputChange) objWaitForLongPress$default2;
                if (finalUpChange == null) {
                    mb4VarLaunchAwaitingReset$default = launchAwaitingReset$default(y22Var3, mb4Var, null, new AnonymousClass4(pressGestureScopeImpl4, null), 2, null);
                } else {
                    finalUpChange.consume();
                    mb4VarLaunchAwaitingReset$default = launchAwaitingReset$default(y22Var3, mb4Var, null, new AnonymousClass5(pressGestureScopeImpl4, null), 2, null);
                }
                if (finalUpChange != null) {
                    if (nl3Var10 == null) {
                        c05062.L$0 = awaitPointerEventScope4;
                        c05062.L$1 = y22Var3;
                        c05062.L$2 = pressGestureScopeImpl4;
                        c05062.L$3 = nl3Var10;
                        c05062.L$4 = nl3Var11;
                        c05062.L$5 = dm3Var4;
                        c05062.L$6 = nl3Var12;
                        c05062.L$7 = finalUpChange;
                        c05062.L$8 = mb4VarLaunchAwaitingReset$default;
                        c05062.label = 5;
                        objAwaitSecondDown = awaitSecondDown(awaitPointerEventScope4, finalUpChange, c05062);
                        if (objAwaitSecondDown != a32Var) {
                            nl3<? super Offset, j59> nl3Var113 = nl3Var12;
                            pointerInputChange2 = finalUpChange;
                            objWaitForLongPress$default2 = objAwaitSecondDown;
                            awaitPointerEventScope5 = awaitPointerEventScope4;
                            y22Var4 = y22Var3;
                            nl3Var13 = nl3Var10;
                            nl3Var14 = nl3Var113;
                            PressGestureScopeImpl pressGestureScopeImpl17 = pressGestureScopeImpl4;
                            nl3Var15 = nl3Var11;
                            pressGestureScopeImpl5 = pressGestureScopeImpl17;
                            pointerInputChange3 = (PointerInputChange) objWaitForLongPress$default2;
                            if (pointerInputChange3 != null) {
                                mb4VarC = av0.c(y22Var4, null, c32.UNDISPATCHED, new AnonymousClass6(mb4VarLaunchAwaitingReset$default, pressGestureScopeImpl5, null), 1);
                                if (dm3Var4 != NoPressGesture) {
                                    launchAwaitingReset$default(y22Var4, mb4VarC, null, new AnonymousClass7(dm3Var4, pressGestureScopeImpl5, pointerInputChange3, null), 2, null);
                                }
                                if (nl3Var15 == null) {
                                    c05062.L$0 = y22Var4;
                                    c05062.L$1 = pressGestureScopeImpl5;
                                    c05062.L$2 = nl3Var13;
                                    c05062.L$3 = nl3Var14;
                                    c05062.L$4 = mb4VarC;
                                    c05062.L$5 = pointerInputChange2;
                                    c05062.L$6 = null;
                                    c05062.L$7 = null;
                                    c05062.L$8 = null;
                                    c05062.label = 6;
                                    objWaitForLongPress$default2 = waitForUpOrCancellation$default(awaitPointerEventScope5, null, c05062, 1, null);
                                    if (objWaitForLongPress$default2 != a32Var) {
                                        pointerInputChange5 = pointerInputChange2;
                                        nl3Var16 = nl3Var14;
                                        nl3Var18 = nl3Var13;
                                        y22Var7 = y22Var4;
                                        finalUpChange2 = (PointerInputChange) objWaitForLongPress$default2;
                                        if (finalUpChange2 != null) {
                                            finalUpChange2.consume();
                                            launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass8(pressGestureScopeImpl5, null), 2, null);
                                            nl3Var18.invoke(Offset.m5976boximpl(finalUpChange2.m7569getPositionF1C5BW0()));
                                        } else {
                                            launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass9(pressGestureScopeImpl5, null), 2, null);
                                            if (nl3Var16 != null) {
                                                nl3Var16.invoke(Offset.m5976boximpl(pointerInputChange5.m7569getPositionF1C5BW0()));
                                            }
                                        }
                                    }
                                } else {
                                    c05062.L$0 = awaitPointerEventScope5;
                                    c05062.L$1 = y22Var4;
                                    c05062.L$2 = pressGestureScopeImpl5;
                                    c05062.L$3 = nl3Var13;
                                    c05062.L$4 = nl3Var15;
                                    c05062.L$5 = nl3Var14;
                                    c05062.L$6 = mb4VarC;
                                    c05062.L$7 = pointerInputChange2;
                                    c05062.L$8 = pointerInputChange3;
                                    c05062.label = 7;
                                    objWaitForLongPress$default = waitForLongPress$default(awaitPointerEventScope5, null, c05062, 1, null);
                                    if (objWaitForLongPress$default != a32Var) {
                                        PointerInputChange pointerInputChange10 = pointerInputChange2;
                                        pointerInputChange4 = pointerInputChange3;
                                        objWaitForLongPress$default2 = objWaitForLongPress$default;
                                        pointerInputChange5 = pointerInputChange10;
                                        nl3<? super Offset, j59> nl3Var28 = nl3Var15;
                                        pressGestureScopeImpl7 = pressGestureScopeImpl5;
                                        nl3Var16 = nl3Var14;
                                        nl3Var17 = nl3Var28;
                                        nl3Var18 = nl3Var13;
                                        y22Var6 = y22Var4;
                                        awaitPointerEventScope6 = awaitPointerEventScope5;
                                        longPressResult2 = (LongPressResult) objWaitForLongPress$default2;
                                        if (!aa4.e(longPressResult2, LongPressResult.Success.INSTANCE)) {
                                            nl3Var17.invoke(Offset.m5976boximpl(pointerInputChange4.m7569getPositionF1C5BW0()));
                                            c05062.L$0 = y22Var6;
                                            c05062.L$1 = pressGestureScopeImpl7;
                                            c05062.L$2 = mb4VarC;
                                            c05062.L$3 = null;
                                            c05062.L$4 = null;
                                            c05062.L$5 = null;
                                            c05062.L$6 = null;
                                            c05062.L$7 = null;
                                            c05062.L$8 = null;
                                            c05062.label = 8;
                                            if (consumeUntilUp(awaitPointerEventScope6, c05062) != a32Var) {
                                                mb4Var3 = mb4VarC;
                                                pressGestureScopeImpl8 = pressGestureScopeImpl7;
                                                y22Var8 = y22Var6;
                                                launchAwaitingReset$default(y22Var8, mb4Var3, null, new TapGestureDetectorKt$processTapGesture$secondUp$1(pressGestureScopeImpl8, null), 2, null);
                                                return j59.a;
                                            }
                                        } else {
                                            if (longPressResult2 instanceof LongPressResult.Released) {
                                                finalUpChange2 = ((LongPressResult.Released) longPressResult2).getFinalUpChange();
                                            } else {
                                                if (longPressResult2 instanceof LongPressResult.Canceled) {
                                                    me0.e();
                                                    return null;
                                                }
                                                finalUpChange2 = null;
                                            }
                                            pressGestureScopeImpl5 = pressGestureScopeImpl7;
                                            y22Var7 = y22Var6;
                                            if (finalUpChange2 != null) {
                                                finalUpChange2.consume();
                                                launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass8(pressGestureScopeImpl5, null), 2, null);
                                                nl3Var18.invoke(Offset.m5976boximpl(finalUpChange2.m7569getPositionF1C5BW0()));
                                            } else {
                                                launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass9(pressGestureScopeImpl5, null), 2, null);
                                                if (nl3Var16 != null) {
                                                    nl3Var16.invoke(Offset.m5976boximpl(pointerInputChange5.m7569getPositionF1C5BW0()));
                                                }
                                            }
                                        }
                                    }
                                }
                            } else if (nl3Var14 != null) {
                                nl3Var14.invoke(Offset.m5976boximpl(pointerInputChange2.m7569getPositionF1C5BW0()));
                            }
                        }
                        return a32Var;
                    }
                    if (nl3Var12 != null) {
                        nl3Var12.invoke(Offset.m5976boximpl(finalUpChange.m7569getPositionF1C5BW0()));
                    }
                }
                return j59.a;
            case 3:
                mb4Var = (mb4) c05062.L$8;
                pointerInputChange = (PointerInputChange) c05062.L$7;
                nl3Var9 = (nl3) c05062.L$6;
                dm3Var3 = (dm3) c05062.L$5;
                nl3Var8 = (nl3) c05062.L$4;
                nl3<? super Offset, j59> nl3Var29 = (nl3) c05062.L$3;
                pressGestureScopeImpl3 = (PressGestureScopeImpl) c05062.L$2;
                y22 y22Var9 = (y22) c05062.L$1;
                awaitPointerEventScope3 = (AwaitPointerEventScope) c05062.L$0;
                r57.b(objWaitForLongPress$default2);
                nl3Var7 = nl3Var29;
                y22Var2 = y22Var9;
                longPressResult = (LongPressResult) objWaitForLongPress$default2;
                if (!aa4.e(longPressResult, LongPressResult.Success.INSTANCE)) {
                    if (longPressResult instanceof LongPressResult.Released) {
                        finalUpChange = ((LongPressResult.Released) longPressResult).getFinalUpChange();
                    } else {
                        if (!(longPressResult instanceof LongPressResult.Canceled)) {
                            me0.e();
                            return null;
                        }
                        finalUpChange = null;
                    }
                    PressGestureScopeImpl pressGestureScopeImpl18 = pressGestureScopeImpl3;
                    y22Var3 = y22Var2;
                    pressGestureScopeImpl4 = pressGestureScopeImpl18;
                    nl3Var12 = nl3Var9;
                    dm3Var4 = dm3Var3;
                    nl3Var11 = nl3Var8;
                    nl3Var10 = nl3Var7;
                    awaitPointerEventScope4 = awaitPointerEventScope3;
                    if (finalUpChange == null) {
                        mb4VarLaunchAwaitingReset$default = launchAwaitingReset$default(y22Var3, mb4Var, null, new AnonymousClass4(pressGestureScopeImpl4, null), 2, null);
                    } else {
                        finalUpChange.consume();
                        mb4VarLaunchAwaitingReset$default = launchAwaitingReset$default(y22Var3, mb4Var, null, new AnonymousClass5(pressGestureScopeImpl4, null), 2, null);
                    }
                    if (finalUpChange != null) {
                        if (nl3Var10 == null) {
                            c05062.L$0 = awaitPointerEventScope4;
                            c05062.L$1 = y22Var3;
                            c05062.L$2 = pressGestureScopeImpl4;
                            c05062.L$3 = nl3Var10;
                            c05062.L$4 = nl3Var11;
                            c05062.L$5 = dm3Var4;
                            c05062.L$6 = nl3Var12;
                            c05062.L$7 = finalUpChange;
                            c05062.L$8 = mb4VarLaunchAwaitingReset$default;
                            c05062.label = 5;
                            objAwaitSecondDown = awaitSecondDown(awaitPointerEventScope4, finalUpChange, c05062);
                            if (objAwaitSecondDown != a32Var) {
                                nl3<? super Offset, j59> nl3Var114 = nl3Var12;
                                pointerInputChange2 = finalUpChange;
                                objWaitForLongPress$default2 = objAwaitSecondDown;
                                awaitPointerEventScope5 = awaitPointerEventScope4;
                                y22Var4 = y22Var3;
                                nl3Var13 = nl3Var10;
                                nl3Var14 = nl3Var114;
                                PressGestureScopeImpl pressGestureScopeImpl19 = pressGestureScopeImpl4;
                                nl3Var15 = nl3Var11;
                                pressGestureScopeImpl5 = pressGestureScopeImpl19;
                                pointerInputChange3 = (PointerInputChange) objWaitForLongPress$default2;
                                if (pointerInputChange3 != null) {
                                    mb4VarC = av0.c(y22Var4, null, c32.UNDISPATCHED, new AnonymousClass6(mb4VarLaunchAwaitingReset$default, pressGestureScopeImpl5, null), 1);
                                    if (dm3Var4 != NoPressGesture) {
                                        launchAwaitingReset$default(y22Var4, mb4VarC, null, new AnonymousClass7(dm3Var4, pressGestureScopeImpl5, pointerInputChange3, null), 2, null);
                                    }
                                    if (nl3Var15 == null) {
                                        c05062.L$0 = y22Var4;
                                        c05062.L$1 = pressGestureScopeImpl5;
                                        c05062.L$2 = nl3Var13;
                                        c05062.L$3 = nl3Var14;
                                        c05062.L$4 = mb4VarC;
                                        c05062.L$5 = pointerInputChange2;
                                        c05062.L$6 = null;
                                        c05062.L$7 = null;
                                        c05062.L$8 = null;
                                        c05062.label = 6;
                                        objWaitForLongPress$default2 = waitForUpOrCancellation$default(awaitPointerEventScope5, null, c05062, 1, null);
                                        if (objWaitForLongPress$default2 != a32Var) {
                                            pointerInputChange5 = pointerInputChange2;
                                            nl3Var16 = nl3Var14;
                                            nl3Var18 = nl3Var13;
                                            y22Var7 = y22Var4;
                                            finalUpChange2 = (PointerInputChange) objWaitForLongPress$default2;
                                            if (finalUpChange2 != null) {
                                                finalUpChange2.consume();
                                                launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass8(pressGestureScopeImpl5, null), 2, null);
                                                nl3Var18.invoke(Offset.m5976boximpl(finalUpChange2.m7569getPositionF1C5BW0()));
                                            } else {
                                                launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass9(pressGestureScopeImpl5, null), 2, null);
                                                if (nl3Var16 != null) {
                                                    nl3Var16.invoke(Offset.m5976boximpl(pointerInputChange5.m7569getPositionF1C5BW0()));
                                                }
                                            }
                                        }
                                    } else {
                                        c05062.L$0 = awaitPointerEventScope5;
                                        c05062.L$1 = y22Var4;
                                        c05062.L$2 = pressGestureScopeImpl5;
                                        c05062.L$3 = nl3Var13;
                                        c05062.L$4 = nl3Var15;
                                        c05062.L$5 = nl3Var14;
                                        c05062.L$6 = mb4VarC;
                                        c05062.L$7 = pointerInputChange2;
                                        c05062.L$8 = pointerInputChange3;
                                        c05062.label = 7;
                                        objWaitForLongPress$default = waitForLongPress$default(awaitPointerEventScope5, null, c05062, 1, null);
                                        if (objWaitForLongPress$default != a32Var) {
                                            PointerInputChange pointerInputChange11 = pointerInputChange2;
                                            pointerInputChange4 = pointerInputChange3;
                                            objWaitForLongPress$default2 = objWaitForLongPress$default;
                                            pointerInputChange5 = pointerInputChange11;
                                            nl3<? super Offset, j59> nl3Var210 = nl3Var15;
                                            pressGestureScopeImpl7 = pressGestureScopeImpl5;
                                            nl3Var16 = nl3Var14;
                                            nl3Var17 = nl3Var210;
                                            nl3Var18 = nl3Var13;
                                            y22Var6 = y22Var4;
                                            awaitPointerEventScope6 = awaitPointerEventScope5;
                                            longPressResult2 = (LongPressResult) objWaitForLongPress$default2;
                                            if (!aa4.e(longPressResult2, LongPressResult.Success.INSTANCE)) {
                                                nl3Var17.invoke(Offset.m5976boximpl(pointerInputChange4.m7569getPositionF1C5BW0()));
                                                c05062.L$0 = y22Var6;
                                                c05062.L$1 = pressGestureScopeImpl7;
                                                c05062.L$2 = mb4VarC;
                                                c05062.L$3 = null;
                                                c05062.L$4 = null;
                                                c05062.L$5 = null;
                                                c05062.L$6 = null;
                                                c05062.L$7 = null;
                                                c05062.L$8 = null;
                                                c05062.label = 8;
                                                if (consumeUntilUp(awaitPointerEventScope6, c05062) != a32Var) {
                                                    mb4Var3 = mb4VarC;
                                                    pressGestureScopeImpl8 = pressGestureScopeImpl7;
                                                    y22Var8 = y22Var6;
                                                    launchAwaitingReset$default(y22Var8, mb4Var3, null, new TapGestureDetectorKt$processTapGesture$secondUp$1(pressGestureScopeImpl8, null), 2, null);
                                                    return j59.a;
                                                }
                                            } else {
                                                if (longPressResult2 instanceof LongPressResult.Released) {
                                                    finalUpChange2 = ((LongPressResult.Released) longPressResult2).getFinalUpChange();
                                                } else {
                                                    if (longPressResult2 instanceof LongPressResult.Canceled) {
                                                        me0.e();
                                                        return null;
                                                    }
                                                    finalUpChange2 = null;
                                                }
                                                pressGestureScopeImpl5 = pressGestureScopeImpl7;
                                                y22Var7 = y22Var6;
                                                if (finalUpChange2 != null) {
                                                    finalUpChange2.consume();
                                                    launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass8(pressGestureScopeImpl5, null), 2, null);
                                                    nl3Var18.invoke(Offset.m5976boximpl(finalUpChange2.m7569getPositionF1C5BW0()));
                                                } else {
                                                    launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass9(pressGestureScopeImpl5, null), 2, null);
                                                    if (nl3Var16 != null) {
                                                        nl3Var16.invoke(Offset.m5976boximpl(pointerInputChange5.m7569getPositionF1C5BW0()));
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else if (nl3Var14 != null) {
                                    nl3Var14.invoke(Offset.m5976boximpl(pointerInputChange2.m7569getPositionF1C5BW0()));
                                }
                            }
                        } else if (nl3Var12 != null) {
                            nl3Var12.invoke(Offset.m5976boximpl(finalUpChange.m7569getPositionF1C5BW0()));
                        }
                    }
                    return j59.a;
                }
                nl3Var8.invoke(Offset.m5976boximpl(pointerInputChange.m7569getPositionF1C5BW0()));
                c05062.L$0 = y22Var2;
                c05062.L$1 = pressGestureScopeImpl3;
                c05062.L$2 = mb4Var;
                c05062.L$3 = null;
                c05062.L$4 = null;
                c05062.L$5 = null;
                c05062.L$6 = null;
                c05062.L$7 = null;
                c05062.L$8 = null;
                c05062.label = 4;
                if (consumeUntilUp(awaitPointerEventScope3, c05062) != a32Var) {
                    mb4Var2 = mb4Var;
                    y22Var5 = y22Var2;
                    pressGestureScopeImpl6 = pressGestureScopeImpl3;
                    launchAwaitingReset$default(y22Var5, mb4Var2, null, new AnonymousClass3(pressGestureScopeImpl6, null), 2, null);
                    return j59.a;
                }
                return a32Var;
            case 4:
                mb4Var2 = (mb4) c05062.L$2;
                pressGestureScopeImpl6 = (PressGestureScopeImpl) c05062.L$1;
                y22Var5 = (y22) c05062.L$0;
                r57.b(objWaitForLongPress$default2);
                launchAwaitingReset$default(y22Var5, mb4Var2, null, new AnonymousClass3(pressGestureScopeImpl6, null), 2, null);
                return j59.a;
            case 5:
                mb4VarLaunchAwaitingReset$default = (mb4) c05062.L$8;
                pointerInputChange2 = (PointerInputChange) c05062.L$7;
                nl3<? super Offset, j59> nl3Var30 = (nl3) c05062.L$6;
                dm3<? super PressGestureScope, ? super Offset, ? super e02<? super j59>, ? extends Object> dm3Var6 = (dm3) c05062.L$5;
                nl3<? super Offset, j59> nl3Var31 = (nl3) c05062.L$4;
                nl3<? super Offset, j59> nl3Var32 = (nl3) c05062.L$3;
                PressGestureScopeImpl pressGestureScopeImpl20 = (PressGestureScopeImpl) c05062.L$2;
                y22Var4 = (y22) c05062.L$1;
                awaitPointerEventScope5 = (AwaitPointerEventScope) c05062.L$0;
                r57.b(objWaitForLongPress$default2);
                nl3Var14 = nl3Var30;
                dm3Var4 = dm3Var6;
                pressGestureScopeImpl5 = pressGestureScopeImpl20;
                nl3Var13 = nl3Var32;
                nl3Var15 = nl3Var31;
                pointerInputChange3 = (PointerInputChange) objWaitForLongPress$default2;
                if (pointerInputChange3 != null) {
                    mb4VarC = av0.c(y22Var4, null, c32.UNDISPATCHED, new AnonymousClass6(mb4VarLaunchAwaitingReset$default, pressGestureScopeImpl5, null), 1);
                    if (dm3Var4 != NoPressGesture) {
                        launchAwaitingReset$default(y22Var4, mb4VarC, null, new AnonymousClass7(dm3Var4, pressGestureScopeImpl5, pointerInputChange3, null), 2, null);
                    }
                    if (nl3Var15 == null) {
                        c05062.L$0 = y22Var4;
                        c05062.L$1 = pressGestureScopeImpl5;
                        c05062.L$2 = nl3Var13;
                        c05062.L$3 = nl3Var14;
                        c05062.L$4 = mb4VarC;
                        c05062.L$5 = pointerInputChange2;
                        c05062.L$6 = null;
                        c05062.L$7 = null;
                        c05062.L$8 = null;
                        c05062.label = 6;
                        objWaitForLongPress$default2 = waitForUpOrCancellation$default(awaitPointerEventScope5, null, c05062, 1, null);
                        if (objWaitForLongPress$default2 != a32Var) {
                            pointerInputChange5 = pointerInputChange2;
                            nl3Var16 = nl3Var14;
                            nl3Var18 = nl3Var13;
                            y22Var7 = y22Var4;
                            finalUpChange2 = (PointerInputChange) objWaitForLongPress$default2;
                            if (finalUpChange2 != null) {
                                finalUpChange2.consume();
                                launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass8(pressGestureScopeImpl5, null), 2, null);
                                nl3Var18.invoke(Offset.m5976boximpl(finalUpChange2.m7569getPositionF1C5BW0()));
                            } else {
                                launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass9(pressGestureScopeImpl5, null), 2, null);
                                if (nl3Var16 != null) {
                                    nl3Var16.invoke(Offset.m5976boximpl(pointerInputChange5.m7569getPositionF1C5BW0()));
                                }
                            }
                        }
                    } else {
                        c05062.L$0 = awaitPointerEventScope5;
                        c05062.L$1 = y22Var4;
                        c05062.L$2 = pressGestureScopeImpl5;
                        c05062.L$3 = nl3Var13;
                        c05062.L$4 = nl3Var15;
                        c05062.L$5 = nl3Var14;
                        c05062.L$6 = mb4VarC;
                        c05062.L$7 = pointerInputChange2;
                        c05062.L$8 = pointerInputChange3;
                        c05062.label = 7;
                        objWaitForLongPress$default = waitForLongPress$default(awaitPointerEventScope5, null, c05062, 1, null);
                        if (objWaitForLongPress$default != a32Var) {
                            PointerInputChange pointerInputChange12 = pointerInputChange2;
                            pointerInputChange4 = pointerInputChange3;
                            objWaitForLongPress$default2 = objWaitForLongPress$default;
                            pointerInputChange5 = pointerInputChange12;
                            nl3<? super Offset, j59> nl3Var211 = nl3Var15;
                            pressGestureScopeImpl7 = pressGestureScopeImpl5;
                            nl3Var16 = nl3Var14;
                            nl3Var17 = nl3Var211;
                            nl3Var18 = nl3Var13;
                            y22Var6 = y22Var4;
                            awaitPointerEventScope6 = awaitPointerEventScope5;
                            longPressResult2 = (LongPressResult) objWaitForLongPress$default2;
                            if (!aa4.e(longPressResult2, LongPressResult.Success.INSTANCE)) {
                                nl3Var17.invoke(Offset.m5976boximpl(pointerInputChange4.m7569getPositionF1C5BW0()));
                                c05062.L$0 = y22Var6;
                                c05062.L$1 = pressGestureScopeImpl7;
                                c05062.L$2 = mb4VarC;
                                c05062.L$3 = null;
                                c05062.L$4 = null;
                                c05062.L$5 = null;
                                c05062.L$6 = null;
                                c05062.L$7 = null;
                                c05062.L$8 = null;
                                c05062.label = 8;
                                if (consumeUntilUp(awaitPointerEventScope6, c05062) != a32Var) {
                                    mb4Var3 = mb4VarC;
                                    pressGestureScopeImpl8 = pressGestureScopeImpl7;
                                    y22Var8 = y22Var6;
                                    launchAwaitingReset$default(y22Var8, mb4Var3, null, new TapGestureDetectorKt$processTapGesture$secondUp$1(pressGestureScopeImpl8, null), 2, null);
                                    return j59.a;
                                }
                            } else {
                                if (longPressResult2 instanceof LongPressResult.Released) {
                                    finalUpChange2 = ((LongPressResult.Released) longPressResult2).getFinalUpChange();
                                } else {
                                    if (longPressResult2 instanceof LongPressResult.Canceled) {
                                        me0.e();
                                        return null;
                                    }
                                    finalUpChange2 = null;
                                }
                                pressGestureScopeImpl5 = pressGestureScopeImpl7;
                                y22Var7 = y22Var6;
                                if (finalUpChange2 != null) {
                                    finalUpChange2.consume();
                                    launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass8(pressGestureScopeImpl5, null), 2, null);
                                    nl3Var18.invoke(Offset.m5976boximpl(finalUpChange2.m7569getPositionF1C5BW0()));
                                } else {
                                    launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass9(pressGestureScopeImpl5, null), 2, null);
                                    if (nl3Var16 != null) {
                                        nl3Var16.invoke(Offset.m5976boximpl(pointerInputChange5.m7569getPositionF1C5BW0()));
                                    }
                                }
                            }
                        }
                    }
                    return a32Var;
                }
                if (nl3Var14 != null) {
                    nl3Var14.invoke(Offset.m5976boximpl(pointerInputChange2.m7569getPositionF1C5BW0()));
                }
                return j59.a;
            case 6:
                pointerInputChange5 = (PointerInputChange) c05062.L$5;
                mb4VarC = (mb4) c05062.L$4;
                nl3Var16 = (nl3) c05062.L$3;
                nl3Var18 = (nl3) c05062.L$2;
                pressGestureScopeImpl5 = (PressGestureScopeImpl) c05062.L$1;
                y22Var7 = (y22) c05062.L$0;
                r57.b(objWaitForLongPress$default2);
                finalUpChange2 = (PointerInputChange) objWaitForLongPress$default2;
                if (finalUpChange2 != null) {
                    finalUpChange2.consume();
                    launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass8(pressGestureScopeImpl5, null), 2, null);
                    nl3Var18.invoke(Offset.m5976boximpl(finalUpChange2.m7569getPositionF1C5BW0()));
                } else {
                    launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass9(pressGestureScopeImpl5, null), 2, null);
                    if (nl3Var16 != null) {
                        nl3Var16.invoke(Offset.m5976boximpl(pointerInputChange5.m7569getPositionF1C5BW0()));
                    }
                }
                return j59.a;
            case 7:
                PointerInputChange pointerInputChange13 = (PointerInputChange) c05062.L$8;
                PointerInputChange pointerInputChange14 = (PointerInputChange) c05062.L$7;
                mb4 mb4Var4 = (mb4) c05062.L$6;
                nl3Var16 = (nl3) c05062.L$5;
                nl3Var17 = (nl3) c05062.L$4;
                nl3Var18 = (nl3) c05062.L$3;
                pressGestureScopeImpl7 = (PressGestureScopeImpl) c05062.L$2;
                y22Var6 = (y22) c05062.L$1;
                awaitPointerEventScope6 = (AwaitPointerEventScope) c05062.L$0;
                r57.b(objWaitForLongPress$default2);
                pointerInputChange4 = pointerInputChange13;
                mb4VarC = mb4Var4;
                pointerInputChange5 = pointerInputChange14;
                longPressResult2 = (LongPressResult) objWaitForLongPress$default2;
                if (!aa4.e(longPressResult2, LongPressResult.Success.INSTANCE)) {
                    if (longPressResult2 instanceof LongPressResult.Released) {
                        finalUpChange2 = ((LongPressResult.Released) longPressResult2).getFinalUpChange();
                    } else {
                        if (longPressResult2 instanceof LongPressResult.Canceled) {
                            me0.e();
                            return null;
                        }
                        finalUpChange2 = null;
                    }
                    pressGestureScopeImpl5 = pressGestureScopeImpl7;
                    y22Var7 = y22Var6;
                    if (finalUpChange2 != null) {
                        finalUpChange2.consume();
                        launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass8(pressGestureScopeImpl5, null), 2, null);
                        nl3Var18.invoke(Offset.m5976boximpl(finalUpChange2.m7569getPositionF1C5BW0()));
                    } else {
                        launchAwaitingReset$default(y22Var7, mb4VarC, null, new AnonymousClass9(pressGestureScopeImpl5, null), 2, null);
                        if (nl3Var16 != null) {
                            nl3Var16.invoke(Offset.m5976boximpl(pointerInputChange5.m7569getPositionF1C5BW0()));
                        }
                    }
                    return j59.a;
                }
                nl3Var17.invoke(Offset.m5976boximpl(pointerInputChange4.m7569getPositionF1C5BW0()));
                c05062.L$0 = y22Var6;
                c05062.L$1 = pressGestureScopeImpl7;
                c05062.L$2 = mb4VarC;
                c05062.L$3 = null;
                c05062.L$4 = null;
                c05062.L$5 = null;
                c05062.L$6 = null;
                c05062.L$7 = null;
                c05062.L$8 = null;
                c05062.label = 8;
                if (consumeUntilUp(awaitPointerEventScope6, c05062) != a32Var) {
                    mb4Var3 = mb4VarC;
                    pressGestureScopeImpl8 = pressGestureScopeImpl7;
                    y22Var8 = y22Var6;
                    launchAwaitingReset$default(y22Var8, mb4Var3, null, new TapGestureDetectorKt$processTapGesture$secondUp$1(pressGestureScopeImpl8, null), 2, null);
                    return j59.a;
                }
                return a32Var;
            case 8:
                mb4Var3 = (mb4) c05062.L$2;
                pressGestureScopeImpl8 = (PressGestureScopeImpl) c05062.L$1;
                y22Var8 = (y22) c05062.L$0;
                r57.b(objWaitForLongPress$default2);
                launchAwaitingReset$default(y22Var8, mb4Var3, null, new TapGestureDetectorKt$processTapGesture$secondUp$1(pressGestureScopeImpl8, null), 2, null);
                return j59.a;
            default:
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, androidx.compose.foundation.gestures.LongPressResult$Canceled] */
    public static final Object waitForLongPress(AwaitPointerEventScope awaitPointerEventScope, PointerEventPass pointerEventPass, e02<? super LongPressResult> e02Var) {
        C05081 c05081;
        r07 r07Var;
        if (e02Var instanceof C05081) {
            c05081 = (C05081) e02Var;
            int i = c05081.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05081.label = i - Integer.MIN_VALUE;
            } else {
                c05081 = new C05081(e02Var);
            }
        } else {
            c05081 = new C05081(e02Var);
        }
        Object obj = c05081.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c05081.label;
        try {
            if (i2 == 0) {
                r57.b(obj);
                r07 r07Var2 = new r07();
                r07Var2.b = LongPressResult.Canceled.INSTANCE;
                long longPressTimeoutMillis = awaitPointerEventScope.getViewConfiguration().getLongPressTimeoutMillis();
                C05092 c05092 = new C05092(pointerEventPass, r07Var2, null);
                c05081.L$0 = r07Var2;
                c05081.label = 1;
                if (awaitPointerEventScope.withTimeout(longPressTimeoutMillis, c05092, c05081) == a32Var) {
                    return a32Var;
                }
                r07Var = r07Var2;
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r07Var = (r07) c05081.L$0;
                r57.b(obj);
            }
            return r07Var.b;
        } catch (PointerEventTimeoutCancellationException unused) {
            return LongPressResult.Success.INSTANCE;
        }
    }

    public static /* synthetic */ Object waitForLongPress$default(AwaitPointerEventScope awaitPointerEventScope, PointerEventPass pointerEventPass, e02 e02Var, int i, Object obj) {
        if ((i & 1) != 0) {
            pointerEventPass = PointerEventPass.Main;
        }
        return waitForLongPress(awaitPointerEventScope, pointerEventPass, e02Var);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x007d  */
    /* JADX WARN: Code duplicated, block: B:28:0x0097  */
    /* JADX WARN: Code duplicated, block: B:30:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:45:0x00e8 A[LOOP:1: B:23:0x007b->B:45:0x00e8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:51:0x0089 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x00b5 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c2 -> B:13:0x0035). Please report as a decompilation issue!!! */
    /*  JADX ERROR: StackOverflowError in pass: RegionMakerVisitor
        java.lang.StackOverflowError
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:731)
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:749)
        */
    public static final java.lang.Object waitForUpOrCancellation(androidx.compose.ui.input.pointer.AwaitPointerEventScope r17, androidx.compose.ui.input.pointer.PointerEventPass r18, defpackage.e02<? super androidx.compose.ui.input.pointer.PointerInputChange> r19) {
        /*
            Method dump skipped, instruction units count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TapGestureDetectorKt.waitForUpOrCancellation(androidx.compose.ui.input.pointer.AwaitPointerEventScope, androidx.compose.ui.input.pointer.PointerEventPass, e02):java.lang.Object");
    }

    public static /* synthetic */ Object waitForUpOrCancellation$default(AwaitPointerEventScope awaitPointerEventScope, PointerEventPass pointerEventPass, e02 e02Var, int i, Object obj) {
        if ((i & 1) != 0) {
            pointerEventPass = PointerEventPass.Main;
        }
        return waitForUpOrCancellation(awaitPointerEventScope, pointerEventPass, e02Var);
    }

    public static /* synthetic */ Object awaitFirstDown$default(AwaitPointerEventScope awaitPointerEventScope, boolean z, e02 e02Var, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return awaitFirstDown(awaitPointerEventScope, z, e02Var);
    }

    @ul2
    public static final /* synthetic */ Object awaitFirstDown(AwaitPointerEventScope awaitPointerEventScope, boolean z, e02 e02Var) {
        return awaitFirstDown(awaitPointerEventScope, z, PointerEventPass.Main, e02Var);
    }
}
