package androidx.compose.material3;

import androidx.activity.BackEventCompat;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.material3.internal.PredictiveBack;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.SearchBarKt$SearchBar$4$1", f = "SearchBar.kt", l = {570}, m = "invokeSuspend")
public final class SearchBarKt$SearchBar$4$1 extends pg8 implements bm3<hd3<? extends BackEventCompat>, e02<? super j59>, Object> {
    final /* synthetic */ Animatable<Float, AnimationVector1D> $animationProgress;
    final /* synthetic */ y22 $coroutineScope;
    final /* synthetic */ MutableState<BackEventCompat> $currentBackEvent;
    final /* synthetic */ MutableFloatState $finalBackProgress;
    final /* synthetic */ MutableState<BackEventCompat> $firstBackEvent;
    final /* synthetic */ MutatorMutex $mutatorMutex;
    final /* synthetic */ nl3<Boolean, j59> $onExpandedChange;
    /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: renamed from: androidx.compose.material3.SearchBarKt$SearchBar$4$1$1, reason: invalid class name */
    @bd2(c = "androidx.compose.material3.SearchBarKt$SearchBar$4$1$1", f = "SearchBar.kt", l = {573}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends pg8 implements nl3<e02<? super j59>, Object> {
        final /* synthetic */ Animatable<Float, AnimationVector1D> $animationProgress;
        final /* synthetic */ y22 $coroutineScope;
        final /* synthetic */ MutableState<BackEventCompat> $currentBackEvent;
        final /* synthetic */ MutableFloatState $finalBackProgress;
        final /* synthetic */ MutableState<BackEventCompat> $firstBackEvent;
        final /* synthetic */ nl3<Boolean, j59> $onExpandedChange;
        final /* synthetic */ hd3<BackEventCompat> $progress;
        int label;

        /* JADX INFO: renamed from: androidx.compose.material3.SearchBarKt$SearchBar$4$1$1$2, reason: invalid class name */
        @bd2(c = "androidx.compose.material3.SearchBarKt$SearchBar$4$1$1$2", f = "SearchBar.kt", l = {585}, m = "invokeSuspend")
        public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ Animatable<Float, AnimationVector1D> $animationProgress;
            final /* synthetic */ MutableState<BackEventCompat> $currentBackEvent;
            final /* synthetic */ MutableFloatState $finalBackProgress;
            final /* synthetic */ MutableState<BackEventCompat> $firstBackEvent;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(Animatable<Float, AnimationVector1D> animatable, MutableFloatState mutableFloatState, MutableState<BackEventCompat> mutableState, MutableState<BackEventCompat> mutableState2, e02<? super AnonymousClass2> e02Var) {
                super(2, e02Var);
                this.$animationProgress = animatable;
                this.$finalBackProgress = mutableFloatState;
                this.$firstBackEvent = mutableState;
                this.$currentBackEvent = mutableState2;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new AnonymousClass2(this.$animationProgress, this.$finalBackProgress, this.$firstBackEvent, this.$currentBackEvent, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                AnonymousClass2 anonymousClass2;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    Animatable<Float, AnimationVector1D> animatable = this.$animationProgress;
                    Float f = new Float(1.0f);
                    FiniteAnimationSpec finiteAnimationSpec = SearchBarKt.AnimationPredictiveBackExitFloatSpec;
                    this.label = 1;
                    anonymousClass2 = this;
                    if (Animatable.animateTo$default(animatable, f, finiteAnimationSpec, null, null, anonymousClass2, 12, null) == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (i != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                    anonymousClass2 = this;
                }
                anonymousClass2.$finalBackProgress.setFloatValue(Float.NaN);
                anonymousClass2.$firstBackEvent.setValue(null);
                anonymousClass2.$currentBackEvent.setValue(null);
                return j59.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(MutableFloatState mutableFloatState, hd3<BackEventCompat> hd3Var, Animatable<Float, AnimationVector1D> animatable, nl3<? super Boolean, j59> nl3Var, y22 y22Var, MutableState<BackEventCompat> mutableState, MutableState<BackEventCompat> mutableState2, e02<? super AnonymousClass1> e02Var) {
            super(1, e02Var);
            this.$finalBackProgress = mutableFloatState;
            this.$progress = hd3Var;
            this.$animationProgress = animatable;
            this.$onExpandedChange = nl3Var;
            this.$coroutineScope = y22Var;
            this.$firstBackEvent = mutableState;
            this.$currentBackEvent = mutableState2;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return new AnonymousClass1(this.$finalBackProgress, this.$progress, this.$animationProgress, this.$onExpandedChange, this.$coroutineScope, this.$firstBackEvent, this.$currentBackEvent, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            try {
                if (i == 0) {
                    r57.b(obj);
                    this.$finalBackProgress.setFloatValue(Float.NaN);
                    hd3<BackEventCompat> hd3Var = this.$progress;
                    final MutableState<BackEventCompat> mutableState = this.$firstBackEvent;
                    final MutableState<BackEventCompat> mutableState2 = this.$currentBackEvent;
                    final Animatable<Float, AnimationVector1D> animatable = this.$animationProgress;
                    id3<? super BackEventCompat> id3Var = new id3() { // from class: androidx.compose.material3.SearchBarKt.SearchBar.4.1.1.1
                        public final Object emit(BackEventCompat backEventCompat, e02<? super j59> e02Var) {
                            if (mutableState.getValue() == null) {
                                mutableState.setValue(backEventCompat);
                            }
                            mutableState2.setValue(backEventCompat);
                            Object objSnapTo = animatable.snapTo(new Float(1.0f - PredictiveBack.INSTANCE.transform$material3(backEventCompat.getProgress())), e02Var);
                            return objSnapTo == a32.COROUTINE_SUSPENDED ? objSnapTo : j59.a;
                        }

                        @Override // defpackage.id3
                        public /* bridge */ /* synthetic */ Object emit(Object obj2, e02 e02Var) {
                            return emit((BackEventCompat) obj2, (e02<? super j59>) e02Var);
                        }
                    };
                    this.label = 1;
                    if (hd3Var.collect(id3Var, this) == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (i != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                }
                this.$finalBackProgress.setFloatValue(this.$animationProgress.getValue().floatValue());
                this.$onExpandedChange.invoke(Boolean.FALSE);
            } catch (CancellationException unused) {
                av0.c(this.$coroutineScope, null, null, new AnonymousClass2(this.$animationProgress, this.$finalBackProgress, this.$firstBackEvent, this.$currentBackEvent, null), 3);
            }
            return j59.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SearchBarKt$SearchBar$4$1(MutatorMutex mutatorMutex, MutableFloatState mutableFloatState, Animatable<Float, AnimationVector1D> animatable, nl3<? super Boolean, j59> nl3Var, y22 y22Var, MutableState<BackEventCompat> mutableState, MutableState<BackEventCompat> mutableState2, e02<? super SearchBarKt$SearchBar$4$1> e02Var) {
        super(2, e02Var);
        this.$mutatorMutex = mutatorMutex;
        this.$finalBackProgress = mutableFloatState;
        this.$animationProgress = animatable;
        this.$onExpandedChange = nl3Var;
        this.$coroutineScope = y22Var;
        this.$firstBackEvent = mutableState;
        this.$currentBackEvent = mutableState2;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        SearchBarKt$SearchBar$4$1 searchBarKt$SearchBar$4$1 = new SearchBarKt$SearchBar$4$1(this.$mutatorMutex, this.$finalBackProgress, this.$animationProgress, this.$onExpandedChange, this.$coroutineScope, this.$firstBackEvent, this.$currentBackEvent, e02Var);
        searchBarKt$SearchBar$4$1.L$0 = obj;
        return searchBarKt$SearchBar$4$1;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(hd3<BackEventCompat> hd3Var, e02<? super j59> e02Var) {
        return ((SearchBarKt$SearchBar$4$1) create(hd3Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            hd3 hd3Var = (hd3) this.L$0;
            MutatorMutex mutatorMutex = this.$mutatorMutex;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$finalBackProgress, hd3Var, this.$animationProgress, this.$onExpandedChange, this.$coroutineScope, this.$firstBackEvent, this.$currentBackEvent, null);
            this.label = 1;
            if (MutatorMutex.mutate$default(mutatorMutex, null, anonymousClass1, this, 1, null) == a32Var) {
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

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ Object invoke(hd3<? extends BackEventCompat> hd3Var, e02<? super j59> e02Var) {
        return invoke2((hd3<BackEventCompat>) hd3Var, e02Var);
    }
}
