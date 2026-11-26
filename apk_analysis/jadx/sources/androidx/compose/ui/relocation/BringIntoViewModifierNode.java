package androidx.compose.ui.relocation;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.DelegatableNode;
import defpackage.e02;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public interface BringIntoViewModifierNode extends DelegatableNode {
    Object bringIntoView(LayoutCoordinates layoutCoordinates, ll3<Rect> ll3Var, e02<? super j59> e02Var);
}
