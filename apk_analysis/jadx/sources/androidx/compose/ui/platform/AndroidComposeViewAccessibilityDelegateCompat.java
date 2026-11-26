package androidx.compose.ui.platform;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.res.Resources;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.text.SpannableString;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.collection.ArraySet;
import androidx.collection.IntIntMapKt;
import androidx.collection.IntList;
import androidx.collection.IntListKt;
import androidx.collection.IntObjectMap;
import androidx.collection.IntObjectMapKt;
import androidx.collection.IntSetKt;
import androidx.collection.MutableIntIntMap;
import androidx.collection.MutableIntList;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.collection.MutableObjectIntMap;
import androidx.collection.ObjectIntMapKt;
import androidx.collection.ScatterSet;
import androidx.collection.SparseArrayCompat;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.AndroidComposeUiFlags;
import androidx.compose.ui.ComposeUiFlags;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.R;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResult;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeKind;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.OwnerSnapshotObserver;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.platform.accessibility.CollectionInfo_androidKt;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.CustomAccessibilityAction;
import androidx.compose.ui.semantics.LiveRegionMode;
import androidx.compose.ui.semantics.ProgressBarRangeInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeKt;
import androidx.compose.ui.semantics.SemanticsNodeWithAdjustedBounds;
import androidx.compose.ui.semantics.SemanticsNode_androidKt;
import androidx.compose.ui.semantics.SemanticsOwnerKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesAndroid;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.platform.AndroidAccessibilitySpannableString_androidKt;
import androidx.compose.ui.text.platform.URLSpanCache;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.util.ListUtilsKt;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.lifecycle.Lifecycle;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.fg;
import defpackage.gh4;
import defpackage.h8;
import defpackage.j59;
import defpackage.jh;
import defpackage.jh2;
import defpackage.l2;
import defpackage.l91;
import defpackage.ll3;
import defpackage.me0;
import defpackage.n1;
import defpackage.nl3;
import defpackage.qn1;
import defpackage.rh;
import defpackage.x81;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidComposeViewAccessibilityDelegateCompat extends AccessibilityDelegateCompat implements View.OnAttachStateChangeListener, android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener, android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener {
    public static final int AccessibilityCursorPositionUndefined = -1;
    public static final int AccessibilitySliderStepsCount = 20;
    public static final int CONTENT_CHANGE_TYPE_CHECKED = 8192;
    public static final String ClassName = "android.view.View";
    public static final String ExtraDataIdKey = "androidx.compose.ui.semantics.id";
    public static final String ExtraDataShapeRectCornersKey = "androidx.compose.ui.semantics.shapeCorners";
    public static final String ExtraDataShapeRectKey = "androidx.compose.ui.semantics.shapeRect";
    public static final String ExtraDataShapeRegionKey = "androidx.compose.ui.semantics.shapeRegion";
    public static final int ExtraDataShapeTypeGeneric = 2;
    public static final String ExtraDataShapeTypeKey = "androidx.compose.ui.semantics.shapeType";
    public static final int ExtraDataShapeTypeRectangle = 0;
    public static final int ExtraDataShapeTypeRounded = 1;
    public static final String ExtraDataTestTagKey = "androidx.compose.ui.semantics.testTag";
    public static final int InvalidId = Integer.MIN_VALUE;
    public static final String LogTag = "AccessibilityDelegate";
    public static final int ParcelSafeTextLength = 100000;
    public static final String TextClassName = "android.widget.TextView";
    public static final String TextFieldClassName = "android.widget.EditText";
    public static final long TextTraversedEventTimeoutMillis = 1000;
    private final String ExtraDataTestTraversalAfterVal;
    private final String ExtraDataTestTraversalBeforeVal;
    private long SendRecurringAccessibilityEventsIntervalMillis;
    private List<? extends AccessibilityServiceInfo> _enabledServices;
    private int accessibilityCursorPosition;
    private int accessibilityFocusedVirtualViewId;
    private boolean accessibilityForceEnabledForTesting;
    private final android.view.accessibility.AccessibilityManager accessibilityManager;
    private SparseArrayCompat<SparseArrayCompat<CharSequence>> actionIdToLabel;
    private final x81<j59> boundsUpdateChannel;
    private boolean checkingForSemanticsChanges;
    private IntObjectMap<SemanticsNodeWithAdjustedBounds> currentSemanticsNodes;
    private boolean currentSemanticsNodesInvalidated;
    private AccessibilityNodeInfoCompat currentlyAccessibilityFocusedANI;
    private AccessibilityNodeInfoCompat currentlyFocusedANI;
    private final MutableIntIntMap drawingOrder;
    private int focusedVirtualViewId;
    private MutableIntIntMap idToAfterMap;
    private MutableIntIntMap idToBeforeMap;
    private SparseArrayCompat<MutableObjectIntMap<CharSequence>> labelToActionId;
    private final Handler legacyMainHandler;
    private ComposeAccessibilityNodeProvider nodeProvider;
    private MutableIntSet paneDisplayed;
    private final MutableIntObjectMap<ScrollAxisRange> pendingHorizontalScrollEvents;
    private PendingTextTraversedEvent pendingTextTraversedEvent;
    private final MutableIntObjectMap<ScrollAxisRange> pendingVerticalScrollEvents;
    private MutableIntObjectMap<SemanticsNodeCopy> previousSemanticsNodes;
    private SemanticsNodeCopy previousSemanticsRoot;
    private Integer previousTraversedNode;
    private Boolean requestFromAccessibilityToolForTesting;
    private final nl3<ScrollObservationScope, j59> scheduleScrollEventIfNeededLambda;
    private final List<ScrollObservationScope> scrollObservationScopes;
    private final Runnable semanticsChangeChecker;
    private boolean sendingFocusAffectingEvent;
    private final ArraySet<LayoutNode> subtreeChangedLayoutNodes;
    private final URLSpanCache urlSpanCache;
    private final AndroidComposeView view;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private static final IntList AccessibilityActionsResourceIds = IntListKt.intListOf(R.id.accessibility_custom_action_0, R.id.accessibility_custom_action_1, R.id.accessibility_custom_action_2, R.id.accessibility_custom_action_3, R.id.accessibility_custom_action_4, R.id.accessibility_custom_action_5, R.id.accessibility_custom_action_6, R.id.accessibility_custom_action_7, R.id.accessibility_custom_action_8, R.id.accessibility_custom_action_9, R.id.accessibility_custom_action_10, R.id.accessibility_custom_action_11, R.id.accessibility_custom_action_12, R.id.accessibility_custom_action_13, R.id.accessibility_custom_action_14, R.id.accessibility_custom_action_15, R.id.accessibility_custom_action_16, R.id.accessibility_custom_action_17, R.id.accessibility_custom_action_18, R.id.accessibility_custom_action_19, R.id.accessibility_custom_action_20, R.id.accessibility_custom_action_21, R.id.accessibility_custom_action_22, R.id.accessibility_custom_action_23, R.id.accessibility_custom_action_24, R.id.accessibility_custom_action_25, R.id.accessibility_custom_action_26, R.id.accessibility_custom_action_27, R.id.accessibility_custom_action_28, R.id.accessibility_custom_action_29, R.id.accessibility_custom_action_30, R.id.accessibility_custom_action_31);
    private int hoveredVirtualViewId = Integer.MIN_VALUE;
    private nl3<? super AccessibilityEvent, Boolean> onSendAccessibilityEvent = new AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1(this);

    public static final class Api24Impl {
        public static final Api24Impl INSTANCE = new Api24Impl();

        private Api24Impl() {
        }

        public static final void addSetProgressAction(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, SemanticsNode semanticsNode) {
            AccessibilityAction accessibilityAction;
            if (!AndroidComposeViewAccessibilityDelegateCompat_androidKt.enabled(semanticsNode) || (accessibilityAction = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), SemanticsActions.INSTANCE.getSetProgress())) == null) {
                return;
            }
            accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(android.R.id.accessibilityActionSetProgress, accessibilityAction.getLabel()));
        }
    }

    public static final class Api29Impl {
        public static final Api29Impl INSTANCE = new Api29Impl();

        private Api29Impl() {
        }

        public static final void addPageActions(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, SemanticsNode semanticsNode) {
            Role role = (Role) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), SemanticsProperties.INSTANCE.getRole());
            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.enabled(semanticsNode)) {
                if (role == null ? false : Role.m8257equalsimpl0(role.m8260unboximpl(), Role.Companion.m8262getCarouselo7Vup1c())) {
                    return;
                }
                SemanticsConfiguration unmergedConfig$ui = semanticsNode.getUnmergedConfig$ui();
                SemanticsActions semanticsActions = SemanticsActions.INSTANCE;
                AccessibilityAction accessibilityAction = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(unmergedConfig$ui, semanticsActions.getPageUp());
                if (accessibilityAction != null) {
                    accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(android.R.id.accessibilityActionPageUp, accessibilityAction.getLabel()));
                }
                AccessibilityAction accessibilityAction2 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsActions.getPageDown());
                if (accessibilityAction2 != null) {
                    accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(android.R.id.accessibilityActionPageDown, accessibilityAction2.getLabel()));
                }
                AccessibilityAction accessibilityAction3 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsActions.getPageLeft());
                if (accessibilityAction3 != null) {
                    accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(android.R.id.accessibilityActionPageLeft, accessibilityAction3.getLabel()));
                }
                AccessibilityAction accessibilityAction4 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsActions.getPageRight());
                if (accessibilityAction4 != null) {
                    accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(android.R.id.accessibilityActionPageRight, accessibilityAction4.getLabel()));
                }
            }
        }
    }

    public final class ComposeAccessibilityNodeProvider extends AccessibilityNodeProviderCompat {
        public ComposeAccessibilityNodeProvider() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public void addExtraDataToAccessibilityNodeInfo(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, String str, Bundle bundle) {
            AndroidComposeViewAccessibilityDelegateCompat.this.addExtraDataToAccessibilityNodeInfoHelper(i, accessibilityNodeInfoCompat, str, bundle);
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int i) {
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompatCreateNodeInfo = AndroidComposeViewAccessibilityDelegateCompat.this.createNodeInfo(i);
            AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = AndroidComposeViewAccessibilityDelegateCompat.this;
            if (androidComposeViewAccessibilityDelegateCompat.sendingFocusAffectingEvent) {
                if (i == androidComposeViewAccessibilityDelegateCompat.accessibilityFocusedVirtualViewId) {
                    androidComposeViewAccessibilityDelegateCompat.currentlyAccessibilityFocusedANI = accessibilityNodeInfoCompatCreateNodeInfo;
                }
                if (i == androidComposeViewAccessibilityDelegateCompat.focusedVirtualViewId) {
                    androidComposeViewAccessibilityDelegateCompat.currentlyFocusedANI = accessibilityNodeInfoCompatCreateNodeInfo;
                }
            }
            return accessibilityNodeInfoCompatCreateNodeInfo;
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public AccessibilityNodeInfoCompat findFocus(int i) {
            if (i == 1) {
                if (AndroidComposeViewAccessibilityDelegateCompat.this.focusedVirtualViewId == Integer.MIN_VALUE) {
                    return null;
                }
                return createAccessibilityNodeInfo(AndroidComposeViewAccessibilityDelegateCompat.this.focusedVirtualViewId);
            }
            if (i == 2) {
                return createAccessibilityNodeInfo(AndroidComposeViewAccessibilityDelegateCompat.this.accessibilityFocusedVirtualViewId);
            }
            fg.c(jh.b(i, "Unknown focus type: "));
            return null;
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public boolean performAction(int i, int i2, Bundle bundle) {
            return AndroidComposeViewAccessibilityDelegateCompat.this.performActionHelper(i, i2, bundle);
        }
    }

    public static final class PendingTextTraversedEvent {
        private final int action;
        private final int fromIndex;
        private final int granularity;
        private final SemanticsNode node;
        private final int toIndex;
        private final long traverseTime;

        public PendingTextTraversedEvent(SemanticsNode semanticsNode, int i, int i2, int i3, int i4, long j) {
            this.node = semanticsNode;
            this.action = i;
            this.granularity = i2;
            this.fromIndex = i3;
            this.toIndex = i4;
            this.traverseTime = j;
        }

        public final int getAction() {
            return this.action;
        }

        public final int getFromIndex() {
            return this.fromIndex;
        }

        public final int getGranularity() {
            return this.granularity;
        }

        public final SemanticsNode getNode() {
            return this.node;
        }

        public final int getToIndex() {
            return this.toIndex;
        }

        public final long getTraverseTime() {
            return this.traverseTime;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$1, reason: invalid class name and case insensitive filesystem */
    public static final class C06491 extends gh4 implements nl3<LayoutNode, Boolean> {
        public static final C06491 INSTANCE = new C06491();

        public C06491() {
            super(1);
        }

        @Override // defpackage.nl3
        public final Boolean invoke(LayoutNode layoutNode) {
            SemanticsConfiguration semanticsConfiguration = layoutNode.getSemanticsConfiguration();
            boolean z = false;
            if (semanticsConfiguration != null && semanticsConfiguration.isMergingSemanticsOfDescendants()) {
                z = true;
            }
            return Boolean.valueOf(z);
        }
    }

    public AndroidComposeViewAccessibilityDelegateCompat(AndroidComposeView androidComposeView) {
        this.view = androidComposeView;
        Object systemService = androidComposeView.getContext().getSystemService("accessibility");
        systemService.getClass();
        this.accessibilityManager = (android.view.accessibility.AccessibilityManager) systemService;
        this.SendRecurringAccessibilityEventsIntervalMillis = 100L;
        this.legacyMainHandler = new Handler(Looper.getMainLooper());
        this.nodeProvider = new ComposeAccessibilityNodeProvider();
        this.accessibilityFocusedVirtualViewId = Integer.MIN_VALUE;
        this.focusedVirtualViewId = Integer.MIN_VALUE;
        int i = 0;
        int i2 = 1;
        jh2 jh2Var = null;
        this.pendingHorizontalScrollEvents = new MutableIntObjectMap<>(i, i2, jh2Var);
        this.pendingVerticalScrollEvents = new MutableIntObjectMap<>(i, i2, jh2Var);
        this.actionIdToLabel = new SparseArrayCompat<>(0, 1, null);
        this.labelToActionId = new SparseArrayCompat<>(0, 1, null);
        this.accessibilityCursorPosition = -1;
        this.subtreeChangedLayoutNodes = new ArraySet<>(i, i2, jh2Var);
        this.boundsUpdateChannel = l91.a(1, null, null, 6);
        this.currentSemanticsNodesInvalidated = true;
        this.currentSemanticsNodes = IntObjectMapKt.intObjectMapOf();
        this.paneDisplayed = new MutableIntSet(i, i2, jh2Var);
        this.idToBeforeMap = new MutableIntIntMap(i, i2, jh2Var);
        this.idToAfterMap = new MutableIntIntMap(i, i2, jh2Var);
        this.ExtraDataTestTraversalBeforeVal = "android.view.accessibility.extra.EXTRA_DATA_TEST_TRAVERSALBEFORE_VAL";
        this.ExtraDataTestTraversalAfterVal = "android.view.accessibility.extra.EXTRA_DATA_TEST_TRAVERSALAFTER_VAL";
        this.urlSpanCache = new URLSpanCache();
        this.previousSemanticsNodes = IntObjectMapKt.mutableIntObjectMapOf();
        this.previousSemanticsRoot = new SemanticsNodeCopy(androidComposeView.getSemanticsOwner().getUnmergedRootSemanticsNode(), IntObjectMapKt.intObjectMapOf());
        this.drawingOrder = IntIntMapKt.mutableIntIntMapOf();
        androidComposeView.addOnAttachStateChangeListener(this);
        this.semanticsChangeChecker = new rh(this, i);
        this.scrollObservationScopes = new ArrayList();
        this.scheduleScrollEventIfNeededLambda = new AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeededLambda$1(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addExtraDataToAccessibilityNodeInfoHelper(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, String str, Bundle bundle) {
        SemanticsNode semanticsNode;
        float[] cornerArray;
        SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = getCurrentSemanticsNodes().get(i);
        if (semanticsNodeWithAdjustedBounds == null || (semanticsNode = semanticsNodeWithAdjustedBounds.getSemanticsNode()) == null) {
            return;
        }
        String iterableTextForAccessibility = getIterableTextForAccessibility(semanticsNode);
        if (aa4.e(str, this.ExtraDataTestTraversalBeforeVal)) {
            int orDefault = this.idToBeforeMap.getOrDefault(i, -1);
            if (orDefault != -1) {
                accessibilityNodeInfoCompat.getExtras().putInt(str, orDefault);
                return;
            }
            return;
        }
        if (aa4.e(str, this.ExtraDataTestTraversalAfterVal)) {
            int orDefault2 = this.idToAfterMap.getOrDefault(i, -1);
            if (orDefault2 != -1) {
                accessibilityNodeInfoCompat.getExtras().putInt(str, orDefault2);
                return;
            }
            return;
        }
        if (semanticsNode.getUnmergedConfig$ui().contains(SemanticsActions.INSTANCE.getGetTextLayoutResult()) && bundle != null && aa4.e(str, AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_KEY)) {
            int i2 = bundle.getInt(AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX, -1);
            int i3 = bundle.getInt(AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH, -1);
            if (i3 > 0 && i2 >= 0) {
                if (i2 < (iterableTextForAccessibility != null ? iterableTextForAccessibility.length() : Integer.MAX_VALUE)) {
                    TextLayoutResult textLayoutResult = SemanticsUtils_androidKt.getTextLayoutResult(semanticsNode.getUnmergedConfig$ui());
                    if (textLayoutResult == null) {
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    for (int i4 = 0; i4 < i3; i4++) {
                        int i5 = i2 + i4;
                        if (i5 >= textLayoutResult.getLayoutInput().getText().length()) {
                            arrayList.add(null);
                        } else {
                            arrayList.add(toScreenCoords(semanticsNode, textLayoutResult.getBoundingBox(i5)));
                        }
                    }
                    accessibilityNodeInfoCompat.getExtras().putParcelableArray(str, (Parcelable[]) arrayList.toArray(new RectF[0]));
                    return;
                }
            }
            Log.e(LogTag, "Invalid arguments for accessibility character locations");
            return;
        }
        SemanticsConfiguration unmergedConfig$ui = semanticsNode.getUnmergedConfig$ui();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        if (unmergedConfig$ui.contains(semanticsProperties.getTestTag()) && bundle != null && aa4.e(str, ExtraDataTestTagKey)) {
            String str2 = (String) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsProperties.getTestTag());
            if (str2 != null) {
                accessibilityNodeInfoCompat.getExtras().putCharSequence(str, str2);
                return;
            }
            return;
        }
        if (aa4.e(str, ExtraDataIdKey)) {
            accessibilityNodeInfoCompat.getExtras().putInt(str, semanticsNode.getId());
            return;
        }
        if (aa4.e(str, ExtraDataShapeTypeKey)) {
            Shape shape = (Shape) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsProperties.getShape());
            if (shape != null) {
                Rect shapeBounds = getShapeBounds(semanticsNode, getBoundsInScreen(accessibilityNodeInfoCompat), shape);
                Outline outlineM8144createOutline12SF9DM = m8144createOutline12SF9DM(shape, shapeBounds.m6020getSizeNHjbRc(), semanticsNode.getLayoutInfo().getLayoutDirection());
                if (outlineM8144createOutline12SF9DM instanceof Outline.Rectangle) {
                    accessibilityNodeInfoCompat.getExtras().putInt(ExtraDataShapeTypeKey, 0);
                    accessibilityNodeInfoCompat.getExtras().putParcelable(ExtraDataShapeRectKey, toAndroidRect(outlineM8144createOutline12SF9DM, shapeBounds.getLeft(), shapeBounds.getTop()));
                    return;
                } else if (outlineM8144createOutline12SF9DM instanceof Outline.Rounded) {
                    accessibilityNodeInfoCompat.getExtras().putInt(ExtraDataShapeTypeKey, 1);
                    accessibilityNodeInfoCompat.getExtras().putParcelable(ExtraDataShapeRectKey, toAndroidRect(outlineM8144createOutline12SF9DM, shapeBounds.getLeft(), shapeBounds.getTop()));
                    accessibilityNodeInfoCompat.getExtras().putFloatArray(ExtraDataShapeRectCornersKey, toCornerArray(outlineM8144createOutline12SF9DM));
                    return;
                } else if (!(outlineM8144createOutline12SF9DM instanceof Outline.Generic)) {
                    me0.e();
                    return;
                } else {
                    accessibilityNodeInfoCompat.getExtras().putInt(ExtraDataShapeTypeKey, 2);
                    accessibilityNodeInfoCompat.getExtras().putParcelable(ExtraDataShapeRegionKey, toRegion(outlineM8144createOutline12SF9DM, shapeBounds.getLeft(), shapeBounds.getTop()));
                    return;
                }
            }
            return;
        }
        if (aa4.e(str, ExtraDataShapeRectKey)) {
            Shape shape2 = (Shape) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsProperties.getShape());
            if (shape2 != null) {
                Rect shapeBounds2 = getShapeBounds(semanticsNode, getBoundsInScreen(accessibilityNodeInfoCompat), shape2);
                android.graphics.Rect androidRect = toAndroidRect(m8144createOutline12SF9DM(shape2, shapeBounds2.m6020getSizeNHjbRc(), semanticsNode.getLayoutInfo().getLayoutDirection()), shapeBounds2.getLeft(), shapeBounds2.getTop());
                if (androidRect != null) {
                    accessibilityNodeInfoCompat.getExtras().putParcelable(ExtraDataShapeRectKey, androidRect);
                    return;
                }
                return;
            }
            return;
        }
        if (aa4.e(str, ExtraDataShapeRectCornersKey)) {
            Shape shape3 = (Shape) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsProperties.getShape());
            if (shape3 == null || (cornerArray = toCornerArray(m8144createOutline12SF9DM(shape3, getShapeBounds(semanticsNode, getBoundsInScreen(accessibilityNodeInfoCompat), shape3).m6020getSizeNHjbRc(), semanticsNode.getLayoutInfo().getLayoutDirection()))) == null) {
                return;
            }
            accessibilityNodeInfoCompat.getExtras().putFloatArray(ExtraDataShapeRectCornersKey, cornerArray);
            return;
        }
        if (aa4.e(str, ExtraDataShapeRegionKey)) {
            Shape shape4 = (Shape) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsProperties.getShape());
            if (shape4 != null) {
                Rect shapeBounds3 = getShapeBounds(semanticsNode, getBoundsInScreen(accessibilityNodeInfoCompat), shape4);
                Region region = toRegion(m8144createOutline12SF9DM(shape4, shapeBounds3.m6020getSizeNHjbRc(), semanticsNode.getLayoutInfo().getLayoutDirection()), shapeBounds3.getLeft(), shapeBounds3.getTop());
                if (region != null) {
                    accessibilityNodeInfoCompat.getExtras().putParcelable(ExtraDataShapeRegionKey, region);
                    return;
                }
                return;
            }
            return;
        }
        ScatterSet<SemanticsPropertyKey<?>> accessibilityExtraKeys$ui = semanticsNode.getUnmergedConfig$ui().getAccessibilityExtraKeys$ui();
        if (accessibilityExtraKeys$ui == null) {
            return;
        }
        Object[] objArr = accessibilityExtraKeys$ui.elements;
        long[] jArr = accessibilityExtraKeys$ui.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i6 = 0;
        while (true) {
            long j = jArr[i6];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i7 = 8 - ((~(i6 - length)) >>> 31);
                for (int i8 = 0; i8 < i7; i8++) {
                    if ((255 & j) < 128) {
                        SemanticsPropertyKey semanticsPropertyKey = (SemanticsPropertyKey) objArr[(i6 << 3) + i8];
                        String accessibilityExtraKey$ui = semanticsPropertyKey.getAccessibilityExtraKey$ui();
                        if (aa4.e(accessibilityExtraKey$ui, str)) {
                            Object orNull = SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsPropertyKey);
                            if (orNull instanceof Serializable) {
                                accessibilityNodeInfoCompat.getExtras().putSerializable(accessibilityExtraKey$ui, (Serializable) orNull);
                            } else {
                                if (!(orNull instanceof Parcelable)) {
                                    ah.f("Accessibility extra values must be either Serializable or Parcelable.");
                                    return;
                                }
                                accessibilityNodeInfoCompat.getExtras().putParcelable(accessibilityExtraKey$ui, (Parcelable) orNull);
                            }
                        } else {
                            continue;
                        }
                    }
                    j >>= 8;
                }
                if (i7 != 8) {
                    return;
                }
            }
            if (i6 == length) {
                return;
            } else {
                i6++;
            }
        }
    }

    /* JADX INFO: renamed from: adjustForReversedScrollingAndRtl-RE3cj74, reason: not valid java name */
    private final long m8142adjustForReversedScrollingAndRtlRE3cj74(SemanticsNode semanticsNode, SemanticsNode semanticsNode2, long j) {
        if (Offset.m5984equalsimpl0(j, Offset.Companion.m6003getZeroF1C5BW0())) {
            return j;
        }
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        SemanticsConfiguration unmergedConfig$ui = semanticsNode2.getUnmergedConfig$ui();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        ScrollAxisRange scrollAxisRange = (ScrollAxisRange) SemanticsConfigurationKt.getOrNull(unmergedConfig$ui, semanticsProperties.getHorizontalScrollAxisRange());
        if (scrollAxisRange != null && scrollAxisRange.getReverseScrolling()) {
            fIntBitsToFloat = -fIntBitsToFloat;
        }
        if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.isRtl(semanticsNode)) {
            fIntBitsToFloat = -fIntBitsToFloat;
        }
        ScrollAxisRange scrollAxisRange2 = (ScrollAxisRange) SemanticsConfigurationKt.getOrNull(semanticsNode2.getUnmergedConfig$ui(), semanticsProperties.getVerticalScrollAxisRange());
        if (scrollAxisRange2 != null && scrollAxisRange2.getReverseScrolling()) {
            fIntBitsToFloat2 = -fIntBitsToFloat2;
        }
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final android.graphics.Rect boundsInScreen(SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds) {
        IntRect adjustedBounds = semanticsNodeWithAdjustedBounds.getAdjustedBounds();
        return toBoundsInScreen(adjustedBounds.getLeft(), adjustedBounds.getTop(), adjustedBounds.getRight(), adjustedBounds.getBottom());
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:41:0x00e5  */
    /* JADX INFO: renamed from: canScroll-moWRBKg, reason: not valid java name */
    private final boolean m8143canScrollmoWRBKg(IntObjectMap<SemanticsNodeWithAdjustedBounds> intObjectMap, boolean z, int i, long j) {
        SemanticsPropertyKey<ScrollAxisRange> horizontalScrollAxisRange;
        ScrollAxisRange scrollAxisRange;
        if (Offset.m5984equalsimpl0(j, Offset.Companion.m6002getUnspecifiedF1C5BW0()) || (((9223372034707292159L & j) + InlineClassHelperKt.DualLoadedSignificand) & (-9223372034707292160L)) != 0) {
            return false;
        }
        if (z) {
            horizontalScrollAxisRange = SemanticsProperties.INSTANCE.getVerticalScrollAxisRange();
        } else {
            if (z) {
                me0.e();
                return false;
            }
            horizontalScrollAxisRange = SemanticsProperties.INSTANCE.getHorizontalScrollAxisRange();
        }
        Object[] objArr = intObjectMap.values;
        long[] jArr = intObjectMap.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return false;
        }
        int i2 = 0;
        boolean z2 = false;
        while (true) {
            long j2 = jArr[i2];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i2 - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((j2 & 255) < 128) {
                        SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) objArr[(i2 << 3) + i4];
                        if (IntRectKt.toRect(semanticsNodeWithAdjustedBounds.getAdjustedBounds()).m6013containsk4lQ0M(j) && (scrollAxisRange = (ScrollAxisRange) SemanticsConfigurationKt.getOrNull(semanticsNodeWithAdjustedBounds.getSemanticsNode().getUnmergedConfig$ui(), horizontalScrollAxisRange)) != null) {
                            int i5 = scrollAxisRange.getReverseScrolling() ? -i : i;
                            if (i == 0 && scrollAxisRange.getReverseScrolling()) {
                                i5 = -1;
                            }
                            if (i5 < 0) {
                                if (scrollAxisRange.getValue().invoke().floatValue() > 0.0f) {
                                    z2 = true;
                                }
                            } else if (scrollAxisRange.getValue().invoke().floatValue() < scrollAxisRange.getMaxValue().invoke().floatValue()) {
                                z2 = true;
                            }
                        }
                    }
                    j2 >>= 8;
                }
                if (i3 != 8) {
                    return z2;
                }
            }
            if (i2 == length) {
                return z2;
            }
            i2++;
        }
    }

    private final void checkForSemanticsChanges() {
        Trace.beginSection("sendAccessibilitySemanticsStructureChangeEvents");
        try {
            if (isEnabled$ui()) {
                sendAccessibilitySemanticsStructureChangeEvents(this.view.getSemanticsOwner().getUnmergedRootSemanticsNode(), this.previousSemanticsRoot);
            }
            j59 j59Var = j59.a;
            Trace.endSection();
            Trace.beginSection("sendSemanticsPropertyChangeEvents");
            try {
                sendSemanticsPropertyChangeEvents(getCurrentSemanticsNodes());
                Trace.endSection();
                Trace.beginSection("updateSemanticsNodesCopyAndPanes");
                try {
                    updateSemanticsNodesCopyAndPanes();
                } finally {
                    Trace.endSection();
                }
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        } catch (Throwable th2) {
            Trace.endSection();
            throw th2;
        }
    }

    private final boolean clearAccessibilityFocus(int i) {
        if (!isAccessibilityFocused(i)) {
            return false;
        }
        this.accessibilityFocusedVirtualViewId = Integer.MIN_VALUE;
        this.currentlyAccessibilityFocusedANI = null;
        this.view.invalidate();
        sendEventForVirtualView$default(this, i, 65536, null, null, 12, null);
        return true;
    }

    private final AccessibilityEvent createEvent(int i, int i2) {
        SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds;
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i2);
        accessibilityEventObtain.setEnabled(true);
        accessibilityEventObtain.setClassName(ClassName);
        accessibilityEventObtain.setPackageName(this.view.getContext().getPackageName());
        accessibilityEventObtain.setSource(this.view, i);
        if (isEnabled$ui() && (semanticsNodeWithAdjustedBounds = getCurrentSemanticsNodes().get(i)) != null) {
            SemanticsConfiguration unmergedConfig$ui = semanticsNodeWithAdjustedBounds.getSemanticsNode().getUnmergedConfig$ui();
            SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
            accessibilityEventObtain.setPassword(unmergedConfig$ui.contains(semanticsProperties.getPassword()));
            AccessibilityEventCompat.setAccessibilityDataSensitive(accessibilityEventObtain, aa4.e(SemanticsConfigurationKt.getOrNull(semanticsNodeWithAdjustedBounds.getSemanticsNode().getUnmergedConfig$ui(), semanticsProperties.getIsSensitiveData()), Boolean.TRUE));
        }
        return accessibilityEventObtain;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AccessibilityNodeInfoCompat createNodeInfo(int i) {
        SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds;
        if (this.view.getComposeViewContext().getLifecycleOwner$ui().getLifecycle().getCurrentState() != Lifecycle.State.DESTROYED && (semanticsNodeWithAdjustedBounds = getCurrentSemanticsNodes().get(i)) != null) {
            SemanticsNode semanticsNode = semanticsNodeWithAdjustedBounds.getSemanticsNode();
            boolean zE = aa4.e(SemanticsConfigurationKt.getOrNull(semanticsNode.getConfig(), SemanticsProperties.INSTANCE.getIsSensitiveData()), Boolean.TRUE);
            if (zE && !isRequestFromAccessibilityTool()) {
                return null;
            }
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompatObtain = AccessibilityNodeInfoCompat.obtain();
            accessibilityNodeInfoCompatObtain.setAccessibilityDataSensitive(zE);
            if (i == -1) {
                Object parentForAccessibility = this.view.getParentForAccessibility();
                accessibilityNodeInfoCompatObtain.setParent(parentForAccessibility instanceof View ? (View) parentForAccessibility : null);
            } else {
                SemanticsNode parent = semanticsNode.getParent();
                Integer numValueOf = parent != null ? Integer.valueOf(parent.getId()) : null;
                if (numValueOf == null) {
                    androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("semanticsNode " + i + " has null parent");
                    h8.d();
                    return null;
                }
                int iIntValue = numValueOf.intValue();
                accessibilityNodeInfoCompatObtain.setParent(this.view, iIntValue != this.view.getSemanticsOwner().getUnmergedRootSemanticsNode().getId() ? iIntValue : -1);
            }
            accessibilityNodeInfoCompatObtain.setSource(this.view, i);
            accessibilityNodeInfoCompatObtain.setBoundsInScreen(boundsInScreen(semanticsNodeWithAdjustedBounds));
            populateAccessibilityNodeInfoProperties(i, accessibilityNodeInfoCompatObtain, semanticsNode);
            return accessibilityNodeInfoCompatObtain;
        }
        return emptyNodeInfoOrNull();
    }

    /* JADX INFO: renamed from: createOutline-12SF9DM, reason: not valid java name */
    private final Outline m8144createOutline12SF9DM(Shape shape, long j, LayoutDirection layoutDirection) {
        return shape.mo1345createOutlinePq9zytI(j, layoutDirection, this.view.getDensity());
    }

    private final AccessibilityEvent createTextSelectionChangedEvent(int i, Integer num, Integer num2, Integer num3, CharSequence charSequence) {
        AccessibilityEvent accessibilityEventCreateEvent = createEvent(i, 8192);
        if (num != null) {
            accessibilityEventCreateEvent.setFromIndex(num.intValue());
        }
        if (num2 != null) {
            accessibilityEventCreateEvent.setToIndex(num2.intValue());
        }
        if (num3 != null) {
            accessibilityEventCreateEvent.setItemCount(num3.intValue());
        }
        if (charSequence != null) {
            accessibilityEventCreateEvent.getText().add(charSequence);
        }
        return accessibilityEventCreateEvent;
    }

    private final AccessibilityNodeInfoCompat emptyNodeInfoOrNull() {
        if (this.accessibilityManager.isEnabled()) {
            return null;
        }
        return AccessibilityNodeInfoCompat.obtain();
    }

    private final int getAccessibilitySelectionEnd(SemanticsNode semanticsNode) {
        SemanticsConfiguration unmergedConfig$ui = semanticsNode.getUnmergedConfig$ui();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        return (unmergedConfig$ui.contains(semanticsProperties.getContentDescription()) || !semanticsNode.getUnmergedConfig$ui().contains(semanticsProperties.getTextSelectionRange())) ? this.accessibilityCursorPosition : TextRange.m8486getEndimpl(((TextRange) semanticsNode.getUnmergedConfig$ui().get(semanticsProperties.getTextSelectionRange())).m8495unboximpl());
    }

    private final int getAccessibilitySelectionStart(SemanticsNode semanticsNode) {
        SemanticsConfiguration unmergedConfig$ui = semanticsNode.getUnmergedConfig$ui();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        return (unmergedConfig$ui.contains(semanticsProperties.getContentDescription()) || !semanticsNode.getUnmergedConfig$ui().contains(semanticsProperties.getTextSelectionRange())) ? this.accessibilityCursorPosition : TextRange.m8491getStartimpl(((TextRange) semanticsNode.getUnmergedConfig$ui().get(semanticsProperties.getTextSelectionRange())).m8495unboximpl());
    }

    private final android.graphics.Rect getBoundsInScreen(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        android.graphics.Rect rect = new android.graphics.Rect();
        accessibilityNodeInfoCompat.getBoundsInScreen(rect);
        return rect;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final IntObjectMap<SemanticsNodeWithAdjustedBounds> getCurrentSemanticsNodes() {
        if (this.currentSemanticsNodesInvalidated) {
            this.currentSemanticsNodesInvalidated = false;
            this.currentSemanticsNodes = SemanticsOwnerKt.getAllUncoveredSemanticsNodesToIntObjectMap(this.view.getSemanticsOwner(), -1, AndroidComposeViewAccessibilityDelegateCompat$currentSemanticsNodes$1.INSTANCE);
            if (isEnabled$ui()) {
                AndroidComposeViewAccessibilityDelegateCompat_androidKt.setTraversalValues(this.currentSemanticsNodes, this.idToBeforeMap, this.idToAfterMap, this.view.getContext().getResources());
            }
        }
        return this.currentSemanticsNodes;
    }

    private final List<AccessibilityServiceInfo> getEnabledServices() {
        List list = this._enabledServices;
        if (list != null) {
            return list;
        }
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = this.accessibilityManager.getEnabledAccessibilityServiceList(-1);
        this._enabledServices = enabledAccessibilityServiceList;
        return enabledAccessibilityServiceList;
    }

    private final Handler getHandler() {
        return AndroidComposeUiFlags.isViewBasedSemanticsHandlerEnabled ? this.view.getHandler() : this.legacyMainHandler;
    }

    private static /* synthetic */ void getHandler$annotations() {
    }

    public static /* synthetic */ void getHoveredVirtualViewId$ui$annotations() {
    }

    private final String getIterableTextForAccessibility(SemanticsNode semanticsNode) {
        AnnotatedString annotatedString;
        if (semanticsNode == null) {
            return null;
        }
        SemanticsConfiguration unmergedConfig$ui = semanticsNode.getUnmergedConfig$ui();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        if (unmergedConfig$ui.contains(semanticsProperties.getContentDescription())) {
            return ListUtilsKt.fastJoinToString$default((List) semanticsNode.getUnmergedConfig$ui().get(semanticsProperties.getContentDescription()), StringUtils.COMMA, null, null, 0, null, null, 62, null);
        }
        if (semanticsNode.getUnmergedConfig$ui().contains(semanticsProperties.getEditableText())) {
            AnnotatedString textForTextField = getTextForTextField(semanticsNode.getUnmergedConfig$ui());
            if (textForTextField != null) {
                return textForTextField.getText();
            }
            return null;
        }
        List list = (List) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsProperties.getText());
        if (list == null || (annotatedString = (AnnotatedString) qn1.V(list)) == null) {
            return null;
        }
        return annotatedString.getText();
    }

    private final AccessibilityIterators.TextSegmentIterator getIteratorForGranularity(SemanticsNode semanticsNode, int i) {
        String iterableTextForAccessibility;
        TextLayoutResult textLayoutResult;
        if (semanticsNode == null || (iterableTextForAccessibility = getIterableTextForAccessibility(semanticsNode)) == null || iterableTextForAccessibility.length() == 0) {
            return null;
        }
        if (i == 1) {
            AccessibilityIterators.CharacterTextSegmentIterator companion = AccessibilityIterators.CharacterTextSegmentIterator.Companion.getInstance(this.view.getContext().getResources().getConfiguration().locale);
            companion.initialize(iterableTextForAccessibility);
            return companion;
        }
        if (i == 2) {
            AccessibilityIterators.WordTextSegmentIterator companion2 = AccessibilityIterators.WordTextSegmentIterator.Companion.getInstance(this.view.getContext().getResources().getConfiguration().locale);
            companion2.initialize(iterableTextForAccessibility);
            return companion2;
        }
        if (i != 4) {
            if (i == 8) {
                AccessibilityIterators.ParagraphTextSegmentIterator companion3 = AccessibilityIterators.ParagraphTextSegmentIterator.Companion.getInstance();
                companion3.initialize(iterableTextForAccessibility);
                return companion3;
            }
            if (i != 16) {
                return null;
            }
        }
        if (!semanticsNode.getUnmergedConfig$ui().contains(SemanticsActions.INSTANCE.getGetTextLayoutResult()) || (textLayoutResult = SemanticsUtils_androidKt.getTextLayoutResult(semanticsNode.getUnmergedConfig$ui())) == null) {
            return null;
        }
        if (i == 4) {
            AccessibilityIterators.LineTextSegmentIterator companion4 = AccessibilityIterators.LineTextSegmentIterator.Companion.getInstance();
            companion4.initialize(iterableTextForAccessibility, textLayoutResult);
            return companion4;
        }
        AccessibilityIterators.PageTextSegmentIterator companion5 = AccessibilityIterators.PageTextSegmentIterator.Companion.getInstance();
        companion5.initialize(iterableTextForAccessibility, textLayoutResult, semanticsNode);
        return companion5;
    }

    public static /* synthetic */ void getOnSendAccessibilityEvent$ui$annotations() {
    }

    /* JADX WARN: Code duplicated, block: B:37:0x008a A[LOOP:0: B:5:0x0021->B:37:0x008a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:50:0x008f A[EDGE_INSN: B:50:0x008f->B:38:0x008f BREAK  A[LOOP:0: B:5:0x0021->B:37:0x008a], SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1, androidx.compose.ui.semantics.SemanticsPropertyReceiver] */
    private final Rect getShapeBounds(SemanticsNode semanticsNode, android.graphics.Rect rect, final Shape shape) {
        Modifier.Node node;
        ?? r0 = new SemanticsPropertyReceiver() { // from class: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1
            private boolean hasMatchedShape;

            public final boolean getHasMatchedShape() {
                return this.hasMatchedShape;
            }

            @Override // androidx.compose.ui.semantics.SemanticsPropertyReceiver
            public <T> void set(SemanticsPropertyKey<T> semanticsPropertyKey, T t) {
                if (t == shape) {
                    this.hasMatchedShape = true;
                }
            }

            public final void setHasMatchedShape(boolean z) {
                this.hasMatchedShape = z;
            }
        };
        LayoutNode layoutNode$ui = semanticsNode.getLayoutNode$ui();
        NodeChain nodes$ui = layoutNode$ui.getNodes$ui();
        int iM8019constructorimpl = NodeKind.m8019constructorimpl(8);
        Object obj = null;
        if ((nodes$ui.getAggregateChildKindSet() & iM8019constructorimpl) != 0) {
            loop0: for (Modifier.Node head$ui = nodes$ui.getHead$ui(); head$ui != null; head$ui = head$ui.getChild$ui()) {
                if ((head$ui.getKindSet$ui() & iM8019constructorimpl) == 0) {
                    if ((head$ui.getAggregateChildKindSet$ui() & iM8019constructorimpl) != 0) {
                        break;
                        break;
                    }
                } else {
                    Modifier.Node nodePop = head$ui;
                    MutableVector mutableVector = null;
                    while (nodePop != null) {
                        if (nodePop instanceof SemanticsModifierNode) {
                            ((SemanticsModifierNode) nodePop).applySemantics(r0);
                            if (r0.getHasMatchedShape()) {
                                obj = nodePop;
                                break loop0;
                            }
                        } else if ((nodePop.getKindSet$ui() & iM8019constructorimpl) != 0 && (nodePop instanceof DelegatingNode)) {
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
                    if ((head$ui.getAggregateChildKindSet$ui() & iM8019constructorimpl) != 0) {
                        break;
                    }
                }
            }
        }
        SemanticsModifierNode semanticsModifierNode = (SemanticsModifierNode) obj;
        if (semanticsModifierNode == null || (node = semanticsModifierNode.getNode()) == null || !node.isAttached()) {
            return LayoutCoordinatesKt.boundsInWindow(layoutNode$ui.getOuterCoordinator$ui(), false);
        }
        LayoutCoordinates layoutCoordinatesRequireLayoutCoordinates = DelegatableNodeKt.requireLayoutCoordinates(semanticsModifierNode);
        Rect rectLocalBoundingBoxOf = LayoutCoordinatesKt.findRootCoordinates(layoutCoordinatesRequireLayoutCoordinates).localBoundingBoxOf(layoutCoordinatesRequireLayoutCoordinates, false);
        return toBoundsRelativeToNodeBounds(toBoundsInScreen(rectLocalBoundingBoxOf.getLeft(), rectLocalBoundingBoxOf.getTop(), rectLocalBoundingBoxOf.getRight(), rectLocalBoundingBoxOf.getBottom()), rect);
    }

    private final AnnotatedString getTextForTextField(SemanticsConfiguration semanticsConfiguration) {
        return (AnnotatedString) SemanticsConfigurationKt.getOrNull(semanticsConfiguration, SemanticsProperties.INSTANCE.getEditableText());
    }

    private final boolean isAccessibilityFocused(int i) {
        return this.accessibilityFocusedVirtualViewId == i;
    }

    private final boolean isAccessibilitySelectionExtendable(SemanticsNode semanticsNode) {
        SemanticsConfiguration unmergedConfig$ui = semanticsNode.getUnmergedConfig$ui();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        return !unmergedConfig$ui.contains(semanticsProperties.getContentDescription()) && semanticsNode.getUnmergedConfig$ui().contains(semanticsProperties.getEditableText());
    }

    private final boolean isRequestFromAccessibilityTool() {
        Boolean bool = this.requestFromAccessibilityToolForTesting;
        if (aa4.e(bool, Boolean.TRUE)) {
            return true;
        }
        if (aa4.e(bool, Boolean.FALSE)) {
            return false;
        }
        return AccessibilityManagerCompat.isRequestFromAccessibilityTool(this.accessibilityManager);
    }

    private final boolean isTouchExplorationEnabled() {
        if (this.accessibilityForceEnabledForTesting) {
            return true;
        }
        return this.accessibilityManager.isEnabled() && this.accessibilityManager.isTouchExplorationEnabled();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x001a -> B:8:0x001b). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:8:0x001b
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:272)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:237)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:80)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    @defpackage.ul2
    private final boolean legacyScrollOntoScreen(androidx.compose.ui.semantics.SemanticsNode r8) {
        /*
            Method dump skipped, instruction units count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.legacyScrollOntoScreen(androidx.compose.ui.semantics.SemanticsNode):boolean");
    }

    private static final float legacyScrollOntoScreen$scrollDelta(float f, float f2) {
        if (Math.signum(f) == Math.signum(f2)) {
            return Math.abs(f) < Math.abs(f2) ? f : f2;
        }
        return 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void notifySubtreeAccessibilityStateChangedIfNeeded(LayoutNode layoutNode) {
        if (this.subtreeChangedLayoutNodes.add(layoutNode)) {
            this.boundsUpdateChannel.mo0trySendJP2dKIU(j59.a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.util.List, jh2] */
    public final boolean performActionHelper(int i, int i2, Bundle bundle) {
        SemanticsNode semanticsNode;
        ll3 ll3Var;
        ll3 ll3Var2;
        ll3 ll3Var3;
        ll3 ll3Var4;
        float f;
        float steps;
        ll3 ll3Var5;
        ll3 ll3Var6;
        ll3 ll3Var7;
        ll3 ll3Var8;
        ll3 ll3Var9;
        ll3 ll3Var10;
        ll3 ll3Var11;
        nl3 nl3Var;
        AccessibilityAction accessibilityAction;
        nl3 nl3Var2;
        ll3 ll3Var12;
        ll3 ll3Var13;
        ll3 ll3Var14;
        ll3 ll3Var15;
        ll3 ll3Var16;
        CharSequence charSequence;
        List list;
        Float fValueOf = Float.valueOf(0.0f);
        SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = getCurrentSemanticsNodes().get(i);
        if (semanticsNodeWithAdjustedBounds == null || (semanticsNode = semanticsNodeWithAdjustedBounds.getSemanticsNode()) == null) {
            return false;
        }
        SemanticsConfiguration unmergedConfig$ui = semanticsNode.getUnmergedConfig$ui();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        Object orNull = SemanticsConfigurationKt.getOrNull(unmergedConfig$ui, semanticsProperties.getIsSensitiveData());
        Boolean bool = Boolean.TRUE;
        if (aa4.e(orNull, bool) && !isRequestFromAccessibilityTool()) {
            return false;
        }
        if (i2 == 64) {
            return requestAccessibilityFocus(i);
        }
        if (i2 == 128) {
            return clearAccessibilityFocus(i);
        }
        if (i2 == 256 || i2 == 512) {
            if (bundle == null) {
                return false;
            }
            return traverseAtGranularity(semanticsNode, bundle.getInt(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT), i2 == 256, bundle.getBoolean(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN));
        }
        if (i2 == 16384) {
            AccessibilityAction accessibilityAction2 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), SemanticsActions.INSTANCE.getCopyText());
            if (accessibilityAction2 == null || (ll3Var = (ll3) accessibilityAction2.getAction()) == null) {
                return false;
            }
            return ((Boolean) ll3Var.invoke()).booleanValue();
        }
        if (i2 == 131072) {
            boolean accessibilitySelection = setAccessibilitySelection(semanticsNode, bundle != null ? bundle.getInt(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_SELECTION_START_INT, -1) : -1, bundle != null ? bundle.getInt(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_SELECTION_END_INT, -1) : -1, false);
            if (accessibilitySelection) {
                sendEventForVirtualView$default(this, semanticsNodeIdToAccessibilityVirtualNodeId(semanticsNode.getId()), 0, null, null, 12, null);
            }
            return accessibilitySelection;
        }
        if (!AndroidComposeViewAccessibilityDelegateCompat_androidKt.enabled(semanticsNode)) {
            return false;
        }
        if (i2 == 1) {
            if (this.view.isInTouchMode()) {
                this.view.requestFocusFromTouch();
            }
            AccessibilityAction accessibilityAction3 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), SemanticsActions.INSTANCE.getRequestFocus());
            if (accessibilityAction3 == null || (ll3Var2 = (ll3) accessibilityAction3.getAction()) == null) {
                return false;
            }
            return ((Boolean) ll3Var2.invoke()).booleanValue();
        }
        int i3 = 2;
        if (i2 == 2) {
            if (!aa4.e(SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsProperties.getFocused()), bool)) {
                return false;
            }
            this.view.getFocusOwner().mo5878clearFocusI7lrPNg(false, true, true, FocusDirection.Companion.m5868getExitdhqQ8s());
            return true;
        }
        Boolean bool2 = 0;
        bool2 = 0;
        switch (i2) {
            case 16:
                AccessibilityAction accessibilityAction4 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), SemanticsActions.INSTANCE.getOnClick());
                if (accessibilityAction4 != null && (ll3Var3 = (ll3) accessibilityAction4.getAction()) != null) {
                    bool2 = (Boolean) ll3Var3.invoke();
                }
                sendEventForVirtualView$default(this, i, 1, null, null, 12, null);
                if (bool2 != 0) {
                    return bool2.booleanValue();
                }
                return false;
            case 32:
                AccessibilityAction accessibilityAction5 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), SemanticsActions.INSTANCE.getOnLongClick());
                if (accessibilityAction5 == null || (ll3Var4 = (ll3) accessibilityAction5.getAction()) == null) {
                    return false;
                }
                return ((Boolean) ll3Var4.invoke()).booleanValue();
            case 4096:
            case 8192:
                break;
            case 32768:
                AccessibilityAction accessibilityAction6 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), SemanticsActions.INSTANCE.getPasteText());
                if (accessibilityAction6 == null || (ll3Var7 = (ll3) accessibilityAction6.getAction()) == null) {
                    return false;
                }
                return ((Boolean) ll3Var7.invoke()).booleanValue();
            case 65536:
                AccessibilityAction accessibilityAction7 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), SemanticsActions.INSTANCE.getCutText());
                if (accessibilityAction7 == null || (ll3Var8 = (ll3) accessibilityAction7.getAction()) == null) {
                    return false;
                }
                return ((Boolean) ll3Var8.invoke()).booleanValue();
            case 262144:
                AccessibilityAction accessibilityAction8 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), SemanticsActions.INSTANCE.getExpand());
                if (accessibilityAction8 == null || (ll3Var9 = (ll3) accessibilityAction8.getAction()) == null) {
                    return false;
                }
                return ((Boolean) ll3Var9.invoke()).booleanValue();
            case 524288:
                AccessibilityAction accessibilityAction9 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), SemanticsActions.INSTANCE.getCollapse());
                if (accessibilityAction9 == null || (ll3Var10 = (ll3) accessibilityAction9.getAction()) == null) {
                    return false;
                }
                return ((Boolean) ll3Var10.invoke()).booleanValue();
            case 1048576:
                AccessibilityAction accessibilityAction10 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), SemanticsActions.INSTANCE.getDismiss());
                if (accessibilityAction10 == null || (ll3Var11 = (ll3) accessibilityAction10.getAction()) == null) {
                    return false;
                }
                return ((Boolean) ll3Var11.invoke()).booleanValue();
            case 2097152:
                String string = bundle != null ? bundle.getString(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE) : null;
                AccessibilityAction accessibilityAction11 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), SemanticsActions.INSTANCE.getSetText());
                if (accessibilityAction11 == null || (nl3Var = (nl3) accessibilityAction11.getAction()) == null) {
                    return false;
                }
                if (string == null) {
                    string = "";
                }
                return ((Boolean) nl3Var.invoke(new AnnotatedString(string, bool2, i3, bool2))).booleanValue();
            case android.R.id.accessibilityActionShowOnScreen:
                return AndroidComposeUiFlags.isAccessibilityShowOnScreenNestedScrollingEnabled ? scrollOntoScreen(semanticsNode) : legacyScrollOntoScreen(semanticsNode);
            case android.R.id.accessibilityActionSetProgress:
                if (bundle == null || !bundle.containsKey(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_PROGRESS_VALUE) || (accessibilityAction = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), SemanticsActions.INSTANCE.getSetProgress())) == null || (nl3Var2 = (nl3) accessibilityAction.getAction()) == null) {
                    return false;
                }
                return ((Boolean) nl3Var2.invoke(Float.valueOf(bundle.getFloat(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_PROGRESS_VALUE)))).booleanValue();
            case android.R.id.accessibilityActionImeEnter:
                AccessibilityAction accessibilityAction12 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), SemanticsActions.INSTANCE.getOnImeAction());
                if (accessibilityAction12 == null || (ll3Var12 = (ll3) accessibilityAction12.getAction()) == null) {
                    return false;
                }
                return ((Boolean) ll3Var12.invoke()).booleanValue();
            default:
                switch (i2) {
                    case android.R.id.accessibilityActionScrollUp:
                    case android.R.id.accessibilityActionScrollLeft:
                    case android.R.id.accessibilityActionScrollDown:
                    case android.R.id.accessibilityActionScrollRight:
                        break;
                    default:
                        switch (i2) {
                            case android.R.id.accessibilityActionPageUp:
                                AccessibilityAction accessibilityAction13 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), SemanticsActions.INSTANCE.getPageUp());
                                if (accessibilityAction13 == null || (ll3Var13 = (ll3) accessibilityAction13.getAction()) == null) {
                                    return false;
                                }
                                return ((Boolean) ll3Var13.invoke()).booleanValue();
                            case android.R.id.accessibilityActionPageDown:
                                AccessibilityAction accessibilityAction14 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), SemanticsActions.INSTANCE.getPageDown());
                                if (accessibilityAction14 == null || (ll3Var14 = (ll3) accessibilityAction14.getAction()) == null) {
                                    return false;
                                }
                                return ((Boolean) ll3Var14.invoke()).booleanValue();
                            case android.R.id.accessibilityActionPageLeft:
                                AccessibilityAction accessibilityAction15 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), SemanticsActions.INSTANCE.getPageLeft());
                                if (accessibilityAction15 == null || (ll3Var15 = (ll3) accessibilityAction15.getAction()) == null) {
                                    return false;
                                }
                                return ((Boolean) ll3Var15.invoke()).booleanValue();
                            case android.R.id.accessibilityActionPageRight:
                                AccessibilityAction accessibilityAction16 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), SemanticsActions.INSTANCE.getPageRight());
                                if (accessibilityAction16 == null || (ll3Var16 = (ll3) accessibilityAction16.getAction()) == null) {
                                    return false;
                                }
                                return ((Boolean) ll3Var16.invoke()).booleanValue();
                            default:
                                SparseArrayCompat<CharSequence> sparseArrayCompat = this.actionIdToLabel.get(i);
                                if (sparseArrayCompat == null || (charSequence = sparseArrayCompat.get(i2)) == null || (list = (List) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), SemanticsActions.INSTANCE.getCustomActions())) == null) {
                                    return false;
                                }
                                int size = list.size();
                                for (int i4 = 0; i4 < size; i4++) {
                                    CustomAccessibilityAction customAccessibilityAction = (CustomAccessibilityAction) list.get(i4);
                                    if (aa4.e(customAccessibilityAction.getLabel(), charSequence)) {
                                        return customAccessibilityAction.getAction().invoke().booleanValue();
                                    }
                                }
                                return false;
                        }
                }
                break;
        }
        boolean z = i2 == 4096;
        boolean z2 = i2 == 8192;
        boolean z3 = i2 == 16908345;
        boolean z4 = i2 == 16908347;
        boolean z5 = i2 == 16908344;
        boolean z6 = i2 == 16908346;
        boolean z7 = z3 || z4 || z || z2;
        boolean z8 = z5 || z6 || z || z2;
        if (z || z2) {
            ProgressBarRangeInfo progressBarRangeInfo = (ProgressBarRangeInfo) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsProperties.getProgressBarRangeInfo());
            AccessibilityAction accessibilityAction17 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), SemanticsActions.INSTANCE.getSetProgress());
            if (progressBarRangeInfo != null && accessibilityAction17 != null) {
                float fFloatValue = progressBarRangeInfo.getRange().getEndInclusive().floatValue();
                float fFloatValue2 = progressBarRangeInfo.getRange().getStart().floatValue();
                if (fFloatValue < fFloatValue2) {
                    fFloatValue = fFloatValue2;
                }
                float fFloatValue3 = progressBarRangeInfo.getRange().getStart().floatValue();
                float fFloatValue4 = progressBarRangeInfo.getRange().getEndInclusive().floatValue();
                if (fFloatValue3 > fFloatValue4) {
                    fFloatValue3 = fFloatValue4;
                }
                if (progressBarRangeInfo.getSteps() > 0) {
                    f = fFloatValue - fFloatValue3;
                    steps = progressBarRangeInfo.getSteps() + 1;
                } else {
                    f = fFloatValue - fFloatValue3;
                    steps = 20.0f;
                }
                float f2 = f / steps;
                if (z2) {
                    f2 = -f2;
                }
                nl3 nl3Var3 = (nl3) accessibilityAction17.getAction();
                if (nl3Var3 != null) {
                    return ((Boolean) nl3Var3.invoke(Float.valueOf(progressBarRangeInfo.getCurrent() + f2))).booleanValue();
                }
                return false;
            }
        }
        long jM6020getSizeNHjbRc = LayoutCoordinatesKt.boundsInParent(semanticsNode.getLayoutInfo().getCoordinates()).m6020getSizeNHjbRc();
        Float scrollViewportLength = SemanticsUtils_androidKt.getScrollViewportLength(semanticsNode.getUnmergedConfig$ui());
        SemanticsConfiguration unmergedConfig$ui2 = semanticsNode.getUnmergedConfig$ui();
        SemanticsActions semanticsActions = SemanticsActions.INSTANCE;
        AccessibilityAction accessibilityAction18 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(unmergedConfig$ui2, semanticsActions.getScrollBy());
        if (accessibilityAction18 == null) {
            return false;
        }
        ScrollAxisRange scrollAxisRange = (ScrollAxisRange) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsProperties.getHorizontalScrollAxisRange());
        if (scrollAxisRange != null && z7) {
            float fFloatValue5 = scrollViewportLength != null ? scrollViewportLength.floatValue() : Float.intBitsToFloat((int) (jM6020getSizeNHjbRc >> 32));
            if (z3 || z2) {
                fFloatValue5 = -fFloatValue5;
            }
            if (scrollAxisRange.getReverseScrolling()) {
                fFloatValue5 = -fFloatValue5;
            }
            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.isRtl(semanticsNode) && (z3 || z4)) {
                fFloatValue5 = -fFloatValue5;
            }
            if (performActionHelper$canScroll(scrollAxisRange, fFloatValue5)) {
                if (!semanticsNode.getUnmergedConfig$ui().contains(semanticsActions.getPageLeft()) && !semanticsNode.getUnmergedConfig$ui().contains(semanticsActions.getPageRight())) {
                    bm3 bm3Var = (bm3) accessibilityAction18.getAction();
                    if (bm3Var != null) {
                        return ((Boolean) bm3Var.invoke(Float.valueOf(fFloatValue5), fValueOf)).booleanValue();
                    }
                    return false;
                }
                AccessibilityAction accessibilityAction19 = fFloatValue5 > 0.0f ? (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsActions.getPageRight()) : (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsActions.getPageLeft());
                if (accessibilityAction19 == null || (ll3Var6 = (ll3) accessibilityAction19.getAction()) == null) {
                    return false;
                }
                return ((Boolean) ll3Var6.invoke()).booleanValue();
            }
        }
        ScrollAxisRange scrollAxisRange2 = (ScrollAxisRange) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsProperties.getVerticalScrollAxisRange());
        if (scrollAxisRange2 == null || !z8) {
            return false;
        }
        float fFloatValue6 = scrollViewportLength != null ? scrollViewportLength.floatValue() : Float.intBitsToFloat((int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & jM6020getSizeNHjbRc));
        if (z5 || z2) {
            fFloatValue6 = -fFloatValue6;
        }
        if (scrollAxisRange2.getReverseScrolling()) {
            fFloatValue6 = -fFloatValue6;
        }
        if (!performActionHelper$canScroll(scrollAxisRange2, fFloatValue6)) {
            return false;
        }
        if (!semanticsNode.getUnmergedConfig$ui().contains(semanticsActions.getPageUp()) && !semanticsNode.getUnmergedConfig$ui().contains(semanticsActions.getPageDown())) {
            bm3 bm3Var2 = (bm3) accessibilityAction18.getAction();
            if (bm3Var2 != null) {
                return ((Boolean) bm3Var2.invoke(fValueOf, Float.valueOf(fFloatValue6))).booleanValue();
            }
            return false;
        }
        AccessibilityAction accessibilityAction20 = fFloatValue6 > 0.0f ? (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsActions.getPageDown()) : (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsActions.getPageUp());
        if (accessibilityAction20 == null || (ll3Var5 = (ll3) accessibilityAction20.getAction()) == null) {
            return false;
        }
        return ((Boolean) ll3Var5.invoke()).booleanValue();
    }

    private static final boolean performActionHelper$canScroll(ScrollAxisRange scrollAxisRange, float f) {
        if (f >= 0.0f || scrollAxisRange.getValue().invoke().floatValue() <= 0.0f) {
            return f > 0.0f && scrollAxisRange.getValue().invoke().floatValue() < scrollAxisRange.getMaxValue().invoke().floatValue();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:145:0x03ba  */
    /* JADX WARN: Code duplicated, block: B:235:0x05ff A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:236:0x0601 A[LOOP:2: B:224:0x05bc->B:236:0x0601, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:367:0x0606 A[EDGE_INSN: B:367:0x0606->B:237:0x0606 BREAK  A[LOOP:2: B:224:0x05bc->B:236:0x0601], SYNTHETIC] */
    private final void populateAccessibilityNodeInfoProperties(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, SemanticsNode semanticsNode) {
        View viewSemanticsIdToView;
        String accessibilityExtraKey$ui;
        boolean z;
        SemanticsNode parent;
        boolean zBooleanValue;
        SemanticsNode semanticsNode2;
        SemanticsConfiguration config;
        Resources resources = this.view.getContext().getResources();
        accessibilityNodeInfoCompat.setClassName(ClassName);
        SemanticsConfiguration unmergedConfig$ui = semanticsNode.getUnmergedConfig$ui();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        if (unmergedConfig$ui.contains(semanticsProperties.getEditableText())) {
            accessibilityNodeInfoCompat.setClassName(TextFieldClassName);
        }
        if (semanticsNode.getUnmergedConfig$ui().contains(semanticsProperties.getText())) {
            accessibilityNodeInfoCompat.setClassName(TextClassName);
        }
        Role role = (Role) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsProperties.getRole());
        if (role != null) {
            role.m8260unboximpl();
            if (semanticsNode.isFake$ui() || semanticsNode.getReplacedChildren$ui().isEmpty()) {
                Role.Companion companion = Role.Companion;
                if (Role.m8257equalsimpl0(role.m8260unboximpl(), companion.m8268getTabo7Vup1c())) {
                    accessibilityNodeInfoCompat.setRoleDescription(resources.getString(R.string.tab));
                } else if (Role.m8257equalsimpl0(role.m8260unboximpl(), companion.m8267getSwitcho7Vup1c())) {
                    accessibilityNodeInfoCompat.setRoleDescription(resources.getString(R.string.switch_role));
                } else {
                    CharSequence charSequenceM8237toLegacyClassNameV4PA4sw = SemanticsUtils_androidKt.m8237toLegacyClassNameV4PA4sw(role.m8260unboximpl());
                    if (!Role.m8257equalsimpl0(role.m8260unboximpl(), companion.m8265getImageo7Vup1c()) || semanticsNode.isUnmergedLeafNode$ui() || semanticsNode.getUnmergedConfig$ui().isMergingSemanticsOfDescendants()) {
                        accessibilityNodeInfoCompat.setClassName(charSequenceM8237toLegacyClassNameV4PA4sw);
                    }
                }
            }
            j59 j59Var = j59.a;
        }
        accessibilityNodeInfoCompat.setPackageName(this.view.getContext().getPackageName());
        accessibilityNodeInfoCompat.setImportantForAccessibility(SemanticsOwnerKt.isImportantForAccessibility(semanticsNode));
        boolean zIsRequestFromAccessibilityTool = isRequestFromAccessibilityTool();
        List<SemanticsNode> replacedChildren$ui = semanticsNode.getReplacedChildren$ui();
        int size = replacedChildren$ui.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            SemanticsNode semanticsNode3 = replacedChildren$ui.get(i3);
            if (getCurrentSemanticsNodes().containsKey(semanticsNode3.getId())) {
                View view = (AndroidViewHolder) this.view.getAndroidViewsHandler$ui().getLayoutNodeToHolder().get(semanticsNode3.getLayoutNode$ui());
                if (semanticsNode3.getId() != -1) {
                    if (view != null) {
                        accessibilityNodeInfoCompat.addChild(view);
                    } else {
                        SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = getCurrentSemanticsNodes().get(semanticsNode3.getId());
                        boolean zE = (semanticsNodeWithAdjustedBounds == null || (semanticsNode2 = semanticsNodeWithAdjustedBounds.getSemanticsNode()) == null || (config = semanticsNode2.getConfig()) == null) ? false : aa4.e(SemanticsConfigurationKt.getOrNull(config, SemanticsProperties.INSTANCE.getIsSensitiveData()), Boolean.TRUE);
                        if (zIsRequestFromAccessibilityTool || !zE) {
                            accessibilityNodeInfoCompat.addChild(this.view, semanticsNode3.getId());
                        }
                    }
                    this.drawingOrder.put(semanticsNode3.getId(), i2);
                    i2++;
                }
            }
        }
        if (i == this.accessibilityFocusedVirtualViewId) {
            accessibilityNodeInfoCompat.setAccessibilityFocused(true);
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
        } else {
            accessibilityNodeInfoCompat.setAccessibilityFocused(false);
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_ACCESSIBILITY_FOCUS);
        }
        setText(semanticsNode, accessibilityNodeInfoCompat);
        setContentInvalid(semanticsNode, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.setStateDescription(AndroidComposeViewAccessibilityDelegateCompat_androidKt.getInfoStateDescriptionOrNull(semanticsNode, resources));
        accessibilityNodeInfoCompat.setCheckable(AndroidComposeViewAccessibilityDelegateCompat_androidKt.getInfoIsCheckable(semanticsNode));
        SemanticsConfiguration unmergedConfig$ui2 = semanticsNode.getUnmergedConfig$ui();
        SemanticsProperties semanticsProperties2 = SemanticsProperties.INSTANCE;
        ToggleableState toggleableState = (ToggleableState) SemanticsConfigurationKt.getOrNull(unmergedConfig$ui2, semanticsProperties2.getToggleableState());
        if (toggleableState != null) {
            if (toggleableState == ToggleableState.On) {
                accessibilityNodeInfoCompat.setChecked(true);
            } else if (toggleableState == ToggleableState.Off) {
                accessibilityNodeInfoCompat.setChecked(false);
            }
            j59 j59Var2 = j59.a;
        }
        Boolean bool = (Boolean) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsProperties2.getSelected());
        if (bool != null) {
            boolean zBooleanValue2 = bool.booleanValue();
            if (role == null ? false : Role.m8257equalsimpl0(role.m8260unboximpl(), Role.Companion.m8268getTabo7Vup1c())) {
                accessibilityNodeInfoCompat.setSelected(zBooleanValue2);
            } else {
                accessibilityNodeInfoCompat.setChecked(zBooleanValue2);
            }
            j59 j59Var3 = j59.a;
        }
        if (!semanticsNode.getUnmergedConfig$ui().isMergingSemanticsOfDescendants() || semanticsNode.getReplacedChildren$ui().isEmpty()) {
            List list = (List) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsProperties2.getContentDescription());
            accessibilityNodeInfoCompat.setContentDescription(list != null ? (String) qn1.V(list) : null);
        }
        String str = (String) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsProperties2.getTestTag());
        if (str != null) {
            SemanticsNode parent2 = semanticsNode;
            while (true) {
                if (parent2 == null) {
                    zBooleanValue = false;
                    break;
                }
                SemanticsConfiguration unmergedConfig$ui3 = parent2.getUnmergedConfig$ui();
                SemanticsPropertiesAndroid semanticsPropertiesAndroid = SemanticsPropertiesAndroid.INSTANCE;
                if (unmergedConfig$ui3.contains(semanticsPropertiesAndroid.getTestTagsAsResourceId())) {
                    zBooleanValue = ((Boolean) parent2.getUnmergedConfig$ui().get(semanticsPropertiesAndroid.getTestTagsAsResourceId())).booleanValue();
                    break;
                }
                parent2 = parent2.getParent();
            }
            if (zBooleanValue) {
                accessibilityNodeInfoCompat.setViewIdResourceName(str);
            }
        }
        SemanticsConfiguration unmergedConfig$ui4 = semanticsNode.getUnmergedConfig$ui();
        SemanticsProperties semanticsProperties3 = SemanticsProperties.INSTANCE;
        if (((j59) SemanticsConfigurationKt.getOrNull(unmergedConfig$ui4, semanticsProperties3.getHeading())) != null) {
            accessibilityNodeInfoCompat.setHeading(true);
            j59 j59Var4 = j59.a;
        }
        if (((j59) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsProperties3.getTextEntryKey())) != null) {
            accessibilityNodeInfoCompat.setTextEntryKey(true);
            j59 j59Var5 = j59.a;
        }
        if (i != -1) {
            int orDefault = this.drawingOrder.getOrDefault(semanticsNode.getId(), -1);
            if (orDefault != -1) {
                accessibilityNodeInfoCompat.setDrawingOrder(orDefault);
                j59 j59Var6 = j59.a;
            } else {
                Log.w(LogTag, "Drawing order is not available, was AccessibilityNodeInfo requested for a child node before its parent?");
            }
        }
        accessibilityNodeInfoCompat.setPassword(semanticsNode.getUnmergedConfig$ui().contains(semanticsProperties3.getPassword()));
        Object orNull = SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsProperties3.getIsEditable());
        Boolean bool2 = Boolean.TRUE;
        accessibilityNodeInfoCompat.setEditable(aa4.e(orNull, bool2));
        Integer num = (Integer) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsProperties3.getMaxTextLength());
        accessibilityNodeInfoCompat.setMaxTextLength(num != null ? num.intValue() : -1);
        accessibilityNodeInfoCompat.setEnabled(AndroidComposeViewAccessibilityDelegateCompat_androidKt.enabled(semanticsNode));
        accessibilityNodeInfoCompat.setFocusable(semanticsNode.getUnmergedConfig$ui().contains(semanticsProperties3.getFocused()));
        if (accessibilityNodeInfoCompat.isFocusable()) {
            accessibilityNodeInfoCompat.setFocused(((Boolean) semanticsNode.getUnmergedConfig$ui().get(semanticsProperties3.getFocused())).booleanValue());
            if (accessibilityNodeInfoCompat.isFocused()) {
                accessibilityNodeInfoCompat.addAction(2);
                this.focusedVirtualViewId = i;
            } else {
                accessibilityNodeInfoCompat.addAction(1);
            }
        }
        accessibilityNodeInfoCompat.setVisibleToUser(!SemanticsOwnerKt.isHidden(semanticsNode));
        if (ComposeUiFlags.isAccessibilityShouldIncludeOffscreenChildrenEnabled) {
            if (semanticsNode.isFake$ui()) {
                parent = semanticsNode.getParent();
                parent.getClass();
            } else {
                parent = semanticsNode;
            }
            setInvisibleIfEmptyBounds(accessibilityNodeInfoCompat, parent);
        }
        LiveRegionMode liveRegionMode = (LiveRegionMode) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsProperties3.getLiveRegion());
        if (liveRegionMode != null) {
            int iM8251unboximpl = liveRegionMode.m8251unboximpl();
            LiveRegionMode.Companion companion2 = LiveRegionMode.Companion;
            accessibilityNodeInfoCompat.setLiveRegion((!LiveRegionMode.m8248equalsimpl0(iM8251unboximpl, companion2.m8253getPolite0phEisY()) && LiveRegionMode.m8248equalsimpl0(iM8251unboximpl, companion2.m8252getAssertive0phEisY())) ? 2 : 1);
            j59 j59Var7 = j59.a;
        }
        accessibilityNodeInfoCompat.setClickable(false);
        SemanticsConfiguration unmergedConfig$ui5 = semanticsNode.getUnmergedConfig$ui();
        SemanticsActions semanticsActions = SemanticsActions.INSTANCE;
        AccessibilityAction accessibilityAction = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(unmergedConfig$ui5, semanticsActions.getOnClick());
        if (accessibilityAction != null) {
            boolean zE2 = aa4.e(SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsProperties3.getSelected()), bool2);
            Role.Companion companion3 = Role.Companion;
            if (role == null ? false : Role.m8257equalsimpl0(role.m8260unboximpl(), companion3.m8268getTabo7Vup1c())) {
                z = true;
            } else if (role == null ? false : Role.m8257equalsimpl0(role.m8260unboximpl(), companion3.m8266getRadioButtono7Vup1c())) {
                z = true;
            } else {
                z = false;
            }
            accessibilityNodeInfoCompat.setClickable(!z || (z && !zE2));
            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.enabled(semanticsNode) && accessibilityNodeInfoCompat.isClickable()) {
                accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16, accessibilityAction.getLabel()));
            }
            j59 j59Var8 = j59.a;
        }
        accessibilityNodeInfoCompat.setLongClickable(false);
        AccessibilityAction accessibilityAction2 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsActions.getOnLongClick());
        if (accessibilityAction2 != null) {
            accessibilityNodeInfoCompat.setLongClickable(true);
            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.enabled(semanticsNode)) {
                accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(32, accessibilityAction2.getLabel()));
            }
            j59 j59Var9 = j59.a;
        }
        AccessibilityAction accessibilityAction3 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsActions.getCopyText());
        if (accessibilityAction3 != null) {
            accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16384, accessibilityAction3.getLabel()));
            j59 j59Var10 = j59.a;
        }
        if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.enabled(semanticsNode)) {
            AccessibilityAction accessibilityAction4 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsActions.getSetText());
            if (accessibilityAction4 != null) {
                accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(2097152, accessibilityAction4.getLabel()));
                j59 j59Var11 = j59.a;
            }
            AccessibilityAction accessibilityAction5 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsActions.getOnImeAction());
            if (accessibilityAction5 != null) {
                accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(android.R.id.accessibilityActionImeEnter, accessibilityAction5.getLabel()));
                j59 j59Var12 = j59.a;
            }
            AccessibilityAction accessibilityAction6 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsActions.getCutText());
            if (accessibilityAction6 != null) {
                accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(65536, accessibilityAction6.getLabel()));
                j59 j59Var13 = j59.a;
            }
            AccessibilityAction accessibilityAction7 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsActions.getPasteText());
            if (accessibilityAction7 != null) {
                if (accessibilityNodeInfoCompat.isFocused() && this.view.getClipboardManager().hasText()) {
                    accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(32768, accessibilityAction7.getLabel()));
                }
                j59 j59Var14 = j59.a;
            }
        }
        String iterableTextForAccessibility = getIterableTextForAccessibility(semanticsNode);
        if (iterableTextForAccessibility != null && iterableTextForAccessibility.length() != 0) {
            accessibilityNodeInfoCompat.setTextSelection(getAccessibilitySelectionStart(semanticsNode), getAccessibilitySelectionEnd(semanticsNode));
            AccessibilityAction accessibilityAction8 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsActions.getSetSelection());
            accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(131072, accessibilityAction8 != null ? accessibilityAction8.getLabel() : null));
            accessibilityNodeInfoCompat.addAction(256);
            accessibilityNodeInfoCompat.addAction(512);
            accessibilityNodeInfoCompat.setMovementGranularities(11);
            List list2 = (List) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsProperties3.getContentDescription());
            if ((list2 == null || list2.isEmpty()) && semanticsNode.getUnmergedConfig$ui().contains(semanticsActions.getGetTextLayoutResult()) && !AndroidComposeViewAccessibilityDelegateCompat_androidKt.excludeLineAndPageGranularities(semanticsNode)) {
                accessibilityNodeInfoCompat.setMovementGranularities(accessibilityNodeInfoCompat.getMovementGranularities() | 20);
            }
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(ExtraDataIdKey);
        CharSequence text = accessibilityNodeInfoCompat.getText();
        if (text != null && text.length() != 0 && semanticsNode.getUnmergedConfig$ui().contains(semanticsActions.getGetTextLayoutResult())) {
            arrayList.add(AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_KEY);
        }
        if (semanticsNode.getUnmergedConfig$ui().contains(semanticsProperties3.getTestTag())) {
            arrayList.add(ExtraDataTestTagKey);
        }
        if (semanticsNode.getUnmergedConfig$ui().contains(semanticsProperties3.getShape())) {
            arrayList.add(ExtraDataShapeTypeKey);
            arrayList.add(ExtraDataShapeRectKey);
            arrayList.add(ExtraDataShapeRectCornersKey);
            arrayList.add(ExtraDataShapeRegionKey);
        }
        ScatterSet<SemanticsPropertyKey<?>> accessibilityExtraKeys$ui = semanticsNode.getUnmergedConfig$ui().getAccessibilityExtraKeys$ui();
        if (accessibilityExtraKeys$ui != null) {
            Object[] objArr = accessibilityExtraKeys$ui.elements;
            long[] jArr = accessibilityExtraKeys$ui.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i4 = 0;
                while (true) {
                    long j = jArr[i4];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                        if (i4 != length) {
                            break;
                            break;
                        }
                        i4++;
                    } else {
                        int i5 = 8 - ((~(i4 - length)) >>> 31);
                        for (int i6 = 0; i6 < i5; i6++) {
                            if ((j & 255) < 128 && (accessibilityExtraKey$ui = ((SemanticsPropertyKey) objArr[(i4 << 3) + i6]).getAccessibilityExtraKey$ui()) != null) {
                                arrayList.add(accessibilityExtraKey$ui);
                                j59 j59Var15 = j59.a;
                            }
                            j >>= 8;
                        }
                        if (i5 != 8) {
                            break;
                        } else if (i4 != length) {
                            break;
                        } else {
                            i4++;
                        }
                    }
                }
            }
            j59 j59Var16 = j59.a;
        }
        accessibilityNodeInfoCompat.setAvailableExtraData(arrayList);
        SemanticsConfiguration unmergedConfig$ui6 = semanticsNode.getUnmergedConfig$ui();
        SemanticsProperties semanticsProperties4 = SemanticsProperties.INSTANCE;
        ProgressBarRangeInfo progressBarRangeInfo = (ProgressBarRangeInfo) SemanticsConfigurationKt.getOrNull(unmergedConfig$ui6, semanticsProperties4.getProgressBarRangeInfo());
        if (progressBarRangeInfo != null) {
            SemanticsConfiguration unmergedConfig$ui7 = semanticsNode.getUnmergedConfig$ui();
            SemanticsActions semanticsActions2 = SemanticsActions.INSTANCE;
            if (unmergedConfig$ui7.contains(semanticsActions2.getSetProgress())) {
                accessibilityNodeInfoCompat.setClassName("android.widget.SeekBar");
            } else {
                accessibilityNodeInfoCompat.setClassName("android.widget.ProgressBar");
            }
            if (progressBarRangeInfo != ProgressBarRangeInfo.Companion.getIndeterminate()) {
                accessibilityNodeInfoCompat.setRangeInfo(AccessibilityNodeInfoCompat.RangeInfoCompat.obtain(1, progressBarRangeInfo.getRange().getStart().floatValue(), progressBarRangeInfo.getRange().getEndInclusive().floatValue(), progressBarRangeInfo.getCurrent()));
            }
            if (semanticsNode.getUnmergedConfig$ui().contains(semanticsActions2.getSetProgress()) && AndroidComposeViewAccessibilityDelegateCompat_androidKt.enabled(semanticsNode)) {
                float current = progressBarRangeInfo.getCurrent();
                float fFloatValue = progressBarRangeInfo.getRange().getEndInclusive().floatValue();
                float fFloatValue2 = progressBarRangeInfo.getRange().getStart().floatValue();
                if (fFloatValue < fFloatValue2) {
                    fFloatValue = fFloatValue2;
                }
                if (current < fFloatValue) {
                    accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
                }
                float current2 = progressBarRangeInfo.getCurrent();
                float fFloatValue3 = progressBarRangeInfo.getRange().getStart().floatValue();
                float fFloatValue4 = progressBarRangeInfo.getRange().getEndInclusive().floatValue();
                if (fFloatValue3 > fFloatValue4) {
                    fFloatValue3 = fFloatValue4;
                }
                if (current2 > fFloatValue3) {
                    accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
                }
            }
        }
        Api24Impl.addSetProgressAction(accessibilityNodeInfoCompat, semanticsNode);
        CollectionInfo_androidKt.setCollectionInfo(semanticsNode, accessibilityNodeInfoCompat);
        CollectionInfo_androidKt.setCollectionItemInfo(semanticsNode, accessibilityNodeInfoCompat);
        ScrollAxisRange scrollAxisRange = (ScrollAxisRange) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsProperties4.getHorizontalScrollAxisRange());
        SemanticsConfiguration unmergedConfig$ui8 = semanticsNode.getUnmergedConfig$ui();
        SemanticsActions semanticsActions3 = SemanticsActions.INSTANCE;
        AccessibilityAction accessibilityAction9 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(unmergedConfig$ui8, semanticsActions3.getScrollBy());
        if (scrollAxisRange != null && accessibilityAction9 != null) {
            if (!CollectionInfo_androidKt.hasCollectionInfo(semanticsNode)) {
                accessibilityNodeInfoCompat.setClassName("android.widget.HorizontalScrollView");
            }
            if (scrollAxisRange.getMaxValue().invoke().floatValue() > 0.0f) {
                accessibilityNodeInfoCompat.setScrollable(true);
            }
            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.enabled(semanticsNode)) {
                if (populateAccessibilityNodeInfoProperties$canScrollForward(scrollAxisRange)) {
                    accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
                    accessibilityNodeInfoCompat.addAction(!AndroidComposeViewAccessibilityDelegateCompat_androidKt.isRtl(semanticsNode) ? AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_RIGHT : AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_LEFT);
                }
                if (populateAccessibilityNodeInfoProperties$canScrollBackward(scrollAxisRange)) {
                    accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
                    accessibilityNodeInfoCompat.addAction(!AndroidComposeViewAccessibilityDelegateCompat_androidKt.isRtl(semanticsNode) ? AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_LEFT : AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_RIGHT);
                }
            }
        }
        ScrollAxisRange scrollAxisRange2 = (ScrollAxisRange) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsProperties4.getVerticalScrollAxisRange());
        if (scrollAxisRange2 != null && accessibilityAction9 != null) {
            if (!CollectionInfo_androidKt.hasCollectionInfo(semanticsNode)) {
                accessibilityNodeInfoCompat.setClassName("android.widget.ScrollView");
            }
            if (scrollAxisRange2.getMaxValue().invoke().floatValue() > 0.0f) {
                accessibilityNodeInfoCompat.setScrollable(true);
            }
            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.enabled(semanticsNode)) {
                if (populateAccessibilityNodeInfoProperties$canScrollForward(scrollAxisRange2)) {
                    accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
                    accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_DOWN);
                }
                if (populateAccessibilityNodeInfoProperties$canScrollBackward(scrollAxisRange2)) {
                    accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
                    accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_UP);
                }
            }
        }
        if (Build.VERSION.SDK_INT >= 29) {
            Api29Impl.addPageActions(accessibilityNodeInfoCompat, semanticsNode);
        }
        accessibilityNodeInfoCompat.setPaneTitle((CharSequence) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsProperties4.getPaneTitle()));
        if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.enabled(semanticsNode)) {
            AccessibilityAction accessibilityAction10 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsActions3.getExpand());
            if (accessibilityAction10 != null) {
                accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(262144, accessibilityAction10.getLabel()));
                j59 j59Var17 = j59.a;
            }
            AccessibilityAction accessibilityAction11 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsActions3.getCollapse());
            if (accessibilityAction11 != null) {
                accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(524288, accessibilityAction11.getLabel()));
                j59 j59Var18 = j59.a;
            }
            AccessibilityAction accessibilityAction12 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsActions3.getDismiss());
            if (accessibilityAction12 != null) {
                accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(1048576, accessibilityAction12.getLabel()));
                j59 j59Var19 = j59.a;
            }
            if (semanticsNode.getUnmergedConfig$ui().contains(semanticsActions3.getCustomActions())) {
                List list3 = (List) semanticsNode.getUnmergedConfig$ui().get(semanticsActions3.getCustomActions());
                int size2 = list3.size();
                IntList intList = AccessibilityActionsResourceIds;
                if (size2 >= intList._size) {
                    ah.f(l2.e(new StringBuilder("Can't have more than "), " custom actions for one widget", intList._size));
                    return;
                }
                jh2 jh2Var = null;
                int i7 = 1;
                int i8 = 0;
                SparseArrayCompat<CharSequence> sparseArrayCompat = new SparseArrayCompat<>(0, 1, null);
                MutableObjectIntMap<CharSequence> mutableObjectIntMapMutableObjectIntMapOf = ObjectIntMapKt.mutableObjectIntMapOf();
                if (this.labelToActionId.containsKey(i)) {
                    MutableObjectIntMap<CharSequence> mutableObjectIntMap = this.labelToActionId.get(i);
                    MutableIntList mutableIntList = new MutableIntList(i8, i7, jh2Var);
                    int[] iArr = intList.content;
                    int i9 = intList._size;
                    for (int i10 = 0; i10 < i9; i10++) {
                        mutableIntList.add(iArr[i10]);
                    }
                    ArrayList arrayList2 = new ArrayList();
                    int size3 = list3.size();
                    for (int i11 = 0; i11 < size3; i11++) {
                        CustomAccessibilityAction customAccessibilityAction = (CustomAccessibilityAction) list3.get(i11);
                        mutableObjectIntMap.getClass();
                        if (mutableObjectIntMap.containsKey(customAccessibilityAction.getLabel())) {
                            int i12 = mutableObjectIntMap.get(customAccessibilityAction.getLabel());
                            sparseArrayCompat.put(i12, customAccessibilityAction.getLabel());
                            mutableObjectIntMapMutableObjectIntMapOf.set(customAccessibilityAction.getLabel(), i12);
                            mutableIntList.remove(i12);
                            accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(i12, customAccessibilityAction.getLabel()));
                            j59 j59Var20 = j59.a;
                        } else {
                            arrayList2.add(customAccessibilityAction);
                        }
                    }
                    int size4 = arrayList2.size();
                    for (int i13 = 0; i13 < size4; i13++) {
                        CustomAccessibilityAction customAccessibilityAction2 = (CustomAccessibilityAction) arrayList2.get(i13);
                        int i14 = mutableIntList.get(i13);
                        sparseArrayCompat.put(i14, customAccessibilityAction2.getLabel());
                        mutableObjectIntMapMutableObjectIntMapOf.set(customAccessibilityAction2.getLabel(), i14);
                        accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(i14, customAccessibilityAction2.getLabel()));
                    }
                } else {
                    int size5 = list3.size();
                    for (int i15 = 0; i15 < size5; i15++) {
                        CustomAccessibilityAction customAccessibilityAction3 = (CustomAccessibilityAction) list3.get(i15);
                        int i16 = AccessibilityActionsResourceIds.get(i15);
                        sparseArrayCompat.put(i16, customAccessibilityAction3.getLabel());
                        mutableObjectIntMapMutableObjectIntMapOf.set(customAccessibilityAction3.getLabel(), i16);
                        accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(i16, customAccessibilityAction3.getLabel()));
                    }
                }
                this.actionIdToLabel.put(i, sparseArrayCompat);
                this.labelToActionId.put(i, mutableObjectIntMapMutableObjectIntMapOf);
            }
        }
        accessibilityNodeInfoCompat.setScreenReaderFocusable(AndroidComposeViewAccessibilityDelegateCompat_androidKt.isScreenReaderFocusable(semanticsNode, resources));
        int orDefault2 = this.idToBeforeMap.getOrDefault(i, -1);
        if (orDefault2 != -1) {
            View viewSemanticsIdToView2 = SemanticsUtils_androidKt.semanticsIdToView(this.view.getAndroidViewsHandler$ui(), orDefault2);
            if (viewSemanticsIdToView2 != null) {
                accessibilityNodeInfoCompat.setTraversalBefore(viewSemanticsIdToView2);
            } else {
                accessibilityNodeInfoCompat.setTraversalBefore(this.view, orDefault2);
            }
            addExtraDataToAccessibilityNodeInfoHelper(i, accessibilityNodeInfoCompat, this.ExtraDataTestTraversalBeforeVal, null);
        }
        int orDefault3 = this.idToAfterMap.getOrDefault(i, -1);
        if (orDefault3 != -1 && (viewSemanticsIdToView = SemanticsUtils_androidKt.semanticsIdToView(this.view.getAndroidViewsHandler$ui(), orDefault3)) != null) {
            accessibilityNodeInfoCompat.setTraversalAfter(viewSemanticsIdToView);
            addExtraDataToAccessibilityNodeInfoHelper(i, accessibilityNodeInfoCompat, this.ExtraDataTestTraversalAfterVal, null);
        }
        CharSequence charSequence = (String) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), SemanticsPropertiesAndroid.INSTANCE.getAccessibilityClassName());
        if (charSequence != null) {
            accessibilityNodeInfoCompat.setClassName(charSequence);
            j59 j59Var21 = j59.a;
        }
    }

    private static final boolean populateAccessibilityNodeInfoProperties$canScrollBackward(ScrollAxisRange scrollAxisRange) {
        if (scrollAxisRange.getValue().invoke().floatValue() <= 0.0f || scrollAxisRange.getReverseScrolling()) {
            return scrollAxisRange.getValue().invoke().floatValue() < scrollAxisRange.getMaxValue().invoke().floatValue() && scrollAxisRange.getReverseScrolling();
        }
        return true;
    }

    private static final boolean populateAccessibilityNodeInfoProperties$canScrollForward(ScrollAxisRange scrollAxisRange) {
        if (scrollAxisRange.getValue().invoke().floatValue() >= scrollAxisRange.getMaxValue().invoke().floatValue() || scrollAxisRange.getReverseScrolling()) {
            return scrollAxisRange.getValue().invoke().floatValue() > 0.0f && scrollAxisRange.getReverseScrolling();
        }
        return true;
    }

    private final boolean registerScrollingId(int i, List<ScrollObservationScope> list) {
        boolean z;
        ScrollObservationScope scrollObservationScopeFindById = SemanticsUtils_androidKt.findById(list, i);
        if (scrollObservationScopeFindById != null) {
            z = false;
        } else {
            ScrollObservationScope scrollObservationScope = new ScrollObservationScope(i, this.scrollObservationScopes, null, null, null, null);
            z = true;
            scrollObservationScopeFindById = scrollObservationScope;
        }
        this.scrollObservationScopes.add(scrollObservationScopeFindById);
        return z;
    }

    private final boolean requestAccessibilityFocus(int i) {
        if (!isTouchExplorationEnabled() || isAccessibilityFocused(i)) {
            return false;
        }
        int i2 = this.accessibilityFocusedVirtualViewId;
        if (i2 != Integer.MIN_VALUE) {
            sendEventForVirtualView$default(this, i2, 65536, null, null, 12, null);
        }
        this.accessibilityFocusedVirtualViewId = i;
        this.view.invalidate();
        sendEventForVirtualView$default(this, i, 32768, null, null, 12, null);
        return true;
    }

    private final void resetEnabledAccessibilityServiceList() {
        this._enabledServices = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void scheduleScrollEventIfNeeded(ScrollObservationScope scrollObservationScope) {
        if (scrollObservationScope.isValidOwnerScope()) {
            OwnerSnapshotObserver snapshotObserver = this.view.getSnapshotObserver();
            snapshotObserver.observer.observeReads(scrollObservationScope, this.scheduleScrollEventIfNeededLambda, new AnonymousClass1(scrollObservationScope, this));
        }
    }

    /* JADX INFO: renamed from: scrollDxDyForNodeVisible-RE3cj74, reason: not valid java name */
    private final long m8145scrollDxDyForNodeVisibleRE3cj74(SemanticsNode semanticsNode, SemanticsNode semanticsNode2, long j) {
        Rect rectBoundsInParent = LayoutCoordinatesKt.boundsInParent(semanticsNode2.getLayoutInfo().getCoordinates());
        LayoutCoordinates parentLayoutCoordinates = semanticsNode2.getLayoutInfo().getCoordinates().getParentLayoutCoordinates();
        Rect rectM6024translatek4lQ0M = rectBoundsInParent.m6024translatek4lQ0M(parentLayoutCoordinates != null ? LayoutCoordinatesKt.positionInRoot(parentLayoutCoordinates) : Offset.Companion.m6003getZeroF1C5BW0());
        Rect rectM6027Recttz77jQw = RectKt.m6027Recttz77jQw(Offset.m5992plusMKHz9U(semanticsNode.m8271getPositionInRootF1C5BW0(), j), IntSizeKt.m9225toSizeozmzZPI(semanticsNode.m8274getSizeYbymL2g()));
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(scrollDxDyForNodeVisible_RE3cj74$scrollDelta(rectM6027Recttz77jQw.getLeft() - rectM6024translatek4lQ0M.getLeft(), rectM6027Recttz77jQw.getRight() - rectM6024translatek4lQ0M.getRight()))) << 32) | (((long) Float.floatToRawIntBits(scrollDxDyForNodeVisible_RE3cj74$scrollDelta(rectM6027Recttz77jQw.getTop() - rectM6024translatek4lQ0M.getTop(), rectM6027Recttz77jQw.getBottom() - rectM6024translatek4lQ0M.getBottom()))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    private static final float scrollDxDyForNodeVisible_RE3cj74$scrollDelta(float f, float f2) {
        if (Math.signum(f) == Math.signum(f2)) {
            return Math.abs(f) < Math.abs(f2) ? f : f2;
        }
        return 0.0f;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x001a -> B:8:0x001b). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:8:0x001b
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:272)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:237)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:80)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    private final boolean scrollOntoScreen(androidx.compose.ui.semantics.SemanticsNode r15) {
        /*
            Method dump skipped, instruction units count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.scrollOntoScreen(androidx.compose.ui.semantics.SemanticsNode):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void semanticsChangeChecker$lambda$0(AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat) {
        Trace.beginSection("measureAndLayout");
        try {
            Owner.measureAndLayout$default(androidComposeViewAccessibilityDelegateCompat.view, false, 1, null);
            j59 j59Var = j59.a;
            Trace.endSection();
            Trace.beginSection("checkForSemanticsChanges");
            try {
                androidComposeViewAccessibilityDelegateCompat.checkForSemanticsChanges();
                Trace.endSection();
                androidComposeViewAccessibilityDelegateCompat.checkingForSemanticsChanges = false;
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        } catch (Throwable th2) {
            Trace.endSection();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int semanticsNodeIdToAccessibilityVirtualNodeId(int i) {
        if (i == this.view.getSemanticsOwner().getUnmergedRootSemanticsNode().getId()) {
            return -1;
        }
        return i;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0095 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:28:0x0097 A[LOOP:1: B:15:0x0057->B:28:0x0097, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:44:0x009a A[EDGE_INSN: B:44:0x009a->B:29:0x009a BREAK  A[LOOP:1: B:15:0x0057->B:28:0x0097], SYNTHETIC] */
    private final void sendAccessibilitySemanticsStructureChangeEvents(SemanticsNode semanticsNode, SemanticsNodeCopy semanticsNodeCopy) {
        MutableIntSet mutableIntSetMutableIntSetOf = IntSetKt.mutableIntSetOf();
        List<SemanticsNode> replacedChildren$ui = semanticsNode.getReplacedChildren$ui();
        int size = replacedChildren$ui.size();
        for (int i = 0; i < size; i++) {
            SemanticsNode semanticsNode2 = replacedChildren$ui.get(i);
            if (getCurrentSemanticsNodes().containsKey(semanticsNode2.getId())) {
                if (!semanticsNodeCopy.getChildren().contains(semanticsNode2.getId())) {
                    notifySubtreeAccessibilityStateChangedIfNeeded(semanticsNode.getLayoutNode$ui());
                    return;
                }
                mutableIntSetMutableIntSetOf.add(semanticsNode2.getId());
            }
        }
        MutableIntSet children = semanticsNodeCopy.getChildren();
        int[] iArr = children.elements;
        long[] jArr = children.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i2 = 0;
            while (true) {
                long j = jArr[i2];
                if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i2 != length) {
                        break;
                        break;
                    }
                    i2++;
                } else {
                    int i3 = 8 - ((~(i2 - length)) >>> 31);
                    for (int i4 = 0; i4 < i3; i4++) {
                        if ((255 & j) < 128 && !mutableIntSetMutableIntSetOf.contains(iArr[(i2 << 3) + i4])) {
                            notifySubtreeAccessibilityStateChangedIfNeeded(semanticsNode.getLayoutNode$ui());
                            return;
                        }
                        j >>= 8;
                    }
                    if (i3 != 8) {
                        break;
                    } else if (i2 != length) {
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
        List<SemanticsNode> replacedChildren$ui2 = semanticsNode.getReplacedChildren$ui();
        int size2 = replacedChildren$ui2.size();
        for (int i5 = 0; i5 < size2; i5++) {
            SemanticsNode semanticsNode3 = replacedChildren$ui2.get(i5);
            SemanticsNodeCopy semanticsNodeCopy2 = this.previousSemanticsNodes.get(semanticsNode3.getId());
            if (semanticsNodeCopy2 != null && getCurrentSemanticsNodes().containsKey(semanticsNode3.getId())) {
                sendAccessibilitySemanticsStructureChangeEvents(semanticsNode3, semanticsNodeCopy2);
            }
        }
    }

    private final boolean sendEvent(AccessibilityEvent accessibilityEvent) {
        if (!isEnabled$ui()) {
            return false;
        }
        if (accessibilityEvent.getEventType() == 2048 || accessibilityEvent.getEventType() == 32768) {
            this.sendingFocusAffectingEvent = true;
        }
        try {
            return this.onSendAccessibilityEvent.invoke(accessibilityEvent).booleanValue();
        } finally {
            this.sendingFocusAffectingEvent = false;
        }
    }

    private final boolean sendEventForVirtualView(int i, int i2, Integer num, List<String> list) {
        if (i == Integer.MIN_VALUE || !isEnabled$ui()) {
            return false;
        }
        AccessibilityEvent accessibilityEventCreateEvent = createEvent(i, i2);
        if (num != null) {
            accessibilityEventCreateEvent.setContentChangeTypes(num.intValue());
        }
        if (list != null) {
            accessibilityEventCreateEvent.setContentDescription(ListUtilsKt.fastJoinToString$default(list, StringUtils.COMMA, null, null, 0, null, null, 62, null));
        }
        return sendEvent(accessibilityEventCreateEvent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ boolean sendEventForVirtualView$default(AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat, int i, int i2, Integer num, List list, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            num = null;
        }
        if ((i3 & 8) != 0) {
            list = null;
        }
        return androidComposeViewAccessibilityDelegateCompat.sendEventForVirtualView(i, i2, num, list);
    }

    private final void sendPaneChangeEvents(int i, int i2, String str) {
        AccessibilityEvent accessibilityEventCreateEvent = createEvent(semanticsNodeIdToAccessibilityVirtualNodeId(i), 32);
        accessibilityEventCreateEvent.setContentChangeTypes(i2);
        if (str != null) {
            accessibilityEventCreateEvent.getText().add(str);
        }
        sendEvent(accessibilityEventCreateEvent);
    }

    private final void sendPendingTextTraversedAtGranularityEvent(int i) {
        PendingTextTraversedEvent pendingTextTraversedEvent = this.pendingTextTraversedEvent;
        if (pendingTextTraversedEvent != null) {
            if (i != pendingTextTraversedEvent.getNode().getId()) {
                return;
            }
            if (SystemClock.uptimeMillis() - pendingTextTraversedEvent.getTraverseTime() <= 1000) {
                AccessibilityEvent accessibilityEventCreateEvent = createEvent(semanticsNodeIdToAccessibilityVirtualNodeId(pendingTextTraversedEvent.getNode().getId()), 131072);
                accessibilityEventCreateEvent.setFromIndex(pendingTextTraversedEvent.getFromIndex());
                accessibilityEventCreateEvent.setToIndex(pendingTextTraversedEvent.getToIndex());
                accessibilityEventCreateEvent.setAction(pendingTextTraversedEvent.getAction());
                accessibilityEventCreateEvent.setMovementGranularity(pendingTextTraversedEvent.getGranularity());
                accessibilityEventCreateEvent.getText().add(getIterableTextForAccessibility(pendingTextTraversedEvent.getNode()));
                sendEvent(accessibilityEventCreateEvent);
            }
        }
        this.pendingTextTraversedEvent = null;
    }

    /*  JADX ERROR: NullPointerException in pass: ProcessVariables
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getUseList()" because "ssaVar" is null
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.processBlock(ProcessVariables.java:96)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:93)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables.removeUnusedResults(ProcessVariables.java:73)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables.visit(ProcessVariables.java:48)
        */
    private final void sendSemanticsPropertyChangeEvents(androidx.collection.IntObjectMap<androidx.compose.ui.semantics.SemanticsNodeWithAdjustedBounds> r53) {
        /*
            Method dump skipped, instruction units count: 1757
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.sendSemanticsPropertyChangeEvents(androidx.collection.IntObjectMap):void");
    }

    private final void sendSubtreeChangeAccessibilityEvents(LayoutNode layoutNode, MutableIntSet mutableIntSet) {
        SemanticsConfiguration semanticsConfiguration;
        LayoutNode layoutNodeFindClosestParentNode;
        if (layoutNode.isAttached() && !this.view.getAndroidViewsHandler$ui().getLayoutNodeToHolder().containsKey(layoutNode)) {
            if (!layoutNode.getNodes$ui().m7979hasH91voCI$ui(NodeKind.m8019constructorimpl(8))) {
                layoutNode = AndroidComposeViewAccessibilityDelegateCompat_androidKt.findClosestParentNode(layoutNode, AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$semanticsNode$1.INSTANCE);
            }
            if (layoutNode == null || (semanticsConfiguration = layoutNode.getSemanticsConfiguration()) == null) {
                return;
            }
            if (!semanticsConfiguration.isMergingSemanticsOfDescendants() && (layoutNodeFindClosestParentNode = AndroidComposeViewAccessibilityDelegateCompat_androidKt.findClosestParentNode(layoutNode, C06491.INSTANCE)) != null) {
                layoutNode = layoutNodeFindClosestParentNode;
            }
            int semanticsId = layoutNode.getSemanticsId();
            if (mutableIntSet.add(semanticsId)) {
                sendEventForVirtualView$default(this, semanticsNodeIdToAccessibilityVirtualNodeId(semanticsId), 2048, 1, null, 8, null);
            }
        }
    }

    private final void sendTypeViewScrolledAccessibilityEvent(LayoutNode layoutNode) {
        if (layoutNode.isAttached() && !this.view.getAndroidViewsHandler$ui().getLayoutNodeToHolder().containsKey(layoutNode)) {
            int semanticsId = layoutNode.getSemanticsId();
            ScrollAxisRange scrollAxisRange = this.pendingHorizontalScrollEvents.get(semanticsId);
            ScrollAxisRange scrollAxisRange2 = this.pendingVerticalScrollEvents.get(semanticsId);
            if (scrollAxisRange == null && scrollAxisRange2 == null) {
                return;
            }
            AccessibilityEvent accessibilityEventCreateEvent = createEvent(semanticsId, 4096);
            if (scrollAxisRange != null) {
                accessibilityEventCreateEvent.setScrollX((int) scrollAxisRange.getValue().invoke().floatValue());
                accessibilityEventCreateEvent.setMaxScrollX((int) scrollAxisRange.getMaxValue().invoke().floatValue());
            }
            if (scrollAxisRange2 != null) {
                accessibilityEventCreateEvent.setScrollY((int) scrollAxisRange2.getValue().invoke().floatValue());
                accessibilityEventCreateEvent.setMaxScrollY((int) scrollAxisRange2.getMaxValue().invoke().floatValue());
            }
            sendEvent(accessibilityEventCreateEvent);
        }
    }

    private final boolean setAccessibilitySelection(SemanticsNode semanticsNode, int i, int i2, boolean z) {
        String iterableTextForAccessibility;
        SemanticsConfiguration unmergedConfig$ui = semanticsNode.getUnmergedConfig$ui();
        SemanticsActions semanticsActions = SemanticsActions.INSTANCE;
        if (unmergedConfig$ui.contains(semanticsActions.getSetSelection()) && AndroidComposeViewAccessibilityDelegateCompat_androidKt.enabled(semanticsNode)) {
            dm3 dm3Var = (dm3) ((AccessibilityAction) semanticsNode.getUnmergedConfig$ui().get(semanticsActions.getSetSelection())).getAction();
            if (dm3Var != null) {
                return ((Boolean) dm3Var.invoke(Integer.valueOf(i), Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
            }
            return false;
        }
        if ((i == i2 && i2 == this.accessibilityCursorPosition) || (iterableTextForAccessibility = getIterableTextForAccessibility(semanticsNode)) == null) {
            return false;
        }
        if (i < 0 || i != i2 || i2 > iterableTextForAccessibility.length()) {
            i = -1;
        }
        this.accessibilityCursorPosition = i;
        boolean z2 = iterableTextForAccessibility.length() > 0;
        sendEvent(createTextSelectionChangedEvent(semanticsNodeIdToAccessibilityVirtualNodeId(semanticsNode.getId()), z2 ? Integer.valueOf(this.accessibilityCursorPosition) : null, z2 ? Integer.valueOf(this.accessibilityCursorPosition) : null, z2 ? Integer.valueOf(iterableTextForAccessibility.length()) : null, iterableTextForAccessibility));
        sendPendingTextTraversedAtGranularityEvent(semanticsNode.getId());
        return true;
    }

    private final void setContentInvalid(SemanticsNode semanticsNode, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        SemanticsConfiguration unmergedConfig$ui = semanticsNode.getUnmergedConfig$ui();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        if (unmergedConfig$ui.contains(semanticsProperties.getError())) {
            accessibilityNodeInfoCompat.setContentInvalid(true);
            accessibilityNodeInfoCompat.setError((CharSequence) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui(), semanticsProperties.getError()));
        }
    }

    private final void setInvisibleIfEmptyBounds(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, SemanticsNode semanticsNode) {
        if (semanticsNode.getTouchBoundsInRoot().isEmpty()) {
            accessibilityNodeInfoCompat.setVisibleToUser(false);
        }
    }

    private final void setText(SemanticsNode semanticsNode, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        AnnotatedString infoText = AndroidComposeViewAccessibilityDelegateCompat_androidKt.getInfoText(semanticsNode);
        accessibilityNodeInfoCompat.setText(infoText != null ? toSpannableString(infoText) : null);
    }

    private final android.graphics.Rect toAndroidRect(Rect rect, float f, float f2) {
        return new android.graphics.Rect((int) (rect.getLeft() + f), (int) (rect.getTop() + f2), (int) (rect.getRight() + f), (int) (rect.getBottom() + f2));
    }

    public static /* synthetic */ android.graphics.Rect toAndroidRect$default(AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat, Rect rect, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        return androidComposeViewAccessibilityDelegateCompat.toAndroidRect(rect, f, f2);
    }

    private final android.graphics.Rect toBoundsInScreen(float f, float f2, float f3, float f4) {
        long jMo7651localToScreenMKHz9U = this.view.mo7651localToScreenMKHz9U(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(f) << 32)));
        long jMo7651localToScreenMKHz9U2 = this.view.mo7651localToScreenMKHz9U(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f4)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(f3) << 32)));
        int i = (int) (jMo7651localToScreenMKHz9U >> 32);
        int i2 = (int) (jMo7651localToScreenMKHz9U2 >> 32);
        int iFloor = (int) Math.floor(Math.min(Float.intBitsToFloat(i), Float.intBitsToFloat(i2)));
        int i3 = (int) (jMo7651localToScreenMKHz9U & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        float fIntBitsToFloat = Float.intBitsToFloat(i3);
        int i4 = (int) (jMo7651localToScreenMKHz9U2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        return new android.graphics.Rect(iFloor, (int) Math.floor(Math.min(fIntBitsToFloat, Float.intBitsToFloat(i4))), (int) Math.ceil(Math.max(Float.intBitsToFloat(i), Float.intBitsToFloat(i2))), (int) Math.ceil(Math.max(Float.intBitsToFloat(i3), Float.intBitsToFloat(i4))));
    }

    private final Rect toBoundsRelativeToNodeBounds(android.graphics.Rect rect, android.graphics.Rect rect2) {
        float f = rect.left - rect2.left;
        float f2 = rect.top - rect2.top;
        return new Rect(f, f2, rect.width() + f, rect.height() + f2);
    }

    private final float[] toCornerArray(Outline outline) {
        if (!(outline instanceof Outline.Rounded)) {
            return null;
        }
        Outline.Rounded rounded = (Outline.Rounded) outline;
        return new float[]{Float.intBitsToFloat((int) (rounded.getRoundRect().m6037getTopLeftCornerRadiuskKHJgLs() >> 32)), Float.intBitsToFloat((int) (rounded.getRoundRect().m6037getTopLeftCornerRadiuskKHJgLs() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Float.intBitsToFloat((int) (rounded.getRoundRect().m6038getTopRightCornerRadiuskKHJgLs() >> 32)), Float.intBitsToFloat((int) (rounded.getRoundRect().m6038getTopRightCornerRadiuskKHJgLs() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Float.intBitsToFloat((int) (rounded.getRoundRect().m6036getBottomRightCornerRadiuskKHJgLs() >> 32)), Float.intBitsToFloat((int) (rounded.getRoundRect().m6036getBottomRightCornerRadiuskKHJgLs() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Float.intBitsToFloat((int) (rounded.getRoundRect().m6035getBottomLeftCornerRadiuskKHJgLs() >> 32)), Float.intBitsToFloat((int) (rounded.getRoundRect().m6035getBottomLeftCornerRadiuskKHJgLs() & MuxerUtil.UNSIGNED_INT_MAX_VALUE))};
    }

    private final Region toRegion(Outline outline, float f, float f2) {
        if (outline instanceof Outline.Generic) {
            Outline.Generic generic = (Outline.Generic) outline;
            Region region = new Region(toAndroidRect$default(this, generic.getBounds().translate(f, f2), 0.0f, 0.0f, 3, null));
            Region region2 = new Region();
            Path path = generic.getPath();
            if (path instanceof AndroidPath) {
                android.graphics.Path internalPath = ((AndroidPath) path).getInternalPath();
                internalPath.offset(f, f2);
                region2.setPath(internalPath, region);
                return region2;
            }
            n1.e("Unable to obtain android.graphics.Path");
        }
        return null;
    }

    private final RectF toScreenCoords(SemanticsNode semanticsNode, Rect rect) {
        if (semanticsNode == null) {
            return null;
        }
        Rect rectM6024translatek4lQ0M = rect.m6024translatek4lQ0M(semanticsNode.m8271getPositionInRootF1C5BW0());
        Rect boundsInRoot = semanticsNode.getBoundsInRoot();
        Rect rectIntersect = rectM6024translatek4lQ0M.overlaps(boundsInRoot) ? rectM6024translatek4lQ0M.intersect(boundsInRoot) : null;
        if (rectIntersect == null) {
            return null;
        }
        AndroidComposeView androidComposeView = this.view;
        float left = rectIntersect.getLeft();
        long jMo7651localToScreenMKHz9U = androidComposeView.mo7651localToScreenMKHz9U(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(rectIntersect.getTop())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(left)) << 32)));
        AndroidComposeView androidComposeView2 = this.view;
        float right = rectIntersect.getRight();
        long jMo7651localToScreenMKHz9U2 = androidComposeView2.mo7651localToScreenMKHz9U(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(rectIntersect.getBottom())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(right)) << 32)));
        int i = (int) (jMo7651localToScreenMKHz9U >> 32);
        int i2 = (int) (jMo7651localToScreenMKHz9U2 >> 32);
        float fMin = Math.min(Float.intBitsToFloat(i), Float.intBitsToFloat(i2));
        int i3 = (int) (jMo7651localToScreenMKHz9U & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        float fIntBitsToFloat = Float.intBitsToFloat(i3);
        int i4 = (int) (jMo7651localToScreenMKHz9U2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        return new RectF(fMin, Math.min(fIntBitsToFloat, Float.intBitsToFloat(i4)), Math.max(Float.intBitsToFloat(i), Float.intBitsToFloat(i2)), Math.max(Float.intBitsToFloat(i3), Float.intBitsToFloat(i4)));
    }

    private final SpannableString toSpannableString(AnnotatedString annotatedString) {
        return (SpannableString) trimToSize(AndroidAccessibilitySpannableString_androidKt.toAccessibilitySpannableString(annotatedString, this.view.getDensity(), this.view.getFontFamilyResolver(), this.urlSpanCache), 100000);
    }

    private final boolean traverseAtGranularity(SemanticsNode semanticsNode, int i, boolean z, boolean z2) {
        int accessibilitySelectionStart;
        int i2;
        int id = semanticsNode.getId();
        Integer num = this.previousTraversedNode;
        if (num == null || id != num.intValue()) {
            this.accessibilityCursorPosition = -1;
            this.previousTraversedNode = Integer.valueOf(semanticsNode.getId());
        }
        String iterableTextForAccessibility = getIterableTextForAccessibility(semanticsNode);
        boolean z3 = false;
        if (iterableTextForAccessibility != null && iterableTextForAccessibility.length() != 0) {
            AccessibilityIterators.TextSegmentIterator iteratorForGranularity = getIteratorForGranularity(semanticsNode, i);
            if (iteratorForGranularity == null) {
                return false;
            }
            int accessibilitySelectionEnd = getAccessibilitySelectionEnd(semanticsNode);
            if (accessibilitySelectionEnd == -1) {
                accessibilitySelectionEnd = z ? 0 : iterableTextForAccessibility.length();
            }
            int[] iArrFollowing = z ? iteratorForGranularity.following(accessibilitySelectionEnd) : iteratorForGranularity.preceding(accessibilitySelectionEnd);
            if (iArrFollowing == null) {
                return false;
            }
            int i3 = iArrFollowing[0];
            z3 = true;
            int i4 = iArrFollowing[1];
            if (z2 && isAccessibilitySelectionExtendable(semanticsNode)) {
                accessibilitySelectionStart = getAccessibilitySelectionStart(semanticsNode);
                if (accessibilitySelectionStart == -1) {
                    accessibilitySelectionStart = z ? i3 : i4;
                }
                i2 = z ? i4 : i3;
            } else {
                accessibilitySelectionStart = z ? i4 : i3;
                i2 = accessibilitySelectionStart;
            }
            this.pendingTextTraversedEvent = new PendingTextTraversedEvent(semanticsNode, z ? 256 : 512, i, i3, i4, SystemClock.uptimeMillis());
            setAccessibilitySelection(semanticsNode, accessibilitySelectionStart, i2, true);
        }
        return z3;
    }

    private final <T extends CharSequence> T trimToSize(T t, int i) {
        if (i <= 0) {
            fg.c("size should be greater than 0");
            return null;
        }
        if (t == null || t.length() == 0 || t.length() <= i) {
            return t;
        }
        int i2 = i - 1;
        if (Character.isHighSurrogate(t.charAt(i2)) && Character.isLowSurrogate(t.charAt(i))) {
            i = i2;
        }
        T t2 = (T) t.subSequence(0, i);
        t2.getClass();
        return t2;
    }

    private final void updateHoveredVirtualView(int i) {
        int i2 = this.hoveredVirtualViewId;
        if (i2 == i) {
            return;
        }
        this.hoveredVirtualViewId = i;
        sendEventForVirtualView$default(this, i, 128, null, null, 12, null);
        sendEventForVirtualView$default(this, i2, 256, null, null, 12, null);
    }

    /* JADX WARN: Code duplicated, block: B:53:0x014e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:54:0x0150 A[LOOP:2: B:39:0x00da->B:54:0x0150, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:64:0x0159 A[EDGE_INSN: B:64:0x0159->B:55:0x0159 BREAK  A[LOOP:2: B:39:0x00da->B:54:0x0150], SYNTHETIC] */
    private final void updateSemanticsNodesCopyAndPanes() {
        long j;
        long j2;
        long j3;
        long j4;
        SemanticsConfiguration unmergedConfig;
        MutableIntSet mutableIntSet = new MutableIntSet(0, 1, null);
        MutableIntSet mutableIntSet2 = this.paneDisplayed;
        int[] iArr = mutableIntSet2.elements;
        long[] jArr = mutableIntSet2.metadata;
        int length = jArr.length - 2;
        long j5 = 128;
        long j6 = 255;
        char c = 7;
        long j7 = -9187201950435737472L;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j8 = jArr[i];
                int[] iArr2 = iArr;
                if ((((~j8) << 7) & j8 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    int i3 = 0;
                    while (i3 < i2) {
                        if ((j8 & j6) < j5) {
                            j3 = j5;
                            int i4 = iArr2[(i << 3) + i3];
                            SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = getCurrentSemanticsNodes().get(i4);
                            SemanticsNode semanticsNode = semanticsNodeWithAdjustedBounds != null ? semanticsNodeWithAdjustedBounds.getSemanticsNode() : null;
                            if (semanticsNode != null) {
                                j4 = j6;
                                if (!semanticsNode.getUnmergedConfig$ui().contains(SemanticsProperties.INSTANCE.getPaneTitle())) {
                                }
                            } else {
                                j4 = j6;
                            }
                            mutableIntSet.add(i4);
                            SemanticsNodeCopy semanticsNodeCopy = this.previousSemanticsNodes.get(i4);
                            sendPaneChangeEvents(i4, 32, (semanticsNodeCopy == null || (unmergedConfig = semanticsNodeCopy.getUnmergedConfig()) == null) ? null : (String) SemanticsConfigurationKt.getOrNull(unmergedConfig, SemanticsProperties.INSTANCE.getPaneTitle()));
                        } else {
                            j3 = j5;
                            j4 = j6;
                        }
                        j8 >>= 8;
                        i3++;
                        j5 = j3;
                        j6 = j4;
                    }
                    j = j5;
                    j2 = j6;
                    if (i2 != 8) {
                        break;
                    }
                } else {
                    j = j5;
                    j2 = j6;
                }
                if (i == length) {
                    break;
                }
                i++;
                iArr = iArr2;
                j5 = j;
                j6 = j2;
            }
        } else {
            j = 128;
            j2 = 255;
        }
        this.paneDisplayed.removeAll(mutableIntSet);
        this.previousSemanticsNodes.clear();
        IntObjectMap<SemanticsNodeWithAdjustedBounds> currentSemanticsNodes = getCurrentSemanticsNodes();
        int[] iArr3 = currentSemanticsNodes.keys;
        Object[] objArr = currentSemanticsNodes.values;
        long[] jArr2 = currentSemanticsNodes.metadata;
        int length2 = jArr2.length - 2;
        if (length2 >= 0) {
            int i5 = 0;
            while (true) {
                long j9 = jArr2[i5];
                if ((((~j9) << c) & j9 & j7) != j7) {
                    int i6 = 8 - ((~(i5 - length2)) >>> 31);
                    for (int i7 = 0; i7 < i6; i7++) {
                        if ((j9 & j2) < j) {
                            int i8 = (i5 << 3) + i7;
                            int i9 = iArr3[i8];
                            SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds2 = (SemanticsNodeWithAdjustedBounds) objArr[i8];
                            SemanticsConfiguration unmergedConfig$ui = semanticsNodeWithAdjustedBounds2.getSemanticsNode().getUnmergedConfig$ui();
                            SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
                            if (unmergedConfig$ui.contains(semanticsProperties.getPaneTitle()) && this.paneDisplayed.add(i9)) {
                                sendPaneChangeEvents(i9, 16, (String) semanticsNodeWithAdjustedBounds2.getSemanticsNode().getUnmergedConfig$ui().get(semanticsProperties.getPaneTitle()));
                            }
                            this.previousSemanticsNodes.set(i9, new SemanticsNodeCopy(semanticsNodeWithAdjustedBounds2.getSemanticsNode(), getCurrentSemanticsNodes()));
                        }
                        j9 >>= 8;
                    }
                    if (i6 != 8) {
                        break;
                    }
                    if (i5 != length2) {
                        break;
                    }
                    i5++;
                    c = 7;
                    j7 = -9187201950435737472L;
                } else if (i5 != length2) {
                    break;
                    break;
                } else {
                    i5++;
                    c = 7;
                    j7 = -9187201950435737472L;
                }
            }
        }
        this.previousSemanticsRoot = new SemanticsNodeCopy(this.view.getSemanticsOwner().getUnmergedRootSemanticsNode(), getCurrentSemanticsNodes());
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0064  */
    /* JADX WARN: Code duplicated, block: B:27:0x0065  */
    /* JADX WARN: Code duplicated, block: B:30:0x0070 A[Catch: all -> 0x0035, TryCatch #0 {all -> 0x0035, blocks: (B:13:0x0030, B:24:0x0058, B:28:0x0068, B:30:0x0070, B:32:0x0079, B:34:0x0082, B:35:0x0093, B:38:0x00a0, B:39:0x00a7, B:20:0x0046, B:23:0x004d), top: B:46:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x0079 A[Catch: all -> 0x0035, TryCatch #0 {all -> 0x0035, blocks: (B:13:0x0030, B:24:0x0058, B:28:0x0068, B:30:0x0070, B:32:0x0079, B:34:0x0082, B:35:0x0093, B:38:0x00a0, B:39:0x00a7, B:20:0x0046, B:23:0x004d), top: B:46:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0082 A[Catch: all -> 0x0035, LOOP:0: B:33:0x0080->B:34:0x0082, LOOP_END, TryCatch #0 {all -> 0x0035, blocks: (B:13:0x0030, B:24:0x0058, B:28:0x0068, B:30:0x0070, B:32:0x0079, B:34:0x0082, B:35:0x0093, B:38:0x00a0, B:39:0x00a7, B:20:0x0046, B:23:0x004d), top: B:46:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x009e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:42:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00c2, code lost:
    
        if (defpackage.yk2.b(r7, r0) == r1) goto L41;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00c2 -> B:14:0x0033). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object boundsUpdatesEventLoop$ui(defpackage.e02<? super defpackage.j59> r11) {
        /*
            Method dump skipped, instruction units count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.boundsUpdatesEventLoop$ui(e02):java.lang.Object");
    }

    /* JADX INFO: renamed from: canScroll-0AR0LA0$ui, reason: not valid java name */
    public final boolean m8146canScroll0AR0LA0$ui(boolean z, int i, long j) {
        if (aa4.e(Looper.getMainLooper().getThread(), Thread.currentThread())) {
            return m8143canScrollmoWRBKg(getCurrentSemanticsNodes(), z, i, j);
        }
        return false;
    }

    public final boolean dispatchHoverEvent$ui(MotionEvent motionEvent) {
        if (!isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 7 || action == 9) {
            int iHitTestSemanticsAt$ui = hitTestSemanticsAt$ui(motionEvent.getX(), motionEvent.getY());
            boolean zDispatchGenericMotionEvent = this.view.getAndroidViewsHandler$ui().dispatchGenericMotionEvent(motionEvent);
            updateHoveredVirtualView(iHitTestSemanticsAt$ui);
            if (iHitTestSemanticsAt$ui == Integer.MIN_VALUE) {
                return zDispatchGenericMotionEvent;
            }
            return true;
        }
        if (action != 10) {
            return false;
        }
        if (this.hoveredVirtualViewId == Integer.MIN_VALUE) {
            return this.view.getAndroidViewsHandler$ui().dispatchGenericMotionEvent(motionEvent);
        }
        updateHoveredVirtualView(Integer.MIN_VALUE);
        return true;
    }

    public final boolean getAccessibilityForceEnabledForTesting$ui() {
        return this.accessibilityForceEnabledForTesting;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
        return this.nodeProvider;
    }

    public final String getExtraDataTestTraversalAfterVal$ui() {
        return this.ExtraDataTestTraversalAfterVal;
    }

    public final String getExtraDataTestTraversalBeforeVal$ui() {
        return this.ExtraDataTestTraversalBeforeVal;
    }

    public final int getHoveredVirtualViewId$ui() {
        return this.hoveredVirtualViewId;
    }

    public final MutableIntIntMap getIdToAfterMap$ui() {
        return this.idToAfterMap;
    }

    public final MutableIntIntMap getIdToBeforeMap$ui() {
        return this.idToBeforeMap;
    }

    public final nl3<AccessibilityEvent, Boolean> getOnSendAccessibilityEvent$ui() {
        return this.onSendAccessibilityEvent;
    }

    public final Boolean getRequestFromAccessibilityToolForTesting$ui() {
        return this.requestFromAccessibilityToolForTesting;
    }

    public final long getSendRecurringAccessibilityEventsIntervalMillis$ui() {
        return this.SendRecurringAccessibilityEventsIntervalMillis;
    }

    public final AndroidComposeView getView() {
        return this.view;
    }

    public final int hitTestSemanticsAt$ui(float f, float f2) {
        int iSemanticsNodeIdToAccessibilityVirtualNodeId;
        Owner.measureAndLayout$default(this.view, false, 1, null);
        HitTestResult hitTestResult = new HitTestResult();
        LayoutNode.m7925hitTestSemantics6fMxITs$ui$default(this.view.getRoot(), Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(f) << 32)), hitTestResult, 0, false, 12, null);
        int size = hitTestResult.size() - 1;
        while (true) {
            iSemanticsNodeIdToAccessibilityVirtualNodeId = Integer.MIN_VALUE;
            if (-1 >= size) {
                break;
            }
            LayoutNode layoutNodeRequireLayoutNode = DelegatableNodeKt.requireLayoutNode(hitTestResult.get(size));
            if (this.view.getAndroidViewsHandler$ui().getLayoutNodeToHolder().get(layoutNodeRequireLayoutNode) != null) {
                return Integer.MIN_VALUE;
            }
            if (layoutNodeRequireLayoutNode.getNodes$ui().m7979hasH91voCI$ui(NodeKind.m8019constructorimpl(8))) {
                iSemanticsNodeIdToAccessibilityVirtualNodeId = semanticsNodeIdToAccessibilityVirtualNodeId(layoutNodeRequireLayoutNode.getSemanticsId());
                SemanticsNode SemanticsNode = SemanticsNodeKt.SemanticsNode(layoutNodeRequireLayoutNode, false);
                if (SemanticsOwnerKt.isImportantForAccessibility(SemanticsNode) && !SemanticsNode_androidKt.isAccessibilityIgnoredLink(SemanticsNode)) {
                    break;
                }
            }
            size--;
        }
        return iSemanticsNodeIdToAccessibilityVirtualNodeId;
    }

    public final boolean isEnabled$ui() {
        if (this.accessibilityForceEnabledForTesting) {
            return true;
        }
        return this.accessibilityManager.isEnabled() && !getEnabledServices().isEmpty();
    }

    @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
    public void onAccessibilityStateChanged(boolean z) {
        resetEnabledAccessibilityServiceList();
    }

    public final void onLayoutChange$ui(LayoutNode layoutNode) {
        this.currentSemanticsNodesInvalidated = true;
        if (isEnabled$ui()) {
            notifySubtreeAccessibilityStateChangedIfNeeded(layoutNode);
        }
    }

    public final void onSemanticsChange$ui() {
        this.currentSemanticsNodesInvalidated = true;
        Handler handler = getHandler();
        if (!isEnabled$ui() || this.checkingForSemanticsChanges || handler == null) {
            return;
        }
        this.checkingForSemanticsChanges = true;
        handler.post(this.semanticsChangeChecker);
    }

    @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
    public void onTouchExplorationStateChanged(boolean z) {
        resetEnabledAccessibilityServiceList();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        if (this.accessibilityManager.isEnabled()) {
            resetEnabledAccessibilityServiceList();
        }
        this.accessibilityManager.addAccessibilityStateChangeListener(this);
        this.accessibilityManager.addTouchExplorationStateChangeListener(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        Handler handler = getHandler();
        handler.getClass();
        handler.removeCallbacks(this.semanticsChangeChecker);
        this.accessibilityManager.removeAccessibilityStateChangeListener(this);
        this.accessibilityManager.removeTouchExplorationStateChangeListener(this);
    }

    public final void setAccessibilityForceEnabledForTesting$ui(boolean z) {
        this.accessibilityForceEnabledForTesting = z;
        this.currentSemanticsNodesInvalidated = true;
    }

    public final void setHoveredVirtualViewId$ui(int i) {
        this.hoveredVirtualViewId = i;
    }

    public final void setIdToAfterMap$ui(MutableIntIntMap mutableIntIntMap) {
        this.idToAfterMap = mutableIntIntMap;
    }

    public final void setIdToBeforeMap$ui(MutableIntIntMap mutableIntIntMap) {
        this.idToBeforeMap = mutableIntIntMap;
    }

    public final void setOnSendAccessibilityEvent$ui(nl3<? super AccessibilityEvent, Boolean> nl3Var) {
        this.onSendAccessibilityEvent = nl3Var;
    }

    public final void setRequestFromAccessibilityToolForTesting$ui(Boolean bool) {
        this.requestFromAccessibilityToolForTesting = bool;
    }

    public final void setSendRecurringAccessibilityEventsIntervalMillis$ui(long j) {
        this.SendRecurringAccessibilityEventsIntervalMillis = j;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    private final android.graphics.Rect toAndroidRect(Outline outline, float f, float f2) {
        if ((outline instanceof Outline.Rectangle) || (outline instanceof Outline.Rounded)) {
            return toAndroidRect(outline.getBounds(), f, f2);
        }
        return null;
    }

    /* JADX INFO: renamed from: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements ll3<j59> {
        final /* synthetic */ ScrollObservationScope $scrollObservationScope;
        final /* synthetic */ AndroidComposeViewAccessibilityDelegateCompat this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ScrollObservationScope scrollObservationScope, AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat) {
            super(0);
            this.$scrollObservationScope = scrollObservationScope;
            this.this$0 = androidComposeViewAccessibilityDelegateCompat;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            SemanticsNode semanticsNode;
            LayoutNode layoutNode$ui;
            ScrollAxisRange horizontalScrollAxisRange = this.$scrollObservationScope.getHorizontalScrollAxisRange();
            ScrollAxisRange verticalScrollAxisRange = this.$scrollObservationScope.getVerticalScrollAxisRange();
            Float oldXValue = this.$scrollObservationScope.getOldXValue();
            Float oldYValue = this.$scrollObservationScope.getOldYValue();
            float fFloatValue = (horizontalScrollAxisRange == null || oldXValue == null) ? 0.0f : horizontalScrollAxisRange.getValue().invoke().floatValue() - oldXValue.floatValue();
            float fFloatValue2 = (verticalScrollAxisRange == null || oldYValue == null) ? 0.0f : verticalScrollAxisRange.getValue().invoke().floatValue() - oldYValue.floatValue();
            if (fFloatValue != 0.0f || fFloatValue2 != 0.0f) {
                int iSemanticsNodeIdToAccessibilityVirtualNodeId = this.this$0.semanticsNodeIdToAccessibilityVirtualNodeId(this.$scrollObservationScope.getSemanticsNodeId());
                SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) this.this$0.getCurrentSemanticsNodes().get(this.this$0.accessibilityFocusedVirtualViewId);
                if (semanticsNodeWithAdjustedBounds != null) {
                    AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = this.this$0;
                    try {
                        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = androidComposeViewAccessibilityDelegateCompat.currentlyAccessibilityFocusedANI;
                        if (accessibilityNodeInfoCompat != null) {
                            accessibilityNodeInfoCompat.setBoundsInScreen(androidComposeViewAccessibilityDelegateCompat.boundsInScreen(semanticsNodeWithAdjustedBounds));
                            j59 j59Var = j59.a;
                        }
                    } catch (IllegalStateException unused) {
                        j59 j59Var2 = j59.a;
                    }
                }
                SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds2 = (SemanticsNodeWithAdjustedBounds) this.this$0.getCurrentSemanticsNodes().get(this.this$0.focusedVirtualViewId);
                if (semanticsNodeWithAdjustedBounds2 != null) {
                    AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat2 = this.this$0;
                    try {
                        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2 = androidComposeViewAccessibilityDelegateCompat2.currentlyFocusedANI;
                        if (accessibilityNodeInfoCompat2 != null) {
                            accessibilityNodeInfoCompat2.setBoundsInScreen(androidComposeViewAccessibilityDelegateCompat2.boundsInScreen(semanticsNodeWithAdjustedBounds2));
                            j59 j59Var3 = j59.a;
                        }
                    } catch (IllegalStateException unused2) {
                        j59 j59Var4 = j59.a;
                    }
                }
                this.this$0.getView().invalidate();
                SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds3 = (SemanticsNodeWithAdjustedBounds) this.this$0.getCurrentSemanticsNodes().get(iSemanticsNodeIdToAccessibilityVirtualNodeId);
                if (semanticsNodeWithAdjustedBounds3 != null && (semanticsNode = semanticsNodeWithAdjustedBounds3.getSemanticsNode()) != null && (layoutNode$ui = semanticsNode.getLayoutNode$ui()) != null) {
                    AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat3 = this.this$0;
                    if (horizontalScrollAxisRange != null) {
                        androidComposeViewAccessibilityDelegateCompat3.pendingHorizontalScrollEvents.set(iSemanticsNodeIdToAccessibilityVirtualNodeId, horizontalScrollAxisRange);
                    }
                    if (verticalScrollAxisRange != null) {
                        androidComposeViewAccessibilityDelegateCompat3.pendingVerticalScrollEvents.set(iSemanticsNodeIdToAccessibilityVirtualNodeId, verticalScrollAxisRange);
                    }
                    androidComposeViewAccessibilityDelegateCompat3.notifySubtreeAccessibilityStateChangedIfNeeded(layoutNode$ui);
                }
            }
            if (horizontalScrollAxisRange != null) {
                this.$scrollObservationScope.setOldXValue(horizontalScrollAxisRange.getValue().invoke());
            }
            if (verticalScrollAxisRange != null) {
                this.$scrollObservationScope.setOldYValue(verticalScrollAxisRange.getValue().invoke());
            }
        }

        @Override // defpackage.ll3
        public /* bridge */ /* synthetic */ j59 invoke() {
            invoke2();
            return j59.a;
        }
    }
}
