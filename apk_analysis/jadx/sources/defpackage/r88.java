package defpackage;

import android.graphics.Color;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.bonuses.databinding.ItemRvStepActionBinding;
import com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter;
import kotlin.TypeCastException;

/* JADX INFO: loaded from: classes.dex */
public final class r88 extends vd9<t88, ItemRvStepActionBinding> {
    public final BonusesMainNewPresenter b;

    /* JADX INFO: loaded from: classes5.dex */
    public interface a {
        void onStepActionClicked(boolean z, String str, String str2);
    }

    public r88(BonusesMainNewPresenter bonusesMainNewPresenter) {
        super(q88.c);
        this.b = bonusesMainNewPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof t88;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, t88 t88Var) {
        ItemRvStepActionBinding itemRvStepActionBinding = (ItemRvStepActionBinding) viewBinding;
        t88 t88Var2 = t88Var;
        itemRvStepActionBinding.getClass();
        t88.b bVar = t88Var2.e;
        itemRvStepActionBinding.tvTitle.setText(t88Var2.a);
        itemRvStepActionBinding.tvSubtitle.setText(t88Var2.b);
        TextView textView = itemRvStepActionBinding.tvStep;
        t88.a aVar = t88Var2.d;
        textView.setText(aVar.f);
        try {
            itemRvStepActionBinding.tvStep.setTextColor(Color.parseColor(aVar.b));
            j59 j59Var = j59.a;
        } catch (Throwable unused) {
        }
        com.bumptech.glide.a.d(itemRvStepActionBinding.getRoot().getContext()).h(aVar.d).L(itemRvStepActionBinding.ivBackground);
        com.bumptech.glide.a.d(itemRvStepActionBinding.getRoot().getContext()).h(aVar.e).L(itemRvStepActionBinding.ivIcon);
        ImageView imageView = itemRvStepActionBinding.ivArrow;
        imageView.getClass();
        int i = 0;
        imageView.setVisibility(aVar.g ? 0 : 8);
        LinearLayout linearLayout = itemRvStepActionBinding.llBottom;
        if (bVar != null) {
            linearLayout.getClass();
            linearLayout.setVisibility(0);
            itemRvStepActionBinding.tvBottomTitle.setText(bVar.b);
            com.bumptech.glide.a.d(itemRvStepActionBinding.getRoot().getContext()).h(bVar.a).L(itemRvStepActionBinding.ivBottomImage);
            LinearLayout linearLayout2 = itemRvStepActionBinding.llCard;
            linearLayout2.getClass();
            ViewGroup.LayoutParams layoutParams = linearLayout2.getLayoutParams();
            if (layoutParams == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            }
            layoutParams.height = pl2.e(120);
            linearLayout2.setLayoutParams(layoutParams);
        } else {
            linearLayout.getClass();
            linearLayout.setVisibility(8);
            LinearLayout linearLayout3 = itemRvStepActionBinding.llCard;
            linearLayout3.getClass();
            ViewGroup.LayoutParams layoutParams2 = linearLayout3.getLayoutParams();
            if (layoutParams2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            }
            layoutParams2.height = pl2.e(92);
            linearLayout3.setLayoutParams(layoutParams2);
        }
        ConstraintLayout root = itemRvStepActionBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new s88(this, t88Var2, i)));
    }
}
