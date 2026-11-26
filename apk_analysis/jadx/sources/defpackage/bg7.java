package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import androidx.navigation.ActionOnlyNavDirections;
import com.warefly.checkscan.R;
import com.warefly.checkscan.presentation.cheques.exportCheques.view.ChequesExportFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class bg7 implements lk3 {
    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        ChequesExportFragment chequesExportFragment = new ChequesExportFragment();
        chequesExportFragment.setArguments(new ActionOnlyNavDirections(R.id.goToExportCheques).getArguments());
        return chequesExportFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return bg7.class.getName();
    }
}
