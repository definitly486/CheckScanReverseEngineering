package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemChequeBinding;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes5.dex */
public final class id1 extends vd9<oa4, ItemChequeBinding> {
    public final nl3<Integer, j59> b;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemChequeBinding> {
        public static final a c = new a(3, ItemChequeBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemChequeBinding;", 0);

        @Override // defpackage.dm3
        public final ItemChequeBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemChequeBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public id1(nl3<? super Integer, j59> nl3Var) {
        super(a.c);
        this.b = nl3Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof oa4;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, oa4 oa4Var) {
        ItemChequeBinding itemChequeBinding = (ItemChequeBinding) viewBinding;
        oa4 oa4Var2 = oa4Var;
        itemChequeBinding.getClass();
        ConstraintLayout root = itemChequeBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new jd1(0, this, oa4Var2)));
        itemChequeBinding.tvShopName.setText(oa4Var2.b);
        pb2 pb2Var = pb2.a;
        String str = oa4Var2.c;
        pb2Var.getClass();
        Date dateF = pb2.f(str);
        TextView textView = itemChequeBinding.tvDateTime;
        String str2 = ((SimpleDateFormat) pb2.h.getValue()).format(dateF);
        str2.getClass();
        textView.setText(str2);
        itemChequeBinding.tvSum.setText(itemChequeBinding.getRoot().getContext().getString(R.string.placeholder_ruble_price, Float.valueOf(oa4Var2.d / 100.0f)));
    }
}
