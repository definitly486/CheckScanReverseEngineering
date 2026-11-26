package androidx.compose.material3;

import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import defpackage.a32;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class WideNavigationRailKt$Scrim$dismissModalRail$1$1 implements PointerInputEventHandler {
    final /* synthetic */ MutableState<Boolean> $dismiss$delegate;

    public WideNavigationRailKt$Scrim$dismissModalRail$1$1(MutableState<Boolean> mutableState) {
        this.$dismiss$delegate = mutableState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$0(MutableState mutableState, Offset offset) {
        WideNavigationRailKt.Scrim_3J_VO9M$lambda$29(mutableState, true);
        return j59.a;
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
    public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
        final MutableState<Boolean> mutableState = this.$dismiss$delegate;
        Object objDetectTapGestures$default = TapGestureDetectorKt.detectTapGestures$default(pointerInputScope, null, null, null, new nl3() { // from class: androidx.compose.material3.o5
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return WideNavigationRailKt$Scrim$dismissModalRail$1$1.invoke$lambda$0(mutableState, (Offset) obj);
            }
        }, e02Var, 7, null);
        return objDetectTapGestures$default == a32.COROUTINE_SUSPENDED ? objDetectTapGestures$default : j59.a;
    }
}
