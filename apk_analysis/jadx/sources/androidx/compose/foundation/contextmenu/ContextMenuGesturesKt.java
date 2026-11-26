package androidx.compose.foundation.contextmenu;

import androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import defpackage.a32;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.vy1;

/* JADX INFO: loaded from: classes.dex */
public final class ContextMenuGesturesKt {
    public static final Modifier contextMenuGestures(Modifier modifier, final nl3<? super Offset, j59> nl3Var) {
        return SuspendingPointerInputFilterKt.pointerInput(modifier, ContextMenuKey.INSTANCE, new PointerInputEventHandler() { // from class: androidx.compose.foundation.contextmenu.ContextMenuGesturesKt.contextMenuGestures.2
            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
            public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
                Object objOnRightClickDown = RightClickGesturesKt.onRightClickDown(pointerInputScope, nl3Var, e02Var);
                return objOnRightClickDown == a32.COROUTINE_SUSPENDED ? objOnRightClickDown : j59.a;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 contextMenuGestures$lambda$0(ContextMenuState contextMenuState, Offset offset) {
        contextMenuState.setStatus(new ContextMenuState.Status.Open(offset.m5997unboximpl(), null));
        return j59.a;
    }

    public static final Modifier contextMenuGestures(Modifier modifier, ContextMenuState contextMenuState) {
        return contextMenuGestures(modifier, new vy1(contextMenuState, 0));
    }
}
