package defpackage;

import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.LifecycleCoroutineScope;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter;
import com.warefly.checkscan.presentation.tasks.main.view.TasksFragment;
import com.warefly.checkscan.tasks.databinding.ItemWideBonusPointsBinding;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class qh9 extends f32<rh9, ItemWideBonusPointsBinding> {
    public final TasksPresenter c;
    public final TasksFragment.d d;

    public static final /* synthetic */ class a {
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
            int[] iArr2 = new int[rh9.b.values().length];
            try {
                iArr2[rh9.b.AVAILABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[rh9.b.COMPLETED.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            b = iArr2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qh9(TasksPresenter tasksPresenter, TasksFragment.d dVar, LifecycleCoroutineScope lifecycleCoroutineScope) {
        super(lifecycleCoroutineScope, ph9.c);
        lifecycleCoroutineScope.getClass();
        this.c = tasksPresenter;
        this.d = dVar;
    }

    @Override // defpackage.f32
    public final y68 g(rh9 rh9Var) {
        return this.d.invoke(Integer.valueOf(rh9Var.a));
    }

    @Override // defpackage.f32
    public final boolean h(Object obj) {
        obj.getClass();
        return obj instanceof rh9;
    }

    @Override // defpackage.f32
    public final void i(ViewBinding viewBinding, rh9 rh9Var) {
        ItemWideBonusPointsBinding itemWideBonusPointsBinding = (ItemWideBonusPointsBinding) viewBinding;
        rh9 rh9Var2 = rh9Var;
        itemWideBonusPointsBinding.getClass();
        String str = rh9Var2.e;
        itemWideBonusPointsBinding.tvTitle.setText(rh9Var2.b);
        com.bumptech.glide.a.d(itemWideBonusPointsBinding.getRoot().getContext()).h(rh9Var2.c).L(itemWideBonusPointsBinding.ivImage);
        rh9.a aVar = rh9Var2.d;
        int i = 1;
        if (aVar != null) {
            itemWideBonusPointsBinding.tvButton.setText(cg.d(aVar.a, " ", aVar.b));
            LinearLayout linearLayout = itemWideBonusPointsBinding.btnAction;
            linearLayout.getClass();
            linearLayout.setVisibility(0);
            ConstraintLayout root = itemWideBonusPointsBinding.getRoot();
            root.getClass();
            root.setOnClickListener(new lb7(new a70(this, rh9Var2, i)));
            TextView textView = itemWideBonusPointsBinding.btnSecondary;
            textView.getClass();
            textView.setVisibility(str != null ? 0 : 8);
            itemWideBonusPointsBinding.btnSecondary.setText(str);
        } else {
            LinearLayout linearLayout2 = itemWideBonusPointsBinding.btnAction;
            linearLayout2.getClass();
            linearLayout2.setVisibility(8);
            TextView textView2 = itemWideBonusPointsBinding.btnSecondary;
            textView2.getClass();
            textView2.setVisibility(8);
            itemWideBonusPointsBinding.getRoot().setOnClickListener(null);
        }
        int i2 = a.a[rh9Var2.g.ordinal()];
        if (i2 == 1) {
            itemWideBonusPointsBinding.mcCard.setCardBackgroundColor(ContextCompat.getColor(itemWideBonusPointsBinding.getRoot().getContext(), R.color.warning10));
        } else if (i2 == 2) {
            itemWideBonusPointsBinding.mcCard.setCardBackgroundColor(ContextCompat.getColor(itemWideBonusPointsBinding.getRoot().getContext(), R.color.primary_20));
        }
        int i3 = a.b[rh9Var2.f.ordinal()];
        if (i3 == 1) {
            ImageView imageView = itemWideBonusPointsBinding.ivBadge;
            imageView.getClass();
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            if (layoutParams == null) {
                o2.d("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                return;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.topMargin = pl2.e(2);
            marginLayoutParams.setMarginEnd(pl2.e(3));
            imageView.setLayoutParams(marginLayoutParams);
            ImageView imageView2 = itemWideBonusPointsBinding.ivBadge;
            imageView2.getClass();
            pm.c(imageView2);
            LinearLayout linearLayout3 = itemWideBonusPointsBinding.timerContainer;
            linearLayout3.getClass();
            linearLayout3.setVisibility(8);
            itemWideBonusPointsBinding.getRoot().setEnabled(true);
            LinearLayout linearLayout4 = itemWideBonusPointsBinding.btnAction;
            linearLayout4.getClass();
            linearLayout4.setVisibility(0);
            itemWideBonusPointsBinding.tvTitle.setTextColor(ContextCompat.getColor(itemWideBonusPointsBinding.getRoot().getContext(), R.color.blueCharcoal));
            return;
        }
        if (i3 != 2) {
            return;
        }
        LinearLayout linearLayout5 = itemWideBonusPointsBinding.btnAction;
        linearLayout5.getClass();
        linearLayout5.setVisibility(8);
        itemWideBonusPointsBinding.getRoot().setEnabled(false);
        itemWideBonusPointsBinding.mcCard.setCardBackgroundColor(ContextCompat.getColor(itemWideBonusPointsBinding.getRoot().getContext(), R.color.manatee));
        itemWideBonusPointsBinding.tvTimerAdCount.setText(cg.d(aVar != null ? aVar.a : null, " ", aVar != null ? aVar.b : null));
        LinearLayout linearLayout6 = itemWideBonusPointsBinding.timerContainer;
        linearLayout6.getClass();
        linearLayout6.setVisibility((aVar != null ? aVar.d : null) != null ? 0 : 8);
        ImageView imageView3 = itemWideBonusPointsBinding.ivBadge;
        imageView3.getClass();
        ViewGroup.LayoutParams layoutParams2 = imageView3.getLayoutParams();
        if (layoutParams2 == null) {
            o2.d("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
        marginLayoutParams2.height = pl2.e(32);
        marginLayoutParams2.width = pl2.e(32);
        marginLayoutParams2.topMargin = pl2.e(0);
        marginLayoutParams2.setMarginEnd(pl2.e(0));
        imageView3.setLayoutParams(marginLayoutParams2);
        com.bumptech.glide.a.d(itemWideBonusPointsBinding.getRoot().getContext()).f(Integer.valueOf(R.drawable.ic_circle_tick_free_padding)).L(itemWideBonusPointsBinding.ivBadge);
        itemWideBonusPointsBinding.tvTitle.setTextColor(ContextCompat.getColor(itemWideBonusPointsBinding.getRoot().getContext(), R.color.white));
    }

    @Override // defpackage.f32
    public final void j(ViewBinding viewBinding, long j) {
        ItemWideBonusPointsBinding itemWideBonusPointsBinding = (ItemWideBonusPointsBinding) viewBinding;
        itemWideBonusPointsBinding.getClass();
        Locale locale = new Locale("ru", "RU");
        String string = itemWideBonusPointsBinding.getRoot().getContext().getString(R.string.tasks_timer_format);
        string.getClass();
        itemWideBonusPointsBinding.tvTimer.setText(String.format(locale, string, Arrays.copyOf(new Object[]{Long.valueOf((j / 3600000) % 24), Long.valueOf((j / 60000) % 60), Long.valueOf((j / 1000) % 60)}, 3)));
    }
}
