package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.spatial.RectListKt;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.j59;
import defpackage.o07;
import defpackage.pg8;
import defpackage.q07;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
public final class ScrollExtensionsKt {

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.ScrollExtensionsKt$animateScrollBy$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.ScrollExtensionsKt", f = "ScrollExtensions.kt", l = {40}, m = "animateScrollBy", v = 1)
    public static final class AnonymousClass1 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ScrollExtensionsKt.animateScrollBy(null, 0.0f, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.ScrollExtensionsKt$animateScrollBy$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.ScrollExtensionsKt$animateScrollBy$2", f = "ScrollExtensions.kt", l = {41}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<ScrollScope, e02<? super j59>, Object> {
        final /* synthetic */ AnimationSpec<Float> $animationSpec;
        final /* synthetic */ o07 $previousValue;
        final /* synthetic */ float $value;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(float f, AnimationSpec<Float> animationSpec, o07 o07Var, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$value = f;
            this.$animationSpec = animationSpec;
            this.$previousValue = o07Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0(o07 o07Var, ScrollScope scrollScope, float f, float f2) {
            float f3 = o07Var.b;
            o07Var.b = scrollScope.scrollBy(f - f3) + f3;
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$value, this.$animationSpec, this.$previousValue, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(ScrollScope scrollScope, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(scrollScope, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                final ScrollScope scrollScope = (ScrollScope) this.L$0;
                float f = this.$value;
                AnimationSpec<Float> animationSpec = this.$animationSpec;
                final o07 o07Var = this.$previousValue;
                bm3 bm3Var = new bm3() { // from class: androidx.compose.foundation.gestures.t
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj2, Object obj3) {
                        return ScrollExtensionsKt.AnonymousClass2.invokeSuspend$lambda$0(o07Var, scrollScope, ((Float) obj2).floatValue(), ((Float) obj3).floatValue());
                    }
                };
                this.label = 1;
                if (SuspendAnimationKt.animate$default(0.0f, f, 0.0f, animationSpec, bm3Var, this, 4, null) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.ScrollExtensionsKt$animateScrollBy$3, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.ScrollExtensionsKt", f = "ScrollExtensions.kt", l = {RectListKt.BitOffsetForGesturable}, m = "animateScrollBy-ubNVwUQ", v = 1)
    public static final class AnonymousClass3 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass3(e02<? super AnonymousClass3> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ScrollExtensionsKt.m1587animateScrollByubNVwUQ(null, 0L, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.ScrollExtensionsKt$animateScrollBy$4, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.ScrollExtensionsKt$animateScrollBy$4", f = "ScrollExtensions.kt", l = {63}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass4 extends pg8 implements bm3<Scroll2DScope, e02<? super j59>, Object> {
        final /* synthetic */ AnimationSpec<Offset> $animationSpec;
        final /* synthetic */ q07 $previousValue;
        final /* synthetic */ long $value;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(long j, AnimationSpec<Offset> animationSpec, q07 q07Var, e02<? super AnonymousClass4> e02Var) {
            super(2, e02Var);
            this.$value = j;
            this.$animationSpec = animationSpec;
            this.$previousValue = q07Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0(q07 q07Var, Scroll2DScope scroll2DScope, Offset offset, Offset offset2) {
            q07Var.b = Offset.m5992plusMKHz9U(q07Var.b, scroll2DScope.mo1475scrollByMKHz9U(Offset.m5991minusMKHz9U(offset.m5997unboximpl(), q07Var.b)));
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass4 anonymousClass4 = new AnonymousClass4(this.$value, this.$animationSpec, this.$previousValue, e02Var);
            anonymousClass4.L$0 = obj;
            return anonymousClass4;
        }

        @Override // defpackage.bm3
        public final Object invoke(Scroll2DScope scroll2DScope, e02<? super j59> e02Var) {
            return ((AnonymousClass4) create(scroll2DScope, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                final Scroll2DScope scroll2DScope = (Scroll2DScope) this.L$0;
                Offset.Companion companion = Offset.Companion;
                TwoWayConverter<Offset, AnimationVector2D> vectorConverter = VectorConvertersKt.getVectorConverter(companion);
                Offset offsetM5976boximpl = Offset.m5976boximpl(companion.m6003getZeroF1C5BW0());
                Offset offsetM5976boximpl2 = Offset.m5976boximpl(this.$value);
                AnimationSpec<Offset> animationSpec = this.$animationSpec;
                final q07 q07Var = this.$previousValue;
                bm3 bm3Var = new bm3() { // from class: androidx.compose.foundation.gestures.u
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj2, Object obj3) {
                        return ScrollExtensionsKt.AnonymousClass4.invokeSuspend$lambda$0(q07Var, scroll2DScope, (Offset) obj2, (Offset) obj3);
                    }
                };
                this.label = 1;
                if (SuspendAnimationKt.animate$default(vectorConverter, offsetM5976boximpl, offsetM5976boximpl2, null, animationSpec, bm3Var, this, 8, null) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.ScrollExtensionsKt$scrollBy$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.ScrollExtensionsKt", f = "ScrollExtensions.kt", l = {83}, m = "scrollBy", v = 1)
    public static final class C04931 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C04931(e02<? super C04931> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ScrollExtensionsKt.scrollBy(null, 0.0f, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.ScrollExtensionsKt$scrollBy$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.ScrollExtensionsKt$scrollBy$2", f = "ScrollExtensions.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class C04942 extends pg8 implements bm3<ScrollScope, e02<? super j59>, Object> {
        final /* synthetic */ o07 $consumed;
        final /* synthetic */ float $value;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04942(o07 o07Var, float f, e02<? super C04942> e02Var) {
            super(2, e02Var);
            this.$consumed = o07Var;
            this.$value = f;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C04942 c04942 = new C04942(this.$consumed, this.$value, e02Var);
            c04942.L$0 = obj;
            return c04942;
        }

        @Override // defpackage.bm3
        public final Object invoke(ScrollScope scrollScope, e02<? super j59> e02Var) {
            return ((C04942) create(scrollScope, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            ScrollScope scrollScope = (ScrollScope) this.L$0;
            this.$consumed.b = scrollScope.scrollBy(this.$value);
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.ScrollExtensionsKt$scrollBy$3, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.ScrollExtensionsKt", f = "ScrollExtensions.kt", l = {98}, m = "scrollBy-d-4ec7I", v = 1)
    public static final class C04953 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C04953(e02<? super C04953> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ScrollExtensionsKt.m1589scrollByd4ec7I(null, 0L, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.ScrollExtensionsKt$scrollBy$4, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.ScrollExtensionsKt$scrollBy$4", f = "ScrollExtensions.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class C04964 extends pg8 implements bm3<Scroll2DScope, e02<? super j59>, Object> {
        final /* synthetic */ q07 $consumed;
        final /* synthetic */ long $value;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04964(q07 q07Var, long j, e02<? super C04964> e02Var) {
            super(2, e02Var);
            this.$consumed = q07Var;
            this.$value = j;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C04964 c04964 = new C04964(this.$consumed, this.$value, e02Var);
            c04964.L$0 = obj;
            return c04964;
        }

        @Override // defpackage.bm3
        public final Object invoke(Scroll2DScope scroll2DScope, e02<? super j59> e02Var) {
            return ((C04964) create(scroll2DScope, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            Scroll2DScope scroll2DScope = (Scroll2DScope) this.L$0;
            this.$consumed.b = scroll2DScope.mo1475scrollByMKHz9U(this.$value);
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.ScrollExtensionsKt$stopScroll$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.ScrollExtensionsKt$stopScroll$2", f = "ScrollExtensions.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class C04972 extends pg8 implements bm3<ScrollScope, e02<? super j59>, Object> {
        int label;

        public C04972(e02<? super C04972> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new C04972(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(ScrollScope scrollScope, e02<? super j59> e02Var) {
            return ((C04972) create(scrollScope, e02Var)).invokeSuspend(j59.a);
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

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.ScrollExtensionsKt$stopScroll$4, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.ScrollExtensionsKt$stopScroll$4", f = "ScrollExtensions.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class C04984 extends pg8 implements bm3<Scroll2DScope, e02<? super j59>, Object> {
        int label;

        public C04984(e02<? super C04984> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new C04984(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(Scroll2DScope scroll2DScope, e02<? super j59> e02Var) {
            return ((C04984) create(scroll2DScope, e02Var)).invokeSuspend(j59.a);
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

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public static final Object animateScrollBy(ScrollableState scrollableState, float f, AnimationSpec<Float> animationSpec, e02<? super Float> e02Var) {
        AnonymousClass1 anonymousClass1;
        o07 o07Var;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        AnonymousClass1 anonymousClass2 = anonymousClass1;
        Object obj = anonymousClass2.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass2.label;
        if (i2 == 0) {
            r57.b(obj);
            o07 o07Var2 = new o07();
            AnonymousClass2 anonymousClass3 = new AnonymousClass2(f, animationSpec, o07Var2, null);
            anonymousClass2.L$0 = o07Var2;
            anonymousClass2.label = 1;
            if (ScrollableState.scroll$default(scrollableState, null, anonymousClass3, anonymousClass2, 1, null) == a32Var) {
                return a32Var;
            }
            o07Var = o07Var2;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            o07Var = (o07) anonymousClass2.L$0;
            r57.b(obj);
        }
        return new Float(o07Var.b);
    }

    public static /* synthetic */ Object animateScrollBy$default(ScrollableState scrollableState, float f, AnimationSpec animationSpec, e02 e02Var, int i, Object obj) {
        if ((i & 2) != 0) {
            animationSpec = AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null);
        }
        return animateScrollBy(scrollableState, f, animationSpec, e02Var);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    /* JADX INFO: renamed from: animateScrollBy-ubNVwUQ, reason: not valid java name */
    public static final Object m1587animateScrollByubNVwUQ(Scrollable2DState scrollable2DState, long j, AnimationSpec<Offset> animationSpec, e02<? super Offset> e02Var) {
        AnonymousClass3 anonymousClass3;
        q07 q07Var;
        if (e02Var instanceof AnonymousClass3) {
            anonymousClass3 = (AnonymousClass3) e02Var;
            int i = anonymousClass3.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass3.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass3 = new AnonymousClass3(e02Var);
            }
        } else {
            anonymousClass3 = new AnonymousClass3(e02Var);
        }
        AnonymousClass3 anonymousClass4 = anonymousClass3;
        Object obj = anonymousClass4.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass4.label;
        if (i2 == 0) {
            r57.b(obj);
            q07 q07Var2 = new q07();
            q07Var2.b = Offset.Companion.m6003getZeroF1C5BW0();
            AnonymousClass4 anonymousClass5 = new AnonymousClass4(j, animationSpec, q07Var2, null);
            anonymousClass4.L$0 = q07Var2;
            anonymousClass4.label = 1;
            if (Scrollable2DState.scroll$default(scrollable2DState, null, anonymousClass5, anonymousClass4, 1, null) == a32Var) {
                return a32Var;
            }
            q07Var = q07Var2;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            q07Var = (q07) anonymousClass4.L$0;
            r57.b(obj);
        }
        return Offset.m5976boximpl(q07Var.b);
    }

    /* JADX INFO: renamed from: animateScrollBy-ubNVwUQ$default, reason: not valid java name */
    public static /* synthetic */ Object m1588animateScrollByubNVwUQ$default(Scrollable2DState scrollable2DState, long j, AnimationSpec animationSpec, e02 e02Var, int i, Object obj) {
        if ((i & 2) != 0) {
            animationSpec = AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null);
        }
        return m1587animateScrollByubNVwUQ(scrollable2DState, j, animationSpec, e02Var);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public static final Object scrollBy(ScrollableState scrollableState, float f, e02<? super Float> e02Var) {
        C04931 c04931;
        o07 o07Var;
        if (e02Var instanceof C04931) {
            c04931 = (C04931) e02Var;
            int i = c04931.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c04931.label = i - Integer.MIN_VALUE;
            } else {
                c04931 = new C04931(e02Var);
            }
        } else {
            c04931 = new C04931(e02Var);
        }
        C04931 c04932 = c04931;
        Object obj = c04932.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c04932.label;
        if (i2 == 0) {
            r57.b(obj);
            o07 o07Var2 = new o07();
            C04942 c04942 = new C04942(o07Var2, f, null);
            c04932.L$0 = o07Var2;
            c04932.label = 1;
            if (ScrollableState.scroll$default(scrollableState, null, c04942, c04932, 1, null) == a32Var) {
                return a32Var;
            }
            o07Var = o07Var2;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            o07Var = (o07) c04932.L$0;
            r57.b(obj);
        }
        return new Float(o07Var.b);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    /* JADX INFO: renamed from: scrollBy-d-4ec7I, reason: not valid java name */
    public static final Object m1589scrollByd4ec7I(Scrollable2DState scrollable2DState, long j, e02<? super Offset> e02Var) {
        C04953 c04953;
        q07 q07Var;
        if (e02Var instanceof C04953) {
            c04953 = (C04953) e02Var;
            int i = c04953.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c04953.label = i - Integer.MIN_VALUE;
            } else {
                c04953 = new C04953(e02Var);
            }
        } else {
            c04953 = new C04953(e02Var);
        }
        C04953 c04954 = c04953;
        Object obj = c04954.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c04954.label;
        if (i2 == 0) {
            r57.b(obj);
            q07 q07Var2 = new q07();
            q07Var2.b = Offset.Companion.m6003getZeroF1C5BW0();
            C04964 c04964 = new C04964(q07Var2, j, null);
            c04954.L$0 = q07Var2;
            c04954.label = 1;
            if (Scrollable2DState.scroll$default(scrollable2DState, null, c04964, c04954, 1, null) == a32Var) {
                return a32Var;
            }
            q07Var = q07Var2;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            q07Var = (q07) c04954.L$0;
            r57.b(obj);
        }
        return Offset.m5976boximpl(q07Var.b);
    }

    public static final Object stopScroll(ScrollableState scrollableState, MutatePriority mutatePriority, e02<? super j59> e02Var) {
        Object objScroll = scrollableState.scroll(mutatePriority, new C04972(null), e02Var);
        return objScroll == a32.COROUTINE_SUSPENDED ? objScroll : j59.a;
    }

    public static /* synthetic */ Object stopScroll$default(ScrollableState scrollableState, MutatePriority mutatePriority, e02 e02Var, int i, Object obj) {
        if ((i & 1) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return stopScroll(scrollableState, mutatePriority, (e02<? super j59>) e02Var);
    }

    public static /* synthetic */ Object stopScroll$default(Scrollable2DState scrollable2DState, MutatePriority mutatePriority, e02 e02Var, int i, Object obj) {
        if ((i & 1) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return stopScroll(scrollable2DState, mutatePriority, (e02<? super j59>) e02Var);
    }

    public static final Object stopScroll(Scrollable2DState scrollable2DState, MutatePriority mutatePriority, e02<? super j59> e02Var) {
        Object objScroll = scrollable2DState.scroll(mutatePriority, new C04984(null), e02Var);
        return objScroll == a32.COROUTINE_SUSPENDED ? objScroll : j59.a;
    }
}
