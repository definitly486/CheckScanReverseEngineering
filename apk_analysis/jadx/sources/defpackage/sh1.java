package defpackage;

import android.view.View;
import androidx.navigation.NavController;
import androidx.navigation.ui.AppBarConfiguration;
import androidx.navigation.ui.NavigationUI;
import com.warefly.checkscan.presentation.cheques.view.ChequesFragment;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class sh1 implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ sh1(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ze4<Object>[] ze4VarArr = ChequesFragment.q;
                ((ChequesFragment) obj2).o().showOrdAdDialog((b06) obj);
                break;
            default:
                NavigationUI.navigateUp((NavController) obj2, (AppBarConfiguration) obj);
                break;
        }
    }
}
