package androidx.window.embedding;

import android.app.Activity;
import android.content.Context;
import androidx.compose.ui.spatial.RectListKt;
import androidx.core.util.Consumer;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.o86;
import defpackage.pg8;
import defpackage.r57;
import defpackage.s0;
import defpackage.sg6;
import defpackage.ug6;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class SplitController {
    public static final Companion Companion = new Companion(null);
    public static final boolean sDebug = false;
    private final EmbeddingBackend embeddingBackend;

    public SplitController(EmbeddingBackend embeddingBackend) {
        embeddingBackend.getClass();
        this.embeddingBackend = embeddingBackend;
    }

    public static final SplitController getInstance(Context context) {
        return Companion.getInstance(context);
    }

    public final void clearSplitAttributesCalculator() {
        this.embeddingBackend.clearSplitAttributesCalculator();
    }

    public final SplitSupportStatus getSplitSupportStatus() {
        return this.embeddingBackend.getSplitSupportStatus();
    }

    public final boolean pinTopActivityStack(int i, SplitPinRule splitPinRule) {
        splitPinRule.getClass();
        return this.embeddingBackend.pinTopActivityStack(i, splitPinRule);
    }

    public final void setSplitAttributesCalculator(nl3<? super SplitAttributesCalculatorParams, SplitAttributes> nl3Var) {
        nl3Var.getClass();
        this.embeddingBackend.setSplitAttributesCalculator(nl3Var);
    }

    public final hd3<List<SplitInfo>> splitInfoList(Activity activity) {
        activity.getClass();
        return s0.a(new AnonymousClass1(activity, null));
    }

    public final void unpinTopActivityStack(int i) {
        this.embeddingBackend.unpinTopActivityStack(i);
    }

    public final void updateSplitAttributes(SplitInfo splitInfo, SplitAttributes splitAttributes) {
        splitInfo.getClass();
        splitAttributes.getClass();
        this.embeddingBackend.updateSplitAttributes(splitInfo, splitAttributes);
    }

    public static final class SplitSupportStatus {
        private final int rawValue;
        public static final Companion Companion = new Companion(null);
        public static final SplitSupportStatus SPLIT_AVAILABLE = new SplitSupportStatus(0);
        public static final SplitSupportStatus SPLIT_UNAVAILABLE = new SplitSupportStatus(1);
        public static final SplitSupportStatus SPLIT_ERROR_PROPERTY_NOT_DECLARED = new SplitSupportStatus(2);

        private SplitSupportStatus(int i) {
            this.rawValue = i;
        }

        public String toString() {
            int i = this.rawValue;
            if (i == 0) {
                return "SplitSupportStatus: AVAILABLE";
            }
            if (i != 1) {
                return i != 2 ? "UNKNOWN" : "SplitSupportStatus: ERROR_SPLIT_PROPERTY_NOT_DECLARED";
            }
            return "SplitSupportStatus: UNAVAILABLE";
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            private Companion() {
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final SplitController getInstance(Context context) {
            context.getClass();
            return new SplitController(EmbeddingBackend.Companion.getInstance(context));
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: androidx.window.embedding.SplitController$splitInfoList$1, reason: invalid class name */
    @bd2(c = "androidx.window.embedding.SplitController$splitInfoList$1", f = "SplitController.kt", l = {RectListKt.BitOffsetForFocusable}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends pg8 implements bm3<ug6<? super List<? extends SplitInfo>>, e02<? super j59>, Object> {
        final /* synthetic */ Activity $activity;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Activity activity, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$activity = activity;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$1(SplitController splitController, Consumer consumer) {
            splitController.embeddingBackend.removeSplitListenerForActivity(consumer);
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = SplitController.this.new AnonymousClass1(this.$activity, e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(ug6<? super List<SplitInfo>> ug6Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(ug6Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [androidx.core.util.Consumer, androidx.window.embedding.j] */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                final ug6 ug6Var = (ug6) this.L$0;
                final ?? r1 = new Consumer() { // from class: androidx.window.embedding.j
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj2) {
                        ug6Var.mo0trySendJP2dKIU((List) obj2);
                    }
                };
                SplitController.this.embeddingBackend.addSplitListenerForActivity(this.$activity, new o86(), r1);
                final SplitController splitController = SplitController.this;
                ll3 ll3Var = new ll3() { // from class: androidx.window.embedding.k
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return SplitController.AnonymousClass1.invokeSuspend$lambda$1(splitController, r1);
                    }
                };
                this.label = 1;
                if (sg6.a(ug6Var, ll3Var, this) == a32Var) {
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
        public /* bridge */ /* synthetic */ Object invoke(ug6<? super List<? extends SplitInfo>> ug6Var, e02<? super j59> e02Var) {
            return invoke2((ug6<? super List<SplitInfo>>) ug6Var, e02Var);
        }
    }
}
