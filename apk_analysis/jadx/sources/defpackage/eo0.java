package defpackage;

import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter;
import com.warefly.checkscan.presentation.tasks.main.view.TasksFragment;
import com.warefly.checkscan.tasks.databinding.ItemBonusPointsBinding;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class eo0 extends f32<fo0, ItemBonusPointsBinding> {
    public final TasksPresenter c;
    public final TasksFragment.c d;

    public interface a {
        void onBonusPointsClaimClicked(int i, fo0.c cVar);
    }

    public static final /* synthetic */ class b {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[fo0.c.values().length];
            try {
                iArr[fo0.c.AD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[fo0.c.DAILY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
            int[] iArr2 = new int[fo0.b.values().length];
            try {
                iArr2[fo0.b.AVAILABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[fo0.b.COMPLETED.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            b = iArr2;
        }
    }

    public eo0(TasksPresenter tasksPresenter, TasksFragment.c cVar, y22 y22Var) {
        super(y22Var, do0.c);
        this.c = tasksPresenter;
        this.d = cVar;
    }

    @Override // defpackage.f32
    public final y68 g(fo0 fo0Var) {
        return this.d.invoke(Integer.valueOf(fo0Var.a));
    }

    @Override // defpackage.f32
    public final boolean h(Object obj) {
        obj.getClass();
        return obj instanceof fo0;
    }

    @Override // defpackage.f32
    public final void i(ViewBinding viewBinding, fo0 fo0Var) {
        ItemBonusPointsBinding itemBonusPointsBinding = (ItemBonusPointsBinding) viewBinding;
        fo0 fo0Var2 = fo0Var;
        itemBonusPointsBinding.getClass();
        itemBonusPointsBinding.tvTitle.setText(fo0Var2.b);
        com.bumptech.glide.a.d(itemBonusPointsBinding.getRoot().getContext()).h(fo0Var2.c).L(itemBonusPointsBinding.ivImage);
        fo0.a aVar = fo0Var2.d;
        int i = 1;
        if (aVar != null) {
            String str = aVar.c;
            itemBonusPointsBinding.tvButtonLeft.setText(aVar.a);
            if (str != null) {
                com.bumptech.glide.a.d(itemBonusPointsBinding.getRoot().getContext()).h(str).L(itemBonusPointsBinding.ivButtonCoin);
                ImageView imageView = itemBonusPointsBinding.ivButtonCoin;
                imageView.getClass();
                imageView.setVisibility(0);
            } else {
                ImageView imageView2 = itemBonusPointsBinding.ivButtonCoin;
                imageView2.getClass();
                imageView2.setVisibility(8);
            }
            itemBonusPointsBinding.tvButtonRight.setText(aVar.b);
            LinearLayout linearLayout = itemBonusPointsBinding.btnAction;
            linearLayout.getClass();
            linearLayout.setVisibility(0);
            ConstraintLayout root = itemBonusPointsBinding.getRoot();
            root.getClass();
            root.setOnClickListener(new lb7(new p30(this, fo0Var2, i)));
        } else {
            LinearLayout linearLayout2 = itemBonusPointsBinding.btnAction;
            linearLayout2.getClass();
            linearLayout2.setVisibility(8);
            itemBonusPointsBinding.getRoot().setOnClickListener(null);
        }
        itemBonusPointsBinding.btnAction.setBackgroundResource(R.drawable.background_primary60_8);
        int i2 = b.a[fo0Var2.f.ordinal()];
        if (i2 == 1) {
            itemBonusPointsBinding.mcCard.setCardBackgroundColor(ContextCompat.getColor(itemBonusPointsBinding.getRoot().getContext(), R.color.warning10));
        } else if (i2 == 2) {
            itemBonusPointsBinding.mcCard.setCardBackgroundColor(ContextCompat.getColor(itemBonusPointsBinding.getRoot().getContext(), R.color.primary_20));
        }
        int i3 = b.b[fo0Var2.e.ordinal()];
        if (i3 == 1) {
            ImageView imageView3 = itemBonusPointsBinding.ivBadge;
            imageView3.getClass();
            ViewGroup.LayoutParams layoutParams = imageView3.getLayoutParams();
            if (layoutParams == null) {
                o2.d("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                return;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.topMargin = pl2.e(2);
            marginLayoutParams.setMarginEnd(pl2.e(3));
            imageView3.setLayoutParams(marginLayoutParams);
            ImageView imageView4 = itemBonusPointsBinding.ivBadge;
            imageView4.getClass();
            pm.c(imageView4);
            TextView textView = itemBonusPointsBinding.tvTimer;
            textView.getClass();
            textView.setVisibility(8);
            itemBonusPointsBinding.getRoot().setEnabled(true);
            LinearLayout linearLayout3 = itemBonusPointsBinding.btnAction;
            linearLayout3.getClass();
            linearLayout3.setVisibility(0);
            itemBonusPointsBinding.tvTitle.setTextColor(ContextCompat.getColor(itemBonusPointsBinding.getRoot().getContext(), R.color.blueCharcoal));
            return;
        }
        if (i3 != 2) {
            return;
        }
        LinearLayout linearLayout4 = itemBonusPointsBinding.btnAction;
        linearLayout4.getClass();
        linearLayout4.setVisibility(8);
        itemBonusPointsBinding.getRoot().setEnabled(false);
        itemBonusPointsBinding.mcCard.setCardBackgroundColor(ContextCompat.getColor(itemBonusPointsBinding.getRoot().getContext(), R.color.manatee));
        TextView textView2 = itemBonusPointsBinding.tvTimer;
        textView2.getClass();
        textView2.setVisibility((aVar != null ? aVar.d : null) != null ? 0 : 8);
        ImageView imageView5 = itemBonusPointsBinding.ivBadge;
        imageView5.getClass();
        ViewGroup.LayoutParams layoutParams2 = imageView5.getLayoutParams();
        if (layoutParams2 == null) {
            o2.d("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
        marginLayoutParams2.height = pl2.e(32);
        marginLayoutParams2.width = pl2.e(32);
        marginLayoutParams2.topMargin = pl2.e(0);
        marginLayoutParams2.setMarginEnd(pl2.e(0));
        imageView5.setLayoutParams(marginLayoutParams2);
        com.bumptech.glide.a.d(itemBonusPointsBinding.getRoot().getContext()).f(Integer.valueOf(R.drawable.ic_circle_tick_free_padding)).L(itemBonusPointsBinding.ivBadge);
        itemBonusPointsBinding.tvTitle.setTextColor(ContextCompat.getColor(itemBonusPointsBinding.getRoot().getContext(), R.color.white));
    }

    @Override // defpackage.f32
    public final void j(ViewBinding viewBinding, long j) {
        ItemBonusPointsBinding itemBonusPointsBinding = (ItemBonusPointsBinding) viewBinding;
        itemBonusPointsBinding.getClass();
        Locale locale = new Locale("ru", "RU");
        String string = itemBonusPointsBinding.getRoot().getContext().getString(R.string.tasks_timer_format);
        string.getClass();
        itemBonusPointsBinding.tvTimer.setText(String.format(locale, string, Arrays.copyOf(new Object[]{Long.valueOf((j / 3600000) % 24), Long.valueOf((j / 60000) % 60), Long.valueOf((j / 1000) % 60)}, 3)));
    }
}
