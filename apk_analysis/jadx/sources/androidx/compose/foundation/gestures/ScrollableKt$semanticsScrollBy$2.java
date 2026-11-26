package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.o07;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.gestures.ScrollableKt$semanticsScrollBy$2", f = "Scrollable.kt", l = {1150}, m = "invokeSuspend", v = 1)
public final class ScrollableKt$semanticsScrollBy$2 extends pg8 implements bm3<NestedScrollScope, e02<? super j59>, Object> {
    final /* synthetic */ long $offset;
    final /* synthetic */ o07 $previousValue;
    final /* synthetic */ ScrollingLogic $this_semanticsScrollBy;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollableKt$semanticsScrollBy$2(ScrollingLogic scrollingLogic, long j, o07 o07Var, e02<? super ScrollableKt$semanticsScrollBy$2> e02Var) {
        super(2, e02Var);
        this.$this_semanticsScrollBy = scrollingLogic;
        this.$offset = j;
        this.$previousValue = o07Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invokeSuspend$lambda$0(o07 o07Var, ScrollingLogic scrollingLogic, NestedScrollScope nestedScrollScope, float f, float f2) {
        o07Var.b += scrollingLogic.reverseIfNeeded(scrollingLogic.m1619toFloatk4lQ0M(nestedScrollScope.mo1559scrollByOzD1aCk(scrollingLogic.m1620toOffsettuRUvjQ(scrollingLogic.reverseIfNeeded(f - o07Var.b)), NestedScrollSource.Companion.m7438getUserInputWNlRxjI())));
        return j59.a;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        ScrollableKt$semanticsScrollBy$2 scrollableKt$semanticsScrollBy$2 = new ScrollableKt$semanticsScrollBy$2(this.$this_semanticsScrollBy, this.$offset, this.$previousValue, e02Var);
        scrollableKt$semanticsScrollBy$2.L$0 = obj;
        return scrollableKt$semanticsScrollBy$2;
    }

    @Override // defpackage.bm3
    public final Object invoke(NestedScrollScope nestedScrollScope, e02<? super j59> e02Var) {
        return ((ScrollableKt$semanticsScrollBy$2) create(nestedScrollScope, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            final NestedScrollScope nestedScrollScope = (NestedScrollScope) this.L$0;
            float fM1619toFloatk4lQ0M = this.$this_semanticsScrollBy.m1619toFloatk4lQ0M(this.$offset);
            final o07 o07Var = this.$previousValue;
            final ScrollingLogic scrollingLogic = this.$this_semanticsScrollBy;
            bm3 bm3Var = new bm3() { // from class: androidx.compose.foundation.gestures.x
                @Override // defpackage.bm3
                public final Object invoke(Object obj2, Object obj3) {
                    return ScrollableKt$semanticsScrollBy$2.invokeSuspend$lambda$0(o07Var, scrollingLogic, nestedScrollScope, ((Float) obj2).floatValue(), ((Float) obj3).floatValue());
                }
            };
            this.label = 1;
            if (SuspendAnimationKt.animate$default(0.0f, fM1619toFloatk4lQ0M, 0.0f, null, bm3Var, this, 12, null) == a32Var) {
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
