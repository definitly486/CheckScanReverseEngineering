package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.os.CancellationSignal;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.r07;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class DefaultSpecialEffectsController$TransitionEffect$onStart$4 extends gh4 implements ll3<j59> {
    final /* synthetic */ ViewGroup $container;
    final /* synthetic */ Object $mergedTransition;
    final /* synthetic */ r07<ll3<j59>> $seekCancelLambda;
    final /* synthetic */ DefaultSpecialEffectsController.TransitionEffect this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultSpecialEffectsController$TransitionEffect$onStart$4(DefaultSpecialEffectsController.TransitionEffect transitionEffect, ViewGroup viewGroup, Object obj, r07<ll3<j59>> r07Var) {
        super(0);
        this.this$0 = transitionEffect;
        this.$container = viewGroup;
        this.$mergedTransition = obj;
        this.$seekCancelLambda = r07Var;
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [T, androidx.fragment.app.DefaultSpecialEffectsController$TransitionEffect$onStart$4$1] */
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "Attempting to create TransitionSeekController");
        }
        DefaultSpecialEffectsController.TransitionEffect transitionEffect = this.this$0;
        transitionEffect.setController(transitionEffect.getTransitionImpl().controlDelayedTransition(this.$container, this.$mergedTransition));
        if (this.this$0.getController() == null) {
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v(FragmentManager.TAG, "TransitionSeekController was not created.");
            }
            this.this$0.setNoControllerReturned(true);
            return;
        }
        this.$seekCancelLambda.b = new AnonymousClass1(this.this$0, this.$mergedTransition, this.$container);
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "Started executing operations from " + this.this$0.getFirstOut() + " to " + this.this$0.getLastIn());
        }
    }

    @Override // defpackage.ll3
    public /* bridge */ /* synthetic */ j59 invoke() {
        invoke2();
        return j59.a;
    }

    /* JADX INFO: renamed from: androidx.fragment.app.DefaultSpecialEffectsController$TransitionEffect$onStart$4$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements ll3<j59> {
        final /* synthetic */ ViewGroup $container;
        final /* synthetic */ Object $mergedTransition;
        final /* synthetic */ DefaultSpecialEffectsController.TransitionEffect this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(DefaultSpecialEffectsController.TransitionEffect transitionEffect, Object obj, ViewGroup viewGroup) {
            super(0);
            this.this$0 = transitionEffect;
            this.$mergedTransition = obj;
            this.$container = viewGroup;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invoke$lambda$2(DefaultSpecialEffectsController.TransitionEffect transitionEffect, ViewGroup viewGroup) {
            transitionEffect.getClass();
            viewGroup.getClass();
            Iterator<T> it = transitionEffect.getTransitionInfos().iterator();
            while (it.hasNext()) {
                SpecialEffectsController.Operation operation = ((DefaultSpecialEffectsController.TransitionInfo) it.next()).getOperation();
                View view = operation.getFragment().getView();
                if (view != null) {
                    operation.getFinalState().applyState(view, viewGroup);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invoke$lambda$4(DefaultSpecialEffectsController.TransitionEffect transitionEffect) {
            transitionEffect.getClass();
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v(FragmentManager.TAG, "Transition for all operations has completed");
            }
            Iterator<T> it = transitionEffect.getTransitionInfos().iterator();
            while (it.hasNext()) {
                ((DefaultSpecialEffectsController.TransitionInfo) it.next()).getOperation().completeEffect(transitionEffect);
            }
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            List<DefaultSpecialEffectsController.TransitionInfo> transitionInfos = this.this$0.getTransitionInfos();
            if (!(transitionInfos instanceof Collection) || !transitionInfos.isEmpty()) {
                Iterator<T> it = transitionInfos.iterator();
                while (it.hasNext()) {
                    if (!((DefaultSpecialEffectsController.TransitionInfo) it.next()).getOperation().isSeeking()) {
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v(FragmentManager.TAG, "Completing animating immediately");
                        }
                        CancellationSignal cancellationSignal = new CancellationSignal();
                        FragmentTransitionImpl transitionImpl = this.this$0.getTransitionImpl();
                        Fragment fragment = this.this$0.getTransitionInfos().get(0).getOperation().getFragment();
                        Object obj = this.$mergedTransition;
                        final DefaultSpecialEffectsController.TransitionEffect transitionEffect = this.this$0;
                        transitionImpl.setListenerForTransitionEnd(fragment, obj, cancellationSignal, new Runnable() { // from class: androidx.fragment.app.i
                            @Override // java.lang.Runnable
                            public final void run() {
                                DefaultSpecialEffectsController$TransitionEffect$onStart$4.AnonymousClass1.invoke$lambda$4(transitionEffect);
                            }
                        });
                        cancellationSignal.cancel();
                        return;
                    }
                }
            }
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v(FragmentManager.TAG, "Animating to start");
            }
            FragmentTransitionImpl transitionImpl2 = this.this$0.getTransitionImpl();
            Object controller = this.this$0.getController();
            controller.getClass();
            final DefaultSpecialEffectsController.TransitionEffect transitionEffect2 = this.this$0;
            final ViewGroup viewGroup = this.$container;
            transitionImpl2.animateToStart(controller, new Runnable() { // from class: androidx.fragment.app.h
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultSpecialEffectsController$TransitionEffect$onStart$4.AnonymousClass1.invoke$lambda$2(transitionEffect2, viewGroup);
                }
            });
        }

        @Override // defpackage.ll3
        public /* bridge */ /* synthetic */ j59 invoke() {
            invoke2();
            return j59.a;
        }
    }
}
