package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.tasks.databinding.ItemRvTaskDetailsBadgeBinding;
import kotlin.TypeCastException;

/* JADX INFO: loaded from: classes5.dex */
public final class vm8 extends vd9<wm8, ItemRvTaskDetailsBadgeBinding> {
    public final b b;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvTaskDetailsBadgeBinding> {
        public static final a c = new a(3, ItemRvTaskDetailsBadgeBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDetailsBadgeBinding;", 0);

        @Override // defpackage.dm3
        public final ItemRvTaskDetailsBadgeBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemRvTaskDetailsBadgeBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public interface b {
        void onBadgeQuestionClicked(String str);
    }

    public vm8(b bVar) {
        super(a.c);
        this.b = bVar;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof wm8;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, wm8 wm8Var) {
        ItemRvTaskDetailsBadgeBinding itemRvTaskDetailsBadgeBinding = (ItemRvTaskDetailsBadgeBinding) viewBinding;
        wm8 wm8Var2 = wm8Var;
        itemRvTaskDetailsBadgeBinding.getClass();
        if (wm8Var2.b != null) {
            ImageView imageView = itemRvTaskDetailsBadgeBinding.ivQuestion;
            imageView.getClass();
            imageView.setVisibility(0);
            ImageView imageView2 = itemRvTaskDetailsBadgeBinding.ivQuestion;
            imageView2.getClass();
            imageView2.setOnClickListener(new lb7(new ss5(1, this, wm8Var2)));
        }
        ImageView imageView3 = itemRvTaskDetailsBadgeBinding.ivBadgeIcon;
        imageView3.getClass();
        ViewGroup.LayoutParams layoutParams = imageView3.getLayoutParams();
        if (layoutParams == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
        }
        layoutParams.height = pl2.e(44);
        imageView3.setLayoutParams(layoutParams);
        itemRvTaskDetailsBadgeBinding.ivBadgeIcon.setScaleType(wm8Var2.c);
        com.bumptech.glide.a.e(itemRvTaskDetailsBadgeBinding.getRoot()).h(wm8Var2.a).L(itemRvTaskDetailsBadgeBinding.ivBadgeIcon);
    }
}
