package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.presentation.tasks.promocode.presenter.PromocodeTaskDetailsPresenter;
import com.warefly.checkscan.tasks.databinding.ItemRvPromocodeTaskButtonBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class pq6 extends vd9<qq6, ItemRvPromocodeTaskButtonBinding> {
    public final PromocodeTaskDetailsPresenter b;

    /* JADX INFO: loaded from: classes.dex */
    public interface a {
        void onActivatePromocodeClicked(String str, int i, boolean z);

        void onCheckRewardClicked();
    }

    public static final /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[qq6.a.values().length];
            try {
                iArr[qq6.a.Activate.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[qq6.a.Reward.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public pq6(PromocodeTaskDetailsPresenter promocodeTaskDetailsPresenter) {
        super(oq6.c);
        this.b = promocodeTaskDetailsPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof qq6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, qq6 qq6Var) {
        ItemRvPromocodeTaskButtonBinding itemRvPromocodeTaskButtonBinding = (ItemRvPromocodeTaskButtonBinding) viewBinding;
        qq6 qq6Var2 = qq6Var;
        itemRvPromocodeTaskButtonBinding.getClass();
        itemRvPromocodeTaskButtonBinding.btnClaimReward.setText(qq6Var2.d);
        itemRvPromocodeTaskButtonBinding.btnClaimReward.setLoading(qq6Var2.f);
        itemRvPromocodeTaskButtonBinding.btnClaimReward.setEnabled(qq6Var2.e);
        LoadingButton loadingButton = itemRvPromocodeTaskButtonBinding.btnClaimReward;
        loadingButton.getClass();
        loadingButton.setOnClickListener(new lb7(new so0(2, qq6Var2, this)));
    }
}
