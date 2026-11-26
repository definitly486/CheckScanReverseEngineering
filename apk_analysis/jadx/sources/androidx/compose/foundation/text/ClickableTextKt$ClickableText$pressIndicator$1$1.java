package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.text.TextLayoutResult;
import defpackage.a32;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class ClickableTextKt$ClickableText$pressIndicator$1$1 implements PointerInputEventHandler {
    final /* synthetic */ MutableState<TextLayoutResult> $layoutResult;
    final /* synthetic */ nl3<Integer, j59> $onClick;

    /* JADX WARN: Multi-variable type inference failed */
    public ClickableTextKt$ClickableText$pressIndicator$1$1(MutableState<TextLayoutResult> mutableState, nl3<? super Integer, j59> nl3Var) {
        this.$layoutResult = mutableState;
        this.$onClick = nl3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$0(MutableState mutableState, nl3 nl3Var, Offset offset) {
        TextLayoutResult textLayoutResult = (TextLayoutResult) mutableState.getValue();
        if (textLayoutResult != null) {
            nl3Var.invoke(Integer.valueOf(textLayoutResult.m8461getOffsetForPositionk4lQ0M(offset.m5997unboximpl())));
        }
        return j59.a;
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
    public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
        final MutableState<TextLayoutResult> mutableState = this.$layoutResult;
        final nl3<Integer, j59> nl3Var = this.$onClick;
        Object objDetectTapGestures$default = TapGestureDetectorKt.detectTapGestures$default(pointerInputScope, null, null, null, new nl3() { // from class: androidx.compose.foundation.text.c
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return ClickableTextKt$ClickableText$pressIndicator$1$1.invoke$lambda$0(mutableState, nl3Var, (Offset) obj);
            }
        }, e02Var, 7, null);
        return objDetectTapGestures$default == a32.COROUTINE_SUSPENDED ? objDetectTapGestures$default : j59.a;
    }
}
