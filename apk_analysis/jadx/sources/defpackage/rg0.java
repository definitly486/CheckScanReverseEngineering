package defpackage;

import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.material3.DefaultTwoRowsTopAppBarOverride;
import androidx.compose.material3.OutlinedTextFieldKt;
import androidx.compose.material3.SheetState;
import androidx.compose.material3.internal.FloatProducer;
import yads.e42;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class rg0 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ rg0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(BasicTextKt.LayoutWithLinksAndInlineContent_11Od_4g$lambda$7$0((TextLinkScope) obj));
            case 1:
                return Boolean.valueOf(DefaultTwoRowsTopAppBarOverride.TwoRowsTopAppBar$lambda$12$lambda$11((ll3) obj));
            case 2:
                return OutlinedTextFieldKt.OutlinedTextFieldLayout$lambda$19$lambda$16$lambda$15((FloatProducer) obj);
            case 3:
                return ((SheetState) obj).anchoredDraggableMotionSpec;
            default:
                return e42.a((e42) obj);
        }
    }
}
