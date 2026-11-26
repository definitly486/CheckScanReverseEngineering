package defpackage;

import android.content.Context;
import androidx.compose.foundation.text.input.internal.CoreTextFieldSemanticsModifierNode;
import androidx.compose.ui.text.AnnotatedString;
import com.google.firebase.datastorage.JavaDataStorage;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d22 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ d22(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(CoreTextFieldSemanticsModifierNode.applySemantics$lambda$3((CoreTextFieldSemanticsModifierNode) obj2, (AnnotatedString) obj));
            default:
                return JavaDataStorage.dataStore_delegate$lambda$1((JavaDataStorage) obj2, (Context) obj);
        }
    }
}
