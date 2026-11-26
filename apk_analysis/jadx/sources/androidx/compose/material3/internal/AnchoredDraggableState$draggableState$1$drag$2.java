package androidx.compose.material3.internal;

import androidx.compose.foundation.gestures.DragScope;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.internal.AnchoredDraggableState$draggableState$1$drag$2", f = "AnchoredDraggable.kt", l = {277}, m = "invokeSuspend")
public final class AnchoredDraggableState$draggableState$1$drag$2<T> extends pg8 implements dm3<AnchoredDragScope, DraggableAnchors<T>, e02<? super j59>, Object> {
    final /* synthetic */ bm3<DragScope, e02<? super j59>, Object> $block;
    int label;
    final /* synthetic */ AnchoredDraggableState$draggableState$1 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AnchoredDraggableState$draggableState$1$drag$2(AnchoredDraggableState$draggableState$1 anchoredDraggableState$draggableState$1, bm3<? super DragScope, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super AnchoredDraggableState$draggableState$1$drag$2> e02Var) {
        super(3, e02Var);
        this.this$0 = anchoredDraggableState$draggableState$1;
        this.$block = bm3Var;
    }

    @Override // defpackage.dm3
    public final Object invoke(AnchoredDragScope anchoredDragScope, DraggableAnchors<T> draggableAnchors, e02<? super j59> e02Var) {
        return new AnchoredDraggableState$draggableState$1$drag$2(this.this$0, this.$block, e02Var).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            AnchoredDraggableState$draggableState$1$dragScope$1 anchoredDraggableState$draggableState$1$dragScope$1 = this.this$0.dragScope;
            bm3<DragScope, e02<? super j59>, Object> bm3Var = this.$block;
            this.label = 1;
            if (bm3Var.invoke(anchoredDraggableState$draggableState$1$dragScope$1, this) == a32Var) {
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
