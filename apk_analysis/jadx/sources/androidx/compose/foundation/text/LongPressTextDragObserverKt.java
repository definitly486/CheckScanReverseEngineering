package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.text.LongPressTextDragObserverKt;
import androidx.compose.foundation.text.selection.SelectionAdjustment;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.aw4;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c32;
import defpackage.e02;
import defpackage.f57;
import defpackage.j59;
import defpackage.mb4;
import defpackage.pg8;
import defpackage.r57;
import defpackage.rr1;
import defpackage.y22;
import defpackage.z22;
import defpackage.zv4;

/* JADX INFO: loaded from: classes.dex */
public final class LongPressTextDragObserverKt {

    /* JADX INFO: renamed from: androidx.compose.foundation.text.LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2", f = "LongPressTextDragObserver.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super mb4>, Object> {
        final /* synthetic */ TextDragObserver $observer;
        final /* synthetic */ PointerInputScope $this_detectDownAndDragGesturesWithObserver;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.compose.foundation.text.LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2$1, reason: invalid class name */
        @bd2(c = "androidx.compose.foundation.text.LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2$1", f = "LongPressTextDragObserver.kt", l = {67}, m = "invokeSuspend", v = 1)
        public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ TextDragObserver $observer;
            final /* synthetic */ PointerInputScope $this_detectDownAndDragGesturesWithObserver;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(PointerInputScope pointerInputScope, TextDragObserver textDragObserver, e02<? super AnonymousClass1> e02Var) {
                super(2, e02Var);
                this.$this_detectDownAndDragGesturesWithObserver = pointerInputScope;
                this.$observer = textDragObserver;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new AnonymousClass1(this.$this_detectDownAndDragGesturesWithObserver, this.$observer, e02Var);
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
                    PointerInputScope pointerInputScope = this.$this_detectDownAndDragGesturesWithObserver;
                    TextDragObserver textDragObserver = this.$observer;
                    this.label = 1;
                    if (LongPressTextDragObserverKt.detectPreDragGesturesWithObserver(pointerInputScope, textDragObserver, this) == a32Var) {
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

        /* JADX INFO: renamed from: androidx.compose.foundation.text.LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2$2, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.compose.foundation.text.LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2$2", f = "LongPressTextDragObserver.kt", l = {68}, m = "invokeSuspend", v = 1)
        public static final class C00422 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ TextDragObserver $observer;
            final /* synthetic */ PointerInputScope $this_detectDownAndDragGesturesWithObserver;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00422(PointerInputScope pointerInputScope, TextDragObserver textDragObserver, e02<? super C00422> e02Var) {
                super(2, e02Var);
                this.$this_detectDownAndDragGesturesWithObserver = pointerInputScope;
                this.$observer = textDragObserver;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new C00422(this.$this_detectDownAndDragGesturesWithObserver, this.$observer, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((C00422) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    PointerInputScope pointerInputScope = this.$this_detectDownAndDragGesturesWithObserver;
                    TextDragObserver textDragObserver = this.$observer;
                    this.label = 1;
                    if (LongPressTextDragObserverKt.detectDragGesturesWithObserver(pointerInputScope, textDragObserver, this) == a32Var) {
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
        public AnonymousClass2(PointerInputScope pointerInputScope, TextDragObserver textDragObserver, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$this_detectDownAndDragGesturesWithObserver = pointerInputScope;
            this.$observer = textDragObserver;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$this_detectDownAndDragGesturesWithObserver, this.$observer, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super mb4> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            y22 y22Var = (y22) this.L$0;
            c32 c32Var = c32.UNDISPATCHED;
            av0.c(y22Var, null, c32Var, new AnonymousClass1(this.$this_detectDownAndDragGesturesWithObserver, this.$observer, null), 1);
            return av0.c(y22Var, null, c32Var, new C00422(this.$this_detectDownAndDragGesturesWithObserver, this.$observer, null), 1);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.text.LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2", f = "LongPressTextDragObserver.kt", l = {77, 81}, m = "invokeSuspend", v = 1)
    public static final class C05582 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
        final /* synthetic */ TextDragObserver $observer;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05582(TextDragObserver textDragObserver, e02<? super C05582> e02Var) {
            super(2, e02Var);
            this.$observer = textDragObserver;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C05582 c05582 = new C05582(this.$observer, e02Var);
            c05582.L$0 = obj;
            return c05582;
        }

        @Override // defpackage.bm3
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
            return ((C05582) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0059, code lost:
        
            if (r14 == r0) goto L17;
         */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0059 -> B:18:0x005c). Please report as a decompilation issue!!! */
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
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L29
                if (r1 == r4) goto L20
                if (r1 != r3) goto L1a
                java.lang.Object r1 = r13.L$1
                androidx.compose.ui.input.pointer.PointerInputChange r1 = (androidx.compose.ui.input.pointer.PointerInputChange) r1
                java.lang.Object r5 = r13.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r5 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r5
                defpackage.r57.b(r14)
                r8 = r13
                goto L5c
            L1a:
                java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r13)
                return r2
            L20:
                java.lang.Object r1 = r13.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                defpackage.r57.b(r14)
                r8 = r13
                goto L42
            L29:
                defpackage.r57.b(r14)
                java.lang.Object r14 = r13.L$0
                r5 = r14
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r5 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r5
                r13.L$0 = r5
                r13.label = r4
                r6 = 0
                r7 = 0
                r9 = 2
                r10 = 0
                r8 = r13
                java.lang.Object r14 = androidx.compose.foundation.gestures.TapGestureDetectorKt.awaitFirstDown$default(r5, r6, r7, r8, r9, r10)
                if (r14 != r0) goto L41
                goto L5b
            L41:
                r1 = r5
            L42:
                androidx.compose.ui.input.pointer.PointerInputChange r14 = (androidx.compose.ui.input.pointer.PointerInputChange) r14
                androidx.compose.foundation.text.TextDragObserver r13 = r8.$observer
                long r5 = r14.m7569getPositionF1C5BW0()
                r13.mo2596onDownk4lQ0M(r5)
                r5 = r1
                r1 = r14
            L4f:
                r8.L$0 = r5
                r8.L$1 = r1
                r8.label = r3
                java.lang.Object r14 = androidx.compose.ui.input.pointer.AwaitPointerEventScope.awaitPointerEvent$default(r5, r2, r8, r4, r2)
                if (r14 != r0) goto L5c
            L5b:
                return r0
            L5c:
                androidx.compose.ui.input.pointer.PointerEvent r14 = (androidx.compose.ui.input.pointer.PointerEvent) r14
                java.util.List r13 = r14.getChanges()
                r14 = r13
                java.util.Collection r14 = (java.util.Collection) r14
                int r14 = r14.size()
                r6 = 0
            L6a:
                if (r6 >= r14) goto L8a
                java.lang.Object r7 = r13.get(r6)
                androidx.compose.ui.input.pointer.PointerInputChange r7 = (androidx.compose.ui.input.pointer.PointerInputChange) r7
                long r9 = r7.m7566getIdJ3iCeTQ()
                long r11 = r1.m7566getIdJ3iCeTQ()
                boolean r9 = androidx.compose.ui.input.pointer.PointerId.m7548equalsimpl0(r9, r11)
                if (r9 == 0) goto L87
                boolean r7 = r7.getPressed()
                if (r7 == 0) goto L87
                goto L4f
            L87:
                int r6 = r6 + 1
                goto L6a
            L8a:
                androidx.compose.foundation.text.TextDragObserver r13 = r8.$observer
                r13.onUp()
                j59 r13 = defpackage.j59.a
                return r13
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.LongPressTextDragObserverKt.C05582.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final Object detectDownAndDragGesturesWithObserver(PointerInputScope pointerInputScope, TextDragObserver textDragObserver, e02<? super j59> e02Var) {
        Object objC = z22.c(new AnonymousClass2(pointerInputScope, textDragObserver, null), e02Var);
        return objC == a32.COROUTINE_SUSPENDED ? objC : j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object detectDragGesturesWithObserver(PointerInputScope pointerInputScope, final TextDragObserver textDragObserver, e02<? super j59> e02Var) {
        Object objDetectDragGestures = DragGestureDetectorKt.detectDragGestures(pointerInputScope, new zv4(textDragObserver, 0), new rr1(textDragObserver, 1), new aw4(textDragObserver, 0), new bm3() { // from class: bw4
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return LongPressTextDragObserverKt.detectDragGesturesWithObserver$lambda$3(textDragObserver, (PointerInputChange) obj, (Offset) obj2);
            }
        }, e02Var);
        return objDetectDragGestures == a32.COROUTINE_SUSPENDED ? objDetectDragGestures : j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 detectDragGesturesWithObserver$lambda$0(TextDragObserver textDragObserver, Offset offset) {
        textDragObserver.mo2598onStart3MmeM6k(offset.m5997unboximpl(), SelectionAdjustment.Companion.getNone());
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 detectDragGesturesWithObserver$lambda$1(TextDragObserver textDragObserver) {
        textDragObserver.onStop();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 detectDragGesturesWithObserver$lambda$2(TextDragObserver textDragObserver) {
        textDragObserver.onCancel();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 detectDragGesturesWithObserver$lambda$3(TextDragObserver textDragObserver, PointerInputChange pointerInputChange, Offset offset) {
        textDragObserver.mo2597onDragk4lQ0M(offset.m5997unboximpl());
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object detectPreDragGesturesWithObserver(PointerInputScope pointerInputScope, TextDragObserver textDragObserver, e02<? super j59> e02Var) {
        Object objAwaitEachGesture = ForEachGestureKt.awaitEachGesture(pointerInputScope, new C05582(textDragObserver, null), e02Var);
        return objAwaitEachGesture == a32.COROUTINE_SUSPENDED ? objAwaitEachGesture : j59.a;
    }
}
