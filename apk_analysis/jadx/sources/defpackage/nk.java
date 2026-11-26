package defpackage;

import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider;
import androidx.compose.foundation.text.input.internal.CoreTextFieldSemanticsModifierNode;
import androidx.compose.material3.AppBarKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.datastore.core.CorruptionException;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.datastorage.JavaDataStorage;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class nk implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ nk(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return AndroidTextContextMenuToolbarProvider.onPositionChange$lambda$0((AndroidTextContextMenuToolbarProvider) obj2, obj);
            case 1:
                return AppBarKt.TopAppBarLayout_lyUyIHI$lambda$51$lambda$43$lambda$42((ll3) obj2, (GraphicsLayerScope) obj);
            case 2:
                return Boolean.valueOf(CoreTextFieldSemanticsModifierNode.applySemantics$lambda$2((CoreTextFieldSemanticsModifierNode) obj2, (List) obj));
            case 3:
                return JavaDataStorage.dataStore_delegate$lambda$0((JavaDataStorage) obj2, (CorruptionException) obj);
            default:
                da6 da6Var = (da6) obj2;
                al1 al1Var = (al1) obj;
                al1Var.getClass();
                al1Var.a(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, ca8.b);
                al1Var.a("value", rp7.f("kotlinx.serialization.Polymorphic<" + da6Var.a.f() + '>', sp7.a.a, new mp7[0]));
                kx2 kx2Var = da6Var.b;
                kx2Var.getClass();
                al1Var.b = kx2Var;
                return j59.a;
        }
    }
}
