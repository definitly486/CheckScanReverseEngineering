package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.gestures.ScrollableNode$drag$2$1", f = "Scrollable.kt", l = {370}, m = "invokeSuspend", v = 1)
public final class ScrollableNode$drag$2$1 extends pg8 implements bm3<NestedScrollScope, e02<? super j59>, Object> {
    final /* synthetic */ bm3<nl3<? super DragEvent.DragDelta, j59>, e02<? super j59>, Object> $forEachDelta;
    final /* synthetic */ ScrollingLogic $this_with;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ScrollableNode$drag$2$1(bm3<? super nl3<? super DragEvent.DragDelta, j59>, ? super e02<? super j59>, ? extends Object> bm3Var, ScrollingLogic scrollingLogic, e02<? super ScrollableNode$drag$2$1> e02Var) {
        super(2, e02Var);
        this.$forEachDelta = bm3Var;
        this.$this_with = scrollingLogic;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invokeSuspend$lambda$0(NestedScrollScope nestedScrollScope, ScrollingLogic scrollingLogic, DragEvent.DragDelta dragDelta) {
        nestedScrollScope.mo1560scrollByWithOverscrollOzD1aCk(Offset.m5994timestuRUvjQ(scrollingLogic.m1618singleAxisOffsetMKHz9U(dragDelta.m1486getDeltaF1C5BW0()), dragDelta.isIndirectPointerEvent() ? -1.0f : 1.0f), NestedScrollSource.Companion.m7438getUserInputWNlRxjI());
        return j59.a;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        ScrollableNode$drag$2$1 scrollableNode$drag$2$1 = new ScrollableNode$drag$2$1(this.$forEachDelta, this.$this_with, e02Var);
        scrollableNode$drag$2$1.L$0 = obj;
        return scrollableNode$drag$2$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(NestedScrollScope nestedScrollScope, e02<? super j59> e02Var) {
        return ((ScrollableNode$drag$2$1) create(nestedScrollScope, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            final NestedScrollScope nestedScrollScope = (NestedScrollScope) this.L$0;
            bm3<nl3<? super DragEvent.DragDelta, j59>, e02<? super j59>, Object> bm3Var = this.$forEachDelta;
            final ScrollingLogic scrollingLogic = this.$this_with;
            nl3<? super DragEvent.DragDelta, j59> nl3Var = new nl3() { // from class: androidx.compose.foundation.gestures.y
                @Override // defpackage.nl3
                public final Object invoke(Object obj2) {
                    return ScrollableNode$drag$2$1.invokeSuspend$lambda$0(nestedScrollScope, scrollingLogic, (DragEvent.DragDelta) obj2);
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
