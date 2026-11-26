package androidx.window.embedding;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.core.util.Consumer;
import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.s0;
import defpackage.sg6;
import defpackage.ug6;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityEmbeddingController {
    public static final Companion Companion = new Companion(null);
    private final EmbeddingBackend backend;

    /* JADX INFO: renamed from: androidx.window.embedding.ActivityEmbeddingController$embeddedActivityWindowInfo$1, reason: invalid class name */
    @bd2(c = "androidx.window.embedding.ActivityEmbeddingController$embeddedActivityWindowInfo$1", f = "ActivityEmbeddingController.kt", l = {WebmConstants.MkvEbmlElement.TRACK_ENTRY}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends pg8 implements bm3<ug6<? super EmbeddedActivityWindowInfo>, e02<? super j59>, Object> {
        final /* synthetic */ Activity $activity;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Activity activity, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$activity = activity;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$1(ActivityEmbeddingController activityEmbeddingController, Consumer consumer) {
            activityEmbeddingController.backend.removeEmbeddedActivityWindowInfoCallbackForActivity(consumer);
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = ActivityEmbeddingController.this.new AnonymousClass1(this.$activity, e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // defpackage.bm3
        public final Object invoke(ug6<? super EmbeddedActivityWindowInfo> ug6Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(ug6Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [androidx.core.util.Consumer, androidx.window.embedding.a] */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                final ug6 ug6Var = (ug6) this.L$0;
                final ?? r1 = new Consumer() { // from class: androidx.window.embedding.a
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj2) {
                        ug6Var.mo0trySendJP2dKIU((EmbeddedActivityWindowInfo) obj2);
                    }
                };
                ActivityEmbeddingController.this.backend.addEmbeddedActivityWindowInfoCallbackForActivity(this.$activity, r1);
                final ActivityEmbeddingController activityEmbeddingController = ActivityEmbeddingController.this;
                ll3 ll3Var = new ll3() { // from class: androidx.window.embedding.b
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return ActivityEmbeddingController.AnonymousClass1.invokeSuspend$lambda$1(activityEmbeddingController, r1);
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

    public ActivityEmbeddingController(EmbeddingBackend embeddingBackend) {
        embeddingBackend.getClass();
        this.backend = embeddingBackend;
    }

    public static final ActivityEmbeddingController getInstance(Context context) {
        return Companion.getInstance(context);
    }

    public final hd3<EmbeddedActivityWindowInfo> embeddedActivityWindowInfo(Activity activity) {
        activity.getClass();
        return s0.a(new AnonymousClass1(activity, null));
    }

    public final void finishActivityStacks(Set<ActivityStack> set) {
        set.getClass();
        this.backend.finishActivityStacks(set);
    }

    public final ActivityStack getActivityStack(Activity activity) {
        activity.getClass();
        return this.backend.getActivityStack(activity);
    }

    public final void invalidateVisibleActivityStacks() {
        this.backend.invalidateVisibleActivityStacks();
    }

    public final boolean isActivityEmbedded(Activity activity) {
        activity.getClass();
        return this.backend.isActivityEmbedded(activity);
    }

    public final void setEmbeddingConfiguration(EmbeddingConfiguration embeddingConfiguration) {
        embeddingConfiguration.getClass();
        this.backend.setEmbeddingConfiguration(embeddingConfiguration);
    }

    public final Bundle setLaunchingActivityStack$window_release(Bundle bundle, ActivityStack activityStack) {
        bundle.getClass();
        activityStack.getClass();
        return this.backend.setLaunchingActivityStack(bundle, activityStack);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final ActivityEmbeddingController getInstance(Context context) {
            context.getClass();
            return new ActivityEmbeddingController(EmbeddingBackend.Companion.getInstance(context));
        }

        private Companion() {
        }
    }
}
