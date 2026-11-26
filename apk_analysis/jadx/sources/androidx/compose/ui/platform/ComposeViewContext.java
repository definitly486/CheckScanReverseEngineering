package androidx.compose.ui.platform;

import android.content.res.Configuration;
import android.util.Log;
import android.view.View;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.HostDefaultProviderKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.compose.runtime.tooling.CompositionData;
import androidx.compose.runtime.tooling.InspectionTablesKt;
import androidx.compose.ui.R;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedback;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.res.ImageVectorCache;
import androidx.compose.ui.res.ResourceIdCache;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontFamilyResolver_androidKt;
import androidx.compose.ui.unit.IntSize;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.re4;
import defpackage.ye4;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposeViewContext {
    public static final int $stable = 8;
    private final AndroidAccessibilityManager accessibilityManager;
    private final ll3<DerivedSize> calculateWindowSizeLambda;
    private final ComposeViewContext$callback$1 callback;
    private final CanvasHolder canvasHolder;
    private final AndroidClipboard clipboard;
    private final AndroidClipboardManager clipboardManager;
    private final CompositionContext compositionContext;
    private final MutableState<Configuration> configuration;
    private final Configuration currentConfiguration;
    private final MutableState<FontFamily.Resolver> fontFamilyResolver;
    private final Font.ResourceLoader fontLoader;
    private final HapticFeedback hapticFeedback;
    private final ImageVectorCache imageVectorCache;
    private final LifecycleOwner lifecycleOwner;
    private final ResourceIdCache resourceIdCache;
    private final SavedStateRegistryOwner savedStateRegistryOwner;
    private final LayoutNodeDrawScope sharedDrawScope;
    private long testWindowSize;
    private final AndroidUriHandler uriHandler;
    private final View view;
    private final AndroidViewConfiguration viewConfiguration;
    private int viewCount;
    private final ViewModelStoreOwner viewModelStoreOwner;
    private final LazyWindowInfo windowInfo;

    /* JADX WARN: Multi-variable type inference failed */
    private ComposeViewContext(ComposeViewContext composeViewContext, View view, CompositionContext compositionContext, LifecycleOwner lifecycleOwner, SavedStateRegistryOwner savedStateRegistryOwner, ViewModelStoreOwner viewModelStoreOwner, boolean z) {
        ImageVectorCache imageVectorCache;
        Configuration configuration;
        MutableState<Configuration> mutableStateMutableStateOf$default;
        AndroidAccessibilityManager androidAccessibilityManager;
        AndroidUriHandler androidUriHandler;
        AndroidClipboardManager androidClipboardManager;
        AndroidClipboard androidClipboard;
        Font.ResourceLoader androidFontResourceLoader;
        MutableState<FontFamily.Resolver> mutableStateMutableStateOf;
        AndroidViewConfiguration androidViewConfiguration;
        CanvasHolder canvasHolder;
        LayoutNodeDrawScope layoutNodeDrawScope;
        ResourceIdCache resourceIdCache;
        this.view = view;
        this.compositionContext = compositionContext;
        this.lifecycleOwner = lifecycleOwner;
        this.savedStateRegistryOwner = savedStateRegistryOwner;
        this.viewModelStoreOwner = viewModelStoreOwner;
        if (z) {
            composeViewContext.getClass();
            imageVectorCache = composeViewContext.imageVectorCache;
        } else {
            imageVectorCache = new ImageVectorCache();
        }
        this.imageVectorCache = imageVectorCache;
        this.resourceIdCache = (composeViewContext == null || (resourceIdCache = composeViewContext.resourceIdCache) == null) ? new ResourceIdCache() : resourceIdCache;
        if (z) {
            composeViewContext.getClass();
            configuration = composeViewContext.currentConfiguration;
        } else {
            configuration = new Configuration(view.getContext().getResources().getConfiguration());
        }
        this.currentConfiguration = configuration;
        CanvasDrawScope canvasDrawScope = null;
        Object[] objArr = 0;
        if (z) {
            composeViewContext.getClass();
            mutableStateMutableStateOf$default = composeViewContext.configuration;
        } else {
            mutableStateMutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(new Configuration(configuration), null, 2, null);
        }
        this.configuration = mutableStateMutableStateOf$default;
        if (z) {
            composeViewContext.getClass();
            androidAccessibilityManager = composeViewContext.accessibilityManager;
        } else {
            androidAccessibilityManager = new AndroidAccessibilityManager(view.getContext());
        }
        this.accessibilityManager = androidAccessibilityManager;
        if (z) {
            composeViewContext.getClass();
            androidUriHandler = composeViewContext.uriHandler;
        } else {
            androidUriHandler = new AndroidUriHandler(view.getContext());
        }
        this.uriHandler = androidUriHandler;
        if (z) {
            composeViewContext.getClass();
            androidClipboardManager = composeViewContext.clipboardManager;
        } else {
            androidClipboardManager = new AndroidClipboardManager(view.getContext());
        }
        this.clipboardManager = androidClipboardManager;
        if (z) {
            composeViewContext.getClass();
            androidClipboard = composeViewContext.clipboard;
        } else {
            androidClipboard = new AndroidClipboard(androidClipboardManager);
        }
        this.clipboard = androidClipboard;
        if (z) {
            composeViewContext.getClass();
            androidFontResourceLoader = composeViewContext.fontLoader;
        } else {
            androidFontResourceLoader = new AndroidFontResourceLoader(view.getContext());
        }
        this.fontLoader = androidFontResourceLoader;
        if (z) {
            composeViewContext.getClass();
            mutableStateMutableStateOf = composeViewContext.fontFamilyResolver;
        } else {
            mutableStateMutableStateOf = SnapshotStateKt.mutableStateOf(FontFamilyResolver_androidKt.createFontFamilyResolver(view.getContext()), SnapshotStateKt.referentialEqualityPolicy());
        }
        this.fontFamilyResolver = mutableStateMutableStateOf;
        this.hapticFeedback = view == (composeViewContext != null ? composeViewContext.view : null) ? composeViewContext.hapticFeedback : new PlatformHapticFeedback(view);
        if (z) {
            composeViewContext.getClass();
            androidViewConfiguration = composeViewContext.viewConfiguration;
        } else {
            androidViewConfiguration = new AndroidViewConfiguration(android.view.ViewConfiguration.get(view.getContext()));
        }
        this.viewConfiguration = androidViewConfiguration;
        this.sharedDrawScope = (composeViewContext == null || (layoutNodeDrawScope = composeViewContext.sharedDrawScope) == null) ? new LayoutNodeDrawScope(canvasDrawScope, 1, objArr == true ? 1 : 0) : layoutNodeDrawScope;
        this.windowInfo = new LazyWindowInfo();
        this.canvasHolder = (composeViewContext == null || (canvasHolder = composeViewContext.canvasHolder) == null) ? new CanvasHolder() : canvasHolder;
        this.testWindowSize = IntSize.Companion.m9218getZeroYbymL2g();
        this.calculateWindowSizeLambda = new ComposeViewContext$calculateWindowSizeLambda$1(this);
        this.callback = new ComposeViewContext$callback$1(this);
    }

    public static /* synthetic */ ComposeViewContext copy$default(ComposeViewContext composeViewContext, View view, CompositionContext compositionContext, LifecycleOwner lifecycleOwner, SavedStateRegistryOwner savedStateRegistryOwner, ViewModelStoreOwner viewModelStoreOwner, int i, Object obj) {
        if ((i & 1) != 0) {
            view = composeViewContext.view;
        }
        if ((i & 2) != 0) {
            compositionContext = composeViewContext.compositionContext;
        }
        if ((i & 4) != 0) {
            lifecycleOwner = composeViewContext.lifecycleOwner;
        }
        if ((i & 8) != 0) {
            savedStateRegistryOwner = composeViewContext.savedStateRegistryOwner;
        }
        if ((i & 16) != 0) {
            viewModelStoreOwner = composeViewContext.viewModelStoreOwner;
        }
        ViewModelStoreOwner viewModelStoreOwner2 = viewModelStoreOwner;
        LifecycleOwner lifecycleOwner2 = lifecycleOwner;
        return composeViewContext.copy(view, compositionContext, lifecycleOwner2, savedStateRegistryOwner, viewModelStoreOwner2);
    }

    public static /* synthetic */ void getFontLoader$ui$annotations() {
    }

    private final void startObserving() {
        this.view.getContext().registerComponentCallbacks(this.callback);
        onConfigurationChanged$ui(this.view.getResources().getConfiguration());
        this.windowInfo.setWindowFocused(this.view.hasWindowFocus());
        this.windowInfo.setOnInitializeContainerSize(this.calculateWindowSizeLambda);
        LazyWindowInfo lazyWindowInfo = this.windowInfo;
        ll3<DerivedSize> ll3Var = this.calculateWindowSizeLambda;
        MutableState mutableState = lazyWindowInfo._containerSize;
        if (mutableState != null) {
            mutableState.setValue(ll3Var.invoke());
        }
        this.view.getViewTreeObserver().addOnWindowFocusChangeListener(this.callback);
    }

    private final void stopObserving() {
        this.view.getContext().unregisterComponentCallbacks(this.callback);
        this.windowInfo.setOnInitializeContainerSize(null);
        this.view.getViewTreeObserver().removeOnWindowFocusChangeListener(this.callback);
    }

    public final void ProvideCompositionLocals$ui(AndroidComposeView androidComposeView, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(123858079);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(androidComposeView) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(this) ? 256 : 128;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 147) != 146, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(123858079, i2, -1, "androidx.compose.ui.platform.ComposeViewContext.ProvideCompositionLocals (ComposeViewContext.android.kt:403)");
            }
            Object tag = androidComposeView.getTag(R.id.inspection_slot_table_set);
            Set<CompositionData> set = null;
            Set<CompositionData> set2 = (!(tag instanceof Set) || ((tag instanceof re4) && !(tag instanceof ye4))) ? null : (Set) tag;
            if (set2 == null) {
                Object parent = androidComposeView.getParent();
                View view = parent instanceof View ? (View) parent : null;
                Object tag2 = view != null ? view.getTag(R.id.inspection_slot_table_set) : null;
                if ((tag2 instanceof Set) && (!(tag2 instanceof re4) || (tag2 instanceof ye4))) {
                    set = (Set) tag2;
                }
            } else {
                set = set2;
            }
            if (set != null) {
                set.add(composerStartRestartGroup.getCompositionData());
                composerStartRestartGroup.collectParameterInformation();
            }
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = DisposableSaveableStateRegistry_androidKt.DisposableSaveableStateRegistry(androidComposeView, this.savedStateRegistryOwner);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            DisposableSaveableStateRegistry disposableSaveableStateRegistry = (DisposableSaveableStateRegistry) objRememberedValue;
            j59 j59Var = j59.a;
            boolean zChangedInstance = composerStartRestartGroup.changedInstance(disposableSaveableStateRegistry);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance || objRememberedValue2 == companion.getEmpty()) {
                objRememberedValue2 = new ComposeViewContext$ProvideCompositionLocals$1$1(disposableSaveableStateRegistry);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            EffectsKt.DisposableEffect(j59Var, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue2, composerStartRestartGroup, 6);
            boolean zBooleanValue = ((Boolean) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalScrollCaptureInProgress())).booleanValue() | androidComposeView.getScrollCaptureInProgress$ui();
            boolean zChanged = composerStartRestartGroup.changed(androidComposeView.getView());
            Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue3 == companion.getEmpty()) {
                objRememberedValue3 = new ViewTreeHostDefaultProvider(androidComposeView.getView());
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{LocalLifecycleOwnerKt.getLocalLifecycleOwner().provides(this.lifecycleOwner), LocalSavedStateRegistryOwnerKt.getLocalSavedStateRegistryOwner().provides(this.savedStateRegistryOwner), AndroidCompositionLocals_androidKt.getLocalImageVectorCache().provides(this.imageVectorCache), AndroidCompositionLocals_androidKt.getLocalResourceIdCache().provides(this.resourceIdCache), AndroidCompositionLocals_androidKt.getLocalContext().provides(androidComposeView.getContext()), InspectionTablesKt.getLocalInspectionTables().provides(set), AndroidCompositionLocals_androidKt.getLocalConfiguration().provides(androidComposeView.getConfiguration()), SaveableStateRegistryKt.getLocalSaveableStateRegistry().provides(disposableSaveableStateRegistry), AndroidCompositionLocals_androidKt.getLocalView().provides(androidComposeView.getView()), CompositionLocalsKt.getLocalProvidableScrollCaptureInProgress().provides(Boolean.valueOf(zBooleanValue)), CompositionLocalsKt.getLocalViewConfiguration().provides(androidComposeView.getViewConfiguration()), HostDefaultProviderKt.getLocalHostDefaultProvider().provides((ViewTreeHostDefaultProvider) objRememberedValue3)}, ComposableLambdaKt.rememberComposableLambda(1317454175, true, new ComposeViewContext$ProvideCompositionLocals$2(androidComposeView, this, bm3Var), composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new ComposeViewContext$ProvideCompositionLocals$3(this, androidComposeView, bm3Var, i));
        }
    }

    public final ComposeViewContext copy(View view, CompositionContext compositionContext, LifecycleOwner lifecycleOwner, SavedStateRegistryOwner savedStateRegistryOwner, ViewModelStoreOwner viewModelStoreOwner) {
        return new ComposeViewContext(this, view, compositionContext, lifecycleOwner, savedStateRegistryOwner, viewModelStoreOwner, false, 64, null);
    }

    public final void decrementViewCount$ui() {
        int i = this.viewCount - 1;
        this.viewCount = i;
        if (i < 0) {
            Log.e("ComposeViewContext", "View count has dropped below 0");
            i = 0;
            this.viewCount = 0;
        }
        if (i == 0) {
            stopObserving();
        }
    }

    public final AndroidAccessibilityManager getAccessibilityManager$ui() {
        return this.accessibilityManager;
    }

    public final CanvasHolder getCanvasHolder$ui() {
        return this.canvasHolder;
    }

    public final AndroidClipboard getClipboard$ui() {
        return this.clipboard;
    }

    public final AndroidClipboardManager getClipboardManager$ui() {
        return this.clipboardManager;
    }

    public final CompositionContext getCompositionContext$ui() {
        return this.compositionContext;
    }

    public final MutableState<Configuration> getConfiguration$ui() {
        return this.configuration;
    }

    public final MutableState<FontFamily.Resolver> getFontFamilyResolver$ui() {
        return this.fontFamilyResolver;
    }

    public final Font.ResourceLoader getFontLoader$ui() {
        return this.fontLoader;
    }

    public final HapticFeedback getHapticFeedback$ui() {
        return this.hapticFeedback;
    }

    public final ImageVectorCache getImageVectorCache$ui() {
        return this.imageVectorCache;
    }

    public final LifecycleOwner getLifecycleOwner$ui() {
        return this.lifecycleOwner;
    }

    public final ResourceIdCache getResourceIdCache$ui() {
        return this.resourceIdCache;
    }

    public final SavedStateRegistryOwner getSavedStateRegistryOwner$ui() {
        return this.savedStateRegistryOwner;
    }

    public final LayoutNodeDrawScope getSharedDrawScope$ui() {
        return this.sharedDrawScope;
    }

    /* JADX INFO: renamed from: getTestWindowSize-YbymL2g$ui, reason: not valid java name */
    public final long m8167getTestWindowSizeYbymL2g$ui() {
        return this.testWindowSize;
    }

    public final AndroidUriHandler getUriHandler$ui() {
        return this.uriHandler;
    }

    public final View getView$ui() {
        return this.view;
    }

    public final AndroidViewConfiguration getViewConfiguration$ui() {
        return this.viewConfiguration;
    }

    public final int getViewCount$ui() {
        return this.viewCount;
    }

    public final ViewModelStoreOwner getViewModelStoreOwner$ui() {
        return this.viewModelStoreOwner;
    }

    public final LazyWindowInfo getWindowInfo$ui() {
        return this.windowInfo;
    }

    public final void incrementViewCount$ui() {
        int i = this.viewCount + 1;
        this.viewCount = i;
        if (i == 1) {
            startObserving();
        }
    }

    public final void onConfigurationChanged$ui(Configuration configuration) {
        int iUpdateFrom = this.currentConfiguration.updateFrom(configuration);
        if (iUpdateFrom != 0) {
            this.imageVectorCache.prune(iUpdateFrom);
            this.configuration.setValue(new Configuration(configuration));
            this.resourceIdCache.clear();
            if ((268435456 & iUpdateFrom) != 0) {
                this.fontFamilyResolver.setValue(FontFamilyResolver_androidKt.createFontFamilyResolver(this.view.getContext()));
            }
            if (((-1342235264) & iUpdateFrom) != 0) {
                LazyWindowInfo lazyWindowInfo = this.windowInfo;
                ll3<DerivedSize> ll3Var = this.calculateWindowSizeLambda;
                MutableState mutableState = lazyWindowInfo._containerSize;
                if (mutableState != null) {
                    mutableState.setValue(ll3Var.invoke());
                }
            }
        }
    }

    /* JADX INFO: renamed from: setTestWindowSize-ozmzZPI$ui, reason: not valid java name */
    public final void m8168setTestWindowSizeozmzZPI$ui(long j) {
        this.testWindowSize = j;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ ComposeViewContext(ComposeViewContext composeViewContext, View view, CompositionContext compositionContext, LifecycleOwner lifecycleOwner, SavedStateRegistryOwner savedStateRegistryOwner, ViewModelStoreOwner viewModelStoreOwner, boolean z, int i, jh2 jh2Var) {
        View view2;
        if ((i & 64) != 0) {
            z = aa4.e((composeViewContext == null || (view2 = composeViewContext.view) == null) ? null : view2.getContext(), view.getContext());
        }
        this(composeViewContext, view, compositionContext, lifecycleOwner, savedStateRegistryOwner, viewModelStoreOwner, z);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ ComposeViewContext(View view, CompositionContext compositionContext, LifecycleOwner lifecycleOwner, SavedStateRegistryOwner savedStateRegistryOwner, ViewModelStoreOwner viewModelStoreOwner, int i, jh2 jh2Var) {
        if ((i & 2) != 0 && (compositionContext = WindowRecomposer_androidKt.findViewTreeCompositionContext(view)) == null) {
            compositionContext = WindowRecomposer_androidKt.getWindowRecomposer(view);
        }
        CompositionContext compositionContext2 = compositionContext;
        if ((i & 4) != 0 && (lifecycleOwner = ViewTreeLifecycleOwner.get(view)) == null) {
            ah.f("Composed into a View which doesn't propagate ViewTreeLifecycleOwner!");
            throw null;
        }
        LifecycleOwner lifecycleOwner2 = lifecycleOwner;
        if ((i & 8) != 0 && (savedStateRegistryOwner = ViewTreeSavedStateRegistryOwner.get(view)) == null) {
            ah.f("Composed into a View which doesn't propagate ViewTreeSavedStateRegistryOwner!");
            throw null;
        }
        this(view, compositionContext2, lifecycleOwner2, savedStateRegistryOwner, (i & 16) != 0 ? ViewTreeViewModelStoreOwner.get(view) : viewModelStoreOwner);
    }

    public ComposeViewContext(View view, CompositionContext compositionContext, LifecycleOwner lifecycleOwner, SavedStateRegistryOwner savedStateRegistryOwner, ViewModelStoreOwner viewModelStoreOwner) {
        this(ComposeView_androidKt.findViewTreeComposeViewContext(view), view, compositionContext, lifecycleOwner, savedStateRegistryOwner, viewModelStoreOwner, false, 64, null);
    }
}
