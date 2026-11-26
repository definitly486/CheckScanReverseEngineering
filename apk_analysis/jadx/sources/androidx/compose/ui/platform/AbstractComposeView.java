package androidx.compose.ui.platform;

import android.content.Context;
import android.os.IBinder;
import android.os.Trace;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.R;
import androidx.compose.ui.node.Owner;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import defpackage.ah;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.x;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractComposeView extends ViewGroup {
    public static final int $stable = 8;
    private WeakReference<CompositionContext> cachedViewTreeCompositionContext;
    private ComposeViewContext composeViewContext;
    private Composition composition;
    private boolean creatingComposition;
    private ll3<j59> disposeViewCompositionStrategy;
    private boolean isTransitionGroupSet;
    private CompositionContext parentContext;
    private IBinder previousAttachedWindowToken;
    private boolean showLayoutBounds;

    public AbstractComposeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setClipChildren(false);
        setClipToPadding(false);
        setImportantForAccessibility(1);
        this.disposeViewCompositionStrategy = ViewCompositionStrategy.Companion.getDefault().installFor(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void attachedToWindow() {
        if (isAttachedToWindow()) {
            setPreviousAttachedWindowToken(getWindowToken());
            if (this.composeViewContext == null) {
                AndroidComposeView androidComposeView = null;
                if (getChildCount() != 0) {
                    View childAt = getChildAt(0);
                    if (childAt instanceof AndroidComposeView) {
                        androidComposeView = (AndroidComposeView) childAt;
                    }
                }
                if (androidComposeView != null) {
                    androidComposeView.setComposeViewContext(updateAutoCreatedComposeViewContext(ComposeView_androidKt.findViewTreeComposeViewRoot(this), androidComposeView.getComposeViewContext()));
                }
            }
            if (getShouldCreateCompositionOnAttachedToWindow()) {
                ensureCompositionCreated();
            }
        }
    }

    private final CompositionContext cacheIfAlive(CompositionContext compositionContext) {
        CompositionContext compositionContext2 = isAlive(compositionContext) ? compositionContext : null;
        if (compositionContext2 != null) {
            this.cachedViewTreeCompositionContext = new WeakReference<>(compositionContext2);
        }
        return compositionContext;
    }

    private final void checkAddView() {
        if (this.creatingComposition) {
            return;
        }
        throw new UnsupportedOperationException("Cannot add views to " + getClass().getSimpleName() + "; only Compose content is supported");
    }

    private final void ensureCompositionCreated() {
        if (this.composition == null) {
            try {
                this.creatingComposition = true;
                Trace.beginSection("Compose:initializeView");
                try {
                    ComposeViewContext composeViewContextResolveComposeViewContext = this.composeViewContext;
                    if (composeViewContextResolveComposeViewContext == null) {
                        composeViewContextResolveComposeViewContext = resolveComposeViewContext();
                    }
                    this.composition = Wrapper_androidKt.setContent(this, composeViewContextResolveComposeViewContext, ComposableLambdaKt.composableLambdaInstance(1003123809, true, new AbstractComposeView$ensureCompositionCreated$1$1(this)));
                    j59 j59Var = j59.a;
                    Trace.endSection();
                    this.creatingComposition = false;
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            } catch (Throwable th2) {
                this.creatingComposition = false;
                throw th2;
            }
        }
    }

    public static /* synthetic */ void getComposeViewContext$ui$annotations() {
    }

    private static /* synthetic */ void getDisposeViewCompositionStrategy$annotations() {
    }

    public static /* synthetic */ void getShowLayoutBounds$annotations() {
    }

    private final boolean isAlive(CompositionContext compositionContext) {
        return !(compositionContext instanceof Recomposer) || ((Recomposer) compositionContext).getCurrentState().getValue().compareTo(Recomposer.State.ShuttingDown) > 0;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0007  */
    private final ComposeViewContext resolveComposeViewContext() {
        ComposeViewContext composeViewContext;
        ViewModelStoreOwner viewModelStoreOwner$ui;
        if (getChildCount() == 0) {
            composeViewContext = null;
        } else {
            View childAt = getChildAt(0);
            AndroidComposeView androidComposeView = childAt instanceof AndroidComposeView ? (AndroidComposeView) childAt : null;
            if (androidComposeView != null) {
                composeViewContext = androidComposeView.getComposeViewContext();
            } else {
                composeViewContext = null;
            }
        }
        View viewFindViewTreeComposeViewRoot = ComposeView_androidKt.findViewTreeComposeViewRoot(this);
        ComposeViewContext composeViewContext2 = ComposeView_androidKt.getComposeViewContext(viewFindViewTreeComposeViewRoot);
        if (composeViewContext2 != null) {
            return updateAutoCreatedComposeViewContext(viewFindViewTreeComposeViewRoot, composeViewContext2);
        }
        CompositionContext compositionContextResolveParentCompositionContext = resolveParentCompositionContext();
        LifecycleOwner lifecycleOwner$ui = ViewTreeLifecycleOwner.get(viewFindViewTreeComposeViewRoot);
        if (lifecycleOwner$ui == null) {
            lifecycleOwner$ui = composeViewContext != null ? composeViewContext.getLifecycleOwner$ui() : null;
            if (lifecycleOwner$ui == null) {
                ah.f("Composed into the View which doesn't propagate ViewTreeLifecycleOwner!");
                return null;
            }
        }
        LifecycleOwner lifecycleOwner = lifecycleOwner$ui;
        SavedStateRegistryOwner savedStateRegistryOwner$ui = ViewTreeSavedStateRegistryOwner.get(viewFindViewTreeComposeViewRoot);
        if (savedStateRegistryOwner$ui == null) {
            savedStateRegistryOwner$ui = composeViewContext != null ? composeViewContext.getSavedStateRegistryOwner$ui() : null;
            if (savedStateRegistryOwner$ui == null) {
                ah.f("Composed into the View which doesn't propagate ViewTreeSavedStateRegistryOwner!");
                return null;
            }
        }
        SavedStateRegistryOwner savedStateRegistryOwner = savedStateRegistryOwner$ui;
        ViewModelStoreOwner viewModelStoreOwner = ViewTreeViewModelStoreOwner.get(viewFindViewTreeComposeViewRoot);
        if (viewModelStoreOwner == null) {
            viewModelStoreOwner$ui = composeViewContext != null ? composeViewContext.getViewModelStoreOwner$ui() : null;
        } else {
            viewModelStoreOwner$ui = viewModelStoreOwner;
        }
        ComposeViewContext composeViewContext3 = new ComposeViewContext(viewFindViewTreeComposeViewRoot, compositionContextResolveParentCompositionContext, lifecycleOwner, savedStateRegistryOwner, viewModelStoreOwner$ui);
        ComposeView_androidKt.setComposeViewContext(viewFindViewTreeComposeViewRoot, composeViewContext3);
        return composeViewContext3;
    }

    private final CompositionContext resolveParentCompositionContext() {
        CompositionContext compositionContext;
        CompositionContext compositionContextCacheIfAlive = this.parentContext;
        if (compositionContextCacheIfAlive == null) {
            CompositionContext compositionContextFindViewTreeCompositionContext = WindowRecomposer_androidKt.findViewTreeCompositionContext(this);
            CompositionContext compositionContext2 = null;
            compositionContextCacheIfAlive = compositionContextFindViewTreeCompositionContext != null ? cacheIfAlive(compositionContextFindViewTreeCompositionContext) : null;
            if (compositionContextCacheIfAlive == null) {
                WeakReference<CompositionContext> weakReference = this.cachedViewTreeCompositionContext;
                if (weakReference != null && (compositionContext = weakReference.get()) != null && isAlive(compositionContext)) {
                    compositionContext2 = compositionContext;
                }
                return compositionContext2 == null ? cacheIfAlive(WindowRecomposer_androidKt.getWindowRecomposer(this)) : compositionContext2;
            }
        }
        return compositionContextCacheIfAlive;
    }

    private final void setParentContext(CompositionContext compositionContext) {
        if (this.parentContext != compositionContext) {
            this.parentContext = compositionContext;
            if (compositionContext != null) {
                this.cachedViewTreeCompositionContext = null;
            }
            Composition composition = this.composition;
            if (composition != null) {
                composition.dispose();
                this.composition = null;
                if (isAttachedToWindow()) {
                    ensureCompositionCreated();
                }
            }
        }
    }

    private final void setPreviousAttachedWindowToken(IBinder iBinder) {
        if (this.previousAttachedWindowToken != iBinder) {
            this.previousAttachedWindowToken = iBinder;
            this.cachedViewTreeCompositionContext = null;
        }
    }

    private final ComposeViewContext updateAutoCreatedComposeViewContext(View view, ComposeViewContext composeViewContext) {
        CompositionContext compositionContextResolveParentCompositionContext = resolveParentCompositionContext();
        LifecycleOwner lifecycleOwner$ui = ViewTreeLifecycleOwner.get(view);
        ViewModelStoreOwner viewModelStoreOwner = ViewTreeViewModelStoreOwner.get(view);
        SavedStateRegistryOwner savedStateRegistryOwner$ui = ViewTreeSavedStateRegistryOwner.get(view);
        if (compositionContextResolveParentCompositionContext == composeViewContext.getCompositionContext$ui() && lifecycleOwner$ui == composeViewContext.getLifecycleOwner$ui() && viewModelStoreOwner == composeViewContext.getViewModelStoreOwner$ui() && savedStateRegistryOwner$ui == composeViewContext.getSavedStateRegistryOwner$ui()) {
            return composeViewContext;
        }
        if (compositionContextResolveParentCompositionContext.getEffectCoroutineContext() != composeViewContext.getCompositionContext$ui().getEffectCoroutineContext()) {
            disposeComposition();
        }
        if (lifecycleOwner$ui == null) {
            lifecycleOwner$ui = composeViewContext.getLifecycleOwner$ui();
        }
        LifecycleOwner lifecycleOwner = lifecycleOwner$ui;
        if (savedStateRegistryOwner$ui == null) {
            savedStateRegistryOwner$ui = composeViewContext.getSavedStateRegistryOwner$ui();
        }
        ComposeViewContext composeViewContextCopy = composeViewContext.copy(view, compositionContextResolveParentCompositionContext, lifecycleOwner, savedStateRegistryOwner$ui, viewModelStoreOwner);
        ComposeView_androidKt.setComposeViewContext(view, composeViewContextCopy);
        return composeViewContextCopy;
    }

    public abstract void Content(Composer composer, int i);

    @Override // android.view.ViewGroup
    public void addView(View view) {
        checkAddView();
        super.addView(view);
    }

    @Override // android.view.ViewGroup
    public boolean addViewInLayout(View view, int i, ViewGroup.LayoutParams layoutParams) {
        checkAddView();
        return super.addViewInLayout(view, i, layoutParams);
    }

    public final void createComposition() {
        ComposeViewContext composeViewContext;
        View view$ui;
        if (this.parentContext == null && !isAttachedToWindow() && ((composeViewContext = this.composeViewContext) == null || composeViewContext == null || (view$ui = composeViewContext.getView$ui()) == null || !view$ui.isAttachedToWindow())) {
            ah.f("createComposition requires a previous call to createComposition(ComposeViewContext), a parent reference, or the View to be attached to a window. Attach the View or call setParentCompositionReference.");
        } else {
            ensureCompositionCreated();
        }
    }

    public final void disposeComposition() {
        View childAt = getChildAt(0);
        AndroidComposeView androidComposeView = childAt instanceof AndroidComposeView ? (AndroidComposeView) childAt : null;
        if (androidComposeView != null) {
            androidComposeView.removeConnectionToComposeViewContext();
        }
        Composition composition = this.composition;
        if (composition != null) {
            composition.dispose();
        }
        this.composition = null;
        requestLayout();
    }

    /* JADX INFO: renamed from: getAutoClearFocusBehavior-4UtRPd4, reason: not valid java name */
    public final int m8123getAutoClearFocusBehavior4UtRPd4() {
        Object tag = getTag(R.id.auto_clear_focus_behavior_tag);
        AutoClearFocusBehavior autoClearFocusBehavior = tag instanceof AutoClearFocusBehavior ? (AutoClearFocusBehavior) tag : null;
        return autoClearFocusBehavior != null ? autoClearFocusBehavior.m8158unboximpl() : AutoClearFocusBehavior.Companion.m8160getDefault4UtRPd4();
    }

    public final ComposeViewContext getComposeViewContext$ui() {
        return this.composeViewContext;
    }

    public final boolean getHasComposition() {
        return this.composition != null;
    }

    public boolean getShouldCreateCompositionOnAttachedToWindow() {
        return true;
    }

    public final boolean getShowLayoutBounds() {
        return this.showLayoutBounds;
    }

    public void internalOnLayout$ui(boolean z, int i, int i2, int i3, int i4) {
        View childAt = getChildAt(0);
        if (childAt != null) {
            childAt.layout(getPaddingLeft(), getPaddingTop(), (i3 - i) - getPaddingRight(), (i4 - i2) - getPaddingBottom());
        }
    }

    public void internalOnMeasure$ui(int i, int i2) {
        View childAt = getChildAt(0);
        if (childAt == null) {
            super.onMeasure(i, i2);
            return;
        }
        childAt.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - getPaddingLeft()) - getPaddingRight()), View.MeasureSpec.getMode(i)), View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i2) - getPaddingTop()) - getPaddingBottom()), View.MeasureSpec.getMode(i2)));
        setMeasuredDimension(getPaddingRight() + getPaddingLeft() + childAt.getMeasuredWidth(), getPaddingBottom() + getPaddingTop() + childAt.getMeasuredHeight());
    }

    @Override // android.view.ViewGroup
    public boolean isTransitionGroup() {
        return !this.isTransitionGroupSet || super.isTransitionGroup();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (WindowRecomposer_androidKt.getContentChild(this).getParent() == null) {
            getHandler().postAtFrontOfQueue(new x(this, 0));
        } else {
            attachedToWindow();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        internalOnLayout$ui(z, i, i2, i3, i4);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        ensureCompositionCreated();
        internalOnMeasure$ui(i, i2);
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        View childAt = getChildAt(0);
        if (childAt != null) {
            childAt.setLayoutDirection(i);
        }
    }

    /* JADX INFO: renamed from: setAutoClearFocusBehavior-17tfJxM, reason: not valid java name */
    public final void m8124setAutoClearFocusBehavior17tfJxM(int i) {
        setTag(R.id.auto_clear_focus_behavior_tag, AutoClearFocusBehavior.m8152boximpl(i));
    }

    public final void setComposeViewContext$ui(ComposeViewContext composeViewContext) {
        if (this.composeViewContext != composeViewContext) {
            if (composeViewContext == null) {
                disposeComposition();
            } else if (getChildCount() != 0) {
                View childAt = getChildAt(0);
                AndroidComposeView androidComposeView = childAt instanceof AndroidComposeView ? (AndroidComposeView) childAt : null;
                if (androidComposeView != null) {
                    if (androidComposeView.getCoroutineContext() != composeViewContext.getCompositionContext$ui().getEffectCoroutineContext()) {
                        disposeComposition();
                    }
                    androidComposeView.setComposeViewContext(composeViewContext);
                }
            }
            this.composeViewContext = composeViewContext;
        }
    }

    public final void setParentCompositionContext(CompositionContext compositionContext) {
        setParentContext(compositionContext);
    }

    public final void setShowLayoutBounds(boolean z) {
        this.showLayoutBounds = z;
        KeyEvent.Callback childAt = getChildAt(0);
        if (childAt != null) {
            ((Owner) childAt).setShowLayoutBounds(z);
        }
    }

    @Override // android.view.ViewGroup
    public void setTransitionGroup(boolean z) {
        super.setTransitionGroup(z);
        this.isTransitionGroupSet = true;
    }

    public final void setViewCompositionStrategy(ViewCompositionStrategy viewCompositionStrategy) {
        ll3<j59> ll3Var = this.disposeViewCompositionStrategy;
        if (ll3Var != null) {
            ll3Var.invoke();
        }
        this.disposeViewCompositionStrategy = viewCompositionStrategy.installFor(this);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i) {
        checkAddView();
        super.addView(view, i);
    }

    @Override // android.view.ViewGroup
    public boolean addViewInLayout(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        checkAddView();
        return super.addViewInLayout(view, i, layoutParams, z);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, int i2) {
        checkAddView();
        super.addView(view, i, i2);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        checkAddView();
        super.addView(view, layoutParams);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        checkAddView();
        super.addView(view, i, layoutParams);
    }

    public AbstractComposeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public AbstractComposeView(Context context) {
        this(context, null, 0, 6, null);
    }

    public /* synthetic */ AbstractComposeView(Context context, AttributeSet attributeSet, int i, int i2, jh2 jh2Var) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    public final void createComposition(ComposeViewContext composeViewContext) {
        if (composeViewContext.getView$ui().isAttachedToWindow()) {
            setComposeViewContext$ui(composeViewContext);
            ensureCompositionCreated();
        } else {
            ah.f("createComposition requires the ComposeViewContext's view to be attached to a window.");
        }
    }
}
