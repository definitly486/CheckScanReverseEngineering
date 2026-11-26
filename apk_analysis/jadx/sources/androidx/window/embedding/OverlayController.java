package androidx.window.embedding;

import android.content.Context;
import android.os.Bundle;
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

/* JADX INFO: loaded from: classes3.dex */
public final class OverlayController {
    public static final Companion Companion = new Companion(null);
    public static final int OVERLAY_FEATURE_VERSION = 8;
    private final EmbeddingBackend backend;

    /* JADX INFO: renamed from: androidx.window.embedding.OverlayController$overlayInfo$1, reason: invalid class name */
    @bd2(c = "androidx.window.embedding.OverlayController$overlayInfo$1", f = "OverlayController.kt", l = {136}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends pg8 implements bm3<ug6<? super OverlayInfo>, e02<? super j59>, Object> {
        final /* synthetic */ String $overlayTag;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(String str, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$overlayTag = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$1(OverlayController overlayController, Consumer consumer) {
            overlayController.backend.removeOverlayInfoCallback(consumer);
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = OverlayController.this.new AnonymousClass1(this.$overlayTag, e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // defpackage.bm3
        public final Object invoke(ug6<? super OverlayInfo> ug6Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(ug6Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [androidx.core.util.Consumer, androidx.window.embedding.h] */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                final ug6 ug6Var = (ug6) this.L$0;
                final ?? r1 = new Consumer() { // from class: androidx.window.embedding.h
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj2) {
                        ug6Var.mo0trySendJP2dKIU((OverlayInfo) obj2);
                    }
                };
                OverlayController.this.backend.addOverlayInfoCallback(this.$overlayTag, new o86(), r1);
                final OverlayController overlayController = OverlayController.this;
                ll3 ll3Var = new ll3() { // from class: androidx.window.embedding.i
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return OverlayController.AnonymousClass1.invokeSuspend$lambda$1(overlayController, r1);
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
    }

    public OverlayController(EmbeddingBackend embeddingBackend) {
        embeddingBackend.getClass();
        this.backend = embeddingBackend;
    }

    public static final OverlayController getInstance(Context context) {
        return Companion.getInstance(context);
    }

    public final void clearOverlayAttributesCalculator() {
        this.backend.clearOverlayAttributesCalculator();
    }

    public final hd3<OverlayInfo> overlayInfo(String str) {
        str.getClass();
        return s0.a(new AnonymousClass1(str, null));
    }

    public final void setOverlayAttributesCalculator(nl3<? super OverlayAttributesCalculatorParams, OverlayAttributes> nl3Var) {
        nl3Var.getClass();
        this.backend.setOverlayAttributesCalculator(nl3Var);
    }

    public final Bundle setOverlayCreateParams$window_release(Bundle bundle, OverlayCreateParams overlayCreateParams) {
        bundle.getClass();
        overlayCreateParams.getClass();
        return this.backend.setOverlayCreateParams(bundle, overlayCreateParams);
    }

    public final void updateOverlayAttributes(String str, OverlayAttributes overlayAttributes) {
        str.getClass();
        overlayAttributes.getClass();
        this.backend.updateOverlayAttributes(str, overlayAttributes);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final OverlayController getInstance(Context context) {
            context.getClass();
            return new OverlayController(EmbeddingBackend.Companion.getInstance(context));
        }

        private Companion() {
        }
    }
}
