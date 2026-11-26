package defpackage;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.text.TextFieldPressGestureFilterKt;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class bh5 implements dm3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ bh5(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.dm3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.b;
        Object obj4 = this.d;
        Object obj5 = this.c;
        switch (i) {
            case 0:
                ch5 ch5Var = (ch5) obj5;
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = ch5.k;
                Object obj6 = ((ch5.a) obj4).c;
                atomicReferenceFieldUpdater.set(ch5Var, obj6);
                ch5Var.unlock(obj6);
                return j59.a;
            default:
                return TextFieldPressGestureFilterKt.tapPressTextFieldModifier$lambda$0((nl3) obj5, (MutableInteractionSource) obj4, (Modifier) obj, (Composer) obj2, ((Integer) obj3).intValue());
        }
    }
}
