package defpackage;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter;
import com.warefly.checkscan.tasks.databinding.ItemRvTaskDailyBannerBinding;
import kotlin.TypeCastException;

/* JADX INFO: loaded from: classes5.dex */
public final class mm8 extends vd9<nm8, ItemRvTaskDailyBannerBinding> {
    public final TasksPresenter b;

    public interface a {
        void onDailyBannerClicked(int i);
    }

    public mm8(TasksPresenter tasksPresenter) {
        super(lm8.c);
        this.b = tasksPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof nm8;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, nm8 nm8Var) {
        ItemRvTaskDailyBannerBinding itemRvTaskDailyBannerBinding = (ItemRvTaskDailyBannerBinding) viewBinding;
        nm8 nm8Var2 = nm8Var;
        itemRvTaskDailyBannerBinding.getClass();
        itemRvTaskDailyBannerBinding.getRoot().setTag(Integer.valueOf(nm8Var2.a));
        itemRvTaskDailyBannerBinding.tvTitle.setText(nm8Var2.c);
        ImageView imageView = itemRvTaskDailyBannerBinding.ivArrow;
        imageView.getClass();
        boolean z = nm8Var2.d;
        imageView.setVisibility(!z ? 0 : 8);
        ImageView imageView2 = itemRvTaskDailyBannerBinding.ivIcon;
        if (z) {
            imageView2.getClass();
            ViewGroup.LayoutParams layoutParams = imageView2.getLayoutParams();
            if (layoutParams == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            }
            layoutParams.width = pl2.e(24);
            layoutParams.height = pl2.e(24);
            imageView2.setLayoutParams(layoutParams);
            com.bumptech.glide.a.e(itemRvTaskDailyBannerBinding.getRoot()).f(Integer.valueOf(R.drawable.ic_circle_tick)).L(itemRvTaskDailyBannerBinding.ivIcon);
        } else {
            imageView2.getClass();
            ViewGroup.LayoutParams layoutParams2 = imageView2.getLayoutParams();
            if (layoutParams2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            }
            layoutParams2.width = pl2.e(12);
            layoutParams2.height = pl2.e(12);
            imageView2.setLayoutParams(layoutParams2);
            Context context = itemRvTaskDailyBannerBinding.getRoot().getContext();
            context.getClass();
            ImageView imageView3 = itemRvTaskDailyBannerBinding.ivIcon;
            imageView3.getClass();
            pm.b(context, R.drawable.circle_pulse_animated, imageView3);
        }
        ((h37) com.bumptech.glide.a.d(itemRvTaskDailyBannerBinding.getRoot().getContext()).h(nm8Var2.b).r(is7.b(pl2.d(16.0f), ContextCompat.getColor(itemRvTaskDailyBannerBinding.getRoot().getContext(), R.color.almostThereMoon)))).L(itemRvTaskDailyBannerBinding.ivBanner);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvTaskDailyBannerBinding itemRvTaskDailyBannerBinding = (ItemRvTaskDailyBannerBinding) viewBinding;
        itemRvTaskDailyBannerBinding.getClass();
        MaterialCardView root = itemRvTaskDailyBannerBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new tk4(this, itemRvTaskDailyBannerBinding, 1)));
    }
}
