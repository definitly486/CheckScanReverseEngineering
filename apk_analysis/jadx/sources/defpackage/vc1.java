package defpackage;

import android.view.View;
import androidx.fragment.app.FragmentActivity;
import com.warefly.checkscan.presentation.cheques.view.MoreTagsDialog;
import com.warefly.checkscan.presentation.qrHand.presenter.QrHandPresenter;
import com.warefly.checkscan.presentation.statistics.sectionStatistics.view.StatisticsPageFragment;
import java.util.ArrayList;
import java.util.Date;

/* JADX INFO: loaded from: classes5.dex */
public final class vc1 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vc1(uh4 uh4Var, vh4 vh4Var) {
        super(1);
        this.f = 1;
        this.g = uh4Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                Long l = (Long) obj;
                l.getClass();
                ((QrHandPresenter) obj2).onDateSelected(new Date(l.longValue()));
                return j59.a;
            case 1:
                ((View) obj).getClass();
                ((uh4) obj2).b.onLandingButtonClicked("checkscan://tasks");
                return j59.a;
            case 2:
                ((View) obj).getClass();
                ((xl6) obj2).b.onLogoutClicked();
                return j59.a;
            case 3:
                if (((Number) obj).intValue() == -1) {
                    StatisticsPageFragment statisticsPageFragment = (StatisticsPageFragment) obj2;
                    ArrayList<dk8.a> arrayList = statisticsPageFragment.l;
                    MoreTagsDialog moreTagsDialog = statisticsPageFragment.m;
                    if (moreTagsDialog != null) {
                        moreTagsDialog.dismiss();
                    }
                    FragmentActivity fragmentActivityRequireActivity = statisticsPageFragment.requireActivity();
                    fragmentActivityRequireActivity.getClass();
                    MoreTagsDialog moreTagsDialog2 = new MoreTagsDialog(fragmentActivityRequireActivity, arrayList);
                    statisticsPageFragment.m = moreTagsDialog2;
                    moreTagsDialog2.show();
                }
                return j59.a;
            default:
                gz8 gz8Var = (gz8) obj;
                gz8Var.getClass();
                ((nz8) obj2).getClass();
                return new fz8(aa4.e(gz8Var.c(), "SUCCESS") ? fz8.a.Success : fz8.a.Fail, gz8Var.a(), gz8Var.e(), gz8Var.d(), gz8Var.b());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ vc1(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }
}
