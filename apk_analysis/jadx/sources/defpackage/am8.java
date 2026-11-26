package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.tasks.databinding.ItemRvTaskCardBinding;
import com.warefly.checkscan.tasks.presentation.flows.TasksReason;
import com.warefly.checkscan.tasks.presentation.tasks.adapter.TaskCardDelegateAdapter$showBadges$1$2;

/* JADX INFO: loaded from: classes5.dex */
public final class am8 extends vd9<kz7, ItemRvTaskCardBinding> {
    public final b b;
    public final fe c;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvTaskCardBinding> {
        public static final a c = new a(3, ItemRvTaskCardBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;", 0);

        @Override // defpackage.dm3
        public final ItemRvTaskCardBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemRvTaskCardBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public interface b {
        void onClaimReward(int i);

        void onTaskClicked(int i, TasksReason tasksReason, boolean z);
    }

    public am8(b bVar, fe feVar) {
        super(a.c);
        this.b = bVar;
        this.c = feVar;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof kz7;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, kz7 kz7Var) {
        ItemRvTaskCardBinding itemRvTaskCardBinding = (ItemRvTaskCardBinding) viewBinding;
        kz7 kz7Var2 = kz7Var;
        itemRvTaskCardBinding.getClass();
        String str = kz7Var2.d;
        boolean z = kz7Var2.f;
        this.c.sendTaskShownEvent(kz7Var2.a);
        LoadingButton loadingButton = itemRvTaskCardBinding.btnClaimReward;
        loadingButton.getClass();
        loadingButton.setVisibility((!kz7Var2.h || z) ? 8 : 0);
        itemRvTaskCardBinding.btnClaimReward.setLoading(kz7Var2.i);
        LoadingButton loadingButton2 = itemRvTaskCardBinding.btnClaimReward;
        loadingButton2.getClass();
        int i = 1;
        loadingButton2.setOnClickListener(new lb7(new zf8(this, kz7Var2, i)));
        MaterialCardView root = itemRvTaskCardBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new ag5(this, kz7Var2, i)));
        View view = itemRvTaskCardBinding.clickableRv;
        view.getClass();
        view.setOnClickListener(new lb7(new bm8(this, kz7Var2)));
        ((h37) com.bumptech.glide.a.e(itemRvTaskCardBinding.getRoot()).h(kz7Var2.b).r(is7.a(ContextCompat.getColor(itemRvTaskCardBinding.getRoot().getContext(), R.color.almostThereMoon)))).L(itemRvTaskCardBinding.ivLogo);
        itemRvTaskCardBinding.tvTitle.setText(kz7Var2.c);
        TextView textView = itemRvTaskCardBinding.tvSubtitle;
        if (str != null) {
            textView.getClass();
            textView.setVisibility(0);
            textView.setText(str);
        } else {
            textView.getClass();
            textView.setVisibility(8);
        }
        RecyclerView.Adapter adapter = itemRvTaskCardBinding.rvBadges.getAdapter();
        eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
        if (eu1Var != null) {
            eu1Var.submitList(kz7Var2.e);
        }
        View view2 = itemRvTaskCardBinding.fadeBackground;
        view2.getClass();
        view2.setVisibility(z ? 0 : 8);
        com.bumptech.glide.a.e(itemRvTaskCardBinding.getRoot()).f(Integer.valueOf(z ? R.drawable.ic_circle_tick : R.drawable.ic_right)).L(itemRvTaskCardBinding.btnArrow);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvTaskCardBinding itemRvTaskCardBinding = (ItemRvTaskCardBinding) viewBinding;
        itemRvTaskCardBinding.getClass();
        RecyclerView recyclerView = itemRvTaskCardBinding.rvBadges;
        recyclerView.getClass();
        ViewGroup.LayoutParams layoutParams = recyclerView.getLayoutParams();
        if (layoutParams == null) {
            o2.d("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            return;
        }
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
        ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = pl2.e(0);
        recyclerView.setLayoutParams(layoutParams2);
        recyclerView.setAdapter(new eu1(new fg3(eg3.c)));
        TaskCardDelegateAdapter$showBadges$1$2 taskCardDelegateAdapter$showBadges$1$2 = new TaskCardDelegateAdapter$showBadges$1$2(recyclerView.getContext());
        taskCardDelegateAdapter$showBadges$1$2.B(0);
        taskCardDelegateAdapter$showBadges$1$2.D(0);
        recyclerView.setLayoutManager(taskCardDelegateAdapter$showBadges$1$2);
        recyclerView.addItemDecoration(new cm8());
        recyclerView.setItemAnimator(null);
    }
}
