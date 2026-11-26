package defpackage;

import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.material3.NavigationBarKt;
import androidx.compose.material3.TextFieldKt;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class tg0 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ tg0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return BasicTextKt.LayoutWithLinksAndInlineContent_11Od_4g$lambda$9$0((MutableState) obj);
            case 1:
                return Float.valueOf(NavigationBarKt.NavigationBarItem$lambda$15$lambda$14$lambda$13((State) obj));
            default:
                return TextFieldKt.TextFieldLayout$lambda$19$lambda$15$lambda$14((FloatProducer) obj);
        }
    }
}
