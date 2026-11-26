package androidx.compose.material3;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.material3.internal.AnchoredDragScope;
import androidx.compose.material3.internal.DraggableAnchors;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.fm3;
import defpackage.j59;
import defpackage.o07;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.SheetState$animateTo$2", f = "SheetDefaults.kt", l = {245}, m = "invokeSuspend")
public final class SheetState$animateTo$2 extends pg8 implements fm3<AnchoredDragScope, DraggableAnchors<SheetValue>, SheetValue, e02<? super j59>, Object> {
    final /* synthetic */ FiniteAnimationSpec<Float> $animationSpec;
    final /* synthetic */ float $velocity;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    /* synthetic */ Object L$2;
    int label;
    final /* synthetic */ SheetState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SheetState$animateTo$2(SheetState sheetState, float f, FiniteAnimationSpec<Float> finiteAnimationSpec, e02<? super SheetState$animateTo$2> e02Var) {
        super(4, e02Var);
        this.this$0 = sheetState;
        this.$velocity = f;
        this.$animationSpec = finiteAnimationSpec;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invokeSuspend$lambda$0(AnchoredDragScope anchoredDragScope, o07 o07Var, float f, float f2) {
        anchoredDragScope.dragTo(f, f2);
        o07Var.b = f;
        return j59.a;
    }

    @Override // defpackage.fm3
    public final Object invoke(AnchoredDragScope anchoredDragScope, DraggableAnchors<SheetValue> draggableAnchors, SheetValue sheetValue, e02<? super j59> e02Var) {
        SheetState$animateTo$2 sheetState$animateTo$2 = new SheetState$animateTo$2(this.this$0, this.$velocity, this.$animationSpec, e02Var);
        sheetState$animateTo$2.L$0 = anchoredDragScope;
        sheetState$animateTo$2.L$1 = draggableAnchors;
        sheetState$animateTo$2.L$2 = sheetValue;
        return sheetState$animateTo$2.invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            final AnchoredDragScope anchoredDragScope = (AnchoredDragScope) this.L$0;
            float fPositionOf = ((DraggableAnchors) this.L$1).positionOf((SheetValue) this.L$2);
            if (!Float.isNaN(fPositionOf)) {
                final o07 o07Var = new o07();
                float offset$material3 = Float.isNaN(this.this$0.getOffset$material3()) ? 0.0f : this.this$0.getOffset$material3();
                o07Var.b = offset$material3;
                float f = this.$velocity;
                FiniteAnimationSpec<Float> finiteAnimationSpec = this.$animationSpec;
                bm3 bm3Var = new bm3() { // from class: androidx.compose.material3.t3
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj2, Object obj3) {
                        return SheetState$animateTo$2.invokeSuspend$lambda$0(anchoredDragScope, o07Var, ((Float) obj2).floatValue(), ((Float) obj3).floatValue());
                    }
                };
                this.L$0 = null;
                this.L$1 = null;
                this.label = 1;
                if (SuspendAnimationKt.animate(offset$material3, fPositionOf, f, finiteAnimationSpec, bm3Var, this) == a32Var) {
                    return a32Var;
                }
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
