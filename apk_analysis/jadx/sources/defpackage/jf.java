package defpackage;

import android.content.Context;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextDelegate;
import androidx.compose.foundation.text.TextFieldDelegate;
import androidx.compose.material.ripple.AndroidRippleIndicationInstance;
import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.runtime.Recomposer;
import yads.n32;
import yads.nq0;
import yads.x73;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jf implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ jf(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Float.valueOf(AnchoredDraggableState.progress_delegate$lambda$7((AnchoredDraggableState) obj));
            case 1:
                return AndroidRippleIndicationInstance.onInvalidateRipple$lambda$0((AndroidRippleIndicationInstance) obj);
            case 2:
                u80.a aVar = u80.a;
                Context context = ((i80) obj).b;
                u80 u80Var = u80.b;
                if (u80Var == null) {
                    synchronized (aVar) {
                        u80Var = u80.b;
                        if (u80Var == null) {
                            u80Var = new u80();
                            u80.b = u80Var;
                            context.getSharedPreferences("com.skydoves.balloon", 0).getClass();
                        }
                        break;
                    }
                }
                return u80Var;
            case 3:
                return ((LegacyTextFieldState) obj).getLayoutResult();
            case 4:
                return Recomposer.nextFrameEndCallbackQueue$lambda$0((Recomposer) obj);
            case 5:
                return TextFieldDelegate.Companion.notifyFocusedRect$lambda$0((TextDelegate) obj);
            case 6:
                return n32.b((n32) obj);
            case 7:
                return nq0.q((nq0) obj);
            default:
                return x73.b((x73) obj);
        }
    }
}
