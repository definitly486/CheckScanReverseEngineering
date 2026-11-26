package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Actual_jvmAndAndroidKt;
import androidx.compose.ui.ComposeUiFlags;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import defpackage.aa4;
import defpackage.ki0;

/* JADX INFO: loaded from: classes2.dex */
public final class TraversableNodeKt {
    /* JADX WARN: Code duplicated, block: B:23:0x0058  */
    public static final <T extends TraversableNode> T findNearestAncestor(T t) {
        NodeChain nodes$ui;
        int iM8019constructorimpl = NodeKind.m8019constructorimpl(262144);
        boolean z = ComposeUiFlags.isTraversableDelegatesFixEnabled;
        if (!t.getNode().isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node parent$ui = t.getNode().getParent$ui();
        LayoutNode layoutNodeRequireLayoutNode = DelegatableNodeKt.requireLayoutNode(t);
        while (layoutNodeRequireLayoutNode != null) {
            if ((ki0.b(layoutNodeRequireLayoutNode) & iM8019constructorimpl) != 0) {
                while (parent$ui != null) {
                    if ((parent$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                        Modifier.Node nodePop = parent$ui;
                        MutableVector mutableVector = null;
                        while (nodePop != null) {
                            if (nodePop instanceof TraversableNode) {
                                T t2 = (T) nodePop;
                                if (aa4.e(t.getTraverseKey(), t2.getTraverseKey()) && Actual_jvmAndAndroidKt.areObjectsOfSameType(t, t2)) {
                                    return t2;
                                }
                                if (z) {
                                    if ((nodePop.getKindSet$ui() & iM8019constructorimpl) == 0 && (nodePop instanceof DelegatingNode)) {
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
                                }
                                nodePop = DelegatableNodeKt.pop(mutableVector);
                            } else {
                                if ((nodePop.getKindSet$ui() & iM8019constructorimpl) == 0) {
                                }
                                nodePop = DelegatableNodeKt.pop(mutableVector);
                            }
                        }
                    }
                    parent$ui = parent$ui.getParent$ui();
                }
            }
            layoutNodeRequireLayoutNode = layoutNodeRequireLayoutNode.getParent$ui();
            parent$ui = (layoutNodeRequireLayoutNode == null || (nodes$ui = layoutNodeRequireLayoutNode.getNodes$ui()) == null) ? null : nodes$ui.getTail$ui();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v12 */
    /*  JADX ERROR: NullPointerException in pass: PrepareForCodeGen
        java.lang.NullPointerException
        */
    public static final <T extends androidx.compose.ui.node.TraversableNode> void traverseAncestors(T r11, defpackage.nl3<? super T, java.lang.Boolean> r12) {
        /*
            r0 = 262144(0x40000, float:3.67342E-40)
            int r0 = androidx.compose.ui.node.NodeKind.m8019constructorimpl(r0)
            androidx.compose.ui.Modifier$Node r1 = r11.getNode()
            boolean r1 = r1.isAttached()
            if (r1 != 0) goto L15
            java.lang.String r1 = "visitAncestors called on an unattached node"
            androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException(r1)
        L15:
            androidx.compose.ui.Modifier$Node r1 = r11.getNode()
            androidx.compose.ui.Modifier$Node r1 = r1.getParent$ui()
            androidx.compose.ui.node.LayoutNode r2 = androidx.compose.ui.node.DelegatableNodeKt.requireLayoutNode(r11)
        L21:
            if (r2 == 0) goto Lbe
            int r3 = defpackage.ki0.b(r2)
            r3 = r3 & r0
            r4 = 0
            if (r3 == 0) goto La9
        L2b:
            if (r1 == 0) goto La9
            int r3 = r1.getKindSet$ui()
            r3 = r3 & r0
            if (r3 == 0) goto La4
            r3 = r1
            r5 = r4
        L36:
            if (r3 == 0) goto La4
            boolean r6 = r3 instanceof androidx.compose.ui.node.TraversableNode
            r7 = 1
            if (r6 == 0) goto L60
            androidx.compose.ui.node.TraversableNode r3 = (androidx.compose.ui.node.TraversableNode) r3
            java.lang.Object r6 = r11.getTraverseKey()
            java.lang.Object r8 = r3.getTraverseKey()
            boolean r6 = defpackage.aa4.e(r6, r8)
            if (r6 == 0) goto L5d
            boolean r6 = androidx.compose.ui.Actual_jvmAndAndroidKt.areObjectsOfSameType(r11, r3)
            if (r6 == 0) goto L5d
            java.lang.Object r3 = r12.invoke(r3)
            java.lang.Boolean r3 = (java.lang.Boolean) r3
            boolean r7 = r3.booleanValue()
        L5d:
            if (r7 != 0) goto L9f
            goto Lbe
        L60:
            int r6 = r3.getKindSet$ui()
            r6 = r6 & r0
            if (r6 == 0) goto L9f
            boolean r6 = r3 instanceof androidx.compose.ui.node.DelegatingNode
            if (r6 == 0) goto L9f
            r6 = r3
            androidx.compose.ui.node.DelegatingNode r6 = (androidx.compose.ui.node.DelegatingNode) r6
            androidx.compose.ui.Modifier$Node r6 = r6.getDelegate$ui()
            r8 = 0
            r9 = r8
        L74:
            if (r6 == 0) goto L9c
            int r10 = r6.getKindSet$ui()
            r10 = r10 & r0
            if (r10 == 0) goto L97
            int r9 = r9 + 1
            if (r9 != r7) goto L83
            r3 = r6
            goto L97
        L83:
            if (r5 != 0) goto L8e
            androidx.compose.runtime.collection.MutableVector r5 = new androidx.compose.runtime.collection.MutableVector
            r10 = 16
            androidx.compose.ui.Modifier$Node[] r10 = new androidx.compose.ui.Modifier.Node[r10]
            r5.<init>(r10, r8)
        L8e:
            if (r3 == 0) goto L94
            r5.add(r3)
            r3 = r4
        L94:
            r5.add(r6)
        L97:
            androidx.compose.ui.Modifier$Node r6 = r6.getChild$ui()
            goto L74
        L9c:
            if (r9 != r7) goto L9f
            goto L36
        L9f:
            androidx.compose.ui.Modifier$Node r3 = androidx.compose.ui.node.DelegatableNodeKt.access$pop(r5)
            goto L36
        La4:
            androidx.compose.ui.Modifier$Node r1 = r1.getParent$ui()
            goto L2b
        La9:
            androidx.compose.ui.node.LayoutNode r2 = r2.getParent$ui()
            if (r2 == 0) goto Lbb
            androidx.compose.ui.node.NodeChain r1 = r2.getNodes$ui()
            if (r1 == 0) goto Lbb
            androidx.compose.ui.Modifier$Node r1 = r1.getTail$ui()
            goto L21
        Lbb:
            r1 = r4
            goto L21
        Lbe:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.TraversableNodeKt.traverseAncestors(androidx.compose.ui.node.TraversableNode, nl3):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v13 */
    /*  JADX ERROR: NullPointerException in pass: PrepareForCodeGen
        java.lang.NullPointerException
        */
    public static final <T extends androidx.compose.ui.node.TraversableNode> void traverseChildren(T r11, defpackage.nl3<? super T, java.lang.Boolean> r12) {
        /*
            Method dump skipped, instruction units count: 201
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.TraversableNodeKt.traverseChildren(androidx.compose.ui.node.TraversableNode, nl3):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v10 */
    /*  JADX ERROR: NullPointerException in pass: PrepareForCodeGen
        java.lang.NullPointerException
        */
    public static final <T extends androidx.compose.ui.node.TraversableNode> void traverseDescendants(T r13, defpackage.nl3<? super T, ? extends androidx.compose.ui.node.TraversableNode.Companion.TraverseDescendantsAction> r14) {
        /*
            Method dump skipped, instruction units count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.TraversableNodeKt.traverseDescendants(androidx.compose.ui.node.TraversableNode, nl3):void");
    }

    /* JADX WARN: Code duplicated, block: B:21:0x004e  */
    public static final TraversableNode findNearestAncestor(DelegatableNode delegatableNode, Object obj) {
        NodeChain nodes$ui;
        int iM8019constructorimpl = NodeKind.m8019constructorimpl(262144);
        boolean z = ComposeUiFlags.isTraversableDelegatesFixEnabled;
        if (!delegatableNode.getNode().isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node parent$ui = delegatableNode.getNode().getParent$ui();
        LayoutNode layoutNodeRequireLayoutNode = DelegatableNodeKt.requireLayoutNode(delegatableNode);
        while (layoutNodeRequireLayoutNode != null) {
            if ((ki0.b(layoutNodeRequireLayoutNode) & iM8019constructorimpl) != 0) {
                while (parent$ui != null) {
                    if ((parent$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                        Modifier.Node nodePop = parent$ui;
                        MutableVector mutableVector = null;
                        while (nodePop != null) {
                            if (nodePop instanceof TraversableNode) {
                                TraversableNode traversableNode = (TraversableNode) nodePop;
                                if (aa4.e(obj, traversableNode.getTraverseKey())) {
                                    return traversableNode;
                                }
                                if (z) {
                                    if ((nodePop.getKindSet$ui() & iM8019constructorimpl) == 0 && (nodePop instanceof DelegatingNode)) {
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
                                }
                                nodePop = DelegatableNodeKt.pop(mutableVector);
                            } else {
                                if ((nodePop.getKindSet$ui() & iM8019constructorimpl) == 0) {
                                }
                                nodePop = DelegatableNodeKt.pop(mutableVector);
                            }
                        }
                    }
                    parent$ui = parent$ui.getParent$ui();
                }
            }
            layoutNodeRequireLayoutNode = layoutNodeRequireLayoutNode.getParent$ui();
            parent$ui = (layoutNodeRequireLayoutNode == null || (nodes$ui = layoutNodeRequireLayoutNode.getNodes$ui()) == null) ? null : nodes$ui.getTail$ui();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v12 */
    /*  JADX ERROR: NullPointerException in pass: PrepareForCodeGen
        java.lang.NullPointerException
        */
    public static final void traverseAncestors(androidx.compose.ui.node.DelegatableNode r10, java.lang.Object r11, defpackage.nl3<? super androidx.compose.ui.node.TraversableNode, java.lang.Boolean> r12) {
        /*
            r0 = 262144(0x40000, float:3.67342E-40)
            int r0 = androidx.compose.ui.node.NodeKind.m8019constructorimpl(r0)
            androidx.compose.ui.Modifier$Node r1 = r10.getNode()
            boolean r1 = r1.isAttached()
            if (r1 != 0) goto L15
            java.lang.String r1 = "visitAncestors called on an unattached node"
            androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException(r1)
        L15:
            androidx.compose.ui.Modifier$Node r1 = r10.getNode()
            androidx.compose.ui.Modifier$Node r1 = r1.getParent$ui()
            androidx.compose.ui.node.LayoutNode r10 = androidx.compose.ui.node.DelegatableNodeKt.requireLayoutNode(r10)
        L21:
            if (r10 == 0) goto Lb4
            int r2 = defpackage.ki0.b(r10)
            r2 = r2 & r0
            r3 = 0
            if (r2 == 0) goto L9f
        L2b:
            if (r1 == 0) goto L9f
            int r2 = r1.getKindSet$ui()
            r2 = r2 & r0
            if (r2 == 0) goto L9a
            r2 = r1
            r4 = r3
        L36:
            if (r2 == 0) goto L9a
            boolean r5 = r2 instanceof androidx.compose.ui.node.TraversableNode
            r6 = 1
            if (r5 == 0) goto L56
            androidx.compose.ui.node.TraversableNode r2 = (androidx.compose.ui.node.TraversableNode) r2
            java.lang.Object r5 = r2.getTraverseKey()
            boolean r5 = defpackage.aa4.e(r11, r5)
            if (r5 == 0) goto L53
            java.lang.Object r2 = r12.invoke(r2)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r6 = r2.booleanValue()
        L53:
            if (r6 != 0) goto L95
            goto Lb4
        L56:
            int r5 = r2.getKindSet$ui()
            r5 = r5 & r0
            if (r5 == 0) goto L95
            boolean r5 = r2 instanceof androidx.compose.ui.node.DelegatingNode
            if (r5 == 0) goto L95
            r5 = r2
            androidx.compose.ui.node.DelegatingNode r5 = (androidx.compose.ui.node.DelegatingNode) r5
            androidx.compose.ui.Modifier$Node r5 = r5.getDelegate$ui()
            r7 = 0
            r8 = r7
        L6a:
            if (r5 == 0) goto L92
            int r9 = r5.getKindSet$ui()
            r9 = r9 & r0
            if (r9 == 0) goto L8d
            int r8 = r8 + 1
            if (r8 != r6) goto L79
            r2 = r5
            goto L8d
        L79:
            if (r4 != 0) goto L84
            androidx.compose.runtime.collection.MutableVector r4 = new androidx.compose.runtime.collection.MutableVector
            r9 = 16
            androidx.compose.ui.Modifier$Node[] r9 = new androidx.compose.ui.Modifier.Node[r9]
            r4.<init>(r9, r7)
        L84:
            if (r2 == 0) goto L8a
            r4.add(r2)
            r2 = r3
        L8a:
            r4.add(r5)
        L8d:
            androidx.compose.ui.Modifier$Node r5 = r5.getChild$ui()
            goto L6a
        L92:
            if (r8 != r6) goto L95
            goto L36
        L95:
            androidx.compose.ui.Modifier$Node r2 = androidx.compose.ui.node.DelegatableNodeKt.access$pop(r4)
            goto L36
        L9a:
            androidx.compose.ui.Modifier$Node r1 = r1.getParent$ui()
            goto L2b
        L9f:
            androidx.compose.ui.node.LayoutNode r10 = r10.getParent$ui()
            if (r10 == 0) goto Lb1
            androidx.compose.ui.node.NodeChain r1 = r10.getNodes$ui()
            if (r1 == 0) goto Lb1
            androidx.compose.ui.Modifier$Node r1 = r1.getTail$ui()
            goto L21
        Lb1:
            r1 = r3
            goto L21
        Lb4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.TraversableNodeKt.traverseAncestors(androidx.compose.ui.node.DelegatableNode, java.lang.Object, nl3):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v16 */
    /*  JADX ERROR: NullPointerException in pass: PrepareForCodeGen
        java.lang.NullPointerException
        */
    public static final void traverseChildren(androidx.compose.ui.node.DelegatableNode r10, java.lang.Object r11, defpackage.nl3<? super androidx.compose.ui.node.TraversableNode, java.lang.Boolean> r12) {
        /*
            r0 = 262144(0x40000, float:3.67342E-40)
            int r0 = androidx.compose.ui.node.NodeKind.m8019constructorimpl(r0)
            androidx.compose.ui.Modifier$Node r1 = r10.getNode()
            boolean r1 = r1.isAttached()
            if (r1 != 0) goto L15
            java.lang.String r1 = "visitChildren called on an unattached node"
            androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException(r1)
        L15:
            androidx.compose.runtime.collection.MutableVector r1 = new androidx.compose.runtime.collection.MutableVector
            r2 = 16
            androidx.compose.ui.Modifier$Node[] r3 = new androidx.compose.ui.Modifier.Node[r2]
            r4 = 0
            r1.<init>(r3, r4)
            androidx.compose.ui.Modifier$Node r3 = r10.getNode()
            androidx.compose.ui.Modifier$Node r3 = r3.getChild$ui()
            if (r3 != 0) goto L31
            androidx.compose.ui.Modifier$Node r10 = r10.getNode()
            androidx.compose.ui.node.DelegatableNodeKt.access$addLayoutNodeChildren(r1, r10, r4)
            goto L34
        L31:
            r1.add(r3)
        L34:
            int r10 = r1.getSize()
            if (r10 == 0) goto Lbe
            r10 = 1
            java.lang.Object r3 = defpackage.pg.f(r1, r10)
            androidx.compose.ui.Modifier$Node r3 = (androidx.compose.ui.Modifier.Node) r3
            int r5 = r3.getAggregateChildKindSet$ui()
            r5 = r5 & r0
            if (r5 != 0) goto L4c
            androidx.compose.ui.node.DelegatableNodeKt.access$addLayoutNodeChildren(r1, r3, r4)
            goto L34
        L4c:
            if (r3 == 0) goto L34
            int r5 = r3.getKindSet$ui()
            r5 = r5 & r0
            if (r5 == 0) goto Lb9
            r5 = 0
            r6 = r5
        L57:
            if (r3 == 0) goto L34
            boolean r7 = r3 instanceof androidx.compose.ui.node.TraversableNode
            if (r7 == 0) goto L78
            androidx.compose.ui.node.TraversableNode r3 = (androidx.compose.ui.node.TraversableNode) r3
            java.lang.Object r7 = r3.getTraverseKey()
            boolean r7 = defpackage.aa4.e(r11, r7)
            if (r7 == 0) goto L74
            java.lang.Object r3 = r12.invoke(r3)
            java.lang.Boolean r3 = (java.lang.Boolean) r3
            boolean r3 = r3.booleanValue()
            goto L75
        L74:
            r3 = r10
        L75:
            if (r3 != 0) goto Lb4
            return
        L78:
            int r7 = r3.getKindSet$ui()
            r7 = r7 & r0
            if (r7 == 0) goto Lb4
            boolean r7 = r3 instanceof androidx.compose.ui.node.DelegatingNode
            if (r7 == 0) goto Lb4
            r7 = r3
            androidx.compose.ui.node.DelegatingNode r7 = (androidx.compose.ui.node.DelegatingNode) r7
            androidx.compose.ui.Modifier$Node r7 = r7.getDelegate$ui()
            r8 = r4
        L8b:
            if (r7 == 0) goto Lb1
            int r9 = r7.getKindSet$ui()
            r9 = r9 & r0
            if (r9 == 0) goto Lac
            int r8 = r8 + 1
            if (r8 != r10) goto L9a
            r3 = r7
            goto Lac
        L9a:
            if (r6 != 0) goto La3
            androidx.compose.runtime.collection.MutableVector r6 = new androidx.compose.runtime.collection.MutableVector
            androidx.compose.ui.Modifier$Node[] r9 = new androidx.compose.ui.Modifier.Node[r2]
            r6.<init>(r9, r4)
        La3:
            if (r3 == 0) goto La9
            r6.add(r3)
            r3 = r5
        La9:
            r6.add(r7)
        Lac:
            androidx.compose.ui.Modifier$Node r7 = r7.getChild$ui()
            goto L8b
        Lb1:
            if (r8 != r10) goto Lb4
            goto L57
        Lb4:
            androidx.compose.ui.Modifier$Node r3 = androidx.compose.ui.node.DelegatableNodeKt.access$pop(r6)
            goto L57
        Lb9:
            androidx.compose.ui.Modifier$Node r3 = r3.getChild$ui()
            goto L4c
        Lbe:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.TraversableNodeKt.traverseChildren(androidx.compose.ui.node.DelegatableNode, java.lang.Object, nl3):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10 */
    /*  JADX ERROR: NullPointerException in pass: PrepareForCodeGen
        java.lang.NullPointerException
        */
    public static final void traverseDescendants(androidx.compose.ui.node.DelegatableNode r12, java.lang.Object r13, defpackage.nl3<? super androidx.compose.ui.node.TraversableNode, ? extends androidx.compose.ui.node.TraversableNode.Companion.TraverseDescendantsAction> r14) {
        /*
            Method dump skipped, instruction units count: 204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.TraversableNodeKt.traverseDescendants(androidx.compose.ui.node.DelegatableNode, java.lang.Object, nl3):void");
    }
}
