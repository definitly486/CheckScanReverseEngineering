package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.subscriptionLanding.databinding.ItemLandingButtonBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class uh4 extends vd9<vh4, ItemLandingButtonBinding> {
    public final b b;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemLandingButtonBinding> {
        public static final a c = new a(3, ItemLandingButtonBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/subscriptionLanding/databinding/ItemLandingButtonBinding;", 0);

        @Override // defpackage.dm3
        public final ItemLandingButtonBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemLandingButtonBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public interface b {
        void onLandingButtonClicked(String str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public uh4(b bVar) {
        super(a.c);
        bVar.getClass();
        this.b = bVar;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof vh4;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, vh4 vh4Var) {
        ItemLandingButtonBinding itemLandingButtonBinding = (ItemLandingButtonBinding) viewBinding;
        itemLandingButtonBinding.getClass();
        TextView textView = itemLandingButtonBinding.btnAction;
        textView.setText("Посмотреть задания");
        textView.setOnClickListener(new lb7(new vc1(this, vh4Var)));
    }
}
