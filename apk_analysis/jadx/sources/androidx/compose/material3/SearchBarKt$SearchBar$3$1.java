package androidx.compose.material3;

import androidx.activity.BackEventCompat;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.SearchBarKt$SearchBar$3$1", f = "SearchBar.kt", l = {559}, m = "invokeSuspend")
public final class SearchBarKt$SearchBar$3$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ Animatable<Float, AnimationVector1D> $animationProgress;
    final /* synthetic */ MutableState<BackEventCompat> $currentBackEvent;
    final /* synthetic */ boolean $expanded;
    final /* synthetic */ MutableFloatState $finalBackProgress;
    final /* synthetic */ MutableState<BackEventCompat> $firstBackEvent;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchBarKt$SearchBar$3$1(Animatable<Float, AnimationVector1D> animatable, boolean z, MutableFloatState mutableFloatState, MutableState<BackEventCompat> mutableState, MutableState<BackEventCompat> mutableState2, e02<? super SearchBarKt$SearchBar$3$1> e02Var) {
        super(2, e02Var);
        this.$animationProgress = animatable;
        this.$expanded = z;
        this.$finalBackProgress = mutableFloatState;
        this.$firstBackEvent = mutableState;
        this.$currentBackEvent = mutableState2;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new SearchBarKt$SearchBar$3$1(this.$animationProgress, this.$expanded, this.$finalBackProgress, this.$firstBackEvent, this.$currentBackEvent, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((SearchBarKt$SearchBar$3$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x007f  */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        FiniteAnimationSpec finiteAnimationSpec;
        SearchBarKt$SearchBar$3$1 searchBarKt$SearchBar$3$1;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            if (this.$animationProgress.getValue().floatValue() <= 0.0f || this.$animationProgress.getValue().floatValue() >= 1.0f) {
                finiteAnimationSpec = this.$expanded ? SearchBarKt.AnimationEnterFloatSpec : SearchBarKt.AnimationExitFloatSpec;
            } else {
                finiteAnimationSpec = SearchBarKt.AnimationPredictiveBackExitFloatSpec;
            }
            FiniteAnimationSpec finiteAnimationSpec2 = finiteAnimationSpec;
            float f = this.$expanded ? 1.0f : 0.0f;
            if (this.$animationProgress.getValue().floatValue() != f) {
                Animatable<Float, AnimationVector1D> animatable = this.$animationProgress;
                Float f2 = new Float(f);
                this.label = 1;
                searchBarKt$SearchBar$3$1 = this;
                if (Animatable.animateTo$default(animatable, f2, finiteAnimationSpec2, null, null, searchBarKt$SearchBar$3$1, 12, null) == a32Var) {
                    return a32Var;
                }
            }
            if (!searchBarKt$SearchBar$3$1.$expanded) {
                searchBarKt$SearchBar$3$1.$finalBackProgress.setFloatValue(Float.NaN);
                searchBarKt$SearchBar$3$1.$firstBackEvent.setValue(null);
                searchBarKt$SearchBar$3$1.$currentBackEvent.setValue(null);
            }
            return j59.a;
        }
        if (i != 1) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        searchBarKt$SearchBar$3$1 = this;
        if (!searchBarKt$SearchBar$3$1.$expanded) {
            searchBarKt$SearchBar$3$1.$finalBackProgress.setFloatValue(Float.NaN);
            searchBarKt$SearchBar$3$1.$firstBackEvent.setValue(null);
            searchBarKt$SearchBar$3$1.$currentBackEvent.setValue(null);
        }
        return j59.a;
    }
}
