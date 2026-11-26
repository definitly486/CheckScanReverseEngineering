package defpackage;

import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.presentation.tasks.checkboxSteps.presenter.CheckboxTaskStepsDetailsPresenter;
import com.warefly.checkscan.tasks.databinding.ItemRvCheckboxTaskStepsCheckboxBlockBinding;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class rb1 extends vd9<sb1, ItemRvCheckboxTaskStepsCheckboxBlockBinding> {
    public final CheckboxTaskStepsDetailsPresenter b;
    public final CheckboxTaskStepsDetailsPresenter c;

    public interface a {
        void onCheckboxButtonClicked(int i, boolean z);
    }

    public rb1(CheckboxTaskStepsDetailsPresenter checkboxTaskStepsDetailsPresenter, CheckboxTaskStepsDetailsPresenter checkboxTaskStepsDetailsPresenter2) {
        super(qb1.c);
        this.b = checkboxTaskStepsDetailsPresenter;
        this.c = checkboxTaskStepsDetailsPresenter2;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof sb1;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, sb1 sb1Var) {
        boolean z;
        ItemRvCheckboxTaskStepsCheckboxBlockBinding itemRvCheckboxTaskStepsCheckboxBlockBinding = (ItemRvCheckboxTaskStepsCheckboxBlockBinding) viewBinding;
        sb1 sb1Var2 = sb1Var;
        itemRvCheckboxTaskStepsCheckboxBlockBinding.getClass();
        String str = sb1Var2.f;
        List<fc1> list = sb1Var2.c;
        sb1.a aVar = sb1Var2.e;
        itemRvCheckboxTaskStepsCheckboxBlockBinding.tvTitle.setText(sb1Var2.a);
        RecyclerView.Adapter adapter = itemRvCheckboxTaskStepsCheckboxBlockBinding.rvContent.getAdapter();
        eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
        LoadingButton loadingButton = itemRvCheckboxTaskStepsCheckboxBlockBinding.btnAction;
        loadingButton.getClass();
        loadingButton.setVisibility(aVar.b ? 0 : 8);
        itemRvCheckboxTaskStepsCheckboxBlockBinding.btnAction.setText(aVar.a);
        itemRvCheckboxTaskStepsCheckboxBlockBinding.btnAction.setLoading(aVar.d);
        LoadingButton loadingButton2 = itemRvCheckboxTaskStepsCheckboxBlockBinding.btnAction;
        int i = 1;
        if (aVar.c) {
            List<fc1> list2 = list;
            if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                Iterator<T> it = list2.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (!((fc1) it.next()).d) {
                            z = false;
                        }
                    }
                }
            }
            z = true;
        } else {
            z = false;
        }
        loadingButton2.setEnabled(z);
        LoadingButton loadingButton3 = itemRvCheckboxTaskStepsCheckboxBlockBinding.btnAction;
        loadingButton3.getClass();
        loadingButton3.setOnClickListener(new lb7(new j60(this, sb1Var2, i)));
        TextView textView = itemRvCheckboxTaskStepsCheckboxBlockBinding.tvDecription;
        textView.getClass();
        textView.setVisibility(str != null ? 0 : 8);
        itemRvCheckboxTaskStepsCheckboxBlockBinding.tvDecription.setText(str);
        if (sb1Var2.d) {
            com.bumptech.glide.a.d(itemRvCheckboxTaskStepsCheckboxBlockBinding.getRoot().getContext()).f(Integer.valueOf(R.drawable.ic_circle_tick)).L(itemRvCheckboxTaskStepsCheckboxBlockBinding.ivTick);
            itemRvCheckboxTaskStepsCheckboxBlockBinding.stepContainer.setBackground(ContextCompat.getDrawable(itemRvCheckboxTaskStepsCheckboxBlockBinding.getRoot().getContext(), R.drawable.background_success10_radius_16_outlined));
        } else {
            com.bumptech.glide.a.d(itemRvCheckboxTaskStepsCheckboxBlockBinding.getRoot().getContext()).f(Integer.valueOf(R.drawable.ic_empty_tick)).L(itemRvCheckboxTaskStepsCheckboxBlockBinding.ivTick);
            itemRvCheckboxTaskStepsCheckboxBlockBinding.stepContainer.setBackground(ContextCompat.getDrawable(itemRvCheckboxTaskStepsCheckboxBlockBinding.getRoot().getContext(), R.drawable.background_primary10_16_outlined));
        }
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvCheckboxTaskStepsCheckboxBlockBinding itemRvCheckboxTaskStepsCheckboxBlockBinding = (ItemRvCheckboxTaskStepsCheckboxBlockBinding) viewBinding;
        itemRvCheckboxTaskStepsCheckboxBlockBinding.getClass();
        RecyclerView recyclerView = itemRvCheckboxTaskStepsCheckboxBlockBinding.rvContent;
        recyclerView.setAdapter(new eu1(new ub1(this.b)));
        recyclerView.setLayoutManager(new LinearLayoutManager(itemRvCheckboxTaskStepsCheckboxBlockBinding.getRoot().getContext(), 1, false));
        recyclerView.setItemAnimator(null);
    }
}
