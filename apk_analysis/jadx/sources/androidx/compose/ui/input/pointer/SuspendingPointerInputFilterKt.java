package androidx.compose.ui.input.pointer;

import androidx.compose.ui.Modifier;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.kx2;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class SuspendingPointerInputFilterKt {
    private static final PointerEvent EmptyPointerEvent = new PointerEvent(kx2.b);
    private static final String PointerInputModifierNoParamError = "Modifier.pointerInput must provide one or more 'key' parameters that define the identity of the modifier and determine when its previous input processing coroutine should be cancelled and a new effect launched for the new key.";
    public static final long WITH_TIMEOUT_MICRO_DELAY_MILLIS = 8;

    @ul2
    public static final /* synthetic */ SuspendingPointerInputModifierNode SuspendingPointerInputModifierNode(bm3 bm3Var) {
        return new SuspendingPointerInputModifierNodeImpl((Object) null, (Object) null, (Object[]) null, (bm3<? super PointerInputScope, ? super e02<? super j59>, ? extends Object>) bm3Var);
    }

    private static /* synthetic */ void getPointerInputModifierNoParamError$annotations() {
    }

    public static final SuspendingPointerInputModifierNode SuspendingPointerInputModifierNode(PointerInputEventHandler pointerInputEventHandler) {
        return new SuspendingPointerInputModifierNodeImpl((Object) null, (Object) null, (Object[]) null, pointerInputEventHandler);
    }

    @ul2
    public static final Modifier pointerInput(Modifier modifier, bm3<? super PointerInputScope, ? super e02<? super j59>, ? extends Object> bm3Var) {
        throw new IllegalStateException(PointerInputModifierNoParamError);
    }

    public static final Modifier pointerInput(Modifier modifier, Object obj, PointerInputEventHandler pointerInputEventHandler) {
        return modifier.then(new SuspendPointerInputElement(obj, null, null, pointerInputEventHandler, 6, null));
    }

    public static final Modifier pointerInput(Modifier modifier, Object obj, Object obj2, PointerInputEventHandler pointerInputEventHandler) {
        return modifier.then(new SuspendPointerInputElement(obj, obj2, null, pointerInputEventHandler, 4, null));
    }

    public static final Modifier pointerInput(Modifier modifier, Object[] objArr, PointerInputEventHandler pointerInputEventHandler) {
        return modifier.then(new SuspendPointerInputElement(null, null, objArr, pointerInputEventHandler, 3, null));
    }
}
