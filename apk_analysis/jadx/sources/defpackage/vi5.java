package defpackage;

import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.foundation.text.selection.SelectionManagerKt;
import androidx.navigation.fragment.NavHostFragment;
import java.util.ArrayList;
import yads.gf0;
import yads.nq0;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class vi5 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ vi5(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        ArrayList arrayList;
        df4<?>[] df4VarArrTypeParametersSerializers;
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return NavHostFragment.navHostController_delegate$lambda$6((NavHostFragment) obj);
            case 1:
                dp3<?> dp3Var = ((s96) obj).b;
                if (dp3Var == null || (df4VarArrTypeParametersSerializers = dp3Var.typeParametersSerializers()) == null) {
                    arrayList = null;
                } else {
                    arrayList = new ArrayList(df4VarArrTypeParametersSerializers.length);
                    for (df4<?> df4Var : df4VarArrTypeParametersSerializers) {
                        arrayList.add(df4Var.getDescriptor());
                    }
                }
                return m96.d(arrayList);
            case 2:
                return SelectionManagerKt.contextMenuBuilder$lambda$0$0((SelectionManager) obj);
            case 3:
                return gf0.r((gf0) obj);
            default:
                return nq0.A((nq0) obj);
        }
    }
}
