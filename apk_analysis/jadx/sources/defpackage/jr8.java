package defpackage;

import androidx.compose.foundation.text.input.internal.selection.TextFieldMagnifierNodeImpl28;
import androidx.compose.material3.TooltipScope;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.unit.Density;
import java.util.Set;
import yads.e42;
import yads.te;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jr8 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ jr8(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return TextFieldMagnifierNodeImpl28.magnifierNode$lambda$0((TextFieldMagnifierNodeImpl28) obj2, (Density) obj);
            case 1:
                return ((TooltipScope) obj2).obtainAnchorBounds((MeasureScope) obj);
            default:
                return e42.a((Set) obj2, (te) obj);
        }
    }
}
