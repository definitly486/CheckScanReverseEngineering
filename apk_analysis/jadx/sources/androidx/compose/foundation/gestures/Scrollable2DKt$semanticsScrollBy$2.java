package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.q07;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.gestures.Scrollable2DKt$semanticsScrollBy$2", f = "Scrollable2D.kt", l = {515}, m = "invokeSuspend", v = 1)
public final class Scrollable2DKt$semanticsScrollBy$2 extends pg8 implements bm3<NestedScrollScope, e02<? super j59>, Object> {
    final /* synthetic */ long $offset;
    final /* synthetic */ q07 $previousValue;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Scrollable2DKt$semanticsScrollBy$2(long j, q07 q07Var, e02<? super Scrollable2DKt$semanticsScrollBy$2> e02Var) {
        super(2, e02Var);
        this.$offset = j;
        this.$previousValue = q07Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invokeSuspend$lambda$0(q07 q07Var, NestedScrollScope nestedScrollScope, Offset offset, Offset offset2) {
        q07Var.b = Offset.m5992plusMKHz9U(q07Var.b, nestedScrollScope.mo1559scrollByOzD1aCk(Offset.m5991minusMKHz9U(offset.m5997unboximpl(), q07Var.b), NestedScrollSource.Companion.m7438getUserInputWNlRxjI()));
        return j59.a;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        Scrollable2DKt$semanticsScrollBy$2 scrollable2DKt$semanticsScrollBy$2 = new Scrollable2DKt$semanticsScrollBy$2(this.$offset, this.$previousValue, e02Var);
        scrollable2DKt$semanticsScrollBy$2.L$0 = obj;
        return scrollable2DKt$semanticsScrollBy$2;
    }

    @Override // defpackage.bm3
    public final Object invoke(NestedScrollScope nestedScrollScope, e02<? super j59> e02Var) {
        return ((Scrollable2DKt$semanticsScrollBy$2) create(nestedScrollScope, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            final NestedScrollScope nestedScrollScope = (NestedScrollScope) this.L$0;
            Offset.Companion companion = Offset.Companion;
            TwoWayConverter<Offset, AnimationVector2D> vectorConverter = VectorConvertersKt.getVectorConverter(companion);
            Offset offsetM5976boximpl = Offset.m5976boximpl(companion.m6003getZeroF1C5BW0());
            Offset offsetM5976boximpl2 = Offset.m5976boximpl(this.$offset);
            final q07 q07Var = this.$previousValue;
            bm3 bm3Var = new bm3() { // from class: androidx.compose.foundation.gestures.v
                @Override // defpackage.bm3
                public final Object invoke(Object obj2, Object obj3) {
                    return Scrollable2DKt$semanticsScrollBy$2.invokeSuspend$lambda$0(q07Var, nestedScrollScope, (Offset) obj2, (Offset) obj3);
                }
            };
            this.label = 1;
            if (SuspendAnimationKt.animate$default(vectorConverter, offsetM5976boximpl, offsetM5976boximpl2, null, null, bm3Var, this, 24, null) == a32Var) {
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
