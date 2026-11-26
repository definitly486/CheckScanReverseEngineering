package defpackage;

import androidx.compose.foundation.contextmenu.ContextMenuScope;
import androidx.compose.foundation.contextmenu.ContextMenuState;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionStateKt;
import androidx.compose.runtime.State;
import yads.b82;
import yads.d22;
import yads.fs2;
import yads.g82;
import yads.s22;
import yads.tc1;
import yads.zo1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class yr8 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;

    public /* synthetic */ yr8(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
        this.f = obj4;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.f;
        Object obj3 = this.e;
        Object obj4 = this.d;
        Object obj5 = this.c;
        switch (i) {
            case 0:
                return TextFieldSelectionStateKt.contextMenuBuilder$lambda$0((State) obj5, (ContextMenuState) obj4, (bm3) obj3, (TextFieldSelectionState) obj2, (ContextMenuScope) obj);
            case 1:
                return d22.b((d22) obj5, (s22) obj4, (fs2) obj3, (tc1) obj2, obj);
            default:
                return g82.b((g82) obj5, (zo1) obj4, (b82) obj3, (fs2) obj2, obj);
        }
    }
}
