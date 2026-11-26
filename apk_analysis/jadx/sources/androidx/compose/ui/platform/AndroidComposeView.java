package androidx.compose.ui.platform;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.os.Handler;
import android.os.StrictMode;
import android.os.Trace;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ScrollCaptureTarget;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AnimationUtils;
import android.view.autofill.AutofillManager;
import android.view.autofill.AutofillValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.translation.ViewTranslationRequest;
import android.view.translation.ViewTranslationResponse;
import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterMap;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.retain.ForgetfulRetainedValuesStore;
import androidx.compose.runtime.retain.RetainedValuesStore;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.AndroidComposeUiFlags;
import androidx.compose.ui.ComposeUiFlags;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.R;
import androidx.compose.ui.SessionMutex;
import androidx.compose.ui.autofill.AndroidAutofill;
import androidx.compose.ui.autofill.AndroidAutofillManager;
import androidx.compose.ui.autofill.AndroidAutofill_androidKt;
import androidx.compose.ui.autofill.Autofill;
import androidx.compose.ui.autofill.AutofillCallback;
import androidx.compose.ui.autofill.AutofillTree;
import androidx.compose.ui.autofill.PlatformAutofillManagerImpl;
import androidx.compose.ui.contentcapture.AndroidContentCaptureManager;
import androidx.compose.ui.draganddrop.AndroidDragAndDropManager;
import androidx.compose.ui.draganddrop.ComposeDragShadowBuilder;
import androidx.compose.ui.draganddrop.DragAndDropTransferData;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.focus.FocusInteropUtils_androidKt;
import androidx.compose.ui.focus.FocusListener;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.focus.FocusOwner;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.focus.FocusOwnerImplKt;
import androidx.compose.ui.focus.FocusTargetModifierNode;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.focus.FocusTraversalKt;
import androidx.compose.ui.focus.PlatformFocusOwner;
import androidx.compose.ui.focus.TwoDimensionalFocusSearchKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidGraphicsContext_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedback;
import androidx.compose.ui.input.InputMode;
import androidx.compose.ui.input.InputModeChangeRequester;
import androidx.compose.ui.input.InputModeManager;
import androidx.compose.ui.input.InputModeManagerImpl;
import androidx.compose.ui.input.indirect.AndroidIndirectPointerEvent;
import androidx.compose.ui.input.indirect.AndroidIndirectPointerEvent_androidKt;
import androidx.compose.ui.input.indirect.IndirectPointerEvent;
import androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis;
import androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.input.pointer.MatrixPositionCalculator;
import androidx.compose.ui.input.pointer.MotionEventAdapter;
import androidx.compose.ui.input.pointer.PointerIcon;
import androidx.compose.ui.input.pointer.PointerIconService;
import androidx.compose.ui.input.pointer.PointerInputEvent;
import androidx.compose.ui.input.pointer.PointerInputEventData;
import androidx.compose.ui.input.pointer.PointerInputEventProcessor;
import androidx.compose.ui.input.pointer.PointerInputEventProcessorKt;
import androidx.compose.ui.input.pointer.PointerKeyboardModifiers;
import androidx.compose.ui.input.rotary.RotaryInputModifierNode;
import androidx.compose.ui.input.rotary.RotaryScrollEvent;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.InsetsListener;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.PlaceableKt;
import androidx.compose.ui.layout.RectRulers;
import androidx.compose.ui.layout.RootMeasurePolicy;
import androidx.compose.ui.layout.RulerScope;
import androidx.compose.ui.layout.WindowInsetsRulerProvider;
import androidx.compose.ui.layout.WindowInsetsRulers_androidKt;
import androidx.compose.ui.layout.WindowWindowInsetsAnimationValues;
import androidx.compose.ui.modifier.ModifierLocalManager;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.MeasureAndLayoutDelegate;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeKind;
import androidx.compose.ui.node.OutOfFrameExecutor;
import androidx.compose.ui.node.OwnedLayer;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.OwnerSnapshotObserver;
import androidx.compose.ui.node.RootForTest;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.AndroidComposeView.RootModifierNode;
import androidx.compose.ui.relocation.BringIntoViewModifierNode;
import androidx.compose.ui.scrollcapture.ScrollCapture;
import androidx.compose.ui.semantics.EmptySemanticsModifier;
import androidx.compose.ui.semantics.SemanticsOwner;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.spatial.ExecuteDelayed;
import androidx.compose.ui.spatial.RectManager;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontFamilyResolver_androidKt;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputServiceAndroid;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.unit.AndroidDensity_androidKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewConfigurationCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.media3.muxer.MuxerUtil;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ag;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.fg;
import defpackage.fr;
import defpackage.gh4;
import defpackage.h8;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ki0;
import defpackage.lh;
import defpackage.ll3;
import defpackage.n07;
import defpackage.nh;
import defpackage.nl3;
import defpackage.o22;
import defpackage.oh;
import defpackage.ph;
import defpackage.qh;
import defpackage.r07;
import defpackage.r57;
import defpackage.ud;
import defpackage.ul2;
import defpackage.v39;
import defpackage.x07;
import defpackage.y22;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidComposeView extends ViewGroup implements Owner, PlatformFocusOwner, ViewRootForTest, MatrixPositionCalculator, DefaultLifecycleObserver, OutOfFrameExecutor, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, ViewTreeObserver.OnTouchModeChangeListener, FocusListener, ExecuteDelayed {
    public static final int $stable = 8;
    public static final Companion Companion;
    private static Method addChangeCallbackMethod;
    private static final MutableObjectList<AndroidComposeView> composeViews;
    private static Method dispatchOnScrollChangedMethod;
    private static Method getBooleanMethod;
    private static Runnable systemPropertiesChangedRunnable;
    private static Class<?> systemPropertiesClass;
    private AndroidViewsHandler _androidViewsHandler;
    private final AndroidAutofill _autofill;
    private final AndroidAutofillManager _autofillManager;
    private final MutableState _composeViewContext$delegate;
    private final InputModeManagerImpl _inputModeManager;
    private TextInputServiceAndroid _legacyTextInputServiceAndroid;
    private View _rootView;
    private SoftwareKeyboardController _softwareKeyboardController;
    private TextInputService _textInputService;
    private final MutableState _viewTreeOwners$delegate;
    private final LazyWindowInfo _windowInfo;
    private final AndroidAccessibilityManager accessibilityManager;
    private final AutofillTree autofillTree;
    private final CanvasHolder canvasHolder;
    private final AndroidClipboard clipboard;
    private final AndroidClipboardManager clipboardManager;
    private final AndroidComposeViewAccessibilityDelegateCompat composeAccessibilityDelegate;
    private boolean composeViewContextIncrementedDuringInit;
    private final MutableState configuration$delegate;
    private AndroidContentCaptureManager contentCaptureManager;
    private o22 coroutineContext;
    private float currentFrameRate;
    private float currentFrameRateCategory;
    private final MutableState density$delegate;
    private final State derivedIsAttached$delegate;
    private final MutableObjectList<OwnedLayer> dirtyLayers;
    private final AndroidDragAndDropManager dragAndDropManager;
    private final MutableObjectList<ll3<j59>> endApplyChangesListeners;
    private final FocusOwner focusOwner;
    private final MutableState fontFamilyResolver$delegate;
    private final Font.ResourceLoader fontLoader;
    private boolean forceUseMatrixCache;
    private LifecycleRetainedValuesStoreOwner.FrameEndScheduler frameEndScheduler;
    private View frameRateCategoryView;
    private long globalPosition;
    private final GraphicsContext graphicsContext;
    private final HapticFeedback hapticFeedBack;
    private boolean hoverExitReceived;
    private final IndirectPointerNavigationGestureDetector indirectPointerNavigationGestureDetector;
    private final InsetsListener insetsListener;
    private final MutableState isAttached$delegate;
    private boolean isDrawingContent;
    private boolean isPendingInteropViewLayoutChangeDispatch;
    private boolean isRenderNodeCompatible;
    private int keepScreenOnCount;
    private boolean keyboardModifiersRequireUpdate;
    private long lastDownPointerPosition;
    private long lastMatrixRecalculationAnimationTime;
    private final WeakCache<OwnedLayer> layerCache;
    private final MutableState layoutDirection$delegate;
    private final MutableIntObjectMap<LayoutNode> layoutNodes;
    private LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry lifecycleRetainedValuesStoreOwnerEntry;
    private final State localeList$delegate;
    private final CalculateMatrixToWindow matrixToWindow;
    private final MeasureAndLayoutDelegate measureAndLayoutDelegate;
    private final ModifierLocalManager modifierLocalManager;
    private final MotionEventAdapter motionEventAdapter;
    private boolean observationClearRequested;
    private Constraints onMeasureConstraints;
    private nl3<? super ComposeViewContext, j59> onReadyForComposition;
    private final fr<ll3<j59>> outOfFrameQueue;
    private final Runnable outOfFrameRunnable;
    private final PointerIconService pointerIconService;
    private final PointerInputEventProcessor pointerInputEventProcessor;
    private MutableObjectList<OwnedLayer> postponedDirtyLayers;
    private MotionEvent previousMotionEvent;
    private IndirectPointerEventPrimaryDirectionalMotionAxis primaryDirectionalMotionAxisOverride;
    private boolean processingRequestFocusForNextNonChildView;
    private final RectManager rectManager;
    private long relayoutTime;
    private final ll3<j59> resendMotionEventOnLayout;
    private final AndroidComposeView$resendMotionEventRunnable$1 resendMotionEventRunnable;
    private RetainedValuesStore retainedValuesStore;
    private final LayoutNode root;
    private final ScrollCapture scrollCapture;
    private final SemanticsOwner semanticsOwner;
    private final Runnable sendHoverExitEvent;
    private int sensitiveComponentCount;
    private final LayoutNodeDrawScope sharedDrawScope;
    private boolean showLayoutBounds;
    private final OwnerSnapshotObserver snapshotObserver;
    private boolean superclassInitComplete;
    private final AtomicReference<SessionMutex.Session<AndroidPlatformTextInputSession>> textInputSessionMutex;
    private final TextToolbar textToolbar;
    private final float[] tmpMatrix;
    private final int[] tmpPositionArray;
    private RootForTest.UncaughtExceptionHandler uncaughtExceptionHandler;
    private final ViewConfiguration viewConfiguration;
    private DrawChildContainer viewLayersContainer;
    private final float[] viewToWindowMatrix;
    private final State viewTreeOwners$delegate;
    private boolean wasMeasuredWithMultipleConstraints;
    private long windowPosition;
    private final float[] windowToViewMatrix;

    public final class RootModifierNode extends Modifier.Node implements BringIntoViewModifierNode, SemanticsModifierNode, RotaryInputModifierNode, KeyInputModifierNode, LayoutModifierNode, TraversableNode, WindowInsetsRulerProvider {
        private int previousGeneration = -1;
        private final nl3<RulerScope, j59> rulerLambda = new AndroidComposeView$RootModifierNode$rulerLambda$1(this);

        public RootModifierNode() {
        }

        public static /* synthetic */ void getRulerLambda$annotations() {
        }

        @Override // androidx.compose.ui.node.SemanticsModifierNode
        public void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        }

        @Override // androidx.compose.ui.relocation.BringIntoViewModifierNode
        public Object bringIntoView(LayoutCoordinates layoutCoordinates, ll3<Rect> ll3Var, e02<? super j59> e02Var) {
            long jPositionInRoot = LayoutCoordinatesKt.positionInRoot(layoutCoordinates);
            Rect rectInvoke = ll3Var.invoke();
            Rect rectM6024translatek4lQ0M = rectInvoke != null ? rectInvoke.m6024translatek4lQ0M(jPositionInRoot) : null;
            if (rectM6024translatek4lQ0M != null) {
                AndroidComposeView.this.requestRectangleOnScreen(RectHelper_androidKt.toAndroidRect(rectM6024translatek4lQ0M), false);
            }
            return j59.a;
        }

        @Override // androidx.compose.ui.layout.WindowInsetsRulerProvider
        public MutableObjectList<MutableState<android.graphics.Rect>> getCutoutRects() {
            return getInsetsListener().getDisplayCutouts();
        }

        @Override // androidx.compose.ui.layout.WindowInsetsRulerProvider
        public List<RectRulers> getCutoutRulers() {
            return getInsetsListener().getDisplayCutoutRulers();
        }

        public final MutableIntState getGeneration() {
            return getInsetsListener().getGeneration();
        }

        @Override // androidx.compose.ui.layout.WindowInsetsRulerProvider
        public InsetsListener getInsetsListener() {
            return AndroidComposeView.this.getInsetsListener();
        }

        @Override // androidx.compose.ui.layout.WindowInsetsRulerProvider
        public ScatterMap<Object, WindowWindowInsetsAnimationValues> getInsetsValues() {
            return getInsetsListener().getInsetsValues();
        }

        public final int getPreviousGeneration() {
            return this.previousGeneration;
        }

        public final nl3<RulerScope, j59> getRulerLambda() {
            return this.rulerLambda;
        }

        @Override // androidx.compose.ui.node.TraversableNode
        public Object getTraverseKey() {
            return WindowInsetsRulers_androidKt.RulerKey;
        }

        @Override // androidx.compose.ui.node.LayoutModifierNode
        /* JADX INFO: renamed from: measure-3p2s80s */
        public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
            Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(j);
            return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, this.rulerLambda, new AndroidComposeView$RootModifierNode$measure$1(placeableMo7702measureBRTryo0), 4, null);
        }

        @Override // androidx.compose.ui.input.key.KeyInputModifierNode
        /* JADX INFO: renamed from: onKeyEvent-ZmokQxo */
        public boolean mo1258onKeyEventZmokQxo(KeyEvent keyEvent) {
            Boolean boolMo5881focusSearchULY8qGw;
            FocusDirection focusDirectionM5875toFocusDirectionZmokQxo = FocusInteropUtils_androidKt.m5875toFocusDirectionZmokQxo(keyEvent);
            if (focusDirectionM5875toFocusDirectionZmokQxo == null || !KeyEventType.m7394equalsimpl0(KeyEvent_androidKt.m7402getTypeZmokQxo(keyEvent), KeyEventType.Companion.m7398getKeyDownCS__XNY())) {
                return false;
            }
            if (ComposeUiFlags.isBypassUnfocusableComposeViewEnabled) {
                FocusTargetNode activeFocusTargetNode = AndroidComposeView.this.getFocusOwner().getActiveFocusTargetNode();
                if (activeFocusTargetNode != null && activeFocusTargetNode.isInteropViewHost() && AndroidComposeView.this.mo5928moveFocusInChildren3ESFkO8(focusDirectionM5875toFocusDirectionZmokQxo.m5865unboximpl())) {
                    return true;
                }
                Boolean boolMo5881focusSearchULY8qGw2 = AndroidComposeView.this.getFocusOwner().mo5881focusSearchULY8qGw(focusDirectionM5875toFocusDirectionZmokQxo.m5865unboximpl(), AndroidComposeView.this.getEmbeddedViewFocusRect(), new AndroidComposeView$RootModifierNode$onKeyEvent$focusWasMovedOrCancelled$1(focusDirectionM5875toFocusDirectionZmokQxo));
                if (boolMo5881focusSearchULY8qGw2 != null ? boolMo5881focusSearchULY8qGw2.booleanValue() : true) {
                    return true;
                }
                if (FocusOwnerImplKt.m5889is1dFocusSearch3ESFkO8(focusDirectionM5875toFocusDirectionZmokQxo.m5865unboximpl())) {
                    Integer numM5874toAndroidFocusDirection3ESFkO8 = FocusInteropUtils_androidKt.m5874toAndroidFocusDirection3ESFkO8(focusDirectionM5875toFocusDirectionZmokQxo.m5865unboximpl());
                    int iIntValue = numM5874toAndroidFocusDirection3ESFkO8 != null ? numM5874toAndroidFocusDirection3ESFkO8.intValue() : 2;
                    FocusFinder focusFinder = FocusFinder.getInstance();
                    View rootView = AndroidComposeView.this.getRootView();
                    rootView.getClass();
                    View viewFindNextFocus = focusFinder.findNextFocus((ViewGroup) rootView, AndroidComposeView.this.getView(), iIntValue);
                    if (viewFindNextFocus == null || viewFindNextFocus.equals(AndroidComposeView.this)) {
                        return AndroidComposeView.this.getFocusOwner().mo5884resetFocus3ESFkO8(focusDirectionM5875toFocusDirectionZmokQxo.m5865unboximpl());
                    }
                }
                return false;
            }
            Integer numM5874toAndroidFocusDirection3ESFkO9 = FocusInteropUtils_androidKt.m5874toAndroidFocusDirection3ESFkO8(focusDirectionM5875toFocusDirectionZmokQxo.m5865unboximpl());
            if (ComposeUiFlags.isViewFocusFixEnabled && AndroidComposeView.this.hasFocus() && numM5874toAndroidFocusDirection3ESFkO9 != null && AndroidComposeView.this.mo5928moveFocusInChildren3ESFkO8(focusDirectionM5875toFocusDirectionZmokQxo.m5865unboximpl())) {
                return true;
            }
            Rect embeddedViewFocusRect = AndroidComposeView.this.getEmbeddedViewFocusRect();
            Boolean boolMo5881focusSearchULY8qGw3 = AndroidComposeView.this.getFocusOwner().mo5881focusSearchULY8qGw(focusDirectionM5875toFocusDirectionZmokQxo.m5865unboximpl(), embeddedViewFocusRect, new AndroidComposeView$RootModifierNode$onKeyEvent$focusWasMovedOrCancelled$2(focusDirectionM5875toFocusDirectionZmokQxo));
            if (boolMo5881focusSearchULY8qGw3 != null ? boolMo5881focusSearchULY8qGw3.booleanValue() : true) {
                return true;
            }
            if (!FocusOwnerImplKt.m5889is1dFocusSearch3ESFkO8(focusDirectionM5875toFocusDirectionZmokQxo.m5865unboximpl())) {
                return false;
            }
            if (numM5874toAndroidFocusDirection3ESFkO9 != null) {
                View viewFindNextNonChildView = AndroidComposeView.this.findNextNonChildView(numM5874toAndroidFocusDirection3ESFkO9.intValue());
                if (aa4.e(viewFindNextNonChildView, AndroidComposeView.this)) {
                    viewFindNextNonChildView = null;
                }
                if (viewFindNextNonChildView != null) {
                    android.graphics.Rect androidRect = embeddedViewFocusRect != null ? RectHelper_androidKt.toAndroidRect(embeddedViewFocusRect) : null;
                    if (androidRect == null) {
                        throw ag.e("Invalid rect");
                    }
                    View rootView2 = AndroidComposeView.this.getRootView();
                    rootView2.getClass();
                    ViewGroup viewGroup = (ViewGroup) rootView2;
                    viewGroup.offsetDescendantRectToMyCoords(AndroidComposeView.this.getView(), androidRect);
                    viewGroup.offsetRectIntoDescendantCoords(viewFindNextNonChildView, androidRect);
                    if (FocusInteropUtils_androidKt.requestInteropFocus(viewFindNextNonChildView, numM5874toAndroidFocusDirection3ESFkO9, androidRect)) {
                        return true;
                    }
                }
            }
            if (AndroidComposeView.this.getFocusOwner().mo5878clearFocusI7lrPNg(false, true, false, focusDirectionM5875toFocusDirectionZmokQxo.m5865unboximpl()) && (boolMo5881focusSearchULY8qGw = AndroidComposeView.this.getFocusOwner().mo5881focusSearchULY8qGw(focusDirectionM5875toFocusDirectionZmokQxo.m5865unboximpl(), null, new AndroidComposeView$RootModifierNode$onKeyEvent$1(focusDirectionM5875toFocusDirectionZmokQxo))) != null) {
                return boolMo5881focusSearchULY8qGw.booleanValue();
            }
            return true;
        }

        @Override // androidx.compose.ui.input.key.KeyInputModifierNode
        /* JADX INFO: renamed from: onPreKeyEvent-ZmokQxo */
        public boolean mo1260onPreKeyEventZmokQxo(KeyEvent keyEvent) {
            return false;
        }

        @Override // androidx.compose.ui.input.rotary.RotaryInputModifierNode
        public boolean onPreRotaryScrollEvent(RotaryScrollEvent rotaryScrollEvent) {
            return false;
        }

        @Override // androidx.compose.ui.input.rotary.RotaryInputModifierNode
        public boolean onRotaryScrollEvent(RotaryScrollEvent rotaryScrollEvent) {
            return false;
        }

        public final void setPreviousGeneration(int i) {
            this.previousGeneration = i;
        }
    }

    public static final class ViewTreeOwners {
        public static final int $stable = 8;
        private final LifecycleOwner lifecycleOwner;
        private final SavedStateRegistryOwner savedStateRegistryOwner;
        private final ViewModelStoreOwner viewModelStoreOwner;

        public ViewTreeOwners(LifecycleOwner lifecycleOwner, SavedStateRegistryOwner savedStateRegistryOwner, ViewModelStoreOwner viewModelStoreOwner) {
            this.lifecycleOwner = lifecycleOwner;
            this.savedStateRegistryOwner = savedStateRegistryOwner;
            this.viewModelStoreOwner = viewModelStoreOwner;
        }

        public final LifecycleOwner getLifecycleOwner() {
            return this.lifecycleOwner;
        }

        public final SavedStateRegistryOwner getSavedStateRegistryOwner() {
            return this.savedStateRegistryOwner;
        }

        public final ViewModelStoreOwner getViewModelStoreOwner() {
            return this.viewModelStoreOwner;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.platform.AndroidComposeView$dispatchKeyEvent$1, reason: invalid class name and case insensitive filesystem */
    public static final class C06431 extends gh4 implements ll3<Boolean> {
        final /* synthetic */ KeyEvent $event;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06431(KeyEvent keyEvent) {
            super(0);
            this.$event = keyEvent;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final Boolean invoke() {
            return Boolean.valueOf(AndroidComposeView.super.dispatchKeyEvent(this.$event));
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.platform.AndroidComposeView$handleRotaryEvent$1, reason: invalid class name and case insensitive filesystem */
    public static final class C06451 extends gh4 implements ll3<Boolean> {
        final /* synthetic */ MotionEvent $event;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06451(MotionEvent motionEvent) {
            super(0);
            this.$event = motionEvent;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final Boolean invoke() {
            return Boolean.valueOf(AndroidComposeView.super.dispatchGenericMotionEvent(this.$event));
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.platform.AndroidComposeView$onAttachedToWindow$1, reason: invalid class name and case insensitive filesystem */
    public static final class C06461 extends gh4 implements ll3<DerivedSize> {
        public C06461() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final DerivedSize invoke() {
            return AndroidWindowInfo_androidKt.calculateWindowSize(AndroidComposeView.this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.platform.AndroidComposeView$requestFocusCurrent$1, reason: invalid class name and case insensitive filesystem */
    public static final class C06471 extends gh4 implements nl3<FocusTargetNode, Boolean> {
        final /* synthetic */ int $focusDirection;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06471(int i) {
            super(1);
            this.$focusDirection = i;
        }

        @Override // defpackage.nl3
        public final Boolean invoke(FocusTargetNode focusTargetNode) {
            return Boolean.valueOf(focusTargetNode.mo5896requestFocus3ESFkO8(this.$focusDirection));
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.platform.AndroidComposeView$textInputSession$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.ui.platform.AndroidComposeView", f = "AndroidComposeView.android.kt", l = {860}, m = "textInputSession", v = 1)
    public static final class C06481 extends f02 {
        int label;
        /* synthetic */ Object result;

        public C06481(e02<? super C06481> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidComposeView.this.textInputSession(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.platform.AndroidComposeView$textInputSession$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements nl3<y22, AndroidPlatformTextInputSession> {
        public AnonymousClass2() {
            super(1);
        }

        @Override // defpackage.nl3
        public final AndroidPlatformTextInputSession invoke(y22 y22Var) {
            AndroidComposeView androidComposeView = AndroidComposeView.this;
            return new AndroidPlatformTextInputSession(androidComposeView, androidComposeView.getTextInputService(), y22Var);
        }
    }

    static {
        jh2 jh2Var = null;
        Companion = new Companion(jh2Var);
        composeViews = new MutableObjectList<>(0, 1, jh2Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v8, types: [androidx.compose.ui.platform.AndroidComposeView$resendMotionEventRunnable$1] */
    public AndroidComposeView(Context context, ComposeViewContext composeViewContext) {
        final AndroidComposeView androidComposeView;
        AndroidAutofillManager androidAutofillManager;
        super(context);
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        Object[] objArr5 = 0;
        Object[] objArr6 = 0;
        Object[] objArr7 = 0;
        this._composeViewContext$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(composeViewContext, null, 2, null);
        Offset.Companion companion = Offset.Companion;
        this.lastDownPointerPosition = companion.m6002getUnspecifiedF1C5BW0();
        int i = 1;
        this.superclassInitComplete = true;
        this.sharedDrawScope = AndroidComposeUiFlags.isSharedDrawingEnabled ? composeViewContext.getSharedDrawScope$ui() : new LayoutNodeDrawScope(objArr2 == true ? 1 : 0, i, objArr == true ? 1 : 0);
        this.retainedValuesStore = ForgetfulRetainedValuesStore.INSTANCE;
        this.outOfFrameQueue = new fr<>();
        Object[] objArr8 = 0;
        Object[] objArr9 = 0;
        Object[] objArr10 = 0;
        Object[] objArr11 = 0;
        this.outOfFrameRunnable = new lh(this, 0);
        this.density$delegate = SnapshotStateKt.mutableStateOf(AndroidDensity_androidKt.Density(context), SnapshotStateKt.referentialEqualityPolicy());
        this.focusOwner = new FocusOwnerImpl(this, this);
        this.coroutineContext = composeViewContext.getCompositionContext$ui().getEffectCoroutineContext();
        this.dragAndDropManager = new AndroidDragAndDropManager(new AndroidComposeView$dragAndDropManager$1(this));
        this._windowInfo = new LazyWindowInfo();
        this.isAttached$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
        this.derivedIsAttached$delegate = SnapshotStateKt.derivedStateOf(new AndroidComposeView$derivedIsAttached$2(this));
        this.canvasHolder = AndroidComposeUiFlags.isSharedDrawingEnabled ? composeViewContext.getCanvasHolder$ui() : new CanvasHolder();
        this.viewConfiguration = AndroidComposeUiFlags.isSharedViewConfigurationEnabled ? composeViewContext.getViewConfiguration$ui() : new AndroidViewConfiguration(android.view.ViewConfiguration.get(context));
        this.insetsListener = new InsetsListener(this);
        LayoutNode layoutNode = new LayoutNode(objArr11 == true ? 1 : 0, objArr10 == true ? 1 : 0, 3, objArr7 == true ? 1 : 0);
        layoutNode.setMeasurePolicy(RootMeasurePolicy.INSTANCE);
        layoutNode.setDensity(getDensity());
        layoutNode.setViewConfiguration(getViewConfiguration());
        layoutNode.setModifier(new ModifierNodeElement<RootModifierNode>() { // from class: androidx.compose.ui.platform.AndroidComposeView$root$1$1
            @Override // androidx.compose.ui.node.ModifierNodeElement
            public AndroidComposeView.RootModifierNode create() {
                return this.this$0.new RootModifierNode();
            }

            @Override // androidx.compose.ui.node.ModifierNodeElement
            public boolean equals(Object obj) {
                return obj == this;
            }

            @Override // androidx.compose.ui.node.ModifierNodeElement
            public int hashCode() {
                return this.this$0.hashCode();
            }

            @Override // androidx.compose.ui.node.ModifierNodeElement
            public void inspectableProperties(InspectorInfo inspectorInfo) {
                inspectorInfo.setName("rootModifier");
            }

            @Override // androidx.compose.ui.node.ModifierNodeElement
            public void update(AndroidComposeView.RootModifierNode rootModifierNode) {
            }
        }.then(getFocusOwner().getModifier()).then(getDragAndDropManager().getModifier()));
        this.root = layoutNode;
        this.layoutNodes = IntObjectMapKt.mutableIntObjectMapOf();
        this.rectManager = new RectManager(getLayoutNodes(), this);
        this.semanticsOwner = new SemanticsOwner(getRoot(), new EmptySemanticsModifier(), getLayoutNodes());
        AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = new AndroidComposeViewAccessibilityDelegateCompat(this);
        this.composeAccessibilityDelegate = androidComposeViewAccessibilityDelegateCompat;
        this.contentCaptureManager = new AndroidContentCaptureManager(this, new AndroidComposeView$contentCaptureManager$1(this));
        this.accessibilityManager = AndroidComposeUiFlags.isSharedAccessibilityManagerEnabled ? composeViewContext.getAccessibilityManager$ui() : new AndroidAccessibilityManager(context);
        this.graphicsContext = AndroidGraphicsContext_androidKt.GraphicsContext(this);
        this.autofillTree = new AutofillTree();
        this.dirtyLayers = new MutableObjectList<>(objArr9 == true ? 1 : 0, i, objArr6 == true ? 1 : 0);
        this.motionEventAdapter = new MotionEventAdapter();
        this.pointerInputEventProcessor = new PointerInputEventProcessor(getRoot());
        this.configuration$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(new Configuration(context.getResources().getConfiguration()), null, 2, null);
        this.localeList$delegate = SnapshotStateKt.derivedStateOf(new AndroidComposeView$localeList$2(this));
        this._autofill = autofillSupported() ? new AndroidAutofill(this, getAutofillTree()) : null;
        if (autofillSupported()) {
            AutofillManager autofillManager = (AutofillManager) context.getSystemService(AutofillManager.class);
            if (autofillManager == null) {
                throw ag.e("Autofill service could not be located.");
            }
            androidComposeView = this;
            androidAutofillManager = new AndroidAutofillManager(new PlatformAutofillManagerImpl(autofillManager), getSemanticsOwner(), androidComposeView, getRectManager(), context.getPackageName());
        } else {
            androidComposeView = this;
            androidAutofillManager = null;
        }
        androidComposeView._autofillManager = androidAutofillManager;
        androidComposeView.clipboardManager = AndroidComposeUiFlags.isSharedClipboardManagerEnabled ? composeViewContext.getClipboardManager$ui() : new AndroidClipboardManager(context);
        androidComposeView.clipboard = AndroidComposeUiFlags.isSharedClipboardManagerEnabled ? composeViewContext.getClipboard$ui() : new AndroidClipboard(androidComposeView.getClipboardManager());
        androidComposeView.snapshotObserver = new OwnerSnapshotObserver(new AndroidComposeView$snapshotObserver$1(androidComposeView));
        androidComposeView.measureAndLayoutDelegate = new MeasureAndLayoutDelegate(androidComposeView.getRoot());
        androidComposeView.globalPosition = IntOffset.m9164constructorimpl(9223372034707292159L);
        androidComposeView.tmpPositionArray = new int[]{0, 0};
        float[] fArrM6476constructorimpl$default = Matrix.m6476constructorimpl$default(null, 1, null);
        androidComposeView.tmpMatrix = fArrM6476constructorimpl$default;
        androidComposeView.viewToWindowMatrix = Matrix.m6476constructorimpl$default(null, 1, null);
        androidComposeView.windowToViewMatrix = Matrix.m6476constructorimpl$default(null, 1, null);
        androidComposeView.lastMatrixRecalculationAnimationTime = -1L;
        androidComposeView.windowPosition = companion.m6001getInfiniteF1C5BW0();
        androidComposeView.isRenderNodeCompatible = true;
        androidComposeView._viewTreeOwners$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        androidComposeView.viewTreeOwners$delegate = SnapshotStateKt.derivedStateOf(new AndroidComposeView$viewTreeOwners$2(androidComposeView));
        androidComposeView.textInputSessionMutex = SessionMutex.m5669constructorimpl();
        androidComposeView.fontLoader = AndroidComposeUiFlags.isSharedFontEnabled ? composeViewContext.getFontLoader$ui() : new AndroidFontResourceLoader(context);
        androidComposeView.fontFamilyResolver$delegate = AndroidComposeUiFlags.isSharedFontEnabled ? composeViewContext.getFontFamilyResolver$ui() : SnapshotStateKt.mutableStateOf(FontFamilyResolver_androidKt.createFontFamilyResolver(context), SnapshotStateKt.referentialEqualityPolicy());
        LayoutDirection layoutDirection = FocusInteropUtils_androidKt.toLayoutDirection(context.getResources().getConfiguration().getLayoutDirection());
        androidComposeView.layoutDirection$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(layoutDirection == null ? LayoutDirection.Ltr : layoutDirection, null, 2, null);
        androidComposeView.hapticFeedBack = AndroidComposeUiFlags.isSharedHapticsEnabled ? composeViewContext.getHapticFeedback$ui() : new PlatformHapticFeedback(androidComposeView);
        androidComposeView._inputModeManager = new InputModeManagerImpl(androidComposeView.isInTouchMode() ? InputMode.Companion.m7043getTouchaOaMEAU() : InputMode.Companion.m7042getKeyboardaOaMEAU(), new InputModeChangeRequester() { // from class: androidx.compose.ui.platform.AndroidComposeView$_inputModeManager$1
            @Override // androidx.compose.ui.input.InputModeChangeRequester
            /* JADX INFO: renamed from: request-iuPiT84 */
            public final boolean mo7044requestiuPiT84(int i2) {
                InputMode.Companion companion2 = InputMode.Companion;
                if (InputMode.m7038equalsimpl0(i2, companion2.m7043getTouchaOaMEAU())) {
                    return this.this$0.isInTouchMode();
                }
                if (!InputMode.m7038equalsimpl0(i2, companion2.m7042getKeyboardaOaMEAU())) {
                    return false;
                }
                if (this.this$0.isInTouchMode()) {
                    return this.this$0.requestFocusFromTouch();
                }
                return true;
            }
        }, objArr5 == true ? 1 : 0);
        androidComposeView.modifierLocalManager = new ModifierLocalManager(androidComposeView);
        androidComposeView.textToolbar = new AndroidTextToolbar(androidComposeView);
        androidComposeView.layerCache = new WeakCache<>();
        androidComposeView.endApplyChangesListeners = new MutableObjectList<>(objArr8 == true ? 1 : 0, i, objArr4 == true ? 1 : 0);
        androidComposeView.resendMotionEventRunnable = new Runnable() { // from class: androidx.compose.ui.platform.AndroidComposeView$resendMotionEventRunnable$1
            @Override // java.lang.Runnable
            public void run() {
                int actionMasked;
                this.this$0.removeCallbacks(this);
                MotionEvent motionEvent = this.this$0.previousMotionEvent;
                if (motionEvent == null || (actionMasked = motionEvent.getActionMasked()) == 10 || actionMasked == 1) {
                    return;
                }
                int i2 = 7;
                if (actionMasked != 7 && actionMasked != 9) {
                    i2 = 2;
                }
                int i3 = i2;
                AndroidComposeView androidComposeView2 = this.this$0;
                androidComposeView2.sendSimulatedEvent(motionEvent, i3, androidComposeView2.relayoutTime, false);
            }
        };
        androidComposeView.sendHoverExitEvent = new Runnable() { // from class: mh
            @Override // java.lang.Runnable
            public final void run() {
                AndroidComposeView.sendHoverExitEvent$lambda$0(this.b);
            }
        };
        androidComposeView.indirectPointerNavigationGestureDetector = new IndirectPointerNavigationGestureDetector(context, new AndroidComposeView$indirectPointerNavigationGestureDetector$1(androidComposeView));
        androidComposeView.resendMotionEventOnLayout = new AndroidComposeView$resendMotionEventOnLayout$1(androidComposeView);
        int i2 = Build.VERSION.SDK_INT;
        androidComposeView.matrixToWindow = i2 < 29 ? new CalculateMatrixToWindowApi21(fArrM6476constructorimpl$default, objArr3 == true ? 1 : 0) : new CalculateMatrixToWindowApi29();
        androidComposeView.addOnAttachStateChangeListener(androidComposeView.contentCaptureManager);
        androidComposeView.setWillNotDraw(false);
        androidComposeView.setFocusable(true);
        AndroidComposeViewVerificationHelperMethodsO.INSTANCE.focusable(androidComposeView, 1, false);
        androidComposeView.setFocusableInTouchMode(true);
        androidComposeView.setClipChildren(false);
        ViewCompat.setAccessibilityDelegate(androidComposeView, androidComposeViewAccessibilityDelegateCompat);
        nl3<ViewRootForTest, j59> onViewCreatedCallback = ViewRootForTest.Companion.getOnViewCreatedCallback();
        if (onViewCreatedCallback != null) {
            onViewCreatedCallback.invoke(androidComposeView);
        }
        androidComposeView.setOnDragListener(androidComposeView.getDragAndDropManager());
        androidComposeView.getRoot().attach$ui(androidComposeView);
        if (i2 >= 29) {
            AndroidComposeViewForceDarkModeQ.INSTANCE.disallowForceDark(androidComposeView);
        }
        if (androidComposeView.isArrEnabled$ui()) {
            View view = new View(context);
            view.setLayoutParams(new ViewGroup.LayoutParams(1, 1));
            view.setTag(R.id.hide_in_inspector_tag, Boolean.TRUE);
            androidComposeView.frameRateCategoryView = view;
            androidComposeView.addView(view);
        }
        androidComposeView.scrollCapture = i2 >= 31 ? new ScrollCapture() : null;
        androidComposeView.pointerIconService = new PointerIconService() { // from class: androidx.compose.ui.platform.AndroidComposeView$pointerIconService$1
            private PointerIcon currentMouseCursorIcon = PointerIcon.Companion.getDefault();
            private PointerIcon currentStylusHoverIcon;

            @Override // androidx.compose.ui.input.pointer.PointerIconService
            public PointerIcon getIcon() {
                return this.currentMouseCursorIcon;
            }

            @Override // androidx.compose.ui.input.pointer.PointerIconService
            public PointerIcon getStylusHoverIcon() {
                return this.currentStylusHoverIcon;
            }

            @Override // androidx.compose.ui.input.pointer.PointerIconService
            public void setIcon(PointerIcon pointerIcon) {
                if (pointerIcon == null) {
                    pointerIcon = PointerIcon.Companion.getDefault();
                }
                this.currentMouseCursorIcon = pointerIcon;
                AndroidComposeViewVerificationHelperMethodsN.INSTANCE.setPointerIcon(this.this$0, pointerIcon);
            }

            @Override // androidx.compose.ui.input.pointer.PointerIconService
            public void setStylusHoverIcon(PointerIcon pointerIcon) {
                this.currentStylusHoverIcon = pointerIcon;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addExtraDataToAccessibilityNodeInfoHelper(int i, AccessibilityNodeInfo accessibilityNodeInfo, String str) {
        int orDefault;
        boolean zE = aa4.e(str, this.composeAccessibilityDelegate.getExtraDataTestTraversalBeforeVal$ui());
        AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = this.composeAccessibilityDelegate;
        if (zE) {
            int orDefault2 = androidComposeViewAccessibilityDelegateCompat.getIdToBeforeMap$ui().getOrDefault(i, -1);
            if (orDefault2 != -1) {
                accessibilityNodeInfo.getExtras().putInt(str, orDefault2);
                return;
            }
            return;
        }
        if (!aa4.e(str, androidComposeViewAccessibilityDelegateCompat.getExtraDataTestTraversalAfterVal$ui()) || (orDefault = this.composeAccessibilityDelegate.getIdToAfterMap$ui().getOrDefault(i, -1)) == -1) {
            return;
        }
        accessibilityNodeInfo.getExtras().putInt(str, orDefault);
    }

    private final boolean autofillSupported() {
        return true;
    }

    private final boolean childSizeCanAffectParentSize(LayoutNode layoutNode) {
        if (this.wasMeasuredWithMultipleConstraints) {
            return true;
        }
        LayoutNode parent$ui = layoutNode.getParent$ui();
        return (parent$ui == null || parent$ui.getHasFixedInnerContentConstraints$ui()) ? false : true;
    }

    private final void clearChildInvalidObservations(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof AndroidComposeView) {
                ((AndroidComposeView) childAt).onEndApplyChanges();
            } else if (childAt instanceof ViewGroup) {
                clearChildInvalidObservations((ViewGroup) childAt);
            }
        }
    }

    /* JADX INFO: renamed from: component1-VKZWuLQ, reason: not valid java name */
    private final int m8126component1VKZWuLQ(long j) {
        return (int) (j >>> 32);
    }

    /* JADX INFO: renamed from: component2-VKZWuLQ, reason: not valid java name */
    private final int m8127component2VKZWuLQ(long j) {
        return (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
    }

    /* JADX INFO: renamed from: convertMeasureSpec-I7RO_PI, reason: not valid java name */
    private final long m8128convertMeasureSpecI7RO_PI(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == Integer.MIN_VALUE) {
            return m8135packZIaKswc(0, size);
        }
        if (mode == 0) {
            return m8135packZIaKswc(0, Integer.MAX_VALUE);
        }
        if (mode == 1073741824) {
            return m8135packZIaKswc(size, size);
        }
        ud.g();
        return 0L;
    }

    private final void dispatchConfigurationChangeIfNeeded() {
        int i = Build.VERSION.SDK_INT;
        if (32 > i || i >= 34) {
            return;
        }
        updateConfiguration(getResources().getConfiguration());
    }

    private final void dispatchPendingInteropLayoutCallbacks() {
        if (this.isPendingInteropViewLayoutChangeDispatch) {
            getViewTreeObserver().dispatchOnGlobalLayout();
            this.isPendingInteropViewLayoutChangeDispatch = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View findNextNonChildView(int i) {
        FocusFinder focusFinder = FocusFinder.getInstance();
        View viewFindNextFocus = this;
        while (viewFindNextFocus != null) {
            View rootView = getRootView();
            rootView.getClass();
            viewFindNextFocus = focusFinder.findNextFocus((ViewGroup) rootView, viewFindNextFocus, i);
            if (viewFindNextFocus != null && !AndroidComposeView_androidKt.containsDescendant(this, viewFindNextFocus)) {
                return viewFindNextFocus;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: findNextViewInEmbeddedView-3ESFkO8, reason: not valid java name */
    private final View m8129findNextViewInEmbeddedView3ESFkO8(int i) {
        FocusTargetNode activeFocusTargetNode = getFocusOwner().getActiveFocusTargetNode();
        if (activeFocusTargetNode == null) {
            ah.f("findNextViewInEmbeddedView called when owner does not have anything focused.");
            return null;
        }
        Integer numM5874toAndroidFocusDirection3ESFkO8 = FocusInteropUtils_androidKt.m5874toAndroidFocusDirection3ESFkO8(i);
        if (numM5874toAndroidFocusDirection3ESFkO8 == null) {
            throw ag.e("Invalid focus direction");
        }
        int iIntValue = numM5874toAndroidFocusDirection3ESFkO8.intValue();
        View interopView = DelegatableNodeKt.requireLayoutNode(activeFocusTargetNode).getInteropView();
        View viewFindFocus = findFocus();
        FocusFinder focusFinder = FocusFinder.getInstance();
        View rootView = getRootView();
        rootView.getClass();
        View viewFindNextFocus = focusFinder.findNextFocus((ViewGroup) rootView, viewFindFocus, iIntValue);
        if (viewFindNextFocus == null || interopView == null || !AndroidComposeView_androidKt.containsDescendant(interopView, viewFindNextFocus)) {
            return null;
        }
        return viewFindNextFocus;
    }

    private final View findViewByAccessibilityIdRootedAtCurrentView(int i, View view) throws NoSuchMethodException {
        if (Build.VERSION.SDK_INT < 29) {
            Method declaredMethod = View.class.getDeclaredMethod("getAccessibilityViewId", null);
            declaredMethod.setAccessible(true);
            if (aa4.e(declaredMethod.invoke(view, null), Integer.valueOf(i))) {
                return view;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View viewFindViewByAccessibilityIdRootedAtCurrentView = findViewByAccessibilityIdRootedAtCurrentView(i, viewGroup.getChildAt(i2));
                    if (viewFindViewByAccessibilityIdRootedAtCurrentView != null) {
                        return viewFindViewByAccessibilityIdRootedAtCurrentView;
                    }
                }
            }
        }
        return null;
    }

    private final boolean getDerivedIsAttached() {
        return ((Boolean) this.derivedIsAttached$delegate.getValue()).booleanValue();
    }

    @ul2
    public static /* synthetic */ void getFontLoader$annotations() {
    }

    private final int getFontWeightAdjustmentCompat(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 31) {
            return configuration.fontWeightAdjustment;
        }
        return 0;
    }

    public static /* synthetic */ void getLastMatrixRecalculationAnimationTime$ui$annotations() {
    }

    private final TextInputServiceAndroid getLegacyTextInputServiceAndroid() {
        TextInputServiceAndroid textInputServiceAndroid = this._legacyTextInputServiceAndroid;
        if (textInputServiceAndroid != null) {
            return textInputServiceAndroid;
        }
        TextInputServiceAndroid textInputServiceAndroid2 = new TextInputServiceAndroid(getView(), this);
        this._legacyTextInputServiceAndroid = textInputServiceAndroid2;
        return textInputServiceAndroid2;
    }

    /* JADX INFO: renamed from: getPrimaryDirectionalMotionAxisOverride-dqNNBbU$ui$annotations, reason: not valid java name */
    public static /* synthetic */ void m8130getPrimaryDirectionalMotionAxisOverridedqNNBbU$ui$annotations() {
    }

    public static /* synthetic */ void getRoot$annotations() {
    }

    public static /* synthetic */ void getShowLayoutBounds$annotations() {
    }

    @ul2
    public static /* synthetic */ void getTextInputService$annotations() {
    }

    public static /* synthetic */ void getWindowInfo$annotations() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final ComposeViewContext get_composeViewContext() {
        return (ComposeViewContext) this._composeViewContext$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final ViewTreeOwners get_viewTreeOwners() {
        return (ViewTreeOwners) this._viewTreeOwners$delegate.getValue();
    }

    private final boolean handleIndirectPointerEvent(IndirectPointerEvent indirectPointerEvent) {
        boolean zDispatchIndirectPointerEvent = getFocusOwner().dispatchIndirectPointerEvent(indirectPointerEvent);
        if (!ComposeUiFlags.isIndirectPointerNavigationGestureDetectorEnabled) {
            return zDispatchIndirectPointerEvent;
        }
        this.indirectPointerNavigationGestureDetector.onIndirectPointerEvent(indirectPointerEvent, zDispatchIndirectPointerEvent);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0043  */
    /* JADX INFO: renamed from: handleMotionEvent-8iAsVTc, reason: not valid java name */
    private final int m8131handleMotionEvent8iAsVTc(MotionEvent motionEvent) {
        AndroidComposeView androidComposeView;
        int i;
        removeCallbacks(this.resendMotionEventRunnable);
        try {
            recalculateWindowPosition(motionEvent);
            boolean z = true;
            this.forceUseMatrixCache = true;
            measureAndLayout(false);
            Trace.beginSection("AndroidOwner:onTouch");
            try {
                int actionMasked = motionEvent.getActionMasked();
                MotionEvent motionEvent2 = this.previousMotionEvent;
                boolean z2 = motionEvent2 != null && motionEvent2.getToolType(0) == 3;
                if (motionEvent2 != null) {
                    try {
                        if (hasChangedDevices(motionEvent, motionEvent2)) {
                            if (isDevicePressEvent(motionEvent2)) {
                                this.pointerInputEventProcessor.processCancel();
                            } else if (motionEvent2.getActionMasked() != 10 && z2) {
                                sendSimulatedEvent$default(this, motionEvent2, 10, motionEvent2.getEventTime(), false, 8, null);
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        Trace.endSection();
                        throw th;
                    }
                }
                boolean z3 = motionEvent.getToolType(0) == 3;
                if (z2 || !z3 || actionMasked == 3 || actionMasked == 9 || !isInBounds(motionEvent)) {
                    androidComposeView = this;
                    i = 9;
                } else {
                    i = 9;
                    androidComposeView = this;
                    sendSimulatedEvent$default(androidComposeView, motionEvent, 9, motionEvent.getEventTime(), false, 8, null);
                }
                if (motionEvent2 != 0) {
                    motionEvent2.recycle();
                }
                MotionEvent motionEvent3 = androidComposeView.previousMotionEvent;
                if (motionEvent3 != null && motionEvent3.getAction() == 10) {
                    MotionEvent motionEvent4 = androidComposeView.previousMotionEvent;
                    int pointerId = motionEvent4 != null ? motionEvent4.getPointerId(0) : -1;
                    if (motionEvent.getAction() == i && motionEvent.getHistorySize() == 0) {
                        if (pointerId >= 0) {
                            androidComposeView.motionEventAdapter.endStream(pointerId);
                        }
                    } else if (motionEvent.getAction() == 0 && motionEvent.getHistorySize() == 0) {
                        MotionEvent motionEvent5 = androidComposeView.previousMotionEvent;
                        float x = motionEvent5 != null ? motionEvent5.getX() : Float.NaN;
                        MotionEvent motionEvent6 = androidComposeView.previousMotionEvent;
                        boolean z4 = (x == motionEvent.getX() && (motionEvent6 != null ? motionEvent6.getY() : Float.NaN) == motionEvent.getY()) ? false : true;
                        MotionEvent motionEvent7 = androidComposeView.previousMotionEvent;
                        if ((motionEvent7 != null ? motionEvent7.getEventTime() : -1L) == motionEvent.getEventTime()) {
                            z = false;
                        }
                        if (z4 || z) {
                            if (pointerId >= 0) {
                                androidComposeView.motionEventAdapter.endStream(pointerId);
                            }
                            androidComposeView.pointerInputEventProcessor.clearPreviouslyHitModifierNodes();
                        }
                    }
                }
                androidComposeView.previousMotionEvent = MotionEvent.obtainNoHistory(motionEvent);
                int iM8136sendMotionEvent8iAsVTc = m8136sendMotionEvent8iAsVTc(motionEvent);
                Trace.endSection();
                androidComposeView.forceUseMatrixCache = false;
                return iM8136sendMotionEvent8iAsVTc;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            this.forceUseMatrixCache = false;
            throw th3;
        }
    }

    private final boolean handleRotaryEvent(MotionEvent motionEvent) {
        android.view.ViewConfiguration viewConfiguration = android.view.ViewConfiguration.get(getContext());
        float f = -motionEvent.getAxisValue(26);
        return getFocusOwner().dispatchRotaryEvent(new RotaryScrollEvent(ViewConfigurationCompat.getScaledVerticalScrollFactor(viewConfiguration, getContext()) * f, ViewConfigurationCompat.getScaledHorizontalScrollFactor(viewConfiguration, getContext()) * f, motionEvent.getEventTime(), motionEvent.getDeviceId()), new C06451(motionEvent));
    }

    private final boolean hasChangedDevices(MotionEvent motionEvent, MotionEvent motionEvent2) {
        return (motionEvent2.getSource() == motionEvent.getSource() && motionEvent2.getToolType(0) == motionEvent.getToolType(0)) ? false : true;
    }

    private final RetainedValuesStore installLocalRetainedValuesStore(LifecycleOwner lifecycleOwner, ViewModelStoreOwner viewModelStoreOwner) {
        LifecycleRetainedValuesStoreOwner.FrameEndScheduler frameEndScheduler = this.frameEndScheduler;
        if (lifecycleOwner == null || viewModelStoreOwner == null || frameEndScheduler == null) {
            return null;
        }
        LifecycleRetainedValuesStoreOwner lifecycleRetainedValuesStoreOwner = (LifecycleRetainedValuesStoreOwner) ViewModelProvider.Companion.create$default(ViewModelProvider.Companion, viewModelStoreOwner.getViewModelStore(), new ViewModelProvider.NewInstanceFactory(), (CreationExtras) null, 4, (Object) null).get(x07.a(LifecycleRetainedValuesStoreOwner.class));
        Object parent = getParent();
        parent.getClass();
        LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry orCreateRetainedValuesStoreEntry = lifecycleRetainedValuesStoreOwner.getOrCreateRetainedValuesStoreEntry(((View) parent).getId());
        this.lifecycleRetainedValuesStoreOwnerEntry = orCreateRetainedValuesStoreEntry;
        return orCreateRetainedValuesStoreEntry.getRetainedValuesStore();
    }

    private final void invalidateLayers(LayoutNode layoutNode) {
        layoutNode.invalidateLayers$ui();
        MutableVector<LayoutNode> mutableVector = layoutNode.get_children$ui();
        LayoutNode[] layoutNodeArr = mutableVector.content;
        int size = mutableVector.getSize();
        for (int i = 0; i < size; i++) {
            invalidateLayers(layoutNodeArr[i]);
        }
    }

    private final void invalidateLayoutNodeMeasurement(LayoutNode layoutNode) {
        MeasureAndLayoutDelegate.requestRemeasure$default(this.measureAndLayoutDelegate, layoutNode, false, 2, null);
        MutableVector<LayoutNode> mutableVector = layoutNode.get_children$ui();
        LayoutNode[] layoutNodeArr = mutableVector.content;
        int size = mutableVector.getSize();
        for (int i = 0; i < size; i++) {
            invalidateLayoutNodeMeasurement(layoutNodeArr[i]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final boolean isAttached() {
        return ((Boolean) this.isAttached$delegate.getValue()).booleanValue();
    }

    private final boolean isBadMotionEvent(MotionEvent motionEvent) {
        boolean z = (Float.floatToRawIntBits(motionEvent.getX()) & Integer.MAX_VALUE) >= 2139095040 || (Float.floatToRawIntBits(motionEvent.getY()) & Integer.MAX_VALUE) >= 2139095040 || (Float.floatToRawIntBits(motionEvent.getRawX()) & Integer.MAX_VALUE) >= 2139095040 || (Float.floatToRawIntBits(motionEvent.getRawY()) & Integer.MAX_VALUE) >= 2139095040;
        if (!z) {
            int pointerCount = motionEvent.getPointerCount();
            for (int i = 1; i < pointerCount; i++) {
                z = (Float.floatToRawIntBits(motionEvent.getX(i)) & Integer.MAX_VALUE) >= 2139095040 || (Float.floatToRawIntBits(motionEvent.getY(i)) & Integer.MAX_VALUE) >= 2139095040 || (Build.VERSION.SDK_INT >= 29 && !MotionEventVerifierApi29.INSTANCE.isValidMotionEvent(motionEvent, i));
                if (z) {
                    break;
                }
            }
        }
        return z;
    }

    private final boolean isDevicePressEvent(MotionEvent motionEvent) {
        int actionMasked;
        return motionEvent.getButtonState() != 0 || (actionMasked = motionEvent.getActionMasked()) == 0 || actionMasked == 2 || actionMasked == 6;
    }

    private final boolean isInBounds(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        return 0.0f <= x && x <= ((float) getWidth()) && 0.0f <= y && y <= ((float) getHeight());
    }

    private final boolean isPositionChanged(MotionEvent motionEvent) {
        MotionEvent motionEvent2;
        return (motionEvent.getPointerCount() == 1 && (motionEvent2 = this.previousMotionEvent) != null && motionEvent2.getPointerCount() == motionEvent.getPointerCount() && motionEvent.getRawX() == motionEvent2.getRawX() && motionEvent.getRawY() == motionEvent2.getRawY()) ? false : true;
    }

    /* JADX INFO: renamed from: moveFocusInChildrenBypassUnfocusableComposeView-3ESFkO8, reason: not valid java name */
    private final boolean m8132moveFocusInChildrenBypassUnfocusableComposeView3ESFkO8(int i) {
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.m5862equalsimpl0(i, companion.m5867getEnterdhqQ8s()) || FocusDirection.m5862equalsimpl0(i, companion.m5868getExitdhqQ8s())) {
            return false;
        }
        Integer numM5874toAndroidFocusDirection3ESFkO8 = FocusInteropUtils_androidKt.m5874toAndroidFocusDirection3ESFkO8(i);
        if (numM5874toAndroidFocusDirection3ESFkO8 == null) {
            throw ag.e("Invalid focus direction");
        }
        int iIntValue = numM5874toAndroidFocusDirection3ESFkO8.intValue();
        View viewM8129findNextViewInEmbeddedView3ESFkO8 = m8129findNextViewInEmbeddedView3ESFkO8(i);
        if (viewM8129findNextViewInEmbeddedView3ESFkO8 != null) {
            return FocusInteropUtils_androidKt.requestInteropFocus(viewM8129findNextViewInEmbeddedView3ESFkO8, Integer.valueOf(iIntValue), null);
        }
        return false;
    }

    /* JADX INFO: renamed from: moveFocusInChildrenCurrent-3ESFkO8, reason: not valid java name */
    private final boolean m8133moveFocusInChildrenCurrent3ESFkO8(int i) {
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.m5862equalsimpl0(i, companion.m5867getEnterdhqQ8s()) || FocusDirection.m5862equalsimpl0(i, companion.m5868getExitdhqQ8s())) {
            return false;
        }
        Integer numM5874toAndroidFocusDirection3ESFkO8 = FocusInteropUtils_androidKt.m5874toAndroidFocusDirection3ESFkO8(i);
        if (numM5874toAndroidFocusDirection3ESFkO8 == null) {
            throw ag.e("Invalid focus direction");
        }
        int iIntValue = numM5874toAndroidFocusDirection3ESFkO8.intValue();
        Rect embeddedViewFocusRect = getEmbeddedViewFocusRect();
        android.graphics.Rect androidRect = embeddedViewFocusRect != null ? RectHelper_androidKt.toAndroidRect(embeddedViewFocusRect) : null;
        FocusFinder focusFinder = FocusFinder.getInstance();
        View viewFindNextFocus = androidRect == null ? focusFinder.findNextFocus(this, findFocus(), iIntValue) : focusFinder.findNextFocusFromRect(this, androidRect, iIntValue);
        if (viewFindNextFocus != null) {
            return FocusInteropUtils_androidKt.requestInteropFocus(viewFindNextFocus, Integer.valueOf(iIntValue), androidRect);
        }
        return false;
    }

    /* JADX INFO: renamed from: moveFocusInChildrenViewFocusFix-3ESFkO8, reason: not valid java name */
    private final boolean m8134moveFocusInChildrenViewFocusFix3ESFkO8(int i) {
        AndroidViewsHandler androidViewsHandler;
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.m5862equalsimpl0(i, companion.m5867getEnterdhqQ8s()) || FocusDirection.m5862equalsimpl0(i, companion.m5868getExitdhqQ8s()) || !hasFocus() || (androidViewsHandler = this._androidViewsHandler) == null) {
            return false;
        }
        Integer numM5874toAndroidFocusDirection3ESFkO8 = FocusInteropUtils_androidKt.m5874toAndroidFocusDirection3ESFkO8(i);
        if (numM5874toAndroidFocusDirection3ESFkO8 == null) {
            throw ag.e("Invalid focus direction");
        }
        int iIntValue = numM5874toAndroidFocusDirection3ESFkO8.intValue();
        View rootView = getRootView();
        rootView.getClass();
        ViewGroup viewGroup = (ViewGroup) rootView;
        View viewFindFocus = viewGroup.findFocus();
        if (viewFindFocus == null) {
            ah.f("view hasFocus but root can't find it");
            return false;
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(viewGroup, viewFindFocus, iIntValue);
        android.graphics.Rect androidRect = null;
        if (!FocusOwnerImplKt.m5889is1dFocusSearch3ESFkO8(i) || !androidViewsHandler.hasFocus()) {
            Rect embeddedViewFocusRect = getEmbeddedViewFocusRect();
            androidRect = embeddedViewFocusRect != null ? RectHelper_androidKt.toAndroidRect(embeddedViewFocusRect) : null;
            if (viewFindNextFocus != null && androidRect != null) {
                viewGroup.offsetDescendantRectToMyCoords(this, androidRect);
                viewGroup.offsetRectIntoDescendantCoords(viewFindNextFocus, androidRect);
            }
        }
        if (viewFindNextFocus == null || viewFindNextFocus == viewFindFocus) {
            return false;
        }
        View focusedChild = androidViewsHandler.getFocusedChild();
        ViewParent parent = viewFindNextFocus.getParent();
        while (parent != null && parent != focusedChild) {
            parent = parent.getParent();
        }
        if (parent == null) {
            return false;
        }
        return FocusInteropUtils_androidKt.requestInteropFocus(viewFindNextFocus, Integer.valueOf(iIntValue), androidRect);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void outOfFrameRunnable$lambda$0(AndroidComposeView androidComposeView) {
        Trace.beginSection("AndroidOwner:outOfFrameExecutor");
        while (!androidComposeView.outOfFrameQueue.isEmpty()) {
            try {
                androidComposeView.outOfFrameQueue.removeLast().invoke();
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        }
        j59 j59Var = j59.a;
        Trace.endSection();
    }

    /* JADX INFO: renamed from: pack-ZIaKswc, reason: not valid java name */
    private final long m8135packZIaKswc(int i, int i2) {
        return (((long) i) << 32) | ((long) i2);
    }

    private final void recalculateWindowPosition() {
        if (this.forceUseMatrixCache) {
            return;
        }
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (jCurrentAnimationTimeMillis != this.lastMatrixRecalculationAnimationTime) {
            this.lastMatrixRecalculationAnimationTime = jCurrentAnimationTimeMillis;
            recalculateWindowViewTransforms();
            ViewParent parent = getParent();
            View view = this;
            while (parent instanceof ViewGroup) {
                view = (View) parent;
                parent = ((ViewGroup) view).getParent();
            }
            view.getLocationOnScreen(this.tmpPositionArray);
            int[] iArr = this.tmpPositionArray;
            float f = iArr[0];
            float f2 = iArr[1];
            view.getLocationInWindow(iArr);
            int[] iArr2 = this.tmpPositionArray;
            this.windowPosition = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f - iArr2[0])) << 32) | (((long) Float.floatToRawIntBits(f2 - iArr2[1])) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
    }

    private final void recalculateWindowViewTransforms() {
        this.matrixToWindow.mo8162calculateMatrixToWindowEL8BTi8(this, this.viewToWindowMatrix);
        InvertMatrixKt.m8201invertToJiSxe2E(this.viewToWindowMatrix, this.windowToViewMatrix);
    }

    private final void scheduleMeasureAndLayout(LayoutNode layoutNode) {
        if (isLayoutRequested() || !isAttachedToWindow()) {
            return;
        }
        if (layoutNode != null) {
            while (layoutNode != null && layoutNode.getMeasuredByParent$ui() == LayoutNode.UsageByParent.InMeasureBlock && childSizeCanAffectParentSize(layoutNode)) {
                layoutNode = layoutNode.getParent$ui();
            }
            if (layoutNode == getRoot()) {
                requestLayout();
                return;
            }
        }
        if (getWidth() == 0 || getHeight() == 0) {
            requestLayout();
        } else {
            invalidate();
        }
    }

    public static /* synthetic */ void scheduleMeasureAndLayout$default(AndroidComposeView androidComposeView, LayoutNode layoutNode, int i, Object obj) {
        if ((i & 1) != 0) {
            layoutNode = null;
        }
        androidComposeView.scheduleMeasureAndLayout(layoutNode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sendHoverExitEvent$lambda$0(AndroidComposeView androidComposeView) {
        androidComposeView.hoverExitReceived = false;
        MotionEvent motionEvent = androidComposeView.previousMotionEvent;
        motionEvent.getClass();
        if (motionEvent.getActionMasked() == 10) {
            androidComposeView.m8136sendMotionEvent8iAsVTc(motionEvent);
        } else {
            ah.f("The ACTION_HOVER_EXIT event was not cleared.");
        }
    }

    /* JADX INFO: renamed from: sendMotionEvent-8iAsVTc, reason: not valid java name */
    private final int m8136sendMotionEvent8iAsVTc(MotionEvent motionEvent) {
        PointerInputEventData pointerInputEventData;
        if (this.keyboardModifiersRequireUpdate) {
            this.keyboardModifiersRequireUpdate = false;
            if (AndroidComposeUiFlags.isSharedWindowInfoEnabled) {
                getComposeViewContext().getWindowInfo$ui().m8210setKeyboardModifiers5xRPYO0(PointerKeyboardModifiers.m7633constructorimpl(motionEvent.getMetaState()));
            } else {
                this._windowInfo.m8210setKeyboardModifiers5xRPYO0(PointerKeyboardModifiers.m7633constructorimpl(motionEvent.getMetaState()));
            }
        }
        PointerInputEvent pointerInputEventConvertToPointerInputEvent$ui = this.motionEventAdapter.convertToPointerInputEvent$ui(motionEvent, this);
        int actionMasked = motionEvent.getActionMasked();
        if (pointerInputEventConvertToPointerInputEvent$ui == null) {
            this.pointerInputEventProcessor.processCancel();
            return PointerInputEventProcessorKt.ProcessResult(false, false, false);
        }
        List<PointerInputEventData> pointers = pointerInputEventConvertToPointerInputEvent$ui.getPointers();
        int size = pointers.size() - 1;
        if (size < 0) {
            pointerInputEventData = null;
            break;
        }
        while (true) {
            int i = size - 1;
            pointerInputEventData = pointers.get(size);
            if (pointerInputEventData.getDown() && (actionMasked == 0 || actionMasked == 5)) {
                break;
            }
            if (i < 0) {
                pointerInputEventData = null;
                break;
            }
            size = i;
        }
        PointerInputEventData pointerInputEventData2 = pointerInputEventData;
        if (pointerInputEventData2 != null) {
            this.lastDownPointerPosition = pointerInputEventData2.m7587getPositionF1C5BW0();
        }
        int iM7592processBIzXfog = this.pointerInputEventProcessor.m7592processBIzXfog(pointerInputEventConvertToPointerInputEvent$ui, this, isInBounds(motionEvent));
        pointerInputEventConvertToPointerInputEvent$ui.setMotionEvent(null);
        if ((actionMasked != 0 && actionMasked != 5) || (iM7592processBIzXfog & 1) != 0) {
            return iM7592processBIzXfog;
        }
        this.motionEventAdapter.endStream(motionEvent.getPointerId(motionEvent.getActionIndex()));
        return iM7592processBIzXfog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendSimulatedEvent(MotionEvent motionEvent, int i, long j, boolean z) {
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = -1;
        if (actionMasked != 1) {
            if (actionMasked == 6) {
                actionIndex = motionEvent.getActionIndex();
            }
        } else if (i != 9 && i != 10) {
            actionIndex = 0;
        }
        int pointerCount = motionEvent.getPointerCount() - (actionIndex >= 0 ? 1 : 0);
        if (pointerCount == 0) {
            return;
        }
        MotionEvent.PointerProperties[] pointerPropertiesArr = new MotionEvent.PointerProperties[pointerCount];
        for (int i2 = 0; i2 < pointerCount; i2++) {
            pointerPropertiesArr[i2] = new MotionEvent.PointerProperties();
        }
        MotionEvent.PointerCoords[] pointerCoordsArr = new MotionEvent.PointerCoords[pointerCount];
        for (int i3 = 0; i3 < pointerCount; i3++) {
            pointerCoordsArr[i3] = new MotionEvent.PointerCoords();
        }
        int i4 = 0;
        while (i4 < pointerCount) {
            int i5 = ((actionIndex < 0 || i4 < actionIndex) ? 0 : 1) + i4;
            motionEvent.getPointerProperties(i5, pointerPropertiesArr[i4]);
            MotionEvent.PointerCoords pointerCoords = pointerCoordsArr[i4];
            motionEvent.getPointerCoords(i5, pointerCoords);
            float f = pointerCoords.x;
            long jMo7651localToScreenMKHz9U = mo7651localToScreenMKHz9U(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(pointerCoords.y)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(f)) << 32)));
            pointerCoords.x = Float.intBitsToFloat((int) (jMo7651localToScreenMKHz9U >> 32));
            pointerCoords.y = Float.intBitsToFloat((int) (jMo7651localToScreenMKHz9U & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            i4++;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent.getDownTime() == motionEvent.getEventTime() ? j : motionEvent.getDownTime(), j, i, pointerCount, pointerPropertiesArr, pointerCoordsArr, motionEvent.getMetaState(), z ? 0 : motionEvent.getButtonState(), motionEvent.getXPrecision(), motionEvent.getYPrecision(), motionEvent.getDeviceId(), motionEvent.getEdgeFlags(), motionEvent.getSource(), motionEvent.getFlags());
        PointerInputEvent pointerInputEventConvertToPointerInputEvent$ui = this.motionEventAdapter.convertToPointerInputEvent$ui(motionEventObtain, this);
        pointerInputEventConvertToPointerInputEvent$ui.getClass();
        this.pointerInputEventProcessor.m7592processBIzXfog(pointerInputEventConvertToPointerInputEvent$ui, this, true);
        motionEventObtain.recycle();
    }

    public static /* synthetic */ void sendSimulatedEvent$default(AndroidComposeView androidComposeView, MotionEvent motionEvent, int i, long j, boolean z, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            z = true;
        }
        androidComposeView.sendSimulatedEvent(motionEvent, i, j, z);
    }

    private final void setAttached(boolean z) {
        this.isAttached$delegate.setValue(Boolean.valueOf(z));
    }

    private void setDensity(Density density) {
        this.density$delegate.setValue(density);
    }

    private void setFontFamilyResolver(FontFamily.Resolver resolver) {
        this.fontFamilyResolver$delegate.setValue(resolver);
    }

    private void setLayoutDirection(LayoutDirection layoutDirection) {
        this.layoutDirection$delegate.setValue(layoutDirection);
    }

    private final void set_composeViewContext(ComposeViewContext composeViewContext) {
        this._composeViewContext$delegate.setValue(composeViewContext);
    }

    private final void set_viewTreeOwners(ViewTreeOwners viewTreeOwners) {
        this._viewTreeOwners$delegate.setValue(viewTreeOwners);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: startDrag-12SF9DM, reason: not valid java name */
    public final boolean m8137startDrag12SF9DM(DragAndDropTransferData dragAndDropTransferData, long j, nl3<? super DrawScope, j59> nl3Var) {
        Resources resources = getContext().getResources();
        return AndroidComposeViewStartDragAndDropN.INSTANCE.startDragAndDrop(this, dragAndDropTransferData, new ComposeDragShadowBuilder(DensityKt.Density(resources.getDisplayMetrics().density, resources.getConfiguration().fontScale), j, nl3Var, null));
    }

    private final void updateConfiguration(Configuration configuration) {
        Configuration configuration2 = getConfiguration();
        if (aa4.e(configuration2, configuration)) {
            return;
        }
        setConfiguration(new Configuration(configuration));
        if (configuration2.fontScale != configuration.fontScale || configuration2.densityDpi != configuration.densityDpi) {
            setDensity(AndroidDensity_androidKt.Density(getContext()));
        }
        if (AndroidComposeView_androidKt.diffForWindowMetricsChanged(configuration2, configuration)) {
            updateWindowMetrics();
        }
        if (AndroidComposeUiFlags.isSharedFontEnabled || getFontWeightAdjustmentCompat(configuration2) == getFontWeightAdjustmentCompat(configuration)) {
            return;
        }
        setFontFamilyResolver(FontFamilyResolver_androidKt.createFontFamilyResolver(getContext()));
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void updatePositionCacheAndDispatch() {
        getLocationOnScreen(this.tmpPositionArray);
        long j = this.globalPosition;
        int iM9170getXimpl = IntOffset.m9170getXimpl(j);
        int iM9171getYimpl = IntOffset.m9171getYimpl(j);
        int[] iArr = this.tmpPositionArray;
        boolean z = false;
        z = false;
        z = false;
        int i = iArr[0];
        if (iM9170getXimpl != i || iM9171getYimpl != iArr[1] || this.lastMatrixRecalculationAnimationTime < 0) {
            this.globalPosition = IntOffset.m9164constructorimpl((((long) i) << 32) | (((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            if (iM9170getXimpl != Integer.MAX_VALUE && iM9171getYimpl != Integer.MAX_VALUE) {
                MutableVector<LayoutNode> mutableVector = getRoot().get_children$ui();
                LayoutNode[] layoutNodeArr = mutableVector.content;
                int size = mutableVector.getSize();
                for (int i2 = 0; i2 < size; i2++) {
                    layoutNodeArr[i2].getMeasurePassDelegate$ui().requestLayoutIfCoordinatesAreUsedAndNotifyChildren();
                }
                z = true;
            }
        }
        recalculateWindowPosition();
        View rootView = this._rootView;
        if (rootView == null) {
            rootView = getRootView();
            this._rootView = rootView;
        }
        getRectManager().m8285updateOffsetsgTq6Wqs(this.globalPosition, IntOffsetKt.m9187roundk4lQ0M(this.windowPosition), this.viewToWindowMatrix, rootView.getWidth(), rootView.getHeight());
        this.measureAndLayoutDelegate.dispatchOnPositionedCallbacks(z);
        getRectManager().dispatchCallbacks();
    }

    private final void updateWindowMetrics() {
        MutableState mutableState = this._windowInfo._containerSize;
        if (mutableState != null) {
            mutableState.setValue(AndroidWindowInfo_androidKt.calculateWindowSize(this));
        }
    }

    public final void addAndroidView(AndroidViewHolder androidViewHolder, final LayoutNode layoutNode) {
        getAndroidViewsHandler$ui().getHolderToLayoutNode().put(androidViewHolder, layoutNode);
        getAndroidViewsHandler$ui().addView(androidViewHolder);
        getAndroidViewsHandler$ui().getLayoutNodeToHolder().put(layoutNode, androidViewHolder);
        androidViewHolder.setImportantForAccessibility(1);
        ViewCompat.setAccessibilityDelegate(androidViewHolder, new AccessibilityDelegateCompat() { // from class: androidx.compose.ui.platform.AndroidComposeView.addAndroidView.1
            /* JADX WARN: Code duplicated, block: B:19:0x0054  */
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                if (AndroidComposeView.this.composeAccessibilityDelegate.isEnabled$ui()) {
                    accessibilityNodeInfoCompat.setVisibleToUser(false);
                }
                LayoutNode parent$ui = layoutNode.getParent$ui();
                while (true) {
                    if (parent$ui == null) {
                        parent$ui = null;
                        break;
                    } else if (parent$ui.getNodes$ui().m7979hasH91voCI$ui(NodeKind.m8019constructorimpl(8))) {
                        break;
                    } else {
                        parent$ui = parent$ui.getParent$ui();
                    }
                }
                Integer numValueOf = parent$ui != null ? Integer.valueOf(parent$ui.getSemanticsId()) : null;
                if (numValueOf != null) {
                    if (numValueOf.intValue() == AndroidComposeView.this.getSemanticsOwner().getUnmergedRootSemanticsNode().getId()) {
                        numValueOf = -1;
                    }
                } else {
                    numValueOf = -1;
                }
                accessibilityNodeInfoCompat.setParent(this, numValueOf.intValue());
                int semanticsId = layoutNode.getSemanticsId();
                int orDefault = AndroidComposeView.this.composeAccessibilityDelegate.getIdToBeforeMap$ui().getOrDefault(semanticsId, -1);
                if (orDefault != -1) {
                    View viewSemanticsIdToView = SemanticsUtils_androidKt.semanticsIdToView(AndroidComposeView.this.getAndroidViewsHandler$ui(), orDefault);
                    if (viewSemanticsIdToView != null) {
                        accessibilityNodeInfoCompat.setTraversalBefore(viewSemanticsIdToView);
                    } else {
                        accessibilityNodeInfoCompat.setTraversalBefore(this, orDefault);
                    }
                    AndroidComposeView.this.addExtraDataToAccessibilityNodeInfoHelper(semanticsId, accessibilityNodeInfoCompat.unwrap(), AndroidComposeView.this.composeAccessibilityDelegate.getExtraDataTestTraversalBeforeVal$ui());
                }
                int orDefault2 = AndroidComposeView.this.composeAccessibilityDelegate.getIdToAfterMap$ui().getOrDefault(semanticsId, -1);
                if (orDefault2 != -1) {
                    View viewSemanticsIdToView2 = SemanticsUtils_androidKt.semanticsIdToView(AndroidComposeView.this.getAndroidViewsHandler$ui(), orDefault2);
                    if (viewSemanticsIdToView2 != null) {
                        accessibilityNodeInfoCompat.setTraversalAfter(viewSemanticsIdToView2);
                    } else {
                        accessibilityNodeInfoCompat.setTraversalAfter(this, orDefault2);
                    }
                    AndroidComposeView.this.addExtraDataToAccessibilityNodeInfoHelper(semanticsId, accessibilityNodeInfoCompat.unwrap(), AndroidComposeView.this.composeAccessibilityDelegate.getExtraDataTestTraversalAfterVal$ui());
                }
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        if (!ComposeUiFlags.isBypassUnfocusableComposeViewEnabled) {
            super.addFocusables(arrayList, i, i2);
            return;
        }
        if (getFocusOwner().hasFocusableContent()) {
            super.addFocusables(arrayList, i, i2);
            if (getFocusOwner().hasNonInteropFocusableContent() || arrayList == null) {
                return;
            }
            arrayList.remove(this);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i) {
        view.getClass();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = generateDefaultLayoutParams();
        }
        addView(view, i, layoutParams);
    }

    @Override // android.view.View
    public void autofill(SparseArray<AutofillValue> sparseArray) {
        if (autofillSupported()) {
            AndroidAutofillManager androidAutofillManager = this._autofillManager;
            if (androidAutofillManager != null) {
                androidAutofillManager.performAutofill(sparseArray);
            }
            AndroidAutofill androidAutofill = this._autofill;
            if (androidAutofill != null) {
                AndroidAutofill_androidKt.performAutofill(androidAutofill, sparseArray);
            }
        }
    }

    public final Object boundsUpdatesAccessibilityEventLoop(e02<? super j59> e02Var) {
        Object objBoundsUpdatesEventLoop$ui = this.composeAccessibilityDelegate.boundsUpdatesEventLoop$ui(e02Var);
        return objBoundsUpdatesEventLoop$ui == a32.COROUTINE_SUSPENDED ? objBoundsUpdatesEventLoop$ui : j59.a;
    }

    public final Object boundsUpdatesContentCaptureEventLoop(e02<? super j59> e02Var) {
        Object objBoundsUpdatesEventLoop$ui = this.contentCaptureManager.boundsUpdatesEventLoop$ui(e02Var);
        return objBoundsUpdatesEventLoop$ui == a32.COROUTINE_SUSPENDED ? objBoundsUpdatesEventLoop$ui : j59.a;
    }

    @Override // androidx.compose.ui.node.Owner
    /* JADX INFO: renamed from: calculateLocalPosition-MK-Hz9U */
    public long mo8083calculateLocalPositionMKHz9U(long j) {
        recalculateWindowPosition();
        return Matrix.m6482mapMKHz9U(this.windowToViewMatrix, j);
    }

    @Override // androidx.compose.ui.node.Owner
    /* JADX INFO: renamed from: calculatePositionInWindow-MK-Hz9U */
    public long mo8084calculatePositionInWindowMKHz9U(long j) {
        recalculateWindowPosition();
        return Matrix.m6482mapMKHz9U(this.viewToWindowMatrix, j);
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        return this.composeAccessibilityDelegate.m8146canScroll0AR0LA0$ui(false, i, this.lastDownPointerPosition);
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i) {
        return this.composeAccessibilityDelegate.m8146canScroll0AR0LA0$ui(true, i, this.lastDownPointerPosition);
    }

    @Override // androidx.compose.ui.focus.PlatformFocusOwner
    public void clearOwnerFocus() {
        if (isFocused() || (!ComposeUiFlags.isViewFocusFixEnabled && hasFocus())) {
            clearFocus();
        } else if (hasFocus()) {
            View viewFindFocus = findFocus();
            if (viewFindFocus != null) {
                viewFindFocus.clearFocus();
            }
            clearFocus();
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public OwnedLayer createLayer(bm3<? super Canvas, ? super GraphicsLayer, j59> bm3Var, ll3<j59> ll3Var, GraphicsLayer graphicsLayer) {
        if (graphicsLayer != null) {
            return new GraphicsLayerOwnerLayer(graphicsLayer, null, this, bm3Var, ll3Var);
        }
        OwnedLayer ownedLayerPop = this.layerCache.pop();
        if (ownedLayerPop == null) {
            return new GraphicsLayerOwnerLayer(getGraphicsContext().createGraphicsLayer(), getGraphicsContext(), this, bm3Var, ll3Var);
        }
        ownedLayerPop.reuseLayer(bm3Var, ll3Var);
        return ownedLayerPop;
    }

    @Override // androidx.compose.ui.node.Owner
    public void decrementKeepScreenOnCount() {
        this.keepScreenOnCount--;
        getView().setKeepScreenOn(this.keepScreenOnCount > 0);
    }

    @Override // androidx.compose.ui.node.Owner
    public void decrementSensitiveComponentCount() {
        if (Build.VERSION.SDK_INT >= 35) {
            if (this.sensitiveComponentCount == 1) {
                AndroidComposeViewSensitiveContent35.INSTANCE.setContentSensitivity(getView(), false);
            }
            this.sensitiveComponentCount--;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(android.graphics.Canvas canvas) {
        if (!isAttachedToWindow()) {
            invalidateLayers(getRoot());
        }
        Owner.measureAndLayout$default(this, false, 1, null);
        Snapshot.Companion.notifyObjectsInitialized();
        this.isDrawingContent = true;
        try {
            Trace.beginSection("AndroidOwner:draw");
            try {
                CanvasHolder canvasHolder = this.canvasHolder;
                android.graphics.Canvas internalCanvas = canvasHolder.getAndroidCanvas().getInternalCanvas();
                canvasHolder.getAndroidCanvas().setInternalCanvas(canvas);
                getRoot().draw$ui(canvasHolder.getAndroidCanvas(), null);
                canvasHolder.getAndroidCanvas().setInternalCanvas(internalCanvas);
                if (this.dirtyLayers.isNotEmpty()) {
                    int size = this.dirtyLayers.getSize();
                    for (int i = 0; i < size; i++) {
                        this.dirtyLayers.get(i).updateDisplayList();
                    }
                }
                if (ViewLayer.Companion.getShouldUseDispatchDraw()) {
                    int iSave = canvas.save();
                    canvas.clipRect(0.0f, 0.0f, 0.0f, 0.0f);
                    super.dispatchDraw(canvas);
                    canvas.restoreToCount(iSave);
                }
                this.dirtyLayers.clear();
                this.isDrawingContent = false;
                j59 j59Var = j59.a;
                Trace.endSection();
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        } catch (Throwable th2) {
            RootForTest.UncaughtExceptionHandler uncaughtExceptionHandler = this.uncaughtExceptionHandler;
            if (uncaughtExceptionHandler == null) {
                throw th2;
            }
            uncaughtExceptionHandler.onUncaughtException(th2);
        }
        MutableObjectList<OwnedLayer> mutableObjectList = this.postponedDirtyLayers;
        if (mutableObjectList != null) {
            mutableObjectList.getClass();
            this.dirtyLayers.addAll(mutableObjectList);
            mutableObjectList.clear();
        }
        if (isArrEnabled$ui()) {
            Api35Impl.setRequestedFrameRate(this, this.currentFrameRate);
            View view = this.frameRateCategoryView;
            if (view != null) {
                Api35Impl.setRequestedFrameRate(view, this.currentFrameRateCategory);
                if (!Float.isNaN(this.currentFrameRateCategory)) {
                    view.invalidate();
                    drawChild(canvas, view, getDrawingTime());
                }
            }
            this.currentFrameRate = Float.NaN;
            this.currentFrameRateCategory = Float.NaN;
        }
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        if (this.hoverExitReceived) {
            removeCallbacks(this.sendHoverExitEvent);
            if (motionEvent.getActionMasked() == 8) {
                this.hoverExitReceived = false;
            } else {
                this.sendHoverExitEvent.run();
            }
        }
        if (isBadMotionEvent(motionEvent) || !isAttachedToWindow()) {
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        if (motionEvent.getActionMasked() == 8) {
            if (motionEvent.isFromSource(4194304)) {
                return handleRotaryEvent(motionEvent);
            }
            return (m8131handleMotionEvent8iAsVTc(motionEvent) & 4) != 0;
        }
        if (motionEvent.isFromSource(2097152)) {
            AndroidIndirectPointerEvent androidIndirectPointerEventM7479convertToIndirectPointerEventk92h6UU$ui = this.motionEventAdapter.m7479convertToIndirectPointerEventk92h6UU$ui(motionEvent, this.primaryDirectionalMotionAxisOverride);
            if (androidIndirectPointerEventM7479convertToIndirectPointerEventk92h6UU$ui == null) {
                getFocusOwner().dispatchIndirectPointerCancel();
                this.indirectPointerNavigationGestureDetector.cancelCurrentEventStream();
                return true;
            }
            if (handleIndirectPointerEvent(androidIndirectPointerEventM7479convertToIndirectPointerEventk92h6UU$ui)) {
                return true;
            }
        }
        return super.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (this.hoverExitReceived) {
            removeCallbacks(this.sendHoverExitEvent);
            this.sendHoverExitEvent.run();
        }
        if (!isBadMotionEvent(motionEvent) && isAttachedToWindow()) {
            this.composeAccessibilityDelegate.dispatchHoverEvent$ui(motionEvent);
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 7) {
                if (actionMasked == 10 && isInBounds(motionEvent)) {
                    if (motionEvent.getToolType(0) == 3 && motionEvent.getButtonState() != 0) {
                        return false;
                    }
                    MotionEvent motionEvent2 = this.previousMotionEvent;
                    if (motionEvent2 != null) {
                        motionEvent2.recycle();
                    }
                    this.previousMotionEvent = MotionEvent.obtainNoHistory(motionEvent);
                    this.hoverExitReceived = true;
                    postDelayed(this.sendHoverExitEvent, 8L);
                    return false;
                }
            } else if (!isPositionChanged(motionEvent)) {
                return false;
            }
            if ((m8131handleMotionEvent8iAsVTc(motionEvent) & 1) != 0) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!isFocused()) {
            return getFocusOwner().mo5880dispatchKeyEventYhN2O0w(androidx.compose.ui.input.key.KeyEvent.m7385constructorimpl(keyEvent), new C06431(keyEvent));
        }
        if (AndroidComposeUiFlags.isSharedWindowInfoEnabled) {
            getComposeViewContext().getWindowInfo$ui().m8210setKeyboardModifiers5xRPYO0(PointerKeyboardModifiers.m7633constructorimpl(keyEvent.getMetaState()));
        } else {
            this._windowInfo.m8210setKeyboardModifiers5xRPYO0(PointerKeyboardModifiers.m7633constructorimpl(keyEvent.getMetaState()));
        }
        return FocusOwner.m5877dispatchKeyEventYhN2O0w$default(getFocusOwner(), androidx.compose.ui.input.key.KeyEvent.m7385constructorimpl(keyEvent), null, 2, null) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
        return (isFocused() && getFocusOwner().mo5879dispatchInterceptedSoftKeyboardEventZmokQxo(androidx.compose.ui.input.key.KeyEvent.m7385constructorimpl(keyEvent))) || super.dispatchKeyEventPreIme(keyEvent);
    }

    @Override // androidx.compose.ui.node.Owner
    /* JADX INFO: renamed from: dispatchOnScrollChanged-k-4lQ0M */
    public void mo8085dispatchOnScrollChangedk4lQ0M(long j) {
        Companion.dispatchOnScrollChanged(getViewTreeObserver());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchProvideStructure(ViewStructure viewStructure) {
        if (Build.VERSION.SDK_INT < 28) {
            AndroidComposeViewAssistHelperMethodsO.INSTANCE.setClassName(viewStructure, getView());
        } else {
            super.dispatchProvideStructure(viewStructure);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        Object objM8152boximpl;
        FocusTargetNode activeFocusTargetNode;
        if (this.hoverExitReceived) {
            removeCallbacks(this.sendHoverExitEvent);
            MotionEvent motionEvent2 = this.previousMotionEvent;
            motionEvent2.getClass();
            if (motionEvent.getActionMasked() != 0 || hasChangedDevices(motionEvent, motionEvent2)) {
                this.sendHoverExitEvent.run();
            } else {
                this.hoverExitReceived = false;
            }
        }
        if (isBadMotionEvent(motionEvent) || !isAttachedToWindow() || (motionEvent.getActionMasked() == 2 && !isPositionChanged(motionEvent))) {
            return false;
        }
        int iM8131handleMotionEvent8iAsVTc = m8131handleMotionEvent8iAsVTc(motionEvent);
        if ((iM8131handleMotionEvent8iAsVTc & 2) != 0) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        boolean z = motionEvent.getActionMasked() == 0 || motionEvent.getActionMasked() == 5;
        boolean z2 = motionEvent.isFromSource(8194) || motionEvent.isFromSource(InputDeviceCompat.SOURCE_TOUCHPAD);
        if (z && z2) {
            Object parent = getParent();
            View view = parent instanceof View ? (View) parent : null;
            if (view == null || (objM8152boximpl = view.getTag(R.id.auto_clear_focus_behavior_tag)) == null) {
                objM8152boximpl = AutoClearFocusBehavior.m8152boximpl(AutoClearFocusBehavior.Companion.m8160getDefault4UtRPd4());
            }
            if (aa4.e(objM8152boximpl, AutoClearFocusBehavior.m8152boximpl(AutoClearFocusBehavior.Companion.m8159getCursorBased4UtRPd4())) && (activeFocusTargetNode = getFocusOwner().getActiveFocusTargetNode()) != null) {
                if (!LayoutCoordinatesKt.boundsInRoot(DelegatableNodeKt.requireLayoutCoordinates(activeFocusTargetNode)).m6013containsk4lQ0M(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(motionEvent.getX())) << 32) | (((long) Float.floatToRawIntBits(motionEvent.getY())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) {
                    FocusManager.clearFocus$default(getFocusOwner(), false, 1, null);
                }
            }
        }
        return (iM8131handleMotionEvent8iAsVTc & 1) != 0;
    }

    public final void drawAndroidView(AndroidViewHolder androidViewHolder, android.graphics.Canvas canvas) {
        getAndroidViewsHandler$ui().drawView(androidViewHolder, canvas);
    }

    @Override // androidx.compose.ui.spatial.ExecuteDelayed
    public Object executeDelayed(long j, ll3<j59> ll3Var) {
        nh nhVar = new nh(ll3Var, 0);
        postDelayed(nhVar, j);
        return nhVar;
    }

    public final View findViewByAccessibilityIdTraversal(int i) throws IllegalAccessException, InvocationTargetException {
        try {
            if (Build.VERSION.SDK_INT < 29) {
                return findViewByAccessibilityIdRootedAtCurrentView(i, this);
            }
            Method declaredMethod = View.class.getDeclaredMethod("findViewByAccessibilityIdTraversal", Integer.TYPE);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(this, Integer.valueOf(i));
            if (objInvoke instanceof View) {
                return (View) objInvoke;
            }
            return null;
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i) {
        Rect rectCalculateFocusRectRelativeTo;
        if (view == null || this.measureAndLayoutDelegate.getDuringMeasureLayout$ui()) {
            return super.focusSearch(view, i);
        }
        View rootView = getRootView();
        rootView.getClass();
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus((ViewGroup) rootView, view, i);
        if (viewFindNextFocus == null || !AndroidComposeView_androidKt.containsDescendant(this, viewFindNextFocus)) {
            viewFindNextFocus = null;
        }
        if (view != this || (rectCalculateFocusRectRelativeTo = getFocusOwner().getFocusRect()) == null) {
            rectCalculateFocusRectRelativeTo = FocusInteropUtils_androidKt.calculateFocusRectRelativeTo(view, this);
        }
        FocusDirection focusDirection = FocusInteropUtils_androidKt.toFocusDirection(i);
        int iM5865unboximpl = focusDirection != null ? focusDirection.m5865unboximpl() : FocusDirection.Companion.m5866getDowndhqQ8s();
        r07 r07Var = new r07();
        if (getFocusOwner().mo5881focusSearchULY8qGw(iM5865unboximpl, rectCalculateFocusRectRelativeTo, new AndroidComposeView$focusSearch$searchResult$1(r07Var)) == null) {
            return view;
        }
        if (r07Var.b != 0) {
            if (viewFindNextFocus != null) {
                if (FocusOwnerImplKt.m5889is1dFocusSearch3ESFkO8(iM5865unboximpl)) {
                    if (!ComposeUiFlags.isBypassUnfocusableComposeViewEnabled) {
                        return super.focusSearch(view, i);
                    }
                } else if (TwoDimensionalFocusSearchKt.m5935isBetterCandidateI7lrPNg(FocusTraversalKt.focusRect((FocusTargetNode) r07Var.b), FocusInteropUtils_androidKt.calculateFocusRectRelativeTo(viewFindNextFocus, this), rectCalculateFocusRectRelativeTo, iM5865unboximpl)) {
                }
            }
            return this;
        }
        if (viewFindNextFocus == null) {
            return super.focusSearch(view, i);
        }
        return viewFindNextFocus;
    }

    @Override // androidx.compose.ui.focus.PlatformFocusOwner
    public void focusTargetAvailable() {
        if (getFocusOwner().getRootState().getHasFocus()) {
            return;
        }
        focusableViewAvailable(this);
    }

    @Override // androidx.compose.ui.node.RootForTest
    public void forceAccessibilityForTesting(boolean z) {
        this.composeAccessibilityDelegate.setAccessibilityForceEnabledForTesting$ui(z);
    }

    @Override // androidx.compose.ui.node.Owner
    public void forceMeasureTheSubtree(LayoutNode layoutNode, boolean z) {
        this.measureAndLayoutDelegate.forceMeasureTheSubtree(layoutNode, z);
    }

    public final AndroidViewsHandler getAndroidViewsHandler$ui() {
        if (this._androidViewsHandler == null) {
            AndroidViewsHandler androidViewsHandler = new AndroidViewsHandler(getContext());
            this._androidViewsHandler = androidViewsHandler;
            addView(androidViewsHandler);
            requestLayout();
        }
        AndroidViewsHandler androidViewsHandler2 = this._androidViewsHandler;
        androidViewsHandler2.getClass();
        return androidViewsHandler2;
    }

    @Override // androidx.compose.ui.node.Owner
    public Autofill getAutofill() {
        return this._autofill;
    }

    @Override // androidx.compose.ui.node.Owner
    public androidx.compose.ui.autofill.AutofillManager getAutofillManager() {
        return this._autofillManager;
    }

    @Override // androidx.compose.ui.node.Owner
    public AutofillTree getAutofillTree() {
        return this.autofillTree;
    }

    public final ComposeViewContext getComposeViewContext() {
        return get_composeViewContext();
    }

    public final boolean getComposeViewContextIncrementedDuringInit$ui() {
        return this.composeViewContextIncrementedDuringInit;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Configuration getConfiguration() {
        return (Configuration) this.configuration$delegate.getValue();
    }

    public final AndroidContentCaptureManager getContentCaptureManager$ui() {
        return this.contentCaptureManager;
    }

    @Override // androidx.compose.ui.node.Owner
    public o22 getCoroutineContext() {
        return this.coroutineContext;
    }

    @Override // androidx.compose.ui.node.Owner, androidx.compose.ui.node.RootForTest
    public Density getDensity() {
        return (Density) this.density$delegate.getValue();
    }

    @Override // androidx.compose.ui.focus.PlatformFocusOwner
    public Rect getEmbeddedViewFocusRect() {
        if (isFocused()) {
            return getFocusOwner().getFocusRect();
        }
        View viewFindFocus = findFocus();
        if (viewFindFocus != null) {
            return FocusInteropUtils_androidKt.calculateFocusRectRelativeTo(viewFindFocus, this);
        }
        return null;
    }

    @Override // androidx.compose.ui.node.Owner
    public FocusOwner getFocusOwner() {
        return this.focusOwner;
    }

    @Override // android.view.View
    public void getFocusedRect(android.graphics.Rect rect) {
        Rect embeddedViewFocusRect = getEmbeddedViewFocusRect();
        if (embeddedViewFocusRect != null) {
            rect.left = Math.round(embeddedViewFocusRect.getLeft());
            rect.top = Math.round(embeddedViewFocusRect.getTop());
            rect.right = Math.round(embeddedViewFocusRect.getRight());
            rect.bottom = Math.round(embeddedViewFocusRect.getBottom());
            return;
        }
        if (aa4.e(getFocusOwner().mo5881focusSearchULY8qGw(FocusDirection.Companion.m5866getDowndhqQ8s(), null, C06441.INSTANCE), Boolean.TRUE)) {
            super.getFocusedRect(rect);
        } else {
            rect.set(Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public FontFamily.Resolver getFontFamilyResolver() {
        return (FontFamily.Resolver) this.fontFamilyResolver$delegate.getValue();
    }

    @Override // androidx.compose.ui.node.Owner
    public Font.ResourceLoader getFontLoader() {
        return this.fontLoader;
    }

    public final LifecycleRetainedValuesStoreOwner.FrameEndScheduler getFrameEndScheduler$ui() {
        return this.frameEndScheduler;
    }

    @Override // androidx.compose.ui.node.Owner
    public GraphicsContext getGraphicsContext() {
        return this.graphicsContext;
    }

    @Override // androidx.compose.ui.node.Owner
    public HapticFeedback getHapticFeedBack() {
        return this.hapticFeedBack;
    }

    @Override // androidx.compose.ui.platform.ViewRootForTest
    public boolean getHasPendingMeasureOrLayout() {
        return this.measureAndLayoutDelegate.getHasPendingMeasureOrLayout() || !this.outOfFrameQueue.isEmpty();
    }

    @Override // android.view.View
    public int getImportantForAutofill() {
        return 1;
    }

    @Override // androidx.compose.ui.node.Owner
    public InputModeManager getInputModeManager() {
        return this._inputModeManager;
    }

    public final InsetsListener getInsetsListener() {
        return this.insetsListener;
    }

    public final long getLastMatrixRecalculationAnimationTime$ui() {
        return this.lastMatrixRecalculationAnimationTime;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View, android.view.ViewParent, androidx.compose.ui.node.Owner
    public LayoutDirection getLayoutDirection() {
        return (LayoutDirection) this.layoutDirection$delegate.getValue();
    }

    @Override // androidx.compose.ui.node.Owner
    public LocaleList getLocaleList() {
        return (LocaleList) this.localeList$delegate.getValue();
    }

    @Override // androidx.compose.ui.node.Owner
    public long getMeasureIteration() {
        return this.measureAndLayoutDelegate.getMeasureIteration();
    }

    @Override // androidx.compose.ui.node.Owner
    public ModifierLocalManager getModifierLocalManager() {
        return this.modifierLocalManager;
    }

    @Override // androidx.compose.ui.node.Owner
    public AndroidComposeView getOutOfFrameExecutor() {
        if (isAttachedToWindow()) {
            return this;
        }
        return null;
    }

    @Override // androidx.compose.ui.node.Owner
    public Placeable.PlacementScope getPlacementScope() {
        return PlaceableKt.PlacementScope(this);
    }

    @Override // androidx.compose.ui.node.Owner
    public PointerIconService getPointerIconService() {
        return this.pointerIconService;
    }

    /* JADX INFO: renamed from: getPrimaryDirectionalMotionAxisOverride-dqNNBbU$ui, reason: not valid java name */
    public final IndirectPointerEventPrimaryDirectionalMotionAxis m8138getPrimaryDirectionalMotionAxisOverridedqNNBbU$ui() {
        return this.primaryDirectionalMotionAxisOverride;
    }

    @Override // androidx.compose.ui.node.Owner
    public RectManager getRectManager() {
        return this.rectManager;
    }

    @Override // androidx.compose.ui.node.Owner
    public RetainedValuesStore getRetainedValuesStore() {
        return this.retainedValuesStore;
    }

    @Override // androidx.compose.ui.node.Owner
    public LayoutNode getRoot() {
        return this.root;
    }

    @Override // androidx.compose.ui.node.Owner
    public RootForTest getRootForTest() {
        return this;
    }

    public final boolean getScrollCaptureInProgress$ui() {
        ScrollCapture scrollCapture;
        if (Build.VERSION.SDK_INT < 31 || (scrollCapture = this.scrollCapture) == null) {
            return false;
        }
        return scrollCapture.getScrollCaptureInProgress();
    }

    @Override // androidx.compose.ui.node.Owner, androidx.compose.ui.node.RootForTest
    public SemanticsOwner getSemanticsOwner() {
        return this.semanticsOwner;
    }

    @Override // androidx.compose.ui.node.Owner
    public LayoutNodeDrawScope getSharedDrawScope() {
        return this.sharedDrawScope;
    }

    @Override // androidx.compose.ui.node.Owner
    public boolean getShowLayoutBounds() {
        return Build.VERSION.SDK_INT >= 30 ? Api30Impl.INSTANCE.isShowingLayoutBounds(this) : this.showLayoutBounds;
    }

    @Override // androidx.compose.ui.node.Owner
    public OwnerSnapshotObserver getSnapshotObserver() {
        return this.snapshotObserver;
    }

    @Override // androidx.compose.ui.node.Owner
    public SoftwareKeyboardController getSoftwareKeyboardController() {
        SoftwareKeyboardController softwareKeyboardController = this._softwareKeyboardController;
        if (softwareKeyboardController != null) {
            return softwareKeyboardController;
        }
        DelegatingSoftwareKeyboardController delegatingSoftwareKeyboardController = new DelegatingSoftwareKeyboardController(getTextInputService());
        this._softwareKeyboardController = delegatingSoftwareKeyboardController;
        return delegatingSoftwareKeyboardController;
    }

    @Override // androidx.compose.ui.node.Owner, androidx.compose.ui.node.RootForTest
    public TextInputService getTextInputService() {
        TextInputService textInputService = this._textInputService;
        if (textInputService != null) {
            return textInputService;
        }
        TextInputService textInputService2 = new TextInputService(AndroidComposeView_androidKt.getPlatformTextInputServiceInterceptor().invoke(getLegacyTextInputServiceAndroid()));
        this._textInputService = textInputService2;
        return textInputService2;
    }

    @Override // androidx.compose.ui.node.Owner
    public TextToolbar getTextToolbar() {
        return this.textToolbar;
    }

    public final RootForTest.UncaughtExceptionHandler getUncaughtExceptionHandler$ui() {
        return this.uncaughtExceptionHandler;
    }

    @Override // androidx.compose.ui.platform.ViewRootForTest
    public View getView() {
        return this;
    }

    @Override // androidx.compose.ui.node.Owner
    public ViewConfiguration getViewConfiguration() {
        return this.viewConfiguration;
    }

    public final ViewTreeOwners getViewTreeOwners() {
        return (ViewTreeOwners) this.viewTreeOwners$delegate.getValue();
    }

    @Override // androidx.compose.ui.node.Owner
    public WindowInfo getWindowInfo() {
        return AndroidComposeUiFlags.isSharedWindowInfoEnabled ? getComposeViewContext().getWindowInfo$ui() : this._windowInfo;
    }

    public final AndroidAutofillManager get_autofillManager$ui() {
        return this._autofillManager;
    }

    @Override // androidx.compose.ui.node.Owner
    public void incrementKeepScreenOnCount() {
        this.keepScreenOnCount++;
        getView().setKeepScreenOn(this.keepScreenOnCount > 0);
    }

    @Override // androidx.compose.ui.node.Owner
    public void incrementSensitiveComponentCount() {
        if (Build.VERSION.SDK_INT >= 35) {
            if (this.sensitiveComponentCount == 0) {
                AndroidComposeViewSensitiveContent35.INSTANCE.setContentSensitivity(getView(), true);
            }
            this.sensitiveComponentCount++;
        }
    }

    @Override // androidx.compose.ui.platform.ViewRootForTest
    public void invalidateDescendants() {
        invalidateLayers(getRoot());
    }

    @Override // androidx.compose.ui.node.Owner
    public void invalidateRootLayer() {
        invalidate();
    }

    public final boolean isArrEnabled$ui() {
        return Build.VERSION.SDK_INT >= 35;
    }

    @Override // androidx.compose.ui.platform.ViewRootForTest
    public boolean isLifecycleInResumedState() {
        LifecycleOwner lifecycleOwner;
        Lifecycle lifecycle;
        Lifecycle.State currentState = null;
        if (AndroidComposeUiFlags.isSharedWindowInfoEnabled) {
            lifecycleOwner = getComposeViewContext().getLifecycleOwner$ui();
        } else {
            ViewTreeOwners viewTreeOwners = getViewTreeOwners();
            lifecycleOwner = viewTreeOwners != null ? viewTreeOwners.getLifecycleOwner() : null;
        }
        if (lifecycleOwner != null && (lifecycle = lifecycleOwner.getLifecycle()) != null) {
            currentState = lifecycle.getCurrentState();
        }
        return currentState == Lifecycle.State.RESUMED;
    }

    @Override // androidx.compose.ui.input.pointer.MatrixPositionCalculator
    /* JADX INFO: renamed from: localToScreen-58bKbWc */
    public void mo7475localToScreen58bKbWc(float[] fArr) {
        recalculateWindowPosition();
        Matrix.m6495timesAssign58bKbWc(fArr, this.viewToWindowMatrix);
        AndroidComposeView_androidKt.m8151preTranslatecG2Xzmc(fArr, Float.intBitsToFloat((int) (this.windowPosition >> 32)), Float.intBitsToFloat((int) (this.windowPosition & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), this.tmpMatrix);
    }

    @Override // androidx.compose.ui.input.pointer.PositionCalculator
    /* JADX INFO: renamed from: localToScreen-MK-Hz9U */
    public long mo7651localToScreenMKHz9U(long j) {
        recalculateWindowPosition();
        long jM6482mapMKHz9U = Matrix.m6482mapMKHz9U(this.viewToWindowMatrix, j);
        float fIntBitsToFloat = Float.intBitsToFloat((int) (this.windowPosition >> 32)) + Float.intBitsToFloat((int) (jM6482mapMKHz9U >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (this.windowPosition & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + Float.intBitsToFloat((int) (jM6482mapMKHz9U & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    @Override // androidx.compose.ui.node.Owner
    public void measureAndLayout(boolean z) {
        ll3<j59> ll3Var;
        if (this.measureAndLayoutDelegate.getHasPendingMeasureOrLayout() || this.measureAndLayoutDelegate.getHasPendingOnPositionedCallbacks()) {
            Trace.beginSection("AndroidOwner:measureAndLayout");
            if (z) {
                try {
                    ll3Var = this.resendMotionEventOnLayout;
                } finally {
                    Trace.endSection();
                }
            } else {
                ll3Var = null;
            }
            if (this.measureAndLayoutDelegate.measureAndLayout(ll3Var)) {
                requestLayout();
            }
            MeasureAndLayoutDelegate.dispatchOnPositionedCallbacks$default(this.measureAndLayoutDelegate, false, 1, null);
            getRectManager().dispatchCallbacks();
            dispatchPendingInteropLayoutCallbacks();
            j59 j59Var = j59.a;
        }
    }

    @Override // androidx.compose.ui.node.Owner
    /* JADX INFO: renamed from: measureAndLayout-0kLqBqw */
    public void mo8086measureAndLayout0kLqBqw(LayoutNode layoutNode, long j) {
        Trace.beginSection("AndroidOwner:measureAndLayout");
        try {
            this.measureAndLayoutDelegate.m7966measureAndLayout0kLqBqw(layoutNode, j);
            if (!this.measureAndLayoutDelegate.getHasPendingMeasureOrLayout()) {
                MeasureAndLayoutDelegate.dispatchOnPositionedCallbacks$default(this.measureAndLayoutDelegate, false, 1, null);
                getRectManager().dispatchCallbacks();
                dispatchPendingInteropLayoutCallbacks();
            }
            j59 j59Var = j59.a;
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.compose.ui.node.RootForTest
    public void measureAndLayoutForTest() {
        Owner.measureAndLayout$default(this, false, 1, null);
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.outOfFrameRunnable);
        }
        this.outOfFrameRunnable.run();
    }

    @Override // androidx.compose.ui.focus.PlatformFocusOwner
    /* JADX INFO: renamed from: moveFocusInChildren-3ESFkO8 */
    public boolean mo5928moveFocusInChildren3ESFkO8(int i) {
        if (ComposeUiFlags.isViewFocusFixEnabled) {
            return m8134moveFocusInChildrenViewFocusFix3ESFkO8(i);
        }
        return ComposeUiFlags.isBypassUnfocusableComposeViewEnabled ? m8132moveFocusInChildrenBypassUnfocusableComposeView3ESFkO8(i) : m8133moveFocusInChildrenCurrent3ESFkO8(i);
    }

    public final void notifyLayerIsDirty$ui(OwnedLayer ownedLayer, boolean z) {
        boolean z2 = this.isDrawingContent;
        if (!z) {
            if (z2) {
                return;
            }
            this.dirtyLayers.remove(ownedLayer);
            MutableObjectList<OwnedLayer> mutableObjectList = this.postponedDirtyLayers;
            if (mutableObjectList != null) {
                mutableObjectList.remove(ownedLayer);
                return;
            }
            return;
        }
        if (!z2) {
            this.dirtyLayers.add(ownedLayer);
            return;
        }
        MutableObjectList<OwnedLayer> mutableObjectList2 = this.postponedDirtyLayers;
        if (mutableObjectList2 == null) {
            mutableObjectList2 = new MutableObjectList<>(0, 1, null);
            this.postponedDirtyLayers = mutableObjectList2;
        }
        mutableObjectList2.add(ownedLayer);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        LifecycleOwner lifecycleOwner;
        Lifecycle lifecycle;
        Lifecycle lifecycle2;
        LifecycleOwner lifecycleOwner2;
        AndroidAutofill androidAutofill;
        super.onAttachedToWindow();
        setAttached(true);
        int i = Build.VERSION.SDK_INT;
        if (i < 30) {
            setShowLayoutBounds(Companion.getIsShowingLayoutBounds());
        }
        if (ComposeView_androidKt.getAreWindowInsetsRulersEnabled()) {
            this.insetsListener.onViewAttachedToWindow(this);
        }
        Companion.addNotificationForSysPropsChange(this);
        if (!this.composeViewContextIncrementedDuringInit) {
            getComposeViewContext().incrementViewCount$ui();
        }
        this.composeViewContextIncrementedDuringInit = false;
        if (!AndroidComposeUiFlags.isSharedWindowInfoEnabled) {
            this._windowInfo.setWindowFocused(hasWindowFocus());
            this._windowInfo.setOnInitializeContainerSize(new C06461());
            updateWindowMetrics();
        }
        invalidateLayoutNodeMeasurement(getRoot());
        invalidateLayers(getRoot());
        getSnapshotObserver().startObserving$ui();
        if (autofillSupported() && (androidAutofill = this._autofill) != null) {
            AutofillCallback.INSTANCE.register(androidAutofill);
        }
        Lifecycle lifecycle3 = null;
        if (AndroidComposeUiFlags.isSharedWindowInfoEnabled) {
            RetainedValuesStore retainedValuesStoreInstallLocalRetainedValuesStore = installLocalRetainedValuesStore(getComposeViewContext().getLifecycleOwner$ui(), getComposeViewContext().getViewModelStoreOwner$ui());
            if (retainedValuesStoreInstallLocalRetainedValuesStore == null) {
                retainedValuesStoreInstallLocalRetainedValuesStore = ForgetfulRetainedValuesStore.INSTANCE;
            }
            this.retainedValuesStore = retainedValuesStoreInstallLocalRetainedValuesStore;
            nl3<? super ComposeViewContext, j59> nl3Var = this.onReadyForComposition;
            if (nl3Var != null) {
                nl3Var.invoke(getComposeViewContext());
                this.onReadyForComposition = null;
            }
            lifecycle2 = getComposeViewContext().getLifecycleOwner$ui().getLifecycle();
        } else {
            LifecycleOwner lifecycleOwner3 = ViewTreeLifecycleOwner.get(this);
            SavedStateRegistryOwner savedStateRegistryOwner = ViewTreeSavedStateRegistryOwner.get(this);
            ViewModelStoreOwner viewModelStoreOwner = ViewTreeViewModelStoreOwner.get(this);
            RetainedValuesStore retainedValuesStoreInstallLocalRetainedValuesStore2 = installLocalRetainedValuesStore(lifecycleOwner3, viewModelStoreOwner);
            if (retainedValuesStoreInstallLocalRetainedValuesStore2 == null) {
                retainedValuesStoreInstallLocalRetainedValuesStore2 = ForgetfulRetainedValuesStore.INSTANCE;
            }
            this.retainedValuesStore = retainedValuesStoreInstallLocalRetainedValuesStore2;
            ViewTreeOwners viewTreeOwners = getViewTreeOwners();
            if (viewTreeOwners == null || (lifecycleOwner3 != null && savedStateRegistryOwner != null && (lifecycleOwner3 != viewTreeOwners.getLifecycleOwner() || savedStateRegistryOwner != viewTreeOwners.getSavedStateRegistryOwner() || viewModelStoreOwner != viewTreeOwners.getViewModelStoreOwner()))) {
                if (lifecycleOwner3 == null) {
                    ah.f("Composed into the View which doesn't propagate ViewTreeLifecycleOwner!");
                    return;
                }
                if (savedStateRegistryOwner == null) {
                    ah.f("Composed into the View which doesn't propagateViewTreeSavedStateRegistryOwner!");
                    return;
                }
                if (viewTreeOwners != null && (lifecycleOwner = viewTreeOwners.getLifecycleOwner()) != null && (lifecycle = lifecycleOwner.getLifecycle()) != null) {
                    lifecycle.removeObserver(this);
                }
                lifecycleOwner3.getLifecycle().addObserver(this);
                set_viewTreeOwners(new ViewTreeOwners(lifecycleOwner3, savedStateRegistryOwner, viewModelStoreOwner));
                nl3<? super ComposeViewContext, j59> nl3Var2 = this.onReadyForComposition;
                if (nl3Var2 != null) {
                    nl3Var2.invoke(getComposeViewContext());
                }
                this.onReadyForComposition = null;
            }
            ViewTreeOwners viewTreeOwners2 = getViewTreeOwners();
            if (viewTreeOwners2 != null && (lifecycleOwner2 = viewTreeOwners2.getLifecycleOwner()) != null) {
                lifecycle3 = lifecycleOwner2.getLifecycle();
            }
            if (lifecycle3 == null) {
                throw ag.e("No lifecycle owner exists");
            }
            lifecycle2 = lifecycle3;
        }
        lifecycle2.addObserver(this);
        lifecycle2.addObserver(this.contentCaptureManager);
        this._inputModeManager.m7047setInputModeiuPiT84(isInTouchMode() ? InputMode.Companion.m7043getTouchaOaMEAU() : InputMode.Companion.m7042getKeyboardaOaMEAU());
        getViewTreeObserver().addOnGlobalLayoutListener(this);
        getViewTreeObserver().addOnScrollChangedListener(this);
        getViewTreeObserver().addOnTouchModeChangeListener(this);
        if (i >= 31) {
            AndroidComposeViewTranslationCallbackS.INSTANCE.setViewTranslationCallback(this);
        }
        AndroidAutofillManager androidAutofillManager = this._autofillManager;
        if (androidAutofillManager != null) {
            getFocusOwner().getListeners().add(androidAutofillManager);
            getSemanticsOwner().getListeners$ui().add(androidAutofillManager);
        }
        getFocusOwner().getListeners().add(this);
    }

    @Override // android.view.View
    public boolean onCheckIsTextEditor() {
        AndroidPlatformTextInputSession androidPlatformTextInputSession = (AndroidPlatformTextInputSession) SessionMutex.m5673getCurrentSessionimpl(this.textInputSessionMutex);
        return androidPlatformTextInputSession == null ? getLegacyTextInputServiceAndroid().isEditorFocused() : androidPlatformTextInputSession.isReadyForConnection();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateConfiguration(configuration);
    }

    @Override // android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        AndroidPlatformTextInputSession androidPlatformTextInputSession = (AndroidPlatformTextInputSession) SessionMutex.m5673getCurrentSessionimpl(this.textInputSessionMutex);
        return androidPlatformTextInputSession == null ? getLegacyTextInputServiceAndroid().createInputConnection(editorInfo) : androidPlatformTextInputSession.createInputConnection(editorInfo);
    }

    @Override // android.view.View
    public void onCreateVirtualViewTranslationRequests(long[] jArr, int[] iArr, Consumer<ViewTranslationRequest> consumer) {
        this.contentCaptureManager.onCreateVirtualViewTranslationRequests$ui(jArr, iArr, consumer);
    }

    @Override // androidx.compose.ui.node.Owner
    public void onDetach(LayoutNode layoutNode) {
        AndroidAutofillManager androidAutofillManager;
        getLayoutNodes().remove(layoutNode.getSemanticsId());
        this.measureAndLayoutDelegate.onNodeDetached(layoutNode);
        requestClearInvalidObservations();
        if (!autofillSupported() || (androidAutofillManager = this._autofillManager) == null) {
            return;
        }
        androidAutofillManager.onDetach$ui(layoutNode);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        Lifecycle lifecycle;
        LifecycleOwner lifecycleOwner;
        AndroidAutofill androidAutofill;
        super.onDetachedFromWindow();
        setAttached(false);
        if (ComposeView_androidKt.getAreWindowInsetsRulersEnabled()) {
            this.insetsListener.onViewDetachedFromWindow(this);
        }
        View view = this.frameRateCategoryView;
        if (isArrEnabled$ui() && view != null) {
            removeView(view);
        }
        Companion.removeNotificationForSysPropsChange(this);
        getComposeViewContext().decrementViewCount$ui();
        getSnapshotObserver().stopObserving$ui();
        if (AndroidComposeUiFlags.isSharedWindowInfoEnabled) {
            lifecycle = getComposeViewContext().getLifecycleOwner$ui().getLifecycle();
        } else {
            this._windowInfo.setOnInitializeContainerSize(null);
            ViewTreeOwners viewTreeOwners = getViewTreeOwners();
            lifecycle = (viewTreeOwners == null || (lifecycleOwner = viewTreeOwners.getLifecycleOwner()) == null) ? null : lifecycleOwner.getLifecycle();
            if (lifecycle == null) {
                throw ag.e("No lifecycle owner exists");
            }
        }
        lifecycle.removeObserver(this.contentCaptureManager);
        lifecycle.removeObserver(this);
        if (autofillSupported() && (androidAutofill = this._autofill) != null) {
            AutofillCallback.INSTANCE.unregister(androidAutofill);
        }
        getViewTreeObserver().removeOnGlobalLayoutListener(this);
        getViewTreeObserver().removeOnScrollChangedListener(this);
        getViewTreeObserver().removeOnTouchModeChangeListener(this);
        LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry retainedValuesStoreEntry = this.lifecycleRetainedValuesStoreOwnerEntry;
        if (retainedValuesStoreEntry != null) {
            retainedValuesStoreEntry.release();
        }
        this.lifecycleRetainedValuesStoreOwnerEntry = null;
        if (Build.VERSION.SDK_INT >= 31) {
            AndroidComposeViewTranslationCallbackS.INSTANCE.clearViewTranslationCallback(this);
        }
        AndroidAutofillManager androidAutofillManager = this._autofillManager;
        if (androidAutofillManager != null) {
            getSemanticsOwner().getListeners$ui().remove(androidAutofillManager);
            getFocusOwner().getListeners().remove(androidAutofillManager);
        }
        getRectManager().resetOffsets();
        getRectManager().dispatchCallbacks();
        getRectManager().removeScheduledCallback();
        getFocusOwner().getListeners().remove(this);
    }

    @Override // android.view.View
    public void onDraw(android.graphics.Canvas canvas) {
    }

    @Override // androidx.compose.ui.node.Owner
    public void onEndApplyChanges() {
        MutableObjectList<ll3<j59>> mutableObjectList;
        AndroidAutofillManager androidAutofillManager;
        if (this.observationClearRequested) {
            getSnapshotObserver().clearInvalidObservations$ui();
            this.observationClearRequested = false;
        }
        AndroidViewsHandler androidViewsHandler = this._androidViewsHandler;
        if (androidViewsHandler != null) {
            clearChildInvalidObservations(androidViewsHandler);
        }
        if (autofillSupported() && (androidAutofillManager = this._autofillManager) != null) {
            androidAutofillManager.onEndApplyChanges$ui();
        }
        while (this.endApplyChangesListeners.isNotEmpty() && this.endApplyChangesListeners.get(0) != null) {
            int size = this.endApplyChangesListeners.getSize();
            int i = 0;
            while (true) {
                mutableObjectList = this.endApplyChangesListeners;
                if (i < size) {
                    ll3<j59> ll3Var = mutableObjectList.get(i);
                    this.endApplyChangesListeners.set(i, null);
                    if (ll3Var != null) {
                        ll3Var.invoke();
                    }
                    i++;
                }
            }
            mutableObjectList.removeRange(0, size);
        }
    }

    @Override // androidx.compose.ui.focus.FocusListener
    public void onFocusChanged(FocusTargetModifierNode focusTargetModifierNode, FocusTargetModifierNode focusTargetModifierNode2) {
        NodeChain nodes$ui;
        boolean z;
        NodeChain nodes$ui2;
        boolean z2;
        if (!ComposeUiFlags.isOptimizedFocusEventDispatchEnabled || focusTargetModifierNode == null) {
            return;
        }
        int iM8019constructorimpl = NodeKind.m8019constructorimpl(2097152);
        if (!focusTargetModifierNode.getNode().isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node node = focusTargetModifierNode.getNode();
        LayoutNode layoutNodeRequireLayoutNode = DelegatableNodeKt.requireLayoutNode(focusTargetModifierNode);
        MutableScatterSet mutableScatterSet = null;
        ArrayList arrayList = null;
        while (layoutNodeRequireLayoutNode != null) {
            if ((ki0.b(layoutNodeRequireLayoutNode) & iM8019constructorimpl) != 0) {
                while (node != null) {
                    if ((node.getKindSet$ui() & iM8019constructorimpl) != 0) {
                        Modifier.Node nodePop = node;
                        MutableVector mutableVector = null;
                        while (nodePop != null) {
                            if (nodePop instanceof IndirectPointerInputModifierNode) {
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                arrayList.add(nodePop);
                                z2 = false;
                            } else {
                                z2 = true;
                            }
                            if (z2 && (nodePop.getKindSet$ui() & iM8019constructorimpl) != 0 && (nodePop instanceof DelegatingNode)) {
                                int i = 0;
                                for (Modifier.Node delegate$ui = ((DelegatingNode) nodePop).getDelegate$ui(); delegate$ui != null; delegate$ui = delegate$ui.getChild$ui()) {
                                    if ((delegate$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                                        i++;
                                        if (i == 1) {
                                            nodePop = delegate$ui;
                                        } else {
                                            if (mutableVector == null) {
                                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (nodePop != null) {
                                                mutableVector.add(nodePop);
                                                nodePop = null;
                                            }
                                            mutableVector.add(delegate$ui);
                                        }
                                    }
                                }
                                if (i == 1) {
                                }
                            }
                            nodePop = DelegatableNodeKt.pop(mutableVector);
                        }
                    }
                    node = node.getParent$ui();
                }
            }
            layoutNodeRequireLayoutNode = layoutNodeRequireLayoutNode.getParent$ui();
            node = (layoutNodeRequireLayoutNode == null || (nodes$ui2 = layoutNodeRequireLayoutNode.getNodes$ui()) == null) ? null : nodes$ui2.getTail$ui();
        }
        if (arrayList == null) {
            return;
        }
        if (focusTargetModifierNode2 != null) {
            int iM8019constructorimpl2 = NodeKind.m8019constructorimpl(2097152);
            if (!focusTargetModifierNode2.getNode().isAttached()) {
                InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
            }
            Modifier.Node node2 = focusTargetModifierNode2.getNode();
            LayoutNode layoutNodeRequireLayoutNode2 = DelegatableNodeKt.requireLayoutNode(focusTargetModifierNode2);
            MutableScatterSet mutableScatterSetMutableScatterSetOf = null;
            while (layoutNodeRequireLayoutNode2 != null) {
                if ((ki0.b(layoutNodeRequireLayoutNode2) & iM8019constructorimpl2) != 0) {
                    while (node2 != null) {
                        if ((node2.getKindSet$ui() & iM8019constructorimpl2) != 0) {
                            Modifier.Node nodePop2 = node2;
                            MutableVector mutableVector2 = null;
                            while (nodePop2 != null) {
                                if (nodePop2 instanceof IndirectPointerInputModifierNode) {
                                    if (mutableScatterSetMutableScatterSetOf == null) {
                                        mutableScatterSetMutableScatterSetOf = ScatterSetKt.mutableScatterSetOf();
                                    }
                                    mutableScatterSetMutableScatterSetOf.add(nodePop2);
                                    z = false;
                                } else {
                                    z = true;
                                }
                                if (z && (nodePop2.getKindSet$ui() & iM8019constructorimpl2) != 0 && (nodePop2 instanceof DelegatingNode)) {
                                    int i2 = 0;
                                    for (Modifier.Node delegate$ui2 = ((DelegatingNode) nodePop2).getDelegate$ui(); delegate$ui2 != null; delegate$ui2 = delegate$ui2.getChild$ui()) {
                                        if ((delegate$ui2.getKindSet$ui() & iM8019constructorimpl2) != 0) {
                                            i2++;
                                            if (i2 == 1) {
                                                nodePop2 = delegate$ui2;
                                            } else {
                                                if (mutableVector2 == null) {
                                                    mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (nodePop2 != null) {
                                                    mutableVector2.add(nodePop2);
                                                    nodePop2 = null;
                                                }
                                                mutableVector2.add(delegate$ui2);
                                            }
                                        }
                                    }
                                    if (i2 == 1) {
                                    }
                                }
                                nodePop2 = DelegatableNodeKt.pop(mutableVector2);
                            }
                        }
                        node2 = node2.getParent$ui();
                    }
                }
                layoutNodeRequireLayoutNode2 = layoutNodeRequireLayoutNode2.getParent$ui();
                node2 = (layoutNodeRequireLayoutNode2 == null || (nodes$ui = layoutNodeRequireLayoutNode2.getNodes$ui()) == null) ? null : nodes$ui.getTail$ui();
            }
            mutableScatterSet = mutableScatterSetMutableScatterSetOf;
        }
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            IndirectPointerInputModifierNode indirectPointerInputModifierNode = (IndirectPointerInputModifierNode) arrayList.get(i3);
            if (!(mutableScatterSet != null ? mutableScatterSet.contains(indirectPointerInputModifierNode) : false)) {
                indirectPointerInputModifierNode.onCancelIndirectPointerInput();
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        this.lastMatrixRecalculationAnimationTime = 0L;
        updatePositionCacheAndDispatch();
        dispatchConfigurationChangeIfNeeded();
    }

    @Override // androidx.compose.ui.node.Owner
    public void onInteropViewLayoutChange(View view) {
        this.isPendingInteropViewLayoutChangeDispatch = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Trace.beginSection("AndroidOwner:onLayout");
        try {
            this.lastMatrixRecalculationAnimationTime = 0L;
            this.measureAndLayoutDelegate.measureAndLayout(this.resendMotionEventOnLayout);
            this.onMeasureConstraints = null;
            updatePositionCacheAndDispatch();
            if (this._androidViewsHandler != null) {
                Trace.beginSection("AndroidOwner:viewLayout");
                try {
                    getAndroidViewsHandler$ui().layout(0, 0, i3 - i, i4 - i2);
                    j59 j59Var = j59.a;
                    Trace.endSection();
                } finally {
                    Trace.endSection();
                }
            }
            j59 j59Var2 = j59.a;
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public void onLayoutChange(LayoutNode layoutNode) {
        this.composeAccessibilityDelegate.onLayoutChange$ui(layoutNode);
        this.contentCaptureManager.onLayoutChange$ui();
    }

    @Override // androidx.compose.ui.node.Owner
    public void onLayoutNodeDeactivated(LayoutNode layoutNode) {
        AndroidAutofillManager androidAutofillManager;
        if (!autofillSupported() || (androidAutofillManager = this._autofillManager) == null) {
            return;
        }
        androidAutofillManager.onLayoutNodeDeactivated$ui(layoutNode);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        Trace.beginSection("AndroidOwner:onMeasure");
        try {
            if (!isAttachedToWindow()) {
                invalidateLayoutNodeMeasurement(getRoot());
            }
            long jM8128convertMeasureSpecI7RO_PI = m8128convertMeasureSpecI7RO_PI(i);
            int i3 = (int) (jM8128convertMeasureSpecI7RO_PI >>> 32);
            int i4 = (int) (jM8128convertMeasureSpecI7RO_PI & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            long jM8128convertMeasureSpecI7RO_PI2 = m8128convertMeasureSpecI7RO_PI(i2);
            int i5 = (int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & jM8128convertMeasureSpecI7RO_PI2);
            long jM9003fitPrioritizingHeightZbe2FdA = Constraints.Companion.m9003fitPrioritizingHeightZbe2FdA(i3, i4, (int) (jM8128convertMeasureSpecI7RO_PI2 >>> 32), i5);
            Constraints constraints = this.onMeasureConstraints;
            boolean zM8988equalsimpl0 = false;
            if (constraints == null) {
                this.onMeasureConstraints = Constraints.m8982boximpl(jM9003fitPrioritizingHeightZbe2FdA);
                this.wasMeasuredWithMultipleConstraints = false;
            } else {
                if (constraints != null) {
                    zM8988equalsimpl0 = Constraints.m8988equalsimpl0(constraints.m9001unboximpl(), jM9003fitPrioritizingHeightZbe2FdA);
                }
                if (!zM8988equalsimpl0) {
                    this.wasMeasuredWithMultipleConstraints = true;
                }
            }
            this.measureAndLayoutDelegate.m7967updateRootConstraintsBRTryo0(jM9003fitPrioritizingHeightZbe2FdA);
            this.measureAndLayoutDelegate.measureOnly();
            setMeasuredDimension(getRoot().getWidth(), getRoot().getHeight());
            if (this._androidViewsHandler != null) {
                Trace.beginSection("AndroidOwner:androidViewMeasure");
                try {
                    getAndroidViewsHandler$ui().measure(View.MeasureSpec.makeMeasureSpec(getRoot().getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getRoot().getHeight(), 1073741824));
                    j59 j59Var = j59.a;
                    Trace.endSection();
                } finally {
                    Trace.endSection();
                }
            }
            j59 j59Var2 = j59.a;
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public void onPostAttach(LayoutNode layoutNode) {
        AndroidAutofillManager androidAutofillManager;
        if (!autofillSupported() || (androidAutofillManager = this._autofillManager) == null) {
            return;
        }
        androidAutofillManager.onPostAttach$ui(layoutNode);
    }

    @Override // androidx.compose.ui.node.Owner
    public void onPostLayoutNodeReused(LayoutNode layoutNode, int i) {
        AndroidAutofillManager androidAutofillManager;
        if (!autofillSupported() || (androidAutofillManager = this._autofillManager) == null) {
            return;
        }
        androidAutofillManager.onPostLayoutNodeReused$ui(layoutNode, i);
    }

    @Override // androidx.compose.ui.node.Owner
    public void onPreAttach(LayoutNode layoutNode) {
        getLayoutNodes().set(layoutNode.getSemanticsId(), layoutNode);
    }

    @Override // androidx.compose.ui.node.Owner
    public void onPreLayoutNodeReused(LayoutNode layoutNode, int i) {
        getLayoutNodes().remove(i);
        getLayoutNodes().set(layoutNode.getSemanticsId(), layoutNode);
    }

    @Override // android.view.View
    public void onProvideAutofillVirtualStructure(ViewStructure viewStructure, int i) {
        if (!autofillSupported() || viewStructure == null) {
            return;
        }
        AndroidAutofillManager androidAutofillManager = this._autofillManager;
        if (androidAutofillManager != null) {
            androidAutofillManager.populateViewStructure(viewStructure);
        }
        AndroidAutofill androidAutofill = this._autofill;
        if (androidAutofill != null) {
            AndroidAutofill_androidKt.populateViewStructure(androidAutofill, viewStructure);
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public void onRequestMeasure(LayoutNode layoutNode, boolean z, boolean z2, boolean z3) {
        MeasureAndLayoutDelegate measureAndLayoutDelegate = this.measureAndLayoutDelegate;
        if (z) {
            if (measureAndLayoutDelegate.requestLookaheadRemeasure(layoutNode, z2) && z3) {
                scheduleMeasureAndLayout(layoutNode);
                return;
            }
            return;
        }
        if (measureAndLayoutDelegate.requestRemeasure(layoutNode, z2) && z3) {
            scheduleMeasureAndLayout(layoutNode);
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public void onRequestRelayout(LayoutNode layoutNode, boolean z, boolean z2) {
        MeasureAndLayoutDelegate measureAndLayoutDelegate = this.measureAndLayoutDelegate;
        if (z) {
            if (measureAndLayoutDelegate.requestLookaheadRelayout(layoutNode, z2)) {
                scheduleMeasureAndLayout$default(this, null, 1, null);
            }
        } else if (measureAndLayoutDelegate.requestRelayout(layoutNode, z2)) {
            scheduleMeasureAndLayout$default(this, null, 1, null);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public android.view.PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        PointerIcon stylusHoverIcon;
        int toolType = motionEvent.getToolType(i);
        return (motionEvent.isFromSource(8194) || !motionEvent.isFromSource(InputDeviceCompat.SOURCE_STYLUS) || !(toolType == 2 || toolType == 4) || (stylusHoverIcon = getPointerIconService().getStylusHoverIcon()) == null) ? super.onResolvePointerIcon(motionEvent, i) : AndroidComposeViewVerificationHelperMethodsN.INSTANCE.toAndroidPointerIcon(getContext(), stylusHoverIcon);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onResume(LifecycleOwner lifecycleOwner) {
        if (Build.VERSION.SDK_INT < 30) {
            setShowLayoutBounds(Companion.getIsShowingLayoutBounds());
        }
        LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry retainedValuesStoreEntry = this.lifecycleRetainedValuesStoreOwnerEntry;
        if (retainedValuesStoreEntry != null) {
            LifecycleRetainedValuesStoreOwner.FrameEndScheduler frameEndScheduler = this.frameEndScheduler;
            frameEndScheduler.getClass();
            retainedValuesStoreEntry.stopRetainingExitedValues(frameEndScheduler);
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        if (this.superclassInitComplete) {
            LayoutDirection layoutDirection = FocusInteropUtils_androidKt.toLayoutDirection(i);
            if (layoutDirection == null) {
                layoutDirection = LayoutDirection.Ltr;
            }
            setLayoutDirection(layoutDirection);
        }
    }

    @Override // android.view.View
    public void onScrollCaptureSearch(android.graphics.Rect rect, Point point, Consumer<ScrollCaptureTarget> consumer) {
        ScrollCapture scrollCapture;
        if (Build.VERSION.SDK_INT < 31 || (scrollCapture = this.scrollCapture) == null) {
            return;
        }
        scrollCapture.onScrollCaptureSearch(this, getSemanticsOwner(), getCoroutineContext(), consumer);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public void onScrollChanged() {
        updatePositionCacheAndDispatch();
    }

    @Override // androidx.compose.ui.node.Owner
    public void onSemanticsChange() {
        this.composeAccessibilityDelegate.onSemanticsChange$ui();
        this.contentCaptureManager.onSemanticsChange$ui();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStop(LifecycleOwner lifecycleOwner) {
        LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry retainedValuesStoreEntry = this.lifecycleRetainedValuesStoreOwnerEntry;
        if (retainedValuesStoreEntry != null) {
            retainedValuesStoreEntry.startRetainingExitedValues();
        }
    }

    @Override // android.view.ViewTreeObserver.OnTouchModeChangeListener
    public void onTouchModeChanged(boolean z) {
        this._inputModeManager.m7047setInputModeiuPiT84(z ? InputMode.Companion.m7043getTouchaOaMEAU() : InputMode.Companion.m7042getKeyboardaOaMEAU());
    }

    @Override // android.view.View
    public void onVirtualViewTranslationResponses(LongSparseArray<ViewTranslationResponse> longSparseArray) {
        AndroidContentCaptureManager androidContentCaptureManager = this.contentCaptureManager;
        androidContentCaptureManager.onVirtualViewTranslationResponses$ui(androidContentCaptureManager, longSparseArray);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        boolean isShowingLayoutBounds;
        if (!AndroidComposeUiFlags.isSharedWindowInfoEnabled) {
            this._windowInfo.setWindowFocused(z);
        }
        this.keyboardModifiersRequireUpdate = true;
        super.onWindowFocusChanged(z);
        if (!z || Build.VERSION.SDK_INT >= 30 || getShowLayoutBounds() == (isShowingLayoutBounds = Companion.getIsShowingLayoutBounds())) {
            return;
        }
        setShowLayoutBounds(isShowingLayoutBounds);
        invalidateDescendants();
    }

    public final boolean recycle$ui(OwnedLayer ownedLayer) {
        if (this.viewLayersContainer != null) {
            ViewLayer.Companion.getShouldUseDispatchDraw();
        }
        this.layerCache.push(ownedLayer);
        this.dirtyLayers.remove(ownedLayer);
        return true;
    }

    @Override // androidx.compose.ui.node.Owner
    public void registerOnEndApplyChangesListener(ll3<j59> ll3Var) {
        if (this.endApplyChangesListeners.contains(ll3Var)) {
            return;
        }
        this.endApplyChangesListeners.add(ll3Var);
    }

    @Override // androidx.compose.ui.node.Owner
    public void registerOnLayoutCompletedListener(Owner.OnLayoutCompletedListener onLayoutCompletedListener) {
        this.measureAndLayoutDelegate.registerOnLayoutCompletedListener(onLayoutCompletedListener);
        scheduleMeasureAndLayout$default(this, null, 1, null);
    }

    public final void removeAndroidView(AndroidViewHolder androidViewHolder) {
        getAndroidViewsHandler$ui().removeViewInLayout(androidViewHolder);
        HashMap<LayoutNode, AndroidViewHolder> layoutNodeToHolder = getAndroidViewsHandler$ui().getLayoutNodeToHolder();
        v39.b(layoutNodeToHolder).remove(getAndroidViewsHandler$ui().getHolderToLayoutNode().remove(androidViewHolder));
        androidViewHolder.setImportantForAccessibility(0);
    }

    public final void removeConnectionToComposeViewContext() {
        if (this.composeViewContextIncrementedDuringInit) {
            getComposeViewContext().decrementViewCount$ui();
            this.composeViewContextIncrementedDuringInit = false;
        }
    }

    @Override // androidx.compose.ui.spatial.ExecuteDelayed
    public void removeDelayedExecution(Object obj) {
        Runnable runnable = obj instanceof Runnable ? (Runnable) obj : null;
        if (runnable == null) {
            return;
        }
        removeCallbacks(runnable);
    }

    @Override // androidx.compose.ui.node.Owner
    public void requestAutofill(LayoutNode layoutNode) {
        AndroidAutofillManager androidAutofillManager;
        if (!autofillSupported() || (androidAutofillManager = this._autofillManager) == null) {
            return;
        }
        androidAutofillManager.requestAutofill$ui(layoutNode);
    }

    public final void requestClearInvalidObservations() {
        this.observationClearRequested = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i, android.graphics.Rect rect) {
        if (ComposeUiFlags.isViewFocusFixEnabled) {
            return requestFocusViewFocusFix(i, rect);
        }
        return ComposeUiFlags.isBypassUnfocusableComposeViewEnabled ? requestFocusBypassUnfocusableComposeView(i, rect) : requestFocusCurrent(i, rect);
    }

    public final boolean requestFocusBypassUnfocusableComposeView(int i, android.graphics.Rect rect) {
        if (isFocused()) {
            return true;
        }
        FocusDirection focusDirection = FocusInteropUtils_androidKt.toFocusDirection(i);
        int iM5865unboximpl = focusDirection != null ? focusDirection.m5865unboximpl() : FocusDirection.Companion.m5867getEnterdhqQ8s();
        Boolean boolMo5881focusSearchULY8qGw = getFocusOwner().mo5881focusSearchULY8qGw(iM5865unboximpl, rect != null ? RectHelper_androidKt.toComposeRect(rect) : null, new AndroidComposeView$requestFocusBypassUnfocusableComposeView$requestFocusWithPrevRect$1(iM5865unboximpl));
        Boolean bool = Boolean.TRUE;
        if (aa4.e(boolMo5881focusSearchULY8qGw, bool) || aa4.e(getFocusOwner().mo5881focusSearchULY8qGw(iM5865unboximpl, null, new AndroidComposeView$requestFocusBypassUnfocusableComposeView$requestFocusWithoutPrevRect$1(iM5865unboximpl)), bool)) {
            return true;
        }
        if (hasFocus() && FocusOwnerImplKt.m5889is1dFocusSearch3ESFkO8(iM5865unboximpl)) {
            return getFocusOwner().mo5884resetFocus3ESFkO8(iM5865unboximpl);
        }
        return false;
    }

    public final boolean requestFocusCurrent(int i, android.graphics.Rect rect) {
        if (isFocused()) {
            return true;
        }
        if (getFocusOwner().getRootState().getHasFocus()) {
            return super.requestFocus(i, rect);
        }
        FocusDirection focusDirection = FocusInteropUtils_androidKt.toFocusDirection(i);
        int iM5865unboximpl = focusDirection != null ? focusDirection.m5865unboximpl() : FocusDirection.Companion.m5867getEnterdhqQ8s();
        return aa4.e(getFocusOwner().mo5881focusSearchULY8qGw(iM5865unboximpl, rect != null ? RectHelper_androidKt.toComposeRect(rect) : null, new C06471(iM5865unboximpl)), Boolean.TRUE);
    }

    public final boolean requestFocusViewFocusFix(int i, android.graphics.Rect rect) {
        View viewFindNextNonChildView;
        if (isFocused()) {
            return true;
        }
        if (this.processingRequestFocusForNextNonChildView) {
            return false;
        }
        FocusDirection focusDirection = FocusInteropUtils_androidKt.toFocusDirection(i);
        int iM5865unboximpl = focusDirection != null ? focusDirection.m5865unboximpl() : FocusDirection.Companion.m5867getEnterdhqQ8s();
        if (hasFocus() && mo5928moveFocusInChildren3ESFkO8(iM5865unboximpl)) {
            return true;
        }
        n07 n07Var = new n07();
        Boolean boolMo5881focusSearchULY8qGw = getFocusOwner().mo5881focusSearchULY8qGw(iM5865unboximpl, rect != null ? RectHelper_androidKt.toComposeRect(rect) : null, new AndroidComposeView$requestFocusViewFocusFix$focusSearchResult$1(n07Var, iM5865unboximpl));
        if (boolMo5881focusSearchULY8qGw == null) {
            return false;
        }
        if (boolMo5881focusSearchULY8qGw.booleanValue()) {
            return true;
        }
        if (n07Var.b) {
            return false;
        }
        if ((rect != null && !hasFocus() && aa4.e(getFocusOwner().mo5881focusSearchULY8qGw(iM5865unboximpl, null, new AndroidComposeView$requestFocusViewFocusFix$altFocus$1(iM5865unboximpl)), Boolean.TRUE)) || (viewFindNextNonChildView = findNextNonChildView(i)) == null || viewFindNextNonChildView == this) {
            return true;
        }
        this.processingRequestFocusForNextNonChildView = true;
        boolean zRequestFocus = viewFindNextNonChildView.requestFocus(i);
        this.processingRequestFocusForNextNonChildView = false;
        return zRequestFocus;
    }

    @Override // androidx.compose.ui.node.Owner
    public void requestOnPositionedCallback(LayoutNode layoutNode) {
        this.measureAndLayoutDelegate.requestOnPositionedCallback(layoutNode);
        scheduleMeasureAndLayout$default(this, null, 1, null);
    }

    @Override // androidx.compose.ui.focus.PlatformFocusOwner
    /* JADX INFO: renamed from: requestOwnerFocus-7o62pno */
    public boolean mo5929requestOwnerFocus7o62pno(FocusDirection focusDirection, Rect rect) {
        Integer numM5874toAndroidFocusDirection3ESFkO8;
        if (ComposeUiFlags.isBypassUnfocusableComposeViewEnabled) {
            if (isFocused()) {
                return true;
            }
        } else if (isFocused() || hasFocus()) {
            return true;
        }
        return super.requestFocus((focusDirection == null || (numM5874toAndroidFocusDirection3ESFkO8 = FocusInteropUtils_androidKt.m5874toAndroidFocusDirection3ESFkO8(focusDirection.m5865unboximpl())) == null) ? TsExtractor.TS_STREAM_TYPE_HDMV_DTS : numM5874toAndroidFocusDirection3ESFkO8.intValue(), rect != null ? RectHelper_androidKt.toAndroidRect(rect) : null);
    }

    @Override // androidx.compose.ui.node.OutOfFrameExecutor
    public void schedule(ll3<j59> ll3Var) {
        boolean zIsEmpty = this.outOfFrameQueue.isEmpty();
        this.outOfFrameQueue.addLast(ll3Var);
        if (zIsEmpty) {
            Handler handler = getHandler();
            if (handler != null) {
                handler.postAtFrontOfQueue(this.outOfFrameRunnable);
            } else {
                fg.c("schedule is called when outOfFrameExecutor is not available (view is detached)");
            }
        }
    }

    @Override // androidx.compose.ui.input.pointer.PositionCalculator
    /* JADX INFO: renamed from: screenToLocal-MK-Hz9U */
    public long mo7652screenToLocalMKHz9U(long j) {
        recalculateWindowPosition();
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) - Float.intBitsToFloat((int) (this.windowPosition >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) - Float.intBitsToFloat((int) (this.windowPosition & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        return Matrix.m6482mapMKHz9U(this.windowToViewMatrix, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32)));
    }

    @Override // androidx.compose.ui.node.RootForTest
    public boolean sendIndirectPointerEvent(IndirectPointerEvent indirectPointerEvent) {
        if (AndroidIndirectPointerEvent_androidKt.getNativeEvent(indirectPointerEvent).getActionMasked() != 3) {
            return handleIndirectPointerEvent(indirectPointerEvent);
        }
        getFocusOwner().dispatchIndirectPointerCancel();
        return true;
    }

    @Override // androidx.compose.ui.node.RootForTest
    /* JADX INFO: renamed from: sendKeyEvent-ZmokQxo */
    public boolean mo8087sendKeyEventZmokQxo(KeyEvent keyEvent) {
        return getFocusOwner().mo5879dispatchInterceptedSoftKeyboardEventZmokQxo(keyEvent) || FocusOwner.m5877dispatchKeyEventYhN2O0w$default(getFocusOwner(), keyEvent, null, 2, null);
    }

    @Override // androidx.compose.ui.node.RootForTest
    public void setAccessibilityEventBatchIntervalMillis(long j) {
        this.composeAccessibilityDelegate.setSendRecurringAccessibilityEventsIntervalMillis$ui(j);
    }

    public final void setComposeViewContext(ComposeViewContext composeViewContext) {
        if (!(getCoroutineContext() == composeViewContext.getCompositionContext$ui().getEffectCoroutineContext() || getRoot().getChildren$ui().isEmpty())) {
            InlineClassHelperKt.throwIllegalArgumentException("Changing ComposeViewContext cannot change the coroutine context without disposing of the composition first.");
        }
        Snapshot.Companion companion = Snapshot.Companion;
        Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
        nl3<Object, j59> readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot snapshotMakeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            ComposeViewContext composeViewContext2 = get_composeViewContext();
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
            if (composeViewContext != composeViewContext2) {
                if (isAttachedToWindow()) {
                    composeViewContext2.decrementViewCount$ui();
                    composeViewContext.incrementViewCount$ui();
                }
                set_composeViewContext(composeViewContext);
                setCoroutineContext(composeViewContext.getCompositionContext$ui().getEffectCoroutineContext());
            }
        } catch (Throwable th) {
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
            throw th;
        }
    }

    public final void setComposeViewContextIncrementedDuringInit$ui(boolean z) {
        this.composeViewContextIncrementedDuringInit = z;
    }

    public final void setConfiguration(Configuration configuration) {
        this.configuration$delegate.setValue(configuration);
    }

    public final void setContentCaptureManager$ui(AndroidContentCaptureManager androidContentCaptureManager) {
        this.contentCaptureManager = androidContentCaptureManager;
    }

    public void setCoroutineContext(o22 o22Var) {
        this.coroutineContext = o22Var;
    }

    public final void setFrameEndScheduler$ui(LifecycleRetainedValuesStoreOwner.FrameEndScheduler frameEndScheduler) {
        this.frameEndScheduler = frameEndScheduler;
    }

    public final void setLastMatrixRecalculationAnimationTime$ui(long j) {
        this.lastMatrixRecalculationAnimationTime = j;
    }

    public final void setOnReadyForComposition(nl3<? super ComposeViewContext, j59> nl3Var) {
        if (!AndroidComposeUiFlags.isSharedWindowInfoEnabled) {
            if (getViewTreeOwners() != null) {
                nl3Var.invoke(getComposeViewContext());
            }
            if (isAttachedToWindow()) {
                return;
            }
            this.onReadyForComposition = nl3Var;
            return;
        }
        getDerivedIsAttached();
        if (isAttachedToWindow() || this.composeViewContextIncrementedDuringInit) {
            nl3Var.invoke(getComposeViewContext());
        } else {
            this.onReadyForComposition = nl3Var;
        }
    }

    /* JADX INFO: renamed from: setPrimaryDirectionalMotionAxisOverride-r2epLt8$ui, reason: not valid java name */
    public final void m8139setPrimaryDirectionalMotionAxisOverrider2epLt8$ui(IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis) {
        this.primaryDirectionalMotionAxisOverride = indirectPointerEventPrimaryDirectionalMotionAxis;
    }

    @Override // androidx.compose.ui.node.Owner
    public void setShowLayoutBounds(boolean z) {
        this.showLayoutBounds = z;
    }

    @Override // androidx.compose.ui.node.RootForTest
    public void setUncaughtExceptionHandler(RootForTest.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.uncaughtExceptionHandler = uncaughtExceptionHandler;
        this.measureAndLayoutDelegate.setUncaughtExceptionHandler$ui(uncaughtExceptionHandler);
    }

    public final void setUncaughtExceptionHandler$ui(RootForTest.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.uncaughtExceptionHandler = uncaughtExceptionHandler;
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.ui.node.Owner
    public Object textInputSession(bm3<? super PlatformTextInputSessionScope, ? super e02<?>, ? extends Object> bm3Var, e02<?> e02Var) {
        C06481 c06481;
        if (e02Var instanceof C06481) {
            c06481 = (C06481) e02Var;
            int i = c06481.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c06481.label = i - Integer.MIN_VALUE;
            } else {
                c06481 = new C06481(e02Var);
            }
        } else {
            c06481 = new C06481(e02Var);
        }
        Object obj = c06481.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c06481.label;
        if (i2 == 0) {
            r57.b(obj);
            AtomicReference<SessionMutex.Session<AndroidPlatformTextInputSession>> atomicReference = this.textInputSessionMutex;
            AnonymousClass2 anonymousClass2 = new AnonymousClass2();
            c06481.label = 1;
            if (SessionMutex.m5676withSessionCancellingPreviousimpl(atomicReference, anonymousClass2, bm3Var, c06481) == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        h8.d();
        return null;
    }

    @Override // androidx.compose.ui.node.Owner
    public void voteFrameRate(float f) {
        if (isArrEnabled$ui()) {
            if (f > 0.0f) {
                if (Float.isNaN(this.currentFrameRate) || f > this.currentFrameRate) {
                    this.currentFrameRate = f;
                    return;
                }
                return;
            }
            if (f < 0.0f) {
                if (Float.isNaN(this.currentFrameRateCategory) || f < this.currentFrameRateCategory) {
                    this.currentFrameRateCategory = f;
                }
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void addNotificationForSysPropsChange(AndroidComposeView androidComposeView) {
            if (Build.VERSION.SDK_INT > 28) {
                if (AndroidComposeView.systemPropertiesChangedRunnable == null) {
                    qh qhVar = new qh();
                    AndroidComposeView.systemPropertiesChangedRunnable = qhVar;
                    StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
                    try {
                        if (AndroidComposeView.systemPropertiesClass == null) {
                            AndroidComposeView.systemPropertiesClass = Class.forName("android.os.SystemProperties");
                        }
                        if (AndroidComposeView.addChangeCallbackMethod == null) {
                            StrictMode.setVmPolicy(StrictMode.VmPolicy.LAX);
                            Class cls = AndroidComposeView.systemPropertiesClass;
                            AndroidComposeView.addChangeCallbackMethod = cls != null ? cls.getDeclaredMethod("addChangeCallback", Runnable.class) : null;
                        }
                        Method method = AndroidComposeView.addChangeCallbackMethod;
                        if (method != null) {
                            method.invoke(null, qhVar);
                        }
                    } catch (Throwable unused) {
                    }
                    StrictMode.setVmPolicy(vmPolicy);
                }
                synchronized (AndroidComposeView.composeViews) {
                    AndroidComposeView.composeViews.add(androidComposeView);
                    j59 j59Var = j59.a;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void addNotificationForSysPropsChange$lambda$0() {
            synchronized (AndroidComposeView.composeViews) {
                try {
                    int i = 0;
                    if (Build.VERSION.SDK_INT < 30) {
                        MutableObjectList mutableObjectList = AndroidComposeView.composeViews;
                        Object[] objArr = mutableObjectList.content;
                        int i2 = mutableObjectList._size;
                        for (int i3 = 0; i3 < i2; i3++) {
                            AndroidComposeView androidComposeView = (AndroidComposeView) objArr[i3];
                            boolean showLayoutBounds = androidComposeView.getShowLayoutBounds();
                            androidComposeView.setShowLayoutBounds(AndroidComposeView.Companion.getIsShowingLayoutBounds());
                            if (showLayoutBounds != androidComposeView.getShowLayoutBounds()) {
                                androidComposeView.post(new oh(androidComposeView, i));
                            }
                        }
                    } else {
                        MutableObjectList mutableObjectList2 = AndroidComposeView.composeViews;
                        Object[] objArr2 = mutableObjectList2.content;
                        int i4 = mutableObjectList2._size;
                        for (int i5 = 0; i5 < i4; i5++) {
                            AndroidComposeView androidComposeView2 = (AndroidComposeView) objArr2[i5];
                            androidComposeView2.post(new ph(androidComposeView2, i));
                        }
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean getIsShowingLayoutBounds() {
            try {
                if (AndroidComposeView.systemPropertiesClass == null) {
                    AndroidComposeView.systemPropertiesClass = Class.forName("android.os.SystemProperties");
                }
                if (AndroidComposeView.getBooleanMethod == null) {
                    Class cls = AndroidComposeView.systemPropertiesClass;
                    AndroidComposeView.getBooleanMethod = cls != null ? cls.getDeclaredMethod("getBoolean", String.class, Boolean.TYPE) : null;
                }
                Method method = AndroidComposeView.getBooleanMethod;
                Object objInvoke = method != null ? method.invoke(null, "debug.layout", Boolean.FALSE) : null;
                return aa4.e(objInvoke instanceof Boolean ? (Boolean) objInvoke : null, Boolean.TRUE);
            } catch (Exception unused) {
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void removeNotificationForSysPropsChange(AndroidComposeView androidComposeView) {
            if (Build.VERSION.SDK_INT > 28) {
                synchronized (AndroidComposeView.composeViews) {
                    AndroidComposeView.composeViews.remove(androidComposeView);
                    j59 j59Var = j59.a;
                }
            }
        }

        public final void dispatchOnScrollChanged(ViewTreeObserver viewTreeObserver) {
            try {
                if (AndroidComposeView.dispatchOnScrollChangedMethod == null) {
                    Method declaredMethod = viewTreeObserver.getClass().getDeclaredMethod("dispatchOnScrollChanged", null);
                    declaredMethod.setAccessible(true);
                    AndroidComposeView.dispatchOnScrollChangedMethod = declaredMethod;
                }
                Method method = AndroidComposeView.dispatchOnScrollChangedMethod;
                if (method != null) {
                    method.invoke(viewTreeObserver, null);
                }
            } catch (Exception unused) {
            }
        }

        private Companion() {
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public AndroidAccessibilityManager getAccessibilityManager() {
        return this.accessibilityManager;
    }

    @Override // androidx.compose.ui.node.Owner
    public AndroidClipboard getClipboard() {
        return this.clipboard;
    }

    @Override // androidx.compose.ui.node.Owner
    public AndroidClipboardManager getClipboardManager() {
        return this.clipboardManager;
    }

    @Override // androidx.compose.ui.node.Owner
    public AndroidDragAndDropManager getDragAndDropManager() {
        return this.dragAndDropManager;
    }

    @Override // androidx.compose.ui.node.Owner
    public MutableIntObjectMap<LayoutNode> getLayoutNodes() {
        return this.layoutNodes;
    }

    /* JADX INFO: renamed from: androidx.compose.ui.platform.AndroidComposeView$getFocusedRect$1, reason: invalid class name and case insensitive filesystem */
    public static final class C06441 extends gh4 implements nl3<FocusTargetNode, Boolean> {
        public static final C06441 INSTANCE = new C06441();

        public C06441() {
            super(1);
        }

        @Override // defpackage.nl3
        public final Boolean invoke(FocusTargetNode focusTargetNode) {
            return Boolean.TRUE;
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        addView(view, -1);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, int i2) {
        ViewGroup.LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
        layoutParamsGenerateDefaultLayoutParams.width = i;
        layoutParamsGenerateDefaultLayoutParams.height = i2;
        j59 j59Var = j59.a;
        addView(view, -1, layoutParamsGenerateDefaultLayoutParams);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        addView(view, -1, layoutParams);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        addViewInLayout(view, i, layoutParams, true);
    }

    private final void recalculateWindowPosition(MotionEvent motionEvent) {
        this.lastMatrixRecalculationAnimationTime = AnimationUtils.currentAnimationTimeMillis();
        recalculateWindowViewTransforms();
        float[] fArr = this.viewToWindowMatrix;
        float x = motionEvent.getX();
        long jM6482mapMKHz9U = Matrix.m6482mapMKHz9U(fArr, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(motionEvent.getY())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(x) << 32)));
        this.windowPosition = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(motionEvent.getRawX() - Float.intBitsToFloat((int) (jM6482mapMKHz9U >> 32)))) << 32) | (((long) Float.floatToRawIntBits(motionEvent.getRawY() - Float.intBitsToFloat((int) (jM6482mapMKHz9U & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z, int i, android.graphics.Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (z || hasFocus()) {
            return;
        }
        getFocusOwner().releaseFocus();
    }
}
