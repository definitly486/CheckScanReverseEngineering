package androidx.compose.ui.platform;

import android.os.Looper;
import android.view.View;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionServiceKey;
import androidx.compose.runtime.CompositionServices;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.R;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.e02;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
final class WrappedComposition implements Composition, LifecycleEventObserver, CompositionServices {
    private Lifecycle addedToLifecycle;
    private boolean disposed;
    private bm3<? super Composer, ? super Integer, j59> lastContent = ComposableSingletons$Wrapper_androidKt.INSTANCE.m8166getLambda$1759434350$ui();
    private final Composition original;
    private final AndroidComposeView owner;

    public WrappedComposition(AndroidComposeView androidComposeView, Composition composition) {
        this.owner = androidComposeView;
        this.original = composition;
    }

    @Override // androidx.compose.runtime.Composition
    public void dispose() {
        if (!this.disposed) {
            this.disposed = true;
            this.owner.getView().setTag(R.id.wrapped_composition_tag, null);
            Lifecycle lifecycle = this.addedToLifecycle;
            if (lifecycle != null) {
                lifecycle.removeObserver(this);
            }
            this.addedToLifecycle = null;
        }
        this.original.dispose();
    }

    @Override // androidx.compose.runtime.CompositionServices
    public <T> T getCompositionService(CompositionServiceKey<T> compositionServiceKey) {
        Composition composition = this.original;
        CompositionServices compositionServices = composition instanceof CompositionServices ? (CompositionServices) composition : null;
        if (compositionServices != null) {
            return (T) compositionServices.getCompositionService(compositionServiceKey);
        }
        return null;
    }

    @Override // androidx.compose.runtime.Composition
    public boolean getHasInvalidations() {
        return this.original.getHasInvalidations();
    }

    public final Composition getOriginal() {
        return this.original;
    }

    public final AndroidComposeView getOwner() {
        return this.owner;
    }

    @Override // androidx.compose.runtime.Composition
    public boolean isDisposed() {
        return this.original.isDisposed();
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            dispose();
        } else {
            if (event != Lifecycle.Event.ON_CREATE || this.disposed) {
                return;
            }
            setContent(this.lastContent);
        }
    }

    @Override // androidx.compose.runtime.Composition
    public void setContent(bm3<? super Composer, ? super Integer, j59> bm3Var) {
        this.owner.setOnReadyForComposition(new AnonymousClass1(bm3Var));
    }

    /* JADX INFO: renamed from: androidx.compose.ui.platform.WrappedComposition$setContent$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<ComposeViewContext, j59> {
        final /* synthetic */ bm3<Composer, Integer, j59> $content;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(bm3<? super Composer, ? super Integer, j59> bm3Var) {
            super(1);
            this.$content = bm3Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invoke$lambda$0(WrappedComposition wrappedComposition, Lifecycle lifecycle) {
            if (wrappedComposition.disposed) {
                return;
            }
            wrappedComposition.addedToLifecycle = lifecycle;
            lifecycle.addObserver(wrappedComposition);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(ComposeViewContext composeViewContext) {
            if (WrappedComposition.this.disposed) {
                return;
            }
            final Lifecycle lifecycle = composeViewContext.getLifecycleOwner$ui().getLifecycle();
            WrappedComposition.this.lastContent = this.$content;
            if (WrappedComposition.this.addedToLifecycle != null) {
                if (lifecycle.getCurrentState().isAtLeast(Lifecycle.State.CREATED)) {
                    WrappedComposition.this.getOriginal().setContent(ComposableLambdaKt.composableLambdaInstance(-1723985096, true, new AnonymousClass2(WrappedComposition.this, composeViewContext, this.$content)));
                }
            } else if (aa4.e(Looper.myLooper(), composeViewContext.getView$ui().getHandler().getLooper())) {
                WrappedComposition.this.addedToLifecycle = lifecycle;
                lifecycle.addObserver(WrappedComposition.this);
            } else {
                View view$ui = composeViewContext.getView$ui();
                final WrappedComposition wrappedComposition = WrappedComposition.this;
                view$ui.post(new Runnable() { // from class: androidx.compose.ui.platform.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        WrappedComposition.AnonymousClass1.invoke$lambda$0(wrappedComposition, lifecycle);
                    }
                });
            }
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(ComposeViewContext composeViewContext) {
            invoke2(composeViewContext);
            return j59.a;
        }

        /* JADX INFO: renamed from: androidx.compose.ui.platform.WrappedComposition$setContent$1$2, reason: invalid class name */
        public static final class AnonymousClass2 extends gh4 implements bm3<Composer, Integer, j59> {
            final /* synthetic */ ComposeViewContext $composeViewContext;
            final /* synthetic */ bm3<Composer, Integer, j59> $content;
            final /* synthetic */ WrappedComposition this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public AnonymousClass2(WrappedComposition wrappedComposition, ComposeViewContext composeViewContext, bm3<? super Composer, ? super Integer, j59> bm3Var) {
                super(2);
                this.this$0 = wrappedComposition;
                this.$composeViewContext = composeViewContext;
                this.$content = bm3Var;
            }

            public final void invoke(Composer composer, int i) {
                if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1723985096, i, -1, "androidx.compose.ui.platform.WrappedComposition.setContent.<anonymous>.<anonymous> (Wrapper.android.kt:126)");
                }
                AndroidComposeView owner = this.this$0.getOwner();
                boolean zChangedInstance = composer.changedInstance(this.this$0);
                WrappedComposition wrappedComposition = this.this$0;
                Object objRememberedValue = composer.rememberedValue();
                if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new WrappedComposition$setContent$1$2$1$1(wrappedComposition, null);
                    composer.updateRememberedValue(objRememberedValue);
                }
                EffectsKt.LaunchedEffect(owner, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue, composer, 0);
                AndroidComposeView owner2 = this.this$0.getOwner();
                boolean zChangedInstance2 = composer.changedInstance(this.this$0);
                WrappedComposition wrappedComposition2 = this.this$0;
                Object objRememberedValue2 = composer.rememberedValue();
                if (zChangedInstance2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                    objRememberedValue2 = new WrappedComposition$setContent$1$2$2$1(wrappedComposition2, null);
                    composer.updateRememberedValue(objRememberedValue2);
                }
                EffectsKt.LaunchedEffect(owner2, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue2, composer, 0);
                this.$composeViewContext.ProvideCompositionLocals$ui(this.this$0.getOwner(), this.$content, composer, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }

            @Override // defpackage.bm3
            public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
                invoke(composer, num.intValue());
                return j59.a;
            }
        }
    }
}
