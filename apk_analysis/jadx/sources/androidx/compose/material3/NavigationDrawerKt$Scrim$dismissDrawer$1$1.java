package androidx.compose.material3;

import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import defpackage.a32;
import defpackage.e02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class NavigationDrawerKt$Scrim$dismissDrawer$1$1 implements PointerInputEventHandler {
    final /* synthetic */ ll3<j59> $onClose;

    public NavigationDrawerKt$Scrim$dismissDrawer$1$1(ll3<j59> ll3Var) {
        this.$onClose = ll3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$0(ll3 ll3Var, Offset offset) {
        ll3Var.invoke();
        return j59.a;
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
    public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
        final ll3<j59> ll3Var = this.$onClose;
        Object objDetectTapGestures$default = TapGestureDetectorKt.detectTapGestures$default(pointerInputScope, null, null, null, new nl3() { // from class: androidx.compose.material3.b3
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return NavigationDrawerKt$Scrim$dismissDrawer$1$1.invoke$lambda$0(ll3Var, (Offset) obj);
            }
        }, e02Var, 7, null);
        return objDetectTapGestures$default == a32.COROUTINE_SUSPENDED ? objDetectTapGestures$default : j59.a;
    }
}
