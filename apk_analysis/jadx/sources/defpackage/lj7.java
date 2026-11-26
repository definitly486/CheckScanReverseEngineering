package defpackage;

import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionStateKt;
import androidx.compose.material3.SearchBarDefaults;
import androidx.compose.material3.SearchBarState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import yads.u66;
import yads.vq0;
import yads.wy0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lj7 implements nl3 {
    public final /* synthetic */ int b = 0;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ lj7(ll3 ll3Var, TextFieldSelectionState textFieldSelectionState, ll3 ll3Var2) {
        this.c = ll3Var;
        this.d = textFieldSelectionState;
        this.e = ll3Var2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return SearchBarDefaults.InputField$lambda$11$lambda$10((String) this.c, (SearchBarState) this.e, (String) this.d, (SemanticsPropertyReceiver) obj);
            case 1:
                return TextFieldSelectionStateKt.defaultDetectTextFieldTapGestures$lambda$0((ll3) this.c, (TextFieldSelectionState) this.d, (ll3) this.e, (Offset) obj);
            default:
                return wy0.a((vq0) this.d, this.e, (String) this.c, (u66) obj);
        }
    }

    public /* synthetic */ lj7(String str, SearchBarState searchBarState, String str2) {
        this.c = str;
        this.e = searchBarState;
        this.d = str2;
    }

    public /* synthetic */ lj7(vq0 vq0Var, Object obj, String str) {
        this.d = vq0Var;
        this.e = obj;
        this.c = str;
    }
}
