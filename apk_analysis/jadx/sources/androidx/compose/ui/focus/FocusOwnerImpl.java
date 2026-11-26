package androidx.compose.ui.focus;

import android.view.KeyEvent;
import androidx.collection.MutableLongSet;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.ComposeUiFlags;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeKind;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.aa4;
import defpackage.ah;
import defpackage.j59;
import defpackage.ki0;
import defpackage.ll3;
import defpackage.me0;
import defpackage.nl3;
import defpackage.pg;
import defpackage.r07;

/* JADX INFO: loaded from: classes2.dex */
public final class FocusOwnerImpl implements FocusOwner {
    public static final int $stable = 8;
    private FocusTargetNode activeFocusTargetNode;
    private final FocusInvalidationManager focusInvalidationManager;
    private boolean isFocusCaptured;
    private MutableLongSet keysCurrentlyDown;
    private final Owner owner;
    private final PlatformFocusOwner platformFocusOwner;
    private FocusTargetNode rootFocusNode = new FocusTargetNode(Focusability.Companion.m5922getNeverLCbbffg(), false, null, null, 14, null);
    private final Modifier modifier = new ModifierNodeElement<FocusTargetNode>() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$modifier$1
        @Override // androidx.compose.ui.node.ModifierNodeElement
        public FocusTargetNode create() {
            return this.this$0.getRootFocusNode$ui();
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public boolean equals(Object obj) {
            return obj == this;
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public int hashCode() {
            return this.this$0.getRootFocusNode$ui().hashCode();
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public void inspectableProperties(InspectorInfo inspectorInfo) {
            inspectorInfo.setName("RootFocusTarget");
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public void update(FocusTargetNode focusTargetNode) {
        }
    };
    private final MutableObjectList<FocusListener> listeners = new MutableObjectList<>(1);

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CustomDestinationResult.values().length];
            try {
                iArr[CustomDestinationResult.Redirected.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CustomDestinationResult.Cancelled.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CustomDestinationResult.RedirectCancelled.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CustomDestinationResult.None.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public FocusOwnerImpl(PlatformFocusOwner platformFocusOwner, Owner owner) {
        this.platformFocusOwner = platformFocusOwner;
        this.owner = owner;
        this.focusInvalidationManager = new FocusInvalidationManager(this, owner);
    }

    private final boolean clearFocus(boolean z, boolean z2) {
        NodeChain nodes$ui;
        if (getActiveFocusTargetNode() == null) {
            return true;
        }
        if (isFocusCaptured() && !z) {
            return false;
        }
        FocusTargetNode activeFocusTargetNode = getActiveFocusTargetNode();
        setActiveFocusTargetNode(null);
        if (z2 && activeFocusTargetNode != null) {
            activeFocusTargetNode.dispatchFocusCallbacks$ui(isFocusCaptured() ? FocusStateImpl.Captured : FocusStateImpl.Active, FocusStateImpl.Inactive);
            int iM8019constructorimpl = NodeKind.m8019constructorimpl(1024);
            if (!activeFocusTargetNode.getNode().isAttached()) {
                InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
            }
            Modifier.Node parent$ui = activeFocusTargetNode.getNode().getParent$ui();
            LayoutNode layoutNodeRequireLayoutNode = DelegatableNodeKt.requireLayoutNode(activeFocusTargetNode);
            while (layoutNodeRequireLayoutNode != null) {
                if ((ki0.b(layoutNodeRequireLayoutNode) & iM8019constructorimpl) != 0) {
                    while (parent$ui != null) {
                        if ((parent$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                            Modifier.Node nodePop = parent$ui;
                            MutableVector mutableVector = null;
                            while (nodePop != null) {
                                if (nodePop instanceof FocusTargetNode) {
                                    ((FocusTargetNode) nodePop).dispatchFocusCallbacks$ui(FocusStateImpl.ActiveParent, FocusStateImpl.Inactive);
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
                        }
                        parent$ui = parent$ui.getParent$ui();
                    }
                }
                layoutNodeRequireLayoutNode = layoutNodeRequireLayoutNode.getParent$ui();
                parent$ui = (layoutNodeRequireLayoutNode == null || (nodes$ui = layoutNodeRequireLayoutNode.getNodes$ui()) == null) ? null : nodes$ui.getTail$ui();
            }
        }
        return true;
    }

    public static /* synthetic */ boolean clearFocus$default(FocusOwnerImpl focusOwnerImpl, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return focusOwnerImpl.clearFocus(z, z2);
    }

    private final FocusTargetNode findFocusTargetNode() {
        return FocusTraversalKt.findActiveFocusNode(this.rootFocusNode);
    }

    private final Modifier.Node lastLocalKeyInputNode(DelegatableNode delegatableNode) {
        int iM8019constructorimpl = NodeKind.m8019constructorimpl(1024) | NodeKind.m8019constructorimpl(8192);
        if (!delegatableNode.getNode().isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("visitLocalDescendants called on an unattached node");
        }
        Modifier.Node node = delegatableNode.getNode();
        Modifier.Node node2 = null;
        if ((node.getAggregateChildKindSet$ui() & iM8019constructorimpl) != 0) {
            for (Modifier.Node child$ui = node.getChild$ui(); child$ui != null; child$ui = child$ui.getChild$ui()) {
                if ((child$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                    if ((NodeKind.m8019constructorimpl(1024) & child$ui.getKindSet$ui()) != 0) {
                        return node2;
                    }
                    node2 = child$ui;
                }
            }
        }
        return node2;
    }

    /* JADX INFO: renamed from: nearestAncestorIncludingSelf-64DMado, reason: not valid java name */
    private final <T> T m5886nearestAncestorIncludingSelf64DMado(DelegatableNode delegatableNode, int i) {
        NodeChain nodes$ui;
        if (!delegatableNode.getNode().isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node node = delegatableNode.getNode();
        LayoutNode layoutNodeRequireLayoutNode = DelegatableNodeKt.requireLayoutNode(delegatableNode);
        while (layoutNodeRequireLayoutNode != null) {
            if ((ki0.b(layoutNodeRequireLayoutNode) & i) != 0) {
                while (node != null) {
                    if ((node.getKindSet$ui() & i) != 0) {
                        aa4.i();
                        throw null;
                    }
                    node = node.getParent$ui();
                }
            }
            layoutNodeRequireLayoutNode = layoutNodeRequireLayoutNode.getParent$ui();
            node = (layoutNodeRequireLayoutNode == null || (nodes$ui = layoutNodeRequireLayoutNode.getNodes$ui()) == null) ? null : nodes$ui.getTail$ui();
        }
        return null;
    }

    /* JADX INFO: renamed from: traverseAncestorsIncludingSelf-QFhIj7k, reason: not valid java name */
    private final <T extends DelegatableNode> void m5887traverseAncestorsIncludingSelfQFhIj7k(DelegatableNode delegatableNode, int i, nl3<? super T, j59> nl3Var, ll3<j59> ll3Var, nl3<? super T, j59> nl3Var2) {
        NodeChain nodes$ui;
        if (!delegatableNode.getNode().isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node parent$ui = delegatableNode.getNode().getParent$ui();
        LayoutNode layoutNodeRequireLayoutNode = DelegatableNodeKt.requireLayoutNode(delegatableNode);
        while (layoutNodeRequireLayoutNode != null) {
            if ((ki0.b(layoutNodeRequireLayoutNode) & i) != 0) {
                while (parent$ui != null) {
                    if ((parent$ui.getKindSet$ui() & i) != 0) {
                        aa4.i();
                        throw null;
                    }
                    parent$ui = parent$ui.getParent$ui();
                }
            }
            layoutNodeRequireLayoutNode = layoutNodeRequireLayoutNode.getParent$ui();
            parent$ui = (layoutNodeRequireLayoutNode == null || (nodes$ui = layoutNodeRequireLayoutNode.getNodes$ui()) == null) ? null : nodes$ui.getTail$ui();
        }
        if (delegatableNode.getNode() != null) {
            aa4.i();
            throw null;
        }
        ll3Var.invoke();
        if (delegatableNode.getNode() == null) {
            return;
        }
        aa4.i();
        throw null;
    }

    /* JADX INFO: renamed from: validateKeyEvent-ZmokQxo, reason: not valid java name */
    private final boolean m5888validateKeyEventZmokQxo(KeyEvent keyEvent) {
        long jM7401getKeyZmokQxo = KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent);
        int iM7402getTypeZmokQxo = KeyEvent_androidKt.m7402getTypeZmokQxo(keyEvent);
        KeyEventType.Companion companion = KeyEventType.Companion;
        if (KeyEventType.m7394equalsimpl0(iM7402getTypeZmokQxo, companion.m7398getKeyDownCS__XNY())) {
            MutableLongSet mutableLongSet = this.keysCurrentlyDown;
            if (mutableLongSet == null) {
                mutableLongSet = new MutableLongSet(3);
                this.keysCurrentlyDown = mutableLongSet;
            }
            mutableLongSet.plusAssign(jM7401getKeyZmokQxo);
        } else if (KeyEventType.m7394equalsimpl0(iM7402getTypeZmokQxo, companion.m7399getKeyUpCS__XNY())) {
            MutableLongSet mutableLongSet2 = this.keysCurrentlyDown;
            if (mutableLongSet2 == null || !mutableLongSet2.contains(jM7401getKeyZmokQxo)) {
                return false;
            }
            MutableLongSet mutableLongSet3 = this.keysCurrentlyDown;
            if (mutableLongSet3 != null) {
                mutableLongSet3.remove(jM7401getKeyZmokQxo);
            }
        }
        return true;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    /* JADX INFO: renamed from: clearFocus-I7lrPNg */
    public boolean mo5878clearFocusI7lrPNg(boolean z, boolean z2, boolean z3, int i) {
        boolean zClearFocus;
        if (z) {
            zClearFocus = clearFocus(z, z2);
        } else {
            int i2 = WhenMappings.$EnumSwitchMapping$0[FocusTransactionsKt.m5905performCustomClearFocusMxy_nc0(this.rootFocusNode, i).ordinal()];
            if (i2 == 1 || i2 == 2 || i2 == 3) {
                zClearFocus = false;
            } else {
                if (i2 != 4) {
                    me0.e();
                    return false;
                }
                zClearFocus = clearFocus(z, z2);
            }
        }
        if (zClearFocus && z3) {
            clearOwnerFocus();
        }
        return zClearFocus;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void clearOwnerFocus() {
        this.platformFocusOwner.clearOwnerFocus();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r8v10, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /*  JADX ERROR: NullPointerException in pass: PrepareForCodeGen
        java.lang.NullPointerException
        */
    @Override // androidx.compose.ui.focus.FocusOwner
    public void dispatchIndirectPointerCancel() {
        /*
            Method dump skipped, instruction units count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.focus.FocusOwnerImpl.dispatchIndirectPointerCancel():void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r8v10, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /*  JADX ERROR: NullPointerException in pass: PrepareForCodeGen
        java.lang.NullPointerException
        */
    @Override // androidx.compose.ui.focus.FocusOwner
    public boolean dispatchIndirectPointerEvent(androidx.compose.ui.input.indirect.IndirectPointerEvent r14) {
        /*
            Method dump skipped, instruction units count: 465
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.focus.FocusOwnerImpl.dispatchIndirectPointerEvent(androidx.compose.ui.input.indirect.IndirectPointerEvent):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r0v17, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r0v27, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v47 */
    /* JADX WARN: Type inference failed for: r0v48 */
    /* JADX WARN: Type inference failed for: r0v49 */
    /* JADX WARN: Type inference failed for: r0v50 */
    /* JADX WARN: Type inference failed for: r0v6, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r0v7, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r0v8, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r0v9, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r10v19 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v16, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v17, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /*  JADX ERROR: NullPointerException in pass: PrepareForCodeGen
        java.lang.NullPointerException
        */
    @Override // androidx.compose.ui.focus.FocusOwner
    /* JADX INFO: renamed from: dispatchInterceptedSoftKeyboardEvent-ZmokQxo */
    public boolean mo5879dispatchInterceptedSoftKeyboardEventZmokQxo(android.view.KeyEvent r14) {
        /*
            Method dump skipped, instruction units count: 584
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.focus.FocusOwnerImpl.mo5879dispatchInterceptedSoftKeyboardEventZmokQxo(android.view.KeyEvent):boolean");
    }

    /* JADX WARN: Code duplicated, block: B:109:0x0183 A[Catch: all -> 0x0342, TryCatch #0 {all -> 0x0342, blocks: (B:3:0x0009, B:5:0x0012, B:8:0x001d, B:12:0x0027, B:15:0x0035, B:112:0x018b, B:114:0x0199, B:115:0x019c, B:117:0x01ab, B:120:0x01bc, B:124:0x01c7, B:127:0x01cd, B:128:0x01d2, B:131:0x01da, B:133:0x01e1, B:135:0x01e5, B:137:0x01ef, B:139:0x01f6, B:141:0x01fa, B:143:0x0200, B:145:0x0209, B:146:0x020d, B:147:0x0210, B:150:0x0218, B:151:0x021d, B:152:0x0222, B:154:0x0228, B:156:0x022e, B:159:0x0239, B:161:0x0241, B:168:0x0258, B:169:0x025a, B:171:0x0261, B:173:0x0265, B:196:0x02af, B:177:0x0271, B:179:0x0278, B:181:0x027c, B:183:0x0286, B:185:0x028d, B:187:0x0291, B:189:0x0297, B:191:0x02a0, B:192:0x02a4, B:193:0x02a7, B:197:0x02b4, B:201:0x02c4, B:203:0x02cb, B:205:0x02cf, B:228:0x0319, B:209:0x02db, B:211:0x02e2, B:213:0x02e6, B:215:0x02f0, B:217:0x02f7, B:219:0x02fb, B:221:0x0301, B:223:0x030a, B:224:0x030e, B:225:0x0311, B:230:0x0320, B:232:0x0327, B:237:0x033a, B:238:0x033c, B:18:0x003d, B:20:0x004b, B:21:0x004e, B:23:0x0058, B:26:0x0069, B:30:0x0074, B:61:0x00d6, B:63:0x00da, B:33:0x007a, B:35:0x0081, B:37:0x0085, B:39:0x008f, B:41:0x0096, B:43:0x009a, B:45:0x00a0, B:47:0x00a9, B:48:0x00ad, B:49:0x00b0, B:52:0x00b8, B:53:0x00bd, B:54:0x00c2, B:56:0x00c8, B:58:0x00ce, B:64:0x00e0, B:66:0x00f0, B:67:0x00f3, B:69:0x0101, B:72:0x0112, B:76:0x011d, B:107:0x017f, B:109:0x0183, B:79:0x0123, B:81:0x012a, B:83:0x012e, B:85:0x0138, B:87:0x013f, B:89:0x0143, B:91:0x0149, B:93:0x0152, B:94:0x0156, B:95:0x0159, B:98:0x0161, B:99:0x0166, B:100:0x016b, B:102:0x0171, B:104:0x0177), top: B:244:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x0188  */
    /* JADX WARN: Code duplicated, block: B:321:0x017e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:322:0x0121 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:330:0x0166 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x00e0 A[Catch: all -> 0x0342, TryCatch #0 {all -> 0x0342, blocks: (B:3:0x0009, B:5:0x0012, B:8:0x001d, B:12:0x0027, B:15:0x0035, B:112:0x018b, B:114:0x0199, B:115:0x019c, B:117:0x01ab, B:120:0x01bc, B:124:0x01c7, B:127:0x01cd, B:128:0x01d2, B:131:0x01da, B:133:0x01e1, B:135:0x01e5, B:137:0x01ef, B:139:0x01f6, B:141:0x01fa, B:143:0x0200, B:145:0x0209, B:146:0x020d, B:147:0x0210, B:150:0x0218, B:151:0x021d, B:152:0x0222, B:154:0x0228, B:156:0x022e, B:159:0x0239, B:161:0x0241, B:168:0x0258, B:169:0x025a, B:171:0x0261, B:173:0x0265, B:196:0x02af, B:177:0x0271, B:179:0x0278, B:181:0x027c, B:183:0x0286, B:185:0x028d, B:187:0x0291, B:189:0x0297, B:191:0x02a0, B:192:0x02a4, B:193:0x02a7, B:197:0x02b4, B:201:0x02c4, B:203:0x02cb, B:205:0x02cf, B:228:0x0319, B:209:0x02db, B:211:0x02e2, B:213:0x02e6, B:215:0x02f0, B:217:0x02f7, B:219:0x02fb, B:221:0x0301, B:223:0x030a, B:224:0x030e, B:225:0x0311, B:230:0x0320, B:232:0x0327, B:237:0x033a, B:238:0x033c, B:18:0x003d, B:20:0x004b, B:21:0x004e, B:23:0x0058, B:26:0x0069, B:30:0x0074, B:61:0x00d6, B:63:0x00da, B:33:0x007a, B:35:0x0081, B:37:0x0085, B:39:0x008f, B:41:0x0096, B:43:0x009a, B:45:0x00a0, B:47:0x00a9, B:48:0x00ad, B:49:0x00b0, B:52:0x00b8, B:53:0x00bd, B:54:0x00c2, B:56:0x00c8, B:58:0x00ce, B:64:0x00e0, B:66:0x00f0, B:67:0x00f3, B:69:0x0101, B:72:0x0112, B:76:0x011d, B:107:0x017f, B:109:0x0183, B:79:0x0123, B:81:0x012a, B:83:0x012e, B:85:0x0138, B:87:0x013f, B:89:0x0143, B:91:0x0149, B:93:0x0152, B:94:0x0156, B:95:0x0159, B:98:0x0161, B:99:0x0166, B:100:0x016b, B:102:0x0171, B:104:0x0177), top: B:244:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x00f0 A[Catch: all -> 0x0342, TryCatch #0 {all -> 0x0342, blocks: (B:3:0x0009, B:5:0x0012, B:8:0x001d, B:12:0x0027, B:15:0x0035, B:112:0x018b, B:114:0x0199, B:115:0x019c, B:117:0x01ab, B:120:0x01bc, B:124:0x01c7, B:127:0x01cd, B:128:0x01d2, B:131:0x01da, B:133:0x01e1, B:135:0x01e5, B:137:0x01ef, B:139:0x01f6, B:141:0x01fa, B:143:0x0200, B:145:0x0209, B:146:0x020d, B:147:0x0210, B:150:0x0218, B:151:0x021d, B:152:0x0222, B:154:0x0228, B:156:0x022e, B:159:0x0239, B:161:0x0241, B:168:0x0258, B:169:0x025a, B:171:0x0261, B:173:0x0265, B:196:0x02af, B:177:0x0271, B:179:0x0278, B:181:0x027c, B:183:0x0286, B:185:0x028d, B:187:0x0291, B:189:0x0297, B:191:0x02a0, B:192:0x02a4, B:193:0x02a7, B:197:0x02b4, B:201:0x02c4, B:203:0x02cb, B:205:0x02cf, B:228:0x0319, B:209:0x02db, B:211:0x02e2, B:213:0x02e6, B:215:0x02f0, B:217:0x02f7, B:219:0x02fb, B:221:0x0301, B:223:0x030a, B:224:0x030e, B:225:0x0311, B:230:0x0320, B:232:0x0327, B:237:0x033a, B:238:0x033c, B:18:0x003d, B:20:0x004b, B:21:0x004e, B:23:0x0058, B:26:0x0069, B:30:0x0074, B:61:0x00d6, B:63:0x00da, B:33:0x007a, B:35:0x0081, B:37:0x0085, B:39:0x008f, B:41:0x0096, B:43:0x009a, B:45:0x00a0, B:47:0x00a9, B:48:0x00ad, B:49:0x00b0, B:52:0x00b8, B:53:0x00bd, B:54:0x00c2, B:56:0x00c8, B:58:0x00ce, B:64:0x00e0, B:66:0x00f0, B:67:0x00f3, B:69:0x0101, B:72:0x0112, B:76:0x011d, B:107:0x017f, B:109:0x0183, B:79:0x0123, B:81:0x012a, B:83:0x012e, B:85:0x0138, B:87:0x013f, B:89:0x0143, B:91:0x0149, B:93:0x0152, B:94:0x0156, B:95:0x0159, B:98:0x0161, B:99:0x0166, B:100:0x016b, B:102:0x0171, B:104:0x0177), top: B:244:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x0101 A[Catch: all -> 0x0342, TryCatch #0 {all -> 0x0342, blocks: (B:3:0x0009, B:5:0x0012, B:8:0x001d, B:12:0x0027, B:15:0x0035, B:112:0x018b, B:114:0x0199, B:115:0x019c, B:117:0x01ab, B:120:0x01bc, B:124:0x01c7, B:127:0x01cd, B:128:0x01d2, B:131:0x01da, B:133:0x01e1, B:135:0x01e5, B:137:0x01ef, B:139:0x01f6, B:141:0x01fa, B:143:0x0200, B:145:0x0209, B:146:0x020d, B:147:0x0210, B:150:0x0218, B:151:0x021d, B:152:0x0222, B:154:0x0228, B:156:0x022e, B:159:0x0239, B:161:0x0241, B:168:0x0258, B:169:0x025a, B:171:0x0261, B:173:0x0265, B:196:0x02af, B:177:0x0271, B:179:0x0278, B:181:0x027c, B:183:0x0286, B:185:0x028d, B:187:0x0291, B:189:0x0297, B:191:0x02a0, B:192:0x02a4, B:193:0x02a7, B:197:0x02b4, B:201:0x02c4, B:203:0x02cb, B:205:0x02cf, B:228:0x0319, B:209:0x02db, B:211:0x02e2, B:213:0x02e6, B:215:0x02f0, B:217:0x02f7, B:219:0x02fb, B:221:0x0301, B:223:0x030a, B:224:0x030e, B:225:0x0311, B:230:0x0320, B:232:0x0327, B:237:0x033a, B:238:0x033c, B:18:0x003d, B:20:0x004b, B:21:0x004e, B:23:0x0058, B:26:0x0069, B:30:0x0074, B:61:0x00d6, B:63:0x00da, B:33:0x007a, B:35:0x0081, B:37:0x0085, B:39:0x008f, B:41:0x0096, B:43:0x009a, B:45:0x00a0, B:47:0x00a9, B:48:0x00ad, B:49:0x00b0, B:52:0x00b8, B:53:0x00bd, B:54:0x00c2, B:56:0x00c8, B:58:0x00ce, B:64:0x00e0, B:66:0x00f0, B:67:0x00f3, B:69:0x0101, B:72:0x0112, B:76:0x011d, B:107:0x017f, B:109:0x0183, B:79:0x0123, B:81:0x012a, B:83:0x012e, B:85:0x0138, B:87:0x013f, B:89:0x0143, B:91:0x0149, B:93:0x0152, B:94:0x0156, B:95:0x0159, B:98:0x0161, B:99:0x0166, B:100:0x016b, B:102:0x0171, B:104:0x0177), top: B:244:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x0110 A[ADDED_TO_REGION, LOOP:15: B:71:0x0110->B:99:0x0166, LOOP_START, PHI: r9
      0x0110: PHI (r9v11 androidx.compose.ui.Modifier$Node) = (r9v4 androidx.compose.ui.Modifier$Node), (r9v12 androidx.compose.ui.Modifier$Node) binds: [B:70:0x010e, B:99:0x0166] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:72:0x0112 A[Catch: all -> 0x0342, TryCatch #0 {all -> 0x0342, blocks: (B:3:0x0009, B:5:0x0012, B:8:0x001d, B:12:0x0027, B:15:0x0035, B:112:0x018b, B:114:0x0199, B:115:0x019c, B:117:0x01ab, B:120:0x01bc, B:124:0x01c7, B:127:0x01cd, B:128:0x01d2, B:131:0x01da, B:133:0x01e1, B:135:0x01e5, B:137:0x01ef, B:139:0x01f6, B:141:0x01fa, B:143:0x0200, B:145:0x0209, B:146:0x020d, B:147:0x0210, B:150:0x0218, B:151:0x021d, B:152:0x0222, B:154:0x0228, B:156:0x022e, B:159:0x0239, B:161:0x0241, B:168:0x0258, B:169:0x025a, B:171:0x0261, B:173:0x0265, B:196:0x02af, B:177:0x0271, B:179:0x0278, B:181:0x027c, B:183:0x0286, B:185:0x028d, B:187:0x0291, B:189:0x0297, B:191:0x02a0, B:192:0x02a4, B:193:0x02a7, B:197:0x02b4, B:201:0x02c4, B:203:0x02cb, B:205:0x02cf, B:228:0x0319, B:209:0x02db, B:211:0x02e2, B:213:0x02e6, B:215:0x02f0, B:217:0x02f7, B:219:0x02fb, B:221:0x0301, B:223:0x030a, B:224:0x030e, B:225:0x0311, B:230:0x0320, B:232:0x0327, B:237:0x033a, B:238:0x033c, B:18:0x003d, B:20:0x004b, B:21:0x004e, B:23:0x0058, B:26:0x0069, B:30:0x0074, B:61:0x00d6, B:63:0x00da, B:33:0x007a, B:35:0x0081, B:37:0x0085, B:39:0x008f, B:41:0x0096, B:43:0x009a, B:45:0x00a0, B:47:0x00a9, B:48:0x00ad, B:49:0x00b0, B:52:0x00b8, B:53:0x00bd, B:54:0x00c2, B:56:0x00c8, B:58:0x00ce, B:64:0x00e0, B:66:0x00f0, B:67:0x00f3, B:69:0x0101, B:72:0x0112, B:76:0x011d, B:107:0x017f, B:109:0x0183, B:79:0x0123, B:81:0x012a, B:83:0x012e, B:85:0x0138, B:87:0x013f, B:89:0x0143, B:91:0x0149, B:93:0x0152, B:94:0x0156, B:95:0x0159, B:98:0x0161, B:99:0x0166, B:100:0x016b, B:102:0x0171, B:104:0x0177), top: B:244:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0119  */
    /* JADX WARN: Code duplicated, block: B:76:0x011d A[Catch: all -> 0x0342, TryCatch #0 {all -> 0x0342, blocks: (B:3:0x0009, B:5:0x0012, B:8:0x001d, B:12:0x0027, B:15:0x0035, B:112:0x018b, B:114:0x0199, B:115:0x019c, B:117:0x01ab, B:120:0x01bc, B:124:0x01c7, B:127:0x01cd, B:128:0x01d2, B:131:0x01da, B:133:0x01e1, B:135:0x01e5, B:137:0x01ef, B:139:0x01f6, B:141:0x01fa, B:143:0x0200, B:145:0x0209, B:146:0x020d, B:147:0x0210, B:150:0x0218, B:151:0x021d, B:152:0x0222, B:154:0x0228, B:156:0x022e, B:159:0x0239, B:161:0x0241, B:168:0x0258, B:169:0x025a, B:171:0x0261, B:173:0x0265, B:196:0x02af, B:177:0x0271, B:179:0x0278, B:181:0x027c, B:183:0x0286, B:185:0x028d, B:187:0x0291, B:189:0x0297, B:191:0x02a0, B:192:0x02a4, B:193:0x02a7, B:197:0x02b4, B:201:0x02c4, B:203:0x02cb, B:205:0x02cf, B:228:0x0319, B:209:0x02db, B:211:0x02e2, B:213:0x02e6, B:215:0x02f0, B:217:0x02f7, B:219:0x02fb, B:221:0x0301, B:223:0x030a, B:224:0x030e, B:225:0x0311, B:230:0x0320, B:232:0x0327, B:237:0x033a, B:238:0x033c, B:18:0x003d, B:20:0x004b, B:21:0x004e, B:23:0x0058, B:26:0x0069, B:30:0x0074, B:61:0x00d6, B:63:0x00da, B:33:0x007a, B:35:0x0081, B:37:0x0085, B:39:0x008f, B:41:0x0096, B:43:0x009a, B:45:0x00a0, B:47:0x00a9, B:48:0x00ad, B:49:0x00b0, B:52:0x00b8, B:53:0x00bd, B:54:0x00c2, B:56:0x00c8, B:58:0x00ce, B:64:0x00e0, B:66:0x00f0, B:67:0x00f3, B:69:0x0101, B:72:0x0112, B:76:0x011d, B:107:0x017f, B:109:0x0183, B:79:0x0123, B:81:0x012a, B:83:0x012e, B:85:0x0138, B:87:0x013f, B:89:0x0143, B:91:0x0149, B:93:0x0152, B:94:0x0156, B:95:0x0159, B:98:0x0161, B:99:0x0166, B:100:0x016b, B:102:0x0171, B:104:0x0177), top: B:244:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x0123 A[Catch: all -> 0x0342, TryCatch #0 {all -> 0x0342, blocks: (B:3:0x0009, B:5:0x0012, B:8:0x001d, B:12:0x0027, B:15:0x0035, B:112:0x018b, B:114:0x0199, B:115:0x019c, B:117:0x01ab, B:120:0x01bc, B:124:0x01c7, B:127:0x01cd, B:128:0x01d2, B:131:0x01da, B:133:0x01e1, B:135:0x01e5, B:137:0x01ef, B:139:0x01f6, B:141:0x01fa, B:143:0x0200, B:145:0x0209, B:146:0x020d, B:147:0x0210, B:150:0x0218, B:151:0x021d, B:152:0x0222, B:154:0x0228, B:156:0x022e, B:159:0x0239, B:161:0x0241, B:168:0x0258, B:169:0x025a, B:171:0x0261, B:173:0x0265, B:196:0x02af, B:177:0x0271, B:179:0x0278, B:181:0x027c, B:183:0x0286, B:185:0x028d, B:187:0x0291, B:189:0x0297, B:191:0x02a0, B:192:0x02a4, B:193:0x02a7, B:197:0x02b4, B:201:0x02c4, B:203:0x02cb, B:205:0x02cf, B:228:0x0319, B:209:0x02db, B:211:0x02e2, B:213:0x02e6, B:215:0x02f0, B:217:0x02f7, B:219:0x02fb, B:221:0x0301, B:223:0x030a, B:224:0x030e, B:225:0x0311, B:230:0x0320, B:232:0x0327, B:237:0x033a, B:238:0x033c, B:18:0x003d, B:20:0x004b, B:21:0x004e, B:23:0x0058, B:26:0x0069, B:30:0x0074, B:61:0x00d6, B:63:0x00da, B:33:0x007a, B:35:0x0081, B:37:0x0085, B:39:0x008f, B:41:0x0096, B:43:0x009a, B:45:0x00a0, B:47:0x00a9, B:48:0x00ad, B:49:0x00b0, B:52:0x00b8, B:53:0x00bd, B:54:0x00c2, B:56:0x00c8, B:58:0x00ce, B:64:0x00e0, B:66:0x00f0, B:67:0x00f3, B:69:0x0101, B:72:0x0112, B:76:0x011d, B:107:0x017f, B:109:0x0183, B:79:0x0123, B:81:0x012a, B:83:0x012e, B:85:0x0138, B:87:0x013f, B:89:0x0143, B:91:0x0149, B:93:0x0152, B:94:0x0156, B:95:0x0159, B:98:0x0161, B:99:0x0166, B:100:0x016b, B:102:0x0171, B:104:0x0177), top: B:244:0x0009 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v39 */
    /*  JADX ERROR: NullPointerException in pass: PrepareForCodeGen
        java.lang.NullPointerException
        */
    @Override // androidx.compose.ui.focus.FocusOwner
    /* JADX INFO: renamed from: dispatchKeyEvent-YhN2O0w */
    public boolean mo5880dispatchKeyEventYhN2O0w(android.view.KeyEvent r17, defpackage.ll3<java.lang.Boolean> r18) {
        /*
            Method dump skipped, instruction units count: 839
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.focus.FocusOwnerImpl.mo5880dispatchKeyEventYhN2O0w(android.view.KeyEvent, ll3):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r0v23, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v43 */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r0v6, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r0v7, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r10v19 */
    /* JADX WARN: Type inference failed for: r15v11 */
    /* JADX WARN: Type inference failed for: r15v12, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r15v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r15v14 */
    /* JADX WARN: Type inference failed for: r15v15 */
    /* JADX WARN: Type inference failed for: r15v16 */
    /* JADX WARN: Type inference failed for: r15v18 */
    /* JADX WARN: Type inference failed for: r15v19 */
    /* JADX WARN: Type inference failed for: r15v20 */
    /* JADX WARN: Type inference failed for: r15v4, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r15v5, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v16, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /*  JADX ERROR: NullPointerException in pass: PrepareForCodeGen
        java.lang.NullPointerException
        */
    @Override // androidx.compose.ui.focus.FocusOwner
    public boolean dispatchRotaryEvent(androidx.compose.ui.input.rotary.RotaryScrollEvent r14, defpackage.ll3<java.lang.Boolean> r15) {
        /*
            Method dump skipped, instruction units count: 595
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.focus.FocusOwnerImpl.dispatchRotaryEvent(androidx.compose.ui.input.rotary.RotaryScrollEvent, ll3):boolean");
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    /* JADX INFO: renamed from: focusSearch-ULY8qGw */
    public Boolean mo5881focusSearchULY8qGw(int i, Rect rect, nl3<? super FocusTargetNode, Boolean> nl3Var) {
        FocusTargetNode focusTargetNodeFindFocusTargetNode = findFocusTargetNode();
        if (focusTargetNodeFindFocusTargetNode != null) {
            FocusRequester focusRequesterM5911customFocusSearchOMvw8 = FocusTraversalKt.m5911customFocusSearchOMvw8(focusTargetNodeFindFocusTargetNode, i, this.owner.getLayoutDirection());
            FocusRequester.Companion companion = FocusRequester.Companion;
            if (aa4.e(focusRequesterM5911customFocusSearchOMvw8, companion.getCancel())) {
                return null;
            }
            if (aa4.e(focusRequesterM5911customFocusSearchOMvw8, companion.getRedirect$ui())) {
                FocusTargetNode focusTargetNodeFindFocusTargetNode2 = findFocusTargetNode();
                if (focusTargetNodeFindFocusTargetNode2 != null) {
                    return nl3Var.invoke(focusTargetNodeFindFocusTargetNode2);
                }
                return null;
            }
            if (!aa4.e(focusRequesterM5911customFocusSearchOMvw8, companion.getDefault())) {
                if (focusRequesterM5911customFocusSearchOMvw8 == companion.getDefault()) {
                    ah.f("\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n");
                    return null;
                }
                if (focusRequesterM5911customFocusSearchOMvw8 == companion.getCancel()) {
                    ah.f("\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n");
                    return null;
                }
                boolean z = false;
                if (focusRequesterM5911customFocusSearchOMvw8.getFocusRequesterNodes$ui().getSize() == 0) {
                    System.out.println((Object) "FocusRelatedWarning: \n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n");
                } else {
                    MutableVector<FocusRequesterModifierNode> focusRequesterNodes$ui = focusRequesterM5911customFocusSearchOMvw8.getFocusRequesterNodes$ui();
                    FocusRequesterModifierNode[] focusRequesterModifierNodeArr = focusRequesterNodes$ui.content;
                    int size = focusRequesterNodes$ui.getSize();
                    boolean z2 = false;
                    for (int i2 = 0; i2 < size; i2++) {
                        FocusRequesterModifierNode focusRequesterModifierNode = focusRequesterModifierNodeArr[i2];
                        int iM8019constructorimpl = NodeKind.m8019constructorimpl(1024);
                        if (!focusRequesterModifierNode.getNode().isAttached()) {
                            InlineClassHelperKt.throwIllegalStateException("visitChildren called on an unattached node");
                        }
                        MutableVector mutableVector = new MutableVector(new Modifier.Node[16], 0);
                        Modifier.Node child$ui = focusRequesterModifierNode.getNode().getChild$ui();
                        if (child$ui == null) {
                            DelegatableNodeKt.addLayoutNodeChildren(mutableVector, focusRequesterModifierNode.getNode(), false);
                        } else {
                            mutableVector.add(child$ui);
                        }
                        while (mutableVector.getSize() != 0) {
                            Modifier.Node nodePop = (Modifier.Node) pg.f(mutableVector, 1);
                            if ((nodePop.getAggregateChildKindSet$ui() & iM8019constructorimpl) == 0) {
                                DelegatableNodeKt.addLayoutNodeChildren(mutableVector, nodePop, false);
                            } else {
                                while (nodePop != null) {
                                    if ((nodePop.getKindSet$ui() & iM8019constructorimpl) != 0) {
                                        MutableVector mutableVector2 = null;
                                        while (nodePop != null) {
                                            if (nodePop instanceof FocusTargetNode) {
                                                if (nl3Var.invoke((FocusTargetNode) nodePop).booleanValue()) {
                                                    z2 = true;
                                                    break;
                                                }
                                            } else if ((nodePop.getKindSet$ui() & iM8019constructorimpl) != 0 && (nodePop instanceof DelegatingNode)) {
                                                int i3 = 0;
                                                for (Modifier.Node delegate$ui = ((DelegatingNode) nodePop).getDelegate$ui(); delegate$ui != null; delegate$ui = delegate$ui.getChild$ui()) {
                                                    if ((delegate$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                                                        i3++;
                                                        if (i3 == 1) {
                                                            nodePop = delegate$ui;
                                                        } else {
                                                            if (mutableVector2 == null) {
                                                                mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                                            }
                                                            if (nodePop != null) {
                                                                mutableVector2.add(nodePop);
                                                                nodePop = null;
                                                            }
                                                            mutableVector2.add(delegate$ui);
                                                        }
                                                    }
                                                }
                                                if (i3 == 1) {
                                                }
                                            }
                                            nodePop = DelegatableNodeKt.pop(mutableVector2);
                                        }
                                        break;
                                    }
                                    nodePop = nodePop.getChild$ui();
                                }
                            }
                        }
                    }
                    z = z2;
                }
                return Boolean.valueOf(z);
            }
        } else {
            focusTargetNodeFindFocusTargetNode = null;
        }
        return FocusTraversalKt.m5912focusSearch0X8WOeE(this.rootFocusNode, i, this.owner.getLayoutDirection(), rect, new FocusOwnerImpl$focusSearch$1(focusTargetNodeFindFocusTargetNode, this, nl3Var));
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void focusTargetAvailable() {
        this.platformFocusOwner.focusTargetAvailable();
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public FocusTargetNode getActiveFocusTargetNode() {
        FocusTargetNode focusTargetNode = this.activeFocusTargetNode;
        if (focusTargetNode == null || !focusTargetNode.isAttached()) {
            return null;
        }
        return this.activeFocusTargetNode;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public Rect getFocusRect() {
        FocusTargetNode focusTargetNodeFindFocusTargetNode = findFocusTargetNode();
        if (focusTargetNodeFindFocusTargetNode != null) {
            return FocusTraversalKt.focusRect(focusTargetNodeFindFocusTargetNode);
        }
        return null;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public MutableObjectList<FocusListener> getListeners() {
        return this.listeners;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public Modifier getModifier() {
        return this.modifier;
    }

    public final FocusTargetNode getRootFocusNode$ui() {
        return this.rootFocusNode;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public FocusState getRootState() {
        return this.rootFocusNode.getFocusState();
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public boolean hasFocusableContent() {
        if (!this.rootFocusNode.isAttached()) {
            return false;
        }
        FocusTargetNode focusTargetNode = this.rootFocusNode;
        int iM8019constructorimpl = NodeKind.m8019constructorimpl(1024);
        if (!focusTargetNode.getNode().isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("visitSubtreeIf called on an unattached node");
        }
        MutableVector mutableVector = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node child$ui = focusTargetNode.getNode().getChild$ui();
        if (child$ui == null) {
            DelegatableNodeKt.addLayoutNodeChildren(mutableVector, focusTargetNode.getNode(), false);
        } else {
            mutableVector.add(child$ui);
        }
        while (mutableVector.getSize() != 0) {
            Modifier.Node node = (Modifier.Node) pg.f(mutableVector, 1);
            if ((node.getAggregateChildKindSet$ui() & iM8019constructorimpl) != 0) {
                for (Modifier.Node child$ui2 = node; child$ui2 != null && child$ui2.isAttached(); child$ui2 = child$ui2.getChild$ui()) {
                    if ((child$ui2.getKindSet$ui() & iM8019constructorimpl) != 0) {
                        Modifier.Node nodePop = child$ui2;
                        MutableVector mutableVector2 = null;
                        while (nodePop != null) {
                            if (nodePop instanceof FocusTargetNode) {
                                FocusTargetNode focusTargetNode2 = (FocusTargetNode) nodePop;
                                if (focusTargetNode2.isAttached() && focusTargetNode2.fetchFocusProperties$ui().getCanFocus()) {
                                    return true;
                                }
                            } else if ((nodePop.getKindSet$ui() & iM8019constructorimpl) != 0 && (nodePop instanceof DelegatingNode)) {
                                int i = 0;
                                for (Modifier.Node delegate$ui = ((DelegatingNode) nodePop).getDelegate$ui(); delegate$ui != null; delegate$ui = delegate$ui.getChild$ui()) {
                                    if ((delegate$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                                        i++;
                                        if (i == 1) {
                                            nodePop = delegate$ui;
                                        } else {
                                            if (mutableVector2 == null) {
                                                mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (nodePop != null) {
                                                mutableVector2.add(nodePop);
                                                nodePop = null;
                                            }
                                            mutableVector2.add(delegate$ui);
                                        }
                                    }
                                }
                                if (i == 1) {
                                }
                            }
                            nodePop = DelegatableNodeKt.pop(mutableVector2);
                        }
                    }
                }
            }
            DelegatableNodeKt.addLayoutNodeChildren(mutableVector, node, false);
        }
        return false;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public boolean hasNonInteropFocusableContent() {
        if (!this.rootFocusNode.isAttached()) {
            return false;
        }
        FocusTargetNode focusTargetNode = this.rootFocusNode;
        int iM8019constructorimpl = NodeKind.m8019constructorimpl(1024);
        if (!focusTargetNode.getNode().isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("visitSubtreeIf called on an unattached node");
        }
        MutableVector mutableVector = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node child$ui = focusTargetNode.getNode().getChild$ui();
        if (child$ui == null) {
            DelegatableNodeKt.addLayoutNodeChildren(mutableVector, focusTargetNode.getNode(), false);
        } else {
            mutableVector.add(child$ui);
        }
        while (mutableVector.getSize() != 0) {
            Modifier.Node node = (Modifier.Node) pg.f(mutableVector, 1);
            if ((node.getAggregateChildKindSet$ui() & iM8019constructorimpl) != 0) {
                for (Modifier.Node child$ui2 = node; child$ui2 != null && child$ui2.isAttached(); child$ui2 = child$ui2.getChild$ui()) {
                    if ((child$ui2.getKindSet$ui() & iM8019constructorimpl) != 0) {
                        Modifier.Node nodePop = child$ui2;
                        MutableVector mutableVector2 = null;
                        while (nodePop != null) {
                            if (nodePop instanceof FocusTargetNode) {
                                FocusTargetNode focusTargetNode2 = (FocusTargetNode) nodePop;
                                if (focusTargetNode2.isAttached()) {
                                    FocusProperties focusPropertiesFetchFocusProperties$ui = focusTargetNode2.fetchFocusProperties$ui();
                                    if (focusTargetNode2.isAttached() && !focusTargetNode2.isInteropViewHost() && focusPropertiesFetchFocusProperties$ui.getCanFocus()) {
                                        return true;
                                    }
                                }
                            } else if ((nodePop.getKindSet$ui() & iM8019constructorimpl) != 0 && (nodePop instanceof DelegatingNode)) {
                                int i = 0;
                                for (Modifier.Node delegate$ui = ((DelegatingNode) nodePop).getDelegate$ui(); delegate$ui != null; delegate$ui = delegate$ui.getChild$ui()) {
                                    if ((delegate$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                                        i++;
                                        if (i == 1) {
                                            nodePop = delegate$ui;
                                        } else {
                                            if (mutableVector2 == null) {
                                                mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (nodePop != null) {
                                                mutableVector2.add(nodePop);
                                                nodePop = null;
                                            }
                                            mutableVector2.add(delegate$ui);
                                        }
                                    }
                                }
                                if (i == 1) {
                                }
                            }
                            nodePop = DelegatableNodeKt.pop(mutableVector2);
                        }
                    }
                }
            }
            DelegatableNodeKt.addLayoutNodeChildren(mutableVector, node, false);
        }
        return false;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public boolean isFocusCaptured() {
        return this.isFocusCaptured;
    }

    @Override // androidx.compose.ui.focus.FocusManager
    /* JADX INFO: renamed from: moveFocus-3ESFkO8 */
    public boolean mo5876moveFocus3ESFkO8(int i) {
        return mo5882moveFocusaToIllA(i, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [T, java.lang.Boolean] */
    @Override // androidx.compose.ui.focus.FocusOwner
    /* JADX INFO: renamed from: moveFocus-aToIllA */
    public boolean mo5882moveFocusaToIllA(int i, boolean z) {
        FocusTargetNode activeFocusTargetNode;
        if ((ComposeUiFlags.isViewFocusFixEnabled || (ComposeUiFlags.isBypassUnfocusableComposeViewEnabled && (activeFocusTargetNode = getActiveFocusTargetNode()) != null && activeFocusTargetNode.isInteropViewHost())) && this.platformFocusOwner.mo5928moveFocusInChildren3ESFkO8(i)) {
            return true;
        }
        r07 r07Var = new r07();
        r07Var.b = Boolean.FALSE;
        FocusTargetNode activeFocusTargetNode2 = getActiveFocusTargetNode();
        Boolean boolMo5881focusSearchULY8qGw = mo5881focusSearchULY8qGw(i, this.platformFocusOwner.getEmbeddedViewFocusRect(), new FocusOwnerImpl$moveFocus$focusSearchSuccess$1(r07Var, i));
        if (aa4.e(boolMo5881focusSearchULY8qGw, Boolean.TRUE) && activeFocusTargetNode2 != getActiveFocusTargetNode()) {
            return true;
        }
        if (boolMo5881focusSearchULY8qGw != null && r07Var.b != 0) {
            if (boolMo5881focusSearchULY8qGw.booleanValue() && ((Boolean) r07Var.b).booleanValue()) {
                return true;
            }
            if (FocusOwnerImplKt.m5889is1dFocusSearch3ESFkO8(i) && z) {
                return mo5878clearFocusI7lrPNg(false, true, false, i) && mo5885takeFocusaToIllA(i, null);
            }
            if (!ComposeUiFlags.isViewFocusFixEnabled && !ComposeUiFlags.isBypassUnfocusableComposeViewEnabled) {
                return this.platformFocusOwner.mo5928moveFocusInChildren3ESFkO8(i);
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void releaseFocus() {
        FocusTransactionsKt.clearFocus(this.rootFocusNode, true, true);
        if (!ComposeUiFlags.isOptimizedFocusEventDispatchEnabled || getActiveFocusTargetNode() == null) {
            return;
        }
        FocusTargetNode activeFocusTargetNode = getActiveFocusTargetNode();
        setActiveFocusTargetNode(null);
        if (activeFocusTargetNode != null) {
            activeFocusTargetNode.dispatchFocusCallbacks$ui(FocusStateImpl.Active, FocusStateImpl.Inactive);
        }
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    /* JADX INFO: renamed from: requestOwnerFocus-7o62pno */
    public boolean mo5883requestOwnerFocus7o62pno(FocusDirection focusDirection, Rect rect) {
        return this.platformFocusOwner.mo5929requestOwnerFocus7o62pno(focusDirection, rect);
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    /* JADX INFO: renamed from: resetFocus-3ESFkO8 */
    public boolean mo5884resetFocus3ESFkO8(int i) {
        if (!mo5878clearFocusI7lrPNg(false, true, false, i)) {
            return false;
        }
        Boolean boolMo5881focusSearchULY8qGw = mo5881focusSearchULY8qGw(i, null, new FocusOwnerImpl$resetFocus$successfulReset$1(i));
        boolean zBooleanValue = boolMo5881focusSearchULY8qGw != null ? boolMo5881focusSearchULY8qGw.booleanValue() : false;
        if (!zBooleanValue) {
            clearOwnerFocus();
        }
        return zBooleanValue;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void scheduleInvalidation(FocusTargetNode focusTargetNode) {
        this.focusInvalidationManager.scheduleInvalidation(focusTargetNode);
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void scheduleInvalidationForOwner() {
        this.focusInvalidationManager.scheduleInvalidation();
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void setActiveFocusTargetNode(FocusTargetNode focusTargetNode) {
        FocusTargetNode focusTargetNode2 = this.activeFocusTargetNode;
        this.activeFocusTargetNode = focusTargetNode;
        if (focusTargetNode == null || focusTargetNode2 != focusTargetNode) {
            setFocusCaptured(false);
        }
        MutableObjectList<FocusListener> listeners = getListeners();
        Object[] objArr = listeners.content;
        int i = listeners._size;
        for (int i2 = 0; i2 < i; i2++) {
            ((FocusListener) objArr[i2]).onFocusChanged(focusTargetNode2, focusTargetNode);
        }
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void setFocusCaptured(boolean z) {
        if (!((z && getActiveFocusTargetNode() == null) ? false : true)) {
            InlineClassHelperKt.throwIllegalArgumentException("Cannot capture focus when the active focus target node is unset");
        }
        this.isFocusCaptured = z;
    }

    public final void setRootFocusNode$ui(FocusTargetNode focusTargetNode) {
        this.rootFocusNode = focusTargetNode;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    /* JADX INFO: renamed from: takeFocus-aToIllA */
    public boolean mo5885takeFocusaToIllA(int i, Rect rect) {
        Boolean boolMo5881focusSearchULY8qGw = mo5881focusSearchULY8qGw(i, rect, new FocusOwnerImpl$takeFocus$1(i));
        if (boolMo5881focusSearchULY8qGw != null) {
            return boolMo5881focusSearchULY8qGw.booleanValue();
        }
        return false;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void scheduleInvalidation(FocusEventModifierNode focusEventModifierNode) {
        this.focusInvalidationManager.scheduleInvalidation(focusEventModifierNode);
    }

    @Override // androidx.compose.ui.focus.FocusManager
    public void clearFocus(boolean z) {
        mo5878clearFocusI7lrPNg(z, true, true, FocusDirection.Companion.m5868getExitdhqQ8s());
    }
}
