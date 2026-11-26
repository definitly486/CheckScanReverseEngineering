package defpackage;

import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.presentation.tasks.multiTaskDetails.presenter.MultiTaskDetailsPresenter;
import com.warefly.checkscan.tasks.databinding.ItemRvMultiTaskStepBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class zf5 extends vd9<bg5, ItemRvMultiTaskStepBinding> {
    public final MultiTaskDetailsPresenter b;

    public interface a {
        void onSubTaskClicked(int i);
    }

    public zf5(MultiTaskDetailsPresenter multiTaskDetailsPresenter) {
        super(yf5.c);
        this.b = multiTaskDetailsPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof bg5;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, bg5 bg5Var) {
        ItemRvMultiTaskStepBinding itemRvMultiTaskStepBinding = (ItemRvMultiTaskStepBinding) viewBinding;
        bg5 bg5Var2 = bg5Var;
        itemRvMultiTaskStepBinding.getClass();
        itemRvMultiTaskStepBinding.tvTitle.setText(bg5Var2.b);
        if (bg5Var2.c) {
            com.bumptech.glide.a.d(itemRvMultiTaskStepBinding.getRoot().getContext()).f(Integer.valueOf(R.drawable.ic_circle_tick)).L(itemRvMultiTaskStepBinding.ivTick);
            itemRvMultiTaskStepBinding.stepContainer.setBackground(ContextCompat.getDrawable(itemRvMultiTaskStepBinding.getRoot().getContext(), R.drawable.background_success10_radius_16_outlined));
        } else {
            com.bumptech.glide.a.d(itemRvMultiTaskStepBinding.getRoot().getContext()).f(Integer.valueOf(R.drawable.ic_empty_tick)).L(itemRvMultiTaskStepBinding.ivTick);
            itemRvMultiTaskStepBinding.stepContainer.setBackground(ContextCompat.getDrawable(itemRvMultiTaskStepBinding.getRoot().getContext(), R.drawable.background_primary10_16_outlined));
        }
        bg5.a aVar = bg5Var2.d;
        if (aVar != null) {
            boolean z = aVar.c;
            LoadingButton loadingButton = itemRvMultiTaskStepBinding.btnAction;
            loadingButton.setText(aVar.a);
            int i = 0;
            loadingButton.setVisibility(0);
            loadingButton.setEnabled(z);
            if (z) {
                loadingButton.setLoading(aVar.d);
            }
            loadingButton.setOnClickListener(new lb7(new ag5(this, bg5Var2, i)));
        }
    }
}
