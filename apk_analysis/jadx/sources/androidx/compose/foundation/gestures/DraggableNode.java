package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.unit.Velocity;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c32;
import defpackage.dm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
public final class DraggableNode extends DragGestureNode {
    public static final int $stable = 8;
    private dm3<? super y22, ? super Offset, ? super e02<? super j59>, ? extends Object> onDragStarted;
    private dm3<? super y22, ? super Float, ? super e02<? super j59>, ? extends Object> onDragStopped;
    private Orientation orientation;
    private boolean reverseDirection;
    private boolean startDragImmediately;
    private DraggableState state;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DraggableNode$drag$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.DraggableNode$drag$2", f = "Draggable.kt", l = {323}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<DragScope, e02<? super j59>, Object> {
        final /* synthetic */ bm3<nl3<? super DragEvent.DragDelta, j59>, e02<? super j59>, Object> $forEachDelta;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ DraggableNode this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(bm3<? super nl3<? super DragEvent.DragDelta, j59>, ? super e02<? super j59>, ? extends Object> bm3Var, DraggableNode draggableNode, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$forEachDelta = bm3Var;
            this.this$0 = draggableNode;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0(DragScope dragScope, DraggableNode draggableNode, DragEvent.DragDelta dragDelta) {
            dragScope.dragBy(DraggableKt.m1518toFloat3MmeM6k(draggableNode.m1525reverseIfNeededMKHz9U(dragDelta.m1486getDeltaF1C5BW0()), draggableNode.orientation));
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$forEachDelta, this.this$0, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(DragScope dragScope, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(dragScope, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                final DragScope dragScope = (DragScope) this.L$0;
                bm3<nl3<? super DragEvent.DragDelta, j59>, e02<? super j59>, Object> bm3Var = this.$forEachDelta;
                final DraggableNode draggableNode = this.this$0;
                nl3<? super DragEvent.DragDelta, j59> nl3Var = new nl3() { // from class: androidx.compose.foundation.gestures.q
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj2) {
                        return DraggableNode.AnonymousClass2.invokeSuspend$lambda$0(dragScope, draggableNode, (DragEvent.DragDelta) obj2);
                    }
                };
                this.label = 1;
                if (bm3Var.invoke(nl3Var, this) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DraggableNode$onDragStopped$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.DraggableNode$onDragStopped$1", f = "Draggable.kt", l = {339}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ DragEvent.DragStopped $event;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(DragEvent.DragStopped dragStopped, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$event = dragStopped;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = DraggableNode.this.new AnonymousClass1(this.$event, e02Var);
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
                dm3 dm3Var = DraggableNode.this.onDragStopped;
                Float f = new Float(DraggableKt.m1519toFloatsFctU(DraggableNode.this.m1524reverseIfNeededAH228Gc(this.$event.m1488getVelocity9UxMQ8M()), DraggableNode.this.orientation));
                this.label = 1;
                if (dm3Var.invoke(y22Var, f, this) == a32Var) {
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

    public DraggableNode(DraggableState draggableState, nl3<? super PointerType, Boolean> nl3Var, Orientation orientation, boolean z, MutableInteractionSource mutableInteractionSource, boolean z2, dm3<? super y22, ? super Offset, ? super e02<? super j59>, ? extends Object> dm3Var, dm3<? super y22, ? super Float, ? super e02<? super j59>, ? extends Object> dm3Var2, boolean z3) {
        super(nl3Var, z, mutableInteractionSource, orientation);
        this.state = draggableState;
        this.orientation = orientation;
        this.startDragImmediately = z2;
        this.onDragStarted = dm3Var;
        this.onDragStopped = dm3Var2;
        this.reverseDirection = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: reverseIfNeeded-AH228Gc, reason: not valid java name */
    public final long m1524reverseIfNeededAH228Gc(long j) {
        return Velocity.m9286timesadjELrA(j, this.reverseDirection ? -1.0f : 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: reverseIfNeeded-MK-Hz9U, reason: not valid java name */
    public final long m1525reverseIfNeededMKHz9U(long j) {
        return Offset.m5994timestuRUvjQ(j, this.reverseDirection ? -1.0f : 1.0f);
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public Object drag(bm3<? super nl3<? super DragEvent.DragDelta, j59>, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super j59> e02Var) {
        Object objDrag = this.state.drag(MutatePriority.UserInput, new AnonymousClass2(bm3Var, this, null), e02Var);
        return objDrag == a32.COROUTINE_SUSPENDED ? objDrag : j59.a;
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    /* JADX INFO: renamed from: onDragStarted-k-4lQ0M */
    public void mo1452onDragStartedk4lQ0M(long j) {
        if (!isAttached() || aa4.e(this.onDragStarted, DraggableKt.NoOpOnDragStarted)) {
            return;
        }
        av0.c(getCoroutineScope(), null, c32.UNDISPATCHED, new DraggableNode$onDragStarted$1(this, j, null), 1);
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public void onDragStopped(DragEvent.DragStopped dragStopped) {
        if (!isAttached() || aa4.e(this.onDragStopped, DraggableKt.NoOpOnDragStopped)) {
            return;
        }
        av0.c(getCoroutineScope(), null, c32.UNDISPATCHED, new AnonymousClass1(dragStopped, null), 1);
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public boolean startDragImmediately() {
        return this.startDragImmediately;
    }

    public final void update(DraggableState draggableState, nl3<? super PointerType, Boolean> nl3Var, Orientation orientation, boolean z, MutableInteractionSource mutableInteractionSource, boolean z2, dm3<? super y22, ? super Offset, ? super e02<? super j59>, ? extends Object> dm3Var, dm3<? super y22, ? super Float, ? super e02<? super j59>, ? extends Object> dm3Var2, boolean z3) {
        boolean z4;
        boolean z5 = true;
        if (aa4.e(this.state, draggableState)) {
            z4 = false;
        } else {
            this.state = draggableState;
            z4 = true;
        }
        if (this.orientation != orientation) {
            this.orientation = orientation;
            z4 = true;
        }
        if (this.reverseDirection != z3) {
            this.reverseDirection = z3;
        } else {
            z5 = z4;
        }
        this.onDragStarted = dm3Var;
        this.onDragStopped = dm3Var2;
        this.startDragImmediately = z2;
        update(nl3Var, z, mutableInteractionSource, orientation, z5);
    }
}
