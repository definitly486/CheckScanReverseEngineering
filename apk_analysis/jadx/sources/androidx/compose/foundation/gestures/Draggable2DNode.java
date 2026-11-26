package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.unit.Velocity;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
public final class Draggable2DNode extends DragGestureNode {
    public static final int $stable = 8;
    private nl3<? super Offset, j59> onDragStarted;
    private nl3<? super Velocity, j59> onDragStopped;
    private boolean reverseDirection;
    private boolean startDragImmediately;
    private Draggable2DState state;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.Draggable2DNode$drag$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.Draggable2DNode$drag$2", f = "Draggable2D.kt", l = {257}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<Drag2DScope, e02<? super j59>, Object> {
        final /* synthetic */ bm3<nl3<? super DragEvent.DragDelta, j59>, e02<? super j59>, Object> $forEachDelta;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ Draggable2DNode this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(bm3<? super nl3<? super DragEvent.DragDelta, j59>, ? super e02<? super j59>, ? extends Object> bm3Var, Draggable2DNode draggable2DNode, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$forEachDelta = bm3Var;
            this.this$0 = draggable2DNode;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0(Drag2DScope drag2DScope, Draggable2DNode draggable2DNode, DragEvent.DragDelta dragDelta) {
            long jM1486getDeltaF1C5BW0 = dragDelta.m1486getDeltaF1C5BW0();
            if (draggable2DNode.reverseDirection) {
                jM1486getDeltaF1C5BW0 = Offset.m5979constructorimpl((-9223372034707292160L) ^ jM1486getDeltaF1C5BW0);
            }
            drag2DScope.mo1472dragByk4lQ0M(jM1486getDeltaF1C5BW0);
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$forEachDelta, this.this$0, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(Drag2DScope drag2DScope, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(drag2DScope, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                final Drag2DScope drag2DScope = (Drag2DScope) this.L$0;
                bm3<nl3<? super DragEvent.DragDelta, j59>, e02<? super j59>, Object> bm3Var = this.$forEachDelta;
                final Draggable2DNode draggable2DNode = this.this$0;
                nl3<? super DragEvent.DragDelta, j59> nl3Var = new nl3() { // from class: androidx.compose.foundation.gestures.p
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj2) {
                        return Draggable2DNode.AnonymousClass2.invokeSuspend$lambda$0(drag2DScope, draggable2DNode, (DragEvent.DragDelta) obj2);
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

    public Draggable2DNode(Draggable2DState draggable2DState, nl3<? super PointerType, Boolean> nl3Var, boolean z, MutableInteractionSource mutableInteractionSource, boolean z2, boolean z3, nl3<? super Offset, j59> nl3Var2, nl3<? super Velocity, j59> nl3Var3) {
        super(nl3Var, z, mutableInteractionSource, null);
        this.state = draggable2DState;
        this.startDragImmediately = z2;
        this.reverseDirection = z3;
        this.onDragStarted = nl3Var2;
        this.onDragStopped = nl3Var3;
    }

    /* JADX INFO: renamed from: reverseIfNeeded-MK-Hz9U, reason: not valid java name */
    private final long m1516reverseIfNeededMKHz9U(long j) {
        return this.reverseDirection ? Offset.m5979constructorimpl(j ^ (-9223372034707292160L)) : j;
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public Object drag(bm3<? super nl3<? super DragEvent.DragDelta, j59>, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super j59> e02Var) {
        Object objDrag = this.state.drag(MutatePriority.UserInput, new AnonymousClass2(bm3Var, this, null), e02Var);
        return objDrag == a32.COROUTINE_SUSPENDED ? objDrag : j59.a;
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    /* JADX INFO: renamed from: onDragStarted-k-4lQ0M */
    public void mo1452onDragStartedk4lQ0M(long j) {
        this.onDragStarted.invoke(Offset.m5976boximpl(j));
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public void onDragStopped(DragEvent.DragStopped dragStopped) {
        this.onDragStopped.invoke(Velocity.m9271boximpl(dragStopped.m1488getVelocity9UxMQ8M()));
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public boolean startDragImmediately() {
        return this.startDragImmediately;
    }

    public final void update(Draggable2DState draggable2DState, nl3<? super PointerType, Boolean> nl3Var, boolean z, MutableInteractionSource mutableInteractionSource, boolean z2, boolean z3, nl3<? super Offset, j59> nl3Var2, nl3<? super Velocity, j59> nl3Var3) {
        boolean z4;
        boolean z5 = true;
        if (aa4.e(this.state, draggable2DState)) {
            z4 = false;
        } else {
            this.state = draggable2DState;
            z4 = true;
        }
        if (this.reverseDirection != z3) {
            this.reverseDirection = z3;
        } else {
            z5 = z4;
        }
        this.onDragStarted = nl3Var2;
        this.onDragStopped = nl3Var3;
        this.startDragImmediately = z2;
        update(nl3Var, z, mutableInteractionSource, null, z5);
    }
}
