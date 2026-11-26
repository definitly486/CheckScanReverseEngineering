package androidx.compose.ui.platform;

import androidx.compose.ui.platform.ViewCompositionStrategy_androidKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.ug;

/* JADX INFO: loaded from: classes2.dex */
public final class ViewCompositionStrategy_androidKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final ll3<j59> installForLifecycle(final AbstractComposeView abstractComposeView, Lifecycle lifecycle) {
        if (lifecycle.getCurrentState().compareTo(Lifecycle.State.DESTROYED) <= 0) {
            ug.h("Cannot configure ", abstractComposeView, " to disposeComposition at Lifecycle ON_DESTROY: ", lifecycle, "is already destroyed");
            return null;
        }
        LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: be9
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                ViewCompositionStrategy_androidKt.installForLifecycle$lambda$1(abstractComposeView, lifecycleOwner, event);
            }
        };
        lifecycle.addObserver(lifecycleEventObserver);
        return new AnonymousClass2(lifecycle, lifecycleEventObserver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void installForLifecycle$lambda$1(AbstractComposeView abstractComposeView, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            abstractComposeView.disposeComposition();
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.platform.ViewCompositionStrategy_androidKt$installForLifecycle$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements ll3<j59> {
        final /* synthetic */ Lifecycle $lifecycle;
        final /* synthetic */ LifecycleEventObserver $observer;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Lifecycle lifecycle, LifecycleEventObserver lifecycleEventObserver) {
            super(0);
            this.$lifecycle = lifecycle;
            this.$observer = lifecycleEventObserver;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.$lifecycle.removeObserver(this.$observer);
        }

        @Override // defpackage.ll3
        public /* bridge */ /* synthetic */ j59 invoke() {
            invoke2();
            return j59.a;
        }
    }
}
