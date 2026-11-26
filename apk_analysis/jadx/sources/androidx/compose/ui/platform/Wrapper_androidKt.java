package androidx.compose.ui.platform;

import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.AbstractApplier;
import androidx.compose.runtime.CancellationHandle;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.CompositionKt;
import androidx.compose.ui.R;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.UiApplier;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.cm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.mm3;
import defpackage.qm3;
import java.util.Collections;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class Wrapper_androidKt {
    private static final ViewGroup.LayoutParams DefaultLayoutParams = new ViewGroup.LayoutParams(-2, -2);

    /* JADX INFO: renamed from: androidx.compose.ui.platform.Wrapper_androidKt$setContent$1, reason: invalid class name */
    public static final /* synthetic */ class AnonymousClass1 implements LifecycleRetainedValuesStoreOwner.FrameEndScheduler, mm3 {
        final /* synthetic */ CompositionContext $tmp0;

        public AnonymousClass1(CompositionContext compositionContext) {
            this.$tmp0 = compositionContext;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof LifecycleRetainedValuesStoreOwner.FrameEndScheduler) && (obj instanceof mm3)) {
                return aa4.e(getFunctionDelegate(), ((mm3) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // defpackage.mm3
        public final cm3<?> getFunctionDelegate() {
            return new qm3(1, this.$tmp0, CompositionContext.class, "scheduleFrameEndCallback", "scheduleFrameEndCallback(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/CancellationHandle;", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.compose.ui.platform.LifecycleRetainedValuesStoreOwner.FrameEndScheduler
        public final CancellationHandle scheduleFrameEndCallback(ll3<j59> ll3Var) {
            return this.$tmp0.scheduleFrameEndCallback(ll3Var);
        }
    }

    public static final AbstractApplier<LayoutNode> createApplier(LayoutNode layoutNode) {
        return new UiApplier(layoutNode);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0027  */
    /* JADX WARN: Code duplicated, block: B:16:0x0042  */
    /* JADX WARN: Code duplicated, block: B:24:0x006f  */
    /* JADX WARN: Code duplicated, block: B:26:0x0074  */
    public static final Composition setContent(AbstractComposeView abstractComposeView, ComposeViewContext composeViewContext, bm3<? super Composer, ? super Integer, j59> bm3Var) {
        AndroidComposeView androidComposeView;
        WrappedComposition wrappedComposition;
        GlobalSnapshotManager.INSTANCE.ensureStarted();
        if (abstractComposeView.getChildCount() > 0) {
            View childAt = abstractComposeView.getChildAt(0);
            androidComposeView = childAt instanceof AndroidComposeView ? (AndroidComposeView) childAt : null;
            if (androidComposeView != null) {
                androidComposeView.setComposeViewContext(composeViewContext);
            }
            if (androidComposeView == null) {
                androidComposeView = new AndroidComposeView(abstractComposeView.getContext(), composeViewContext);
                abstractComposeView.addView(androidComposeView.getView(), DefaultLayoutParams);
            }
            androidComposeView.setComposeViewContext(composeViewContext);
            if (abstractComposeView.getComposeViewContext$ui() != null) {
                composeViewContext.incrementViewCount$ui();
                androidComposeView.setComposeViewContextIncrementedDuringInit$ui(true);
            }
            if (InspectableValueKt.isDebugInspectorInfoEnabled() && androidComposeView.getTag(R.id.inspection_slot_table_set) == null) {
                androidComposeView.setTag(R.id.inspection_slot_table_set, Collections.newSetFromMap(new WeakHashMap()));
            }
            Object tag = androidComposeView.getTag(R.id.wrapped_composition_tag);
            wrappedComposition = tag instanceof WrappedComposition ? (WrappedComposition) tag : null;
            if (wrappedComposition == null) {
                wrappedComposition = new WrappedComposition(androidComposeView, CompositionKt.Composition(new UiApplier(androidComposeView.getRoot()), composeViewContext.getCompositionContext$ui()));
                androidComposeView.setTag(R.id.wrapped_composition_tag, wrappedComposition);
            }
            wrappedComposition.setContent(bm3Var);
            androidComposeView.setFrameEndScheduler$ui(new AnonymousClass1(composeViewContext.getCompositionContext$ui()));
            return wrappedComposition;
        }
        abstractComposeView.removeAllViews();
        androidComposeView = null;
        if (androidComposeView == null) {
            androidComposeView = new AndroidComposeView(abstractComposeView.getContext(), composeViewContext);
            abstractComposeView.addView(androidComposeView.getView(), DefaultLayoutParams);
        }
        androidComposeView.setComposeViewContext(composeViewContext);
        if (abstractComposeView.getComposeViewContext$ui() != null) {
            composeViewContext.incrementViewCount$ui();
            androidComposeView.setComposeViewContextIncrementedDuringInit$ui(true);
        }
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            androidComposeView.setTag(R.id.inspection_slot_table_set, Collections.newSetFromMap(new WeakHashMap()));
        }
        Object tag2 = androidComposeView.getTag(R.id.wrapped_composition_tag);
        if (tag2 instanceof WrappedComposition) {
        }
        if (wrappedComposition == null) {
            wrappedComposition = new WrappedComposition(androidComposeView, CompositionKt.Composition(new UiApplier(androidComposeView.getRoot()), composeViewContext.getCompositionContext$ui()));
            androidComposeView.setTag(R.id.wrapped_composition_tag, wrappedComposition);
        }
        wrappedComposition.setContent(bm3Var);
        androidComposeView.setFrameEndScheduler$ui(new AnonymousClass1(composeViewContext.getCompositionContext$ui()));
        return wrappedComposition;
    }
}
