package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemOperationDateBinding;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes5.dex */
public final class j92 extends vd9<nc2, ItemOperationDateBinding> {

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemOperationDateBinding> {
        public static final a c = new a(3, ItemOperationDateBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemOperationDateBinding;", 0);

        @Override // defpackage.dm3
        public final ItemOperationDateBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemOperationDateBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public j92() {
        super(a.c);
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof nc2;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, nc2 nc2Var) {
        ItemOperationDateBinding itemOperationDateBinding = (ItemOperationDateBinding) viewBinding;
        itemOperationDateBinding.getClass();
        TextView textView = itemOperationDateBinding.tvDate;
        pb2 pb2Var = pb2.a;
        Date date = nc2Var.a;
        pb2Var.getClass();
        String strI = pb2.i(date, false);
        if (strI == null) {
            strI = ((SimpleDateFormat) pb2.c.getValue()).format(date);
            strI.getClass();
        }
        textView.setText(strI);
    }
}
