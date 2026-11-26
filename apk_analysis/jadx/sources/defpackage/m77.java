package defpackage;

import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.presentation.tasks.rewardedMultiTask.presenter.RewardedMultiTaskDetailsPresenter;
import com.warefly.checkscan.tasks.databinding.ItemRvRewardedMultiTaskStepBinding;
import com.warefly.checkscan.tasks.presentation.rewardedMultiTasks.adapter.RewardedMultiTaskStepDelegateAdapter$onCreated$1$1;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class m77 extends vd9<o77, ItemRvRewardedMultiTaskStepBinding> {
    public final RewardedMultiTaskDetailsPresenter b;
    public final RewardedMultiTaskDetailsPresenter c;

    public interface a {
        void onRewardedSubTaskClaim(int i);

        void onRewardedSubTaskClicked(int i);
    }

    public m77(RewardedMultiTaskDetailsPresenter rewardedMultiTaskDetailsPresenter, RewardedMultiTaskDetailsPresenter rewardedMultiTaskDetailsPresenter2) {
        super(l77.c);
        this.b = rewardedMultiTaskDetailsPresenter;
        this.c = rewardedMultiTaskDetailsPresenter2;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof o77;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, o77 o77Var) {
        LoadingButton loadingButton;
        LoadingButton loadingButton2;
        ItemRvRewardedMultiTaskStepBinding itemRvRewardedMultiTaskStepBinding = (ItemRvRewardedMultiTaskStepBinding) viewBinding;
        o77 o77Var2 = o77Var;
        itemRvRewardedMultiTaskStepBinding.getClass();
        ArrayList arrayList = o77Var2.f;
        itemRvRewardedMultiTaskStepBinding.tvTitle.setText(o77Var2.b);
        if (o77Var2.c) {
            com.bumptech.glide.a.d(itemRvRewardedMultiTaskStepBinding.getRoot().getContext()).f(Integer.valueOf(R.drawable.ic_circle_tick)).L(itemRvRewardedMultiTaskStepBinding.ivTick);
            itemRvRewardedMultiTaskStepBinding.stepContainer.setBackground(ContextCompat.getDrawable(itemRvRewardedMultiTaskStepBinding.getRoot().getContext(), R.drawable.background_success10_radius_16_outlined));
        } else {
            com.bumptech.glide.a.d(itemRvRewardedMultiTaskStepBinding.getRoot().getContext()).f(Integer.valueOf(R.drawable.ic_empty_tick)).L(itemRvRewardedMultiTaskStepBinding.ivTick);
            itemRvRewardedMultiTaskStepBinding.stepContainer.setBackground(ContextCompat.getDrawable(itemRvRewardedMultiTaskStepBinding.getRoot().getContext(), R.drawable.background_primary10_16_outlined));
        }
        o77.a aVar = o77Var2.d;
        TextView textView = null;
        if (aVar != null) {
            boolean z = aVar.c;
            loadingButton = itemRvRewardedMultiTaskStepBinding.btnAction;
            loadingButton.setText(aVar.a);
            loadingButton.setVisibility(0);
            loadingButton.setEnabled(z);
            if (z) {
                loadingButton.setLoading(aVar.d);
            }
            loadingButton.setOnClickListener(new lb7(new m90(3, this, o77Var2)));
        } else {
            loadingButton = null;
        }
        if (loadingButton == null) {
            LoadingButton loadingButton3 = itemRvRewardedMultiTaskStepBinding.btnAction;
            loadingButton3.getClass();
            loadingButton3.setVisibility(8);
        }
        o77.a aVar2 = o77Var2.e;
        if (aVar2 != null) {
            boolean z2 = aVar2.c;
            loadingButton2 = itemRvRewardedMultiTaskStepBinding.btnClaim;
            loadingButton2.setText(aVar2.a);
            loadingButton2.setVisibility(0);
            loadingButton2.setEnabled(z2);
            if (z2) {
                loadingButton2.setLoading(aVar2.d);
            }
            loadingButton2.setOnClickListener(new lb7(new n90(1, this, o77Var2)));
        } else {
            loadingButton2 = null;
        }
        if (loadingButton2 == null) {
            LoadingButton loadingButton4 = itemRvRewardedMultiTaskStepBinding.btnClaim;
            loadingButton4.getClass();
            loadingButton4.setVisibility(8);
        }
        RecyclerView.Adapter adapter = itemRvRewardedMultiTaskStepBinding.rvBadges.getAdapter();
        eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
        if (eu1Var != null) {
            eu1Var.submitList(arrayList);
        }
        RecyclerView recyclerView = itemRvRewardedMultiTaskStepBinding.rvBadges;
        recyclerView.getClass();
        recyclerView.setVisibility(0);
        String str = o77Var2.g;
        if (str != null) {
            textView = itemRvRewardedMultiTaskStepBinding.tvRewardSubtitle;
            textView.setText(str);
            textView.setVisibility(0);
        }
        if (textView == null) {
            TextView textView2 = itemRvRewardedMultiTaskStepBinding.tvRewardSubtitle;
            textView2.getClass();
            textView2.setVisibility(8);
        }
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvRewardedMultiTaskStepBinding itemRvRewardedMultiTaskStepBinding = (ItemRvRewardedMultiTaskStepBinding) viewBinding;
        itemRvRewardedMultiTaskStepBinding.getClass();
        RecyclerView recyclerView = itemRvRewardedMultiTaskStepBinding.rvBadges;
        recyclerView.setAdapter(new eu1(new e77(this.c)));
        recyclerView.setLayoutManager(new RewardedMultiTaskStepDelegateAdapter$onCreated$1$1(itemRvRewardedMultiTaskStepBinding.getRoot().getContext(), 1, false));
        recyclerView.addItemDecoration(new n77());
        recyclerView.setItemAnimator(null);
    }
}
