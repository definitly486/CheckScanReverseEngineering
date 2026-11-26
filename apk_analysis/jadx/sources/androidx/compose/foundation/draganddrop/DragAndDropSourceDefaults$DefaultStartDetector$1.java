package androidx.compose.foundation.draganddrop;

import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.foundation.gestures.PressGestureScopeImpl;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.spatial.RectListKt;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.f57;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.z22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.draganddrop.DragAndDropSourceDefaults$DefaultStartDetector$1", f = "AndroidDragAndDropSource.android.kt", l = {45}, m = "invokeSuspend", v = 1)
public final class DragAndDropSourceDefaults$DefaultStartDetector$1 extends pg8 implements bm3<DragAndDropStartDetectorScope, e02<? super j59>, Object> {
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: renamed from: androidx.compose.foundation.draganddrop.DragAndDropSourceDefaults$DefaultStartDetector$1$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.draganddrop.DragAndDropSourceDefaults$DefaultStartDetector$1$1", f = "AndroidDragAndDropSource.android.kt", l = {46}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ PressGestureScopeImpl $pressScope;
        final /* synthetic */ DragAndDropStartDetectorScope $this;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.compose.foundation.draganddrop.DragAndDropSourceDefaults$DefaultStartDetector$1$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.compose.foundation.draganddrop.DragAndDropSourceDefaults$DefaultStartDetector$1$1$1", f = "AndroidDragAndDropSource.android.kt", l = {48, 50, RectListKt.BitOffsetForGesturable}, m = "invokeSuspend", v = 1)
        public static final class C00251 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
            final /* synthetic */ y22 $$this$coroutineScope;
            final /* synthetic */ PressGestureScopeImpl $pressScope;
            final /* synthetic */ DragAndDropStartDetectorScope $this;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX INFO: renamed from: androidx.compose.foundation.draganddrop.DragAndDropSourceDefaults$DefaultStartDetector$1$1$1$7, reason: invalid class name */
            @bd2(c = "androidx.compose.foundation.draganddrop.DragAndDropSourceDefaults$DefaultStartDetector$1$1$1$7", f = "AndroidDragAndDropSource.android.kt", l = {}, m = "invokeSuspend", v = 1)
            public static final class AnonymousClass7 extends pg8 implements dm3<PressGestureScope, Offset, e02<? super j59>, Object> {
                int label;

                public AnonymousClass7(e02<? super AnonymousClass7> e02Var) {
                    super(3, e02Var);
                }

                @Override // defpackage.dm3
                public /* bridge */ /* synthetic */ Object invoke(PressGestureScope pressGestureScope, Offset offset, e02<? super j59> e02Var) {
                    return m1422invoked4ec7I(pressGestureScope, offset.m5997unboximpl(), e02Var);
                }

                /* JADX INFO: renamed from: invoke-d-4ec7I, reason: not valid java name */
                public final Object m1422invoked4ec7I(PressGestureScope pressGestureScope, long j, e02<? super j59> e02Var) {
                    return new AnonymousClass7(e02Var).invokeSuspend(j59.a);
                }

                @Override // defpackage.cd0
                public final Object invokeSuspend(Object obj) {
                    a32 a32Var = a32.COROUTINE_SUSPENDED;
                    if (this.label == 0) {
                        r57.b(obj);
                        return j59.a;
                    }
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00251(y22 y22Var, PressGestureScopeImpl pressGestureScopeImpl, DragAndDropStartDetectorScope dragAndDropStartDetectorScope, e02<? super C00251> e02Var) {
                super(2, e02Var);
                this.$$this$coroutineScope = y22Var;
                this.$pressScope = pressGestureScopeImpl;
                this.$this = dragAndDropStartDetectorScope;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final boolean invokeSuspend$lambda$0() {
                return true;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final j59 invokeSuspend$lambda$1(DragAndDropStartDetectorScope dragAndDropStartDetectorScope, PointerInputChange pointerInputChange, PointerInputChange pointerInputChange2, Offset offset) {
                dragAndDropStartDetectorScope.mo1426requestDragAndDropTransferk4lQ0M(pointerInputChange.m7569getPositionF1C5BW0());
                return j59.a;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final j59 invokeSuspend$lambda$2(PointerInputChange pointerInputChange, Offset offset) {
                return j59.a;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final j59 invokeSuspend$lambda$4(PointerInputChange pointerInputChange) {
                return j59.a;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final j59 invokeSuspend$lambda$5(DragAndDropStartDetectorScope dragAndDropStartDetectorScope, Offset offset) {
                dragAndDropStartDetectorScope.mo1426requestDragAndDropTransferk4lQ0M(offset.m5997unboximpl());
                return j59.a;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                C00251 c00251 = new C00251(this.$$this$coroutineScope, this.$pressScope, this.$this, e02Var);
                c00251.L$0 = obj;
                return c00251;
            }

            @Override // defpackage.bm3
            public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
                return ((C00251) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
            }

            /* JADX WARN: Code restructure failed: missing block: B:18:0x0076, code lost:
            
                if (androidx.compose.foundation.gestures.DragGestureDetectorKt.processDragGesture(r0, r3, r1, null, r6, r5, r6, r10, r11) == r9) goto L22;
             */
            /* JADX WARN: Code restructure failed: missing block: B:21:0x0097, code lost:
            
                if (androidx.compose.foundation.gestures.TapGestureDetectorKt.processTapGesture(r0, r2, r2, null, r6, r5, null, r11) == r9) goto L22;
             */
            @Override // defpackage.cd0
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object invokeSuspend(Object obj) {
                AwaitPointerEventScope awaitPointerEventScope;
                Object objAwaitFirstDown;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    awaitPointerEventScope = (AwaitPointerEventScope) this.L$0;
                    PointerEventPass pointerEventPass = PointerEventPass.Initial;
                    this.L$0 = awaitPointerEventScope;
                    this.label = 1;
                    objAwaitFirstDown = TapGestureDetectorKt.awaitFirstDown(awaitPointerEventScope, false, pointerEventPass, this);
                    if (objAwaitFirstDown != a32Var) {
                    }
                    return a32Var;
                }
                if (i == 1) {
                    awaitPointerEventScope = (AwaitPointerEventScope) this.L$0;
                    r57.b(obj);
                    objAwaitFirstDown = obj;
                } else {
                    if (i != 2 && i != 3) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                }
                return j59.a;
                PointerInputChange pointerInputChange = (PointerInputChange) objAwaitFirstDown;
                if (PointerType.m7642equalsimpl0(pointerInputChange.m7572getTypeT8wyACA(), PointerType.Companion.m7647getMouseT8wyACA())) {
                    a aVar = new a();
                    final DragAndDropStartDetectorScope dragAndDropStartDetectorScope = this.$this;
                    dm3 dm3Var = new dm3() { // from class: androidx.compose.foundation.draganddrop.b
                        @Override // defpackage.dm3
                        public final Object invoke(Object obj2, Object obj3, Object obj4) {
                            return DragAndDropSourceDefaults$DefaultStartDetector$1.AnonymousClass1.C00251.invokeSuspend$lambda$1(dragAndDropStartDetectorScope, (PointerInputChange) obj2, (PointerInputChange) obj3, (Offset) obj4);
                        }
                    };
                    c cVar = new c();
                    d dVar = new d();
                    e eVar = new e();
                    this.L$0 = null;
                    this.label = 2;
                } else {
                    y22 y22Var = this.$$this$coroutineScope;
                    PressGestureScopeImpl pressGestureScopeImpl = this.$pressScope;
                    final DragAndDropStartDetectorScope dragAndDropStartDetectorScope2 = this.$this;
                    nl3 nl3Var = new nl3() { // from class: androidx.compose.foundation.draganddrop.f
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj2) {
                            return DragAndDropSourceDefaults$DefaultStartDetector$1.AnonymousClass1.C00251.invokeSuspend$lambda$5(dragAndDropStartDetectorScope2, (Offset) obj2);
                        }
                    };
                    AnonymousClass7 anonymousClass7 = new AnonymousClass7(null);
                    this.L$0 = null;
                    this.label = 3;
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(DragAndDropStartDetectorScope dragAndDropStartDetectorScope, PressGestureScopeImpl pressGestureScopeImpl, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$this = dragAndDropStartDetectorScope;
            this.$pressScope = pressGestureScopeImpl;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this, this.$pressScope, e02Var);
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
                DragAndDropStartDetectorScope dragAndDropStartDetectorScope = this.$this;
                C00251 c00251 = new C00251(y22Var, this.$pressScope, dragAndDropStartDetectorScope, null);
                this.label = 1;
                if (ForEachGestureKt.awaitEachGesture(dragAndDropStartDetectorScope, c00251, this) == a32Var) {
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

    public DragAndDropSourceDefaults$DefaultStartDetector$1(e02<? super DragAndDropSourceDefaults$DefaultStartDetector$1> e02Var) {
        super(2, e02Var);
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        DragAndDropSourceDefaults$DefaultStartDetector$1 dragAndDropSourceDefaults$DefaultStartDetector$1 = new DragAndDropSourceDefaults$DefaultStartDetector$1(e02Var);
        dragAndDropSourceDefaults$DefaultStartDetector$1.L$0 = obj;
        return dragAndDropSourceDefaults$DefaultStartDetector$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(DragAndDropStartDetectorScope dragAndDropStartDetectorScope, e02<? super j59> e02Var) {
        return ((DragAndDropSourceDefaults$DefaultStartDetector$1) create(dragAndDropStartDetectorScope, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            DragAndDropStartDetectorScope dragAndDropStartDetectorScope = (DragAndDropStartDetectorScope) this.L$0;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(dragAndDropStartDetectorScope, new PressGestureScopeImpl(dragAndDropStartDetectorScope), null);
            this.label = 1;
            if (z22.c(anonymousClass1, this) == a32Var) {
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
