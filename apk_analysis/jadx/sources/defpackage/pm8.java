package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.airbnb.lottie.LottieAnimationView;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.tasks.databinding.ItemRvTaskDailyCardBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class pm8 extends vd9<rm8, ItemRvTaskDailyCardBinding> {
    public final b b;
    public final fe c;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvTaskDailyCardBinding> {
        public static final a c = new a(3, ItemRvTaskDailyCardBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDailyCardBinding;", 0);

        @Override // defpackage.dm3
        public final ItemRvTaskDailyCardBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemRvTaskDailyCardBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public interface b {
        void onDailyTaskCardClicked(int i);

        void sendDailyTaskShownEvent();
    }

    public pm8(b bVar, fe feVar) {
        super(a.c);
        this.b = bVar;
        this.c = feVar;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof rm8;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, rm8 rm8Var) {
        ItemRvTaskDailyCardBinding itemRvTaskDailyCardBinding = (ItemRvTaskDailyCardBinding) viewBinding;
        rm8 rm8Var2 = rm8Var;
        itemRvTaskDailyCardBinding.getClass();
        boolean z = rm8Var2.f;
        String str = rm8Var2.d;
        this.c.sendTaskShownEvent(rm8Var2.a);
        this.b.sendDailyTaskShownEvent();
        MaterialCardView root = itemRvTaskDailyCardBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new qm8(this, rm8Var2)));
        ((h37) com.bumptech.glide.a.e(itemRvTaskDailyCardBinding.getRoot()).h(rm8Var2.b).r(is7.a(ContextCompat.getColor(itemRvTaskDailyCardBinding.getRoot().getContext(), R.color.almostThereMoon)))).L(itemRvTaskDailyCardBinding.ivLogo);
        itemRvTaskDailyCardBinding.tvTitle.setText(rm8Var2.c);
        String str2 = rm8Var2.e;
        if (str2 != null) {
            ImageView imageView = itemRvTaskDailyCardBinding.ivBadgeIcon;
            imageView.getClass();
            imageView.setVisibility(4);
            LottieAnimationView lottieAnimationView = itemRvTaskDailyCardBinding.ivBadgeAnimatedIcon;
            lottieAnimationView.getClass();
            lottieAnimationView.setVisibility(0);
            itemRvTaskDailyCardBinding.ivBadgeAnimatedIcon.setAnimationFromUrl(str2);
            itemRvTaskDailyCardBinding.ivBadgeAnimatedIcon.setFailureListener(new om8());
        } else if (str != null) {
            LottieAnimationView lottieAnimationView2 = itemRvTaskDailyCardBinding.ivBadgeAnimatedIcon;
            lottieAnimationView2.getClass();
            lottieAnimationView2.setVisibility(4);
            ImageView imageView2 = itemRvTaskDailyCardBinding.ivBadgeIcon;
            imageView2.getClass();
            imageView2.setVisibility(0);
            com.bumptech.glide.a.e(itemRvTaskDailyCardBinding.getRoot()).h(str).L(itemRvTaskDailyCardBinding.ivBadgeIcon);
        }
        View view = itemRvTaskDailyCardBinding.fadeBackground;
        view.getClass();
        view.setVisibility(z ? 0 : 8);
        com.bumptech.glide.a.e(itemRvTaskDailyCardBinding.getRoot()).f(Integer.valueOf(z ? R.drawable.ic_circle_tick : R.drawable.ic_right)).L(itemRvTaskDailyCardBinding.btnArrow);
    }
}
