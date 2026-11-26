package androidx.compose.foundation;

import android.view.KeyEvent;
import androidx.collection.LongObjectMapKt;
import androidx.collection.MutableLongObjectMap;
import androidx.compose.foundation.AbstractClickableNode;
import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.ui.focus.Focusability;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.input.indirect.IndirectPointerEvent;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerEventType;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.aa4;
import defpackage.av0;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.nl3;
import defpackage.q;
import defpackage.s;
import defpackage.z22;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractClickableNode extends DelegatingNode implements PointerInputModifierNode, KeyInputModifierNode, SemanticsModifierNode, TraversableNode, CompositionLocalConsumerModifierNode, ObserverModifierNode, IndirectPointerInputModifierNode, GestureConnection {
    private long centerOffset;
    private final MutableLongObjectMap<PressInteraction.Press> currentKeyPressInteractions;
    private mb4 delayJob;
    private boolean enabled;
    private final FocusableNode focusableNode;
    private DelegatableNode gestureNode;
    private HoverInteraction.Enter hoverInteraction;
    private DelegatableNode indicationNode;
    private IndicationNodeFactory indicationNodeFactory;
    private Offset indirectPointerEventPressPosition;
    private PressInteraction.Press indirectPointerPressInteraction;
    private MutableInteractionSource interactionSource;
    private boolean lazilyCreateIndication;
    private IndicationNodeFactory localIndicationNodeFactory;
    private ll3<j59> onClick;
    private String onClickLabel;
    private SuspendingPointerInputModifierNode pointerInputNode;
    private PressInteraction.Press pressInteraction;
    private Role role;
    private final boolean shouldAutoInvalidate;
    private final Object traverseKey;
    private boolean useLocalIndication;
    private MutableInteractionSource userProvidedInteractionSource;
    public static final TraverseKey TraverseKey = new TraverseKey(null);
    public static final int $stable = 8;

    private AbstractClickableNode(MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z, boolean z2, String str, Role role, ll3<j59> ll3Var) {
        this.interactionSource = mutableInteractionSource;
        this.indicationNodeFactory = indicationNodeFactory;
        this.useLocalIndication = z;
        this.onClickLabel = str;
        this.role = role;
        this.enabled = z2;
        this.onClick = ll3Var;
        this.focusableNode = new FocusableNode(this.interactionSource, Focusability.Companion.m5923getSystemDefinedLCbbffg(), new AbstractClickableNode$focusableNode$1(this), null);
        this.currentKeyPressInteractions = LongObjectMapKt.mutableLongObjectMapOf();
        this.centerOffset = Offset.Companion.m6003getZeroF1C5BW0();
        this.userProvidedInteractionSource = this.interactionSource;
        this.lazilyCreateIndication = shouldLazilyCreateIndication();
        this.traverseKey = TraverseKey;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$0(AbstractClickableNode abstractClickableNode) {
        abstractClickableNode.onClick.invoke();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean delayPressInteraction(PointerInputChange pointerInputChange) {
        boolean zHasInterestedParent;
        if (pointerInputChange == null) {
            zHasInterestedParent = GestureNodeKt.getParentGestureConnection(this) != null;
        } else {
            zHasInterestedParent = ClickableKt.hasInterestedParent(this, pointerInputChange);
        }
        return zHasInterestedParent || Clickable_androidKt.isComposeRootInScrollableContainer(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void emitHoverEnter() {
        if (this.hoverInteraction == null) {
            HoverInteraction.Enter enter = new HoverInteraction.Enter();
            MutableInteractionSource mutableInteractionSource = this.interactionSource;
            if (mutableInteractionSource != null) {
                av0.c(getCoroutineScope(), null, null, new AbstractClickableNode$emitHoverEnter$1$1(mutableInteractionSource, enter, null), 3);
            }
            this.hoverInteraction = enter;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void emitHoverExit() {
        HoverInteraction.Enter enter = this.hoverInteraction;
        if (enter != null) {
            HoverInteraction.Exit exit = new HoverInteraction.Exit(enter);
            MutableInteractionSource mutableInteractionSource = this.interactionSource;
            if (mutableInteractionSource != null) {
                av0.c(getCoroutineScope(), null, null, new AbstractClickableNode$emitHoverExit$1$1$1(mutableInteractionSource, exit, null), 3);
            }
            this.hoverInteraction = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 handlePressInteractionCancel$lambda$0$0$0(MutableInteractionSource mutableInteractionSource, PressInteraction.Cancel cancel, Throwable th) {
        mutableInteractionSource.tryEmit(cancel);
        return j59.a;
    }

    private final void initializeGestureCoordination() {
        if (ComposeFoundationFlags.isDelayPressesUsingGestureConsumptionEnabled && this.gestureNode == null) {
            this.gestureNode = delegate(GestureNodeKt.gestureNode(this));
        }
    }

    private final void initializeIndicationAndInteractionSourceIfNeeded() {
        if (this.indicationNode != null) {
            return;
        }
        IndicationNodeFactory indicationNodeFactory = this.useLocalIndication ? this.localIndicationNodeFactory : this.indicationNodeFactory;
        if (indicationNodeFactory != null) {
            MutableInteractionSource MutableInteractionSource = this.interactionSource;
            if (MutableInteractionSource == null) {
                MutableInteractionSource = InteractionSourceKt.MutableInteractionSource();
                this.interactionSource = MutableInteractionSource;
            }
            this.focusableNode.update(MutableInteractionSource);
            MutableInteractionSource mutableInteractionSource = this.interactionSource;
            mutableInteractionSource.getClass();
            DelegatableNode delegatableNodeCreate = indicationNodeFactory.create(mutableInteractionSource);
            delegate(delegatableNodeCreate);
            this.indicationNode = delegatableNodeCreate;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:20:0x0059 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:21:0x005b A[LOOP:0: B:11:0x001b->B:21:0x005b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:28:0x005e A[EDGE_INSN: B:28:0x005e->B:22:0x005e BREAK  A[LOOP:0: B:11:0x001b->B:21:0x005b], SYNTHETIC] */
    public final void onFocusChange(boolean z) {
        if (z) {
            initializeIndicationAndInteractionSourceIfNeeded();
            return;
        }
        if (this.interactionSource != null) {
            MutableLongObjectMap<PressInteraction.Press> mutableLongObjectMap = this.currentKeyPressInteractions;
            Object[] objArr = mutableLongObjectMap.values;
            long[] jArr = mutableLongObjectMap.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i = 0;
                while (true) {
                    long j = jArr[i];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                        if (i != length) {
                            break;
                            break;
                        }
                        i++;
                    } else {
                        int i2 = 8 - ((~(i - length)) >>> 31);
                        for (int i3 = 0; i3 < i2; i3++) {
                            if ((255 & j) < 128) {
                                av0.c(getCoroutineScope(), null, null, new AbstractClickableNode$onFocusChange$1$1(this, (PressInteraction.Press) objArr[(i << 3) + i3], null), 3);
                            }
                            j >>= 8;
                        }
                        if (i2 != 8) {
                            break;
                        } else if (i != length) {
                            break;
                        } else {
                            i++;
                        }
                    }
                }
            }
            PressInteraction.Press press = this.indirectPointerPressInteraction;
            if (press != null) {
                av0.c(getCoroutineScope(), null, null, new AbstractClickableNode$onFocusChange$2$1(this, press, null), 3);
            }
        }
        this.currentKeyPressInteractions.clear();
        this.indirectPointerPressInteraction = null;
        onCancelKeyInput();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 onObservedReadsChanged$lambda$0(AbstractClickableNode abstractClickableNode) {
        Indication indication = (Indication) CompositionLocalConsumerModifierNodeKt.currentValueOf(abstractClickableNode, IndicationKt.getLocalIndication());
        if (!(indication instanceof IndicationNodeFactory)) {
            InlineClassHelperKt.throwIllegalArgumentException(ClickableKt.unsupportedIndicationExceptionMessage(indication));
        }
        IndicationNodeFactory indicationNodeFactory = abstractClickableNode.localIndicationNodeFactory;
        IndicationNodeFactory indicationNodeFactory2 = (IndicationNodeFactory) indication;
        abstractClickableNode.localIndicationNodeFactory = indicationNodeFactory2;
        if (indicationNodeFactory != null && !aa4.e(indicationNodeFactory2, indicationNodeFactory)) {
            abstractClickableNode.recreateIndicationIfNeeded();
        }
        return j59.a;
    }

    private final void recreateIndicationIfNeeded() {
        DelegatableNode delegatableNode = this.indicationNode;
        if (delegatableNode == null && this.lazilyCreateIndication) {
            return;
        }
        if (delegatableNode != null) {
            undelegate(delegatableNode);
        }
        this.indicationNode = null;
        initializeIndicationAndInteractionSourceIfNeeded();
    }

    private final boolean shouldLazilyCreateIndication() {
        return this.userProvidedInteractionSource == null;
    }

    public void applyAdditionalSemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Role role = this.role;
        if (role != null) {
            SemanticsPropertiesKt.m8280setRolekuIjeqM(semanticsPropertyReceiver, role.m8260unboximpl());
        }
        SemanticsPropertiesKt.onClick(semanticsPropertyReceiver, this.onClickLabel, new s(this, 0));
        if (this.enabled) {
            this.focusableNode.applySemantics(semanticsPropertyReceiver);
        } else {
            SemanticsPropertiesKt.disabled(semanticsPropertyReceiver);
        }
        applyAdditionalSemantics(semanticsPropertyReceiver);
    }

    public SuspendingPointerInputModifierNode createPointerInputNodeIfNeeded() {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x006f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x0071 A[LOOP:0: B:16:0x0035->B:26:0x0071, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:30:0x0074 A[EDGE_INSN: B:30:0x0074->B:27:0x0074 BREAK  A[LOOP:0: B:16:0x0035->B:26:0x0071], SYNTHETIC] */
    public final void disposeInteractions() {
        MutableInteractionSource mutableInteractionSource = this.interactionSource;
        if (mutableInteractionSource != null) {
            PressInteraction.Press press = this.pressInteraction;
            if (press != null) {
                mutableInteractionSource.tryEmit(new PressInteraction.Cancel(press));
            }
            PressInteraction.Press press2 = this.indirectPointerPressInteraction;
            if (press2 != null) {
                mutableInteractionSource.tryEmit(new PressInteraction.Cancel(press2));
            }
            HoverInteraction.Enter enter = this.hoverInteraction;
            if (enter != null) {
                mutableInteractionSource.tryEmit(new HoverInteraction.Exit(enter));
            }
            MutableLongObjectMap<PressInteraction.Press> mutableLongObjectMap = this.currentKeyPressInteractions;
            Object[] objArr = mutableLongObjectMap.values;
            long[] jArr = mutableLongObjectMap.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i = 0;
                while (true) {
                    long j = jArr[i];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                        if (i != length) {
                            break;
                            break;
                        }
                        i++;
                    } else {
                        int i2 = 8 - ((~(i - length)) >>> 31);
                        for (int i3 = 0; i3 < i2; i3++) {
                            if ((255 & j) < 128) {
                                mutableInteractionSource.tryEmit(new PressInteraction.Cancel((PressInteraction.Press) objArr[(i << 3) + i3]));
                            }
                            j >>= 8;
                        }
                        if (i2 != 8) {
                            break;
                        } else if (i != length) {
                            break;
                        } else {
                            i++;
                        }
                    }
                }
            }
        }
        this.pressInteraction = null;
        this.indirectPointerPressInteraction = null;
        this.indirectPointerEventPressPosition = null;
        this.hoverInteraction = null;
        this.currentKeyPressInteractions.clear();
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    /* JADX INFO: renamed from: getExtendedTouchPadding-hWWAJMo, reason: not valid java name */
    public final long m1252getExtendedTouchPaddinghWWAJMo(long j) {
        long jMo1435toSizeXkaWNTQ = DelegatableNodeKt.requireDensity(this).mo1435toSizeXkaWNTQ(((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalViewConfiguration())).mo7934getMinimumTouchTargetSizeMYxV2XQ());
        float fMax = Math.max(0.0f, Float.intBitsToFloat((int) (jMo1435toSizeXkaWNTQ >> 32)) - ((int) (j >> 32))) / 2.0f;
        return Size.m6047constructorimpl((((long) Float.floatToRawIntBits(Math.max(0.0f, Float.intBitsToFloat((int) (jMo1435toSizeXkaWNTQ & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) - ((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) / 2.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fMax) << 32));
    }

    public final ll3<j59> getOnClick() {
        return this.onClick;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return this.shouldAutoInvalidate;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean getShouldMergeDescendantSemantics() {
        return true;
    }

    @Override // androidx.compose.ui.node.TraversableNode
    public Object getTraverseKey() {
        return this.traverseKey;
    }

    /* JADX INFO: renamed from: handlePressInteraction-d-4ec7I, reason: not valid java name */
    public final Object m1253handlePressInteractiond4ec7I(PressGestureScope pressGestureScope, long j, e02<? super j59> e02Var) {
        Object objC;
        MutableInteractionSource mutableInteractionSource = this.interactionSource;
        return (mutableInteractionSource == null || (objC = z22.c(new AbstractClickableNode$handlePressInteraction$2$1(pressGestureScope, j, mutableInteractionSource, this, null), e02Var)) != a32.COROUTINE_SUSPENDED) ? j59.a : objC;
    }

    public final void handlePressInteractionCancel(boolean z) {
        final MutableInteractionSource mutableInteractionSource = this.interactionSource;
        if (mutableInteractionSource != null) {
            mb4 mb4Var = this.delayJob;
            if (mb4Var == null || !mb4Var.isActive()) {
                PressInteraction.Press press = z ? this.indirectPointerPressInteraction : this.pressInteraction;
                if (press != null) {
                    final PressInteraction.Cancel cancel = new PressInteraction.Cancel(press);
                    mb4 mb4Var2 = (mb4) getCoroutineScope().getCoroutineContext().get(mb4.a.b);
                    av0.c(getCoroutineScope(), null, null, new AbstractClickableNode$handlePressInteractionCancel$1$1$1(mutableInteractionSource, cancel, mb4Var2 != null ? mb4Var2.g(new nl3() { // from class: r
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return AbstractClickableNode.handlePressInteractionCancel$lambda$0$0$0(mutableInteractionSource, cancel, (Throwable) obj);
                        }
                    }) : null, null), 3);
                }
            } else {
                mb4 mb4Var3 = this.delayJob;
                if (mb4Var3 != null) {
                    mb4Var3.cancel(null);
                }
            }
            if (z) {
                this.indirectPointerPressInteraction = null;
            } else {
                this.pressInteraction = null;
            }
        }
    }

    /* JADX INFO: renamed from: handlePressInteractionRelease-3MmeM6k, reason: not valid java name */
    public final void m1254handlePressInteractionRelease3MmeM6k(long j, boolean z) {
        MutableInteractionSource mutableInteractionSource = this.interactionSource;
        if (mutableInteractionSource != null) {
            mb4 mb4Var = this.delayJob;
            if (mb4Var == null || !mb4Var.isActive()) {
                PressInteraction.Press press = z ? this.indirectPointerPressInteraction : this.pressInteraction;
                if (press != null) {
                    av0.c(getCoroutineScope(), null, null, new AbstractClickableNode$handlePressInteractionRelease$1$2$1(press, mutableInteractionSource, null), 3);
                }
            } else {
                mb4Var.cancel(null);
                av0.c(getCoroutineScope(), null, null, new AbstractClickableNode$handlePressInteractionRelease$1$1(mb4Var, j, mutableInteractionSource, null), 3);
            }
            if (z) {
                this.indirectPointerPressInteraction = null;
            } else {
                this.pressInteraction = null;
            }
        }
    }

    public final void handlePressInteractionStart(IndirectPointerInputChange indirectPointerInputChange) {
        MutableInteractionSource mutableInteractionSource = this.interactionSource;
        if (mutableInteractionSource != null) {
            PressInteraction.Press press = new PressInteraction.Press(indirectPointerInputChange.m7074getPositionF1C5BW0(), null);
            if (delayPressInteraction(indirectPointerInputChange)) {
                this.delayJob = av0.c(getCoroutineScope(), null, null, new AbstractClickableNode$handlePressInteractionStart$1$1(mutableInteractionSource, press, this, null), 3);
            } else {
                this.indirectPointerPressInteraction = press;
                av0.c(getCoroutineScope(), null, null, new AbstractClickableNode$handlePressInteractionStart$1$2(mutableInteractionSource, press, null), 3);
            }
        }
    }

    /* JADX INFO: renamed from: handlePressInteractionStart-3MmeM6k, reason: not valid java name */
    public final void m1255handlePressInteractionStart3MmeM6k(long j, boolean z) {
        MutableInteractionSource mutableInteractionSource = this.interactionSource;
        if (mutableInteractionSource != null) {
            PressInteraction.Press press = new PressInteraction.Press(j, null);
            if (ComposeFoundationFlags.isDelayPressesUsingGestureConsumptionEnabled ? delayPressInteraction((PointerInputChange) null) : delayPressInteraction()) {
                this.delayJob = av0.c(getCoroutineScope(), null, null, new AbstractClickableNode$handlePressInteractionStart$3$1(mutableInteractionSource, press, z, this, null), 3);
                return;
            }
            if (z) {
                this.indirectPointerPressInteraction = press;
            } else {
                this.pressInteraction = press;
            }
            av0.c(getCoroutineScope(), null, null, new AbstractClickableNode$handlePressInteractionStart$3$2(mutableInteractionSource, press, null), 3);
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        onObservedReadsChanged();
        if (!this.lazilyCreateIndication) {
            initializeIndicationAndInteractionSourceIfNeeded();
        }
        if (this.enabled) {
            delegate(this.focusableNode);
        }
    }

    public void onCancelKeyInput() {
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public void onCancelPointerInput() {
        HoverInteraction.Enter enter;
        MutableInteractionSource mutableInteractionSource = this.interactionSource;
        if (mutableInteractionSource != null && (enter = this.hoverInteraction) != null) {
            mutableInteractionSource.tryEmit(new HoverInteraction.Exit(enter));
        }
        this.hoverInteraction = null;
        SuspendingPointerInputModifierNode suspendingPointerInputModifierNode = this.pointerInputNode;
        if (suspendingPointerInputModifierNode != null) {
            suspendingPointerInputModifierNode.onCancelPointerInput();
        }
    }

    /* JADX INFO: renamed from: onClickKeyDownEvent-ZmokQxo, reason: not valid java name */
    public abstract boolean mo1256onClickKeyDownEventZmokQxo(KeyEvent keyEvent);

    /* JADX INFO: renamed from: onClickKeyUpEvent-ZmokQxo, reason: not valid java name */
    public abstract boolean mo1257onClickKeyUpEventZmokQxo(KeyEvent keyEvent);

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        disposeInteractions();
        if (this.userProvidedInteractionSource == null) {
            this.interactionSource = null;
        }
        DelegatableNode delegatableNode = this.indicationNode;
        if (delegatableNode != null) {
            undelegate(delegatableNode);
        }
        this.indicationNode = null;
        DelegatableNode delegatableNode2 = this.gestureNode;
        if (delegatableNode2 != null) {
            undelegate(delegatableNode2);
        }
        this.gestureNode = null;
    }

    @Override // androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public void onIndirectPointerEvent(IndirectPointerEvent indirectPointerEvent, PointerEventPass pointerEventPass) {
        initializeIndicationAndInteractionSourceIfNeeded();
        if (this.enabled) {
            initializeGestureCoordination();
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x006e A[RETURN] */
    @Override // androidx.compose.ui.input.key.KeyInputModifierNode
    /* JADX INFO: renamed from: onKeyEvent-ZmokQxo, reason: not valid java name */
    public final boolean mo1258onKeyEventZmokQxo(KeyEvent keyEvent) {
        boolean z;
        initializeIndicationAndInteractionSourceIfNeeded();
        long jM7401getKeyZmokQxo = KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent);
        if (!this.enabled || !ClickableKt.m1337isPressZmokQxo(keyEvent)) {
            if (this.enabled && ClickableKt.m1335isClickZmokQxo(keyEvent)) {
                PressInteraction.Press pressRemove = this.currentKeyPressInteractions.remove(jM7401getKeyZmokQxo);
                if (pressRemove != null) {
                    if (this.interactionSource != null) {
                        av0.c(getCoroutineScope(), null, null, new AbstractClickableNode$onKeyEvent$2(this, pressRemove, null), 3);
                    }
                    mo1257onClickKeyUpEventZmokQxo(keyEvent);
                }
                if (pressRemove != null) {
                    return true;
                }
            }
            return false;
        }
        if (this.currentKeyPressInteractions.containsKey(jM7401getKeyZmokQxo)) {
            z = false;
        } else {
            PressInteraction.Press press = new PressInteraction.Press(this.centerOffset, null);
            this.currentKeyPressInteractions.set(jM7401getKeyZmokQxo, press);
            if (this.interactionSource != null) {
                av0.c(getCoroutineScope(), null, null, new AbstractClickableNode$onKeyEvent$1(this, press, null), 3);
            }
            z = true;
        }
        if (mo1256onClickKeyDownEventZmokQxo(keyEvent) || z) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public void onObservedReadsChanged() {
        if (this.useLocalIndication) {
            ObserverModifierNodeKt.observeReads(this, new q(this, 0));
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* JADX INFO: renamed from: onPointerEvent-H0pRuoY, reason: not valid java name */
    public void mo1259onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        SuspendingPointerInputModifierNode suspendingPointerInputModifierNodeCreatePointerInputNodeIfNeeded;
        long jM9219getCenterozmzZPI = IntSizeKt.m9219getCenterozmzZPI(j);
        this.centerOffset = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(IntOffset.m9170getXimpl(jM9219getCenterozmzZPI))) << 32) | (((long) Float.floatToRawIntBits(IntOffset.m9171getYimpl(jM9219getCenterozmzZPI))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        initializeIndicationAndInteractionSourceIfNeeded();
        if (this.enabled) {
            initializeGestureCoordination();
            if (pointerEventPass == PointerEventPass.Main) {
                int iM7502getType7fucELk = pointerEvent.m7502getType7fucELk();
                PointerEventType.Companion companion = PointerEventType.Companion;
                if (PointerEventType.m7509equalsimpl0(iM7502getType7fucELk, companion.m7513getEnter7fucELk())) {
                    av0.c(getCoroutineScope(), null, null, new AbstractClickableNode$onPointerEvent$1(this, null), 3);
                } else if (PointerEventType.m7509equalsimpl0(iM7502getType7fucELk, companion.m7514getExit7fucELk())) {
                    av0.c(getCoroutineScope(), null, null, new AbstractClickableNode$onPointerEvent$2(this, null), 3);
                }
            }
        }
        if (this.pointerInputNode == null && (suspendingPointerInputModifierNodeCreatePointerInputNodeIfNeeded = createPointerInputNodeIfNeeded()) != null) {
            this.pointerInputNode = (SuspendingPointerInputModifierNode) delegate(suspendingPointerInputModifierNodeCreatePointerInputNodeIfNeeded);
        }
        SuspendingPointerInputModifierNode suspendingPointerInputModifierNode = this.pointerInputNode;
        if (suspendingPointerInputModifierNode != null) {
            suspendingPointerInputModifierNode.mo1259onPointerEventH0pRuoY(pointerEvent, pointerEventPass, j);
        }
    }

    @Override // androidx.compose.ui.input.key.KeyInputModifierNode
    /* JADX INFO: renamed from: onPreKeyEvent-ZmokQxo, reason: not valid java name */
    public final boolean mo1260onPreKeyEventZmokQxo(KeyEvent keyEvent) {
        return false;
    }

    public final j59 resetPointerInputHandler() {
        SuspendingPointerInputModifierNode suspendingPointerInputModifierNode = this.pointerInputNode;
        if (suspendingPointerInputModifierNode == null) {
            return null;
        }
        suspendingPointerInputModifierNode.resetPointerInputHandler();
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0072  */
    /* JADX INFO: renamed from: updateCommon-O2vRcR0, reason: not valid java name */
    public final void m1261updateCommonO2vRcR0(MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z, boolean z2, String str, Role role, ll3<j59> ll3Var) {
        boolean z3;
        boolean z4;
        if (aa4.e(this.userProvidedInteractionSource, mutableInteractionSource)) {
            z3 = false;
        } else {
            disposeInteractions();
            this.userProvidedInteractionSource = mutableInteractionSource;
            this.interactionSource = mutableInteractionSource;
            z3 = true;
        }
        if (!aa4.e(this.indicationNodeFactory, indicationNodeFactory)) {
            this.indicationNodeFactory = indicationNodeFactory;
            z3 = true;
        }
        if (this.useLocalIndication != z) {
            this.useLocalIndication = z;
            if (z) {
                onObservedReadsChanged();
            }
            z3 = true;
        }
        if (this.enabled != z2) {
            FocusableNode focusableNode = this.focusableNode;
            if (z2) {
                delegate(focusableNode);
            } else {
                undelegate(focusableNode);
                disposeInteractions();
            }
            SemanticsModifierNodeKt.invalidateSemantics(this);
            this.enabled = z2;
        }
        if (!aa4.e(this.onClickLabel, str)) {
            this.onClickLabel = str;
            SemanticsModifierNodeKt.invalidateSemantics(this);
        }
        if (!aa4.e(this.role, role)) {
            this.role = role;
            SemanticsModifierNodeKt.invalidateSemantics(this);
        }
        this.onClick = ll3Var;
        if (this.lazilyCreateIndication != shouldLazilyCreateIndication()) {
            boolean zShouldLazilyCreateIndication = shouldLazilyCreateIndication();
            this.lazilyCreateIndication = zShouldLazilyCreateIndication;
            z4 = (zShouldLazilyCreateIndication || this.indicationNode != null) ? z3 : true;
        }
        if (z4) {
            recreateIndicationIfNeeded();
        }
        this.focusableNode.update(this.interactionSource);
    }

    public static final class TraverseKey {
        public /* synthetic */ TraverseKey(jh2 jh2Var) {
            this();
        }

        private TraverseKey() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean delayPressInteraction() {
        return ClickableKt.hasScrollableContainer(this) || Clickable_androidKt.isComposeRootInScrollableContainer(this);
    }

    private final boolean delayPressInteraction(IndirectPointerInputChange indirectPointerInputChange) {
        return ClickableKt.hasInterestedParent(this, indirectPointerInputChange) || Clickable_androidKt.isComposeRootInScrollableContainer(this);
    }

    public final void handlePressInteractionStart(PointerInputChange pointerInputChange) {
        MutableInteractionSource mutableInteractionSource = this.interactionSource;
        if (mutableInteractionSource != null) {
            PressInteraction.Press press = new PressInteraction.Press(pointerInputChange.m7569getPositionF1C5BW0(), null);
            if (delayPressInteraction(pointerInputChange)) {
                this.delayJob = av0.c(getCoroutineScope(), null, null, new AbstractClickableNode$handlePressInteractionStart$2$1(mutableInteractionSource, press, this, null), 3);
            } else {
                this.pressInteraction = press;
                av0.c(getCoroutineScope(), null, null, new AbstractClickableNode$handlePressInteractionStart$2$2(mutableInteractionSource, press, null), 3);
            }
        }
    }

    public /* synthetic */ AbstractClickableNode(MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z, boolean z2, String str, Role role, ll3 ll3Var, jh2 jh2Var) {
        this(mutableInteractionSource, indicationNodeFactory, z, z2, str, role, ll3Var);
    }
}
