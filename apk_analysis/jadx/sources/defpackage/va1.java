package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.presentation.tasks.checkbox.presenter.CheckboxTaskDetailsPresenter;
import com.warefly.checkscan.tasks.databinding.ItemRvPromocodeTaskButtonBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class va1 extends vd9<xa1, ItemRvPromocodeTaskButtonBinding> {
    public final CheckboxTaskDetailsPresenter b;

    public interface a {
        void onActivateClicked(boolean z);

        void onCheckRewardClicked();
    }

    public static final /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[xa1.a.values().length];
            try {
                iArr[xa1.a.Activate.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[xa1.a.Reward.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public va1(CheckboxTaskDetailsPresenter checkboxTaskDetailsPresenter) {
        super(ua1.c);
        this.b = checkboxTaskDetailsPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof xa1;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, xa1 xa1Var) {
        ItemRvPromocodeTaskButtonBinding itemRvPromocodeTaskButtonBinding = (ItemRvPromocodeTaskButtonBinding) viewBinding;
        xa1 xa1Var2 = xa1Var;
        itemRvPromocodeTaskButtonBinding.getClass();
        itemRvPromocodeTaskButtonBinding.btnClaimReward.setText(xa1Var2.b);
        itemRvPromocodeTaskButtonBinding.btnClaimReward.setLoading(xa1Var2.d);
        itemRvPromocodeTaskButtonBinding.btnClaimReward.setEnabled(xa1Var2.c);
        LoadingButton loadingButton = itemRvPromocodeTaskButtonBinding.btnClaimReward;
        loadingButton.getClass();
        loadingButton.setOnClickListener(new lb7(new wa1(xa1Var2, this)));
    }
}
