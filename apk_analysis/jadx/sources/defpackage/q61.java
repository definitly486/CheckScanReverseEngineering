package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import androidx.appcompat.app.AlertDialog;
import com.warefly.checkscan.R;
import com.warefly.checkscan.presentation.chequePage.view.ChequePageFragment;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class q61 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ q61(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                List list = (List) obj;
                list.getClass();
                p61 p61Var = (p61) obj2;
                ArrayList arrayList = new ArrayList();
                for (Object obj3 : list) {
                    l17 l17Var = (l17) obj3;
                    if (!aa4.e(l17Var.b(), "---") && l17Var.a() != p61Var.c.O0()) {
                        arrayList.add(obj3);
                    }
                }
                return or4.a(arrayList, 0, 10);
            default:
                vg6 vg6Var = (vg6) obj;
                vg6Var.getClass();
                ChequePageFragment chequePageFragment = (ChequePageFragment) obj2;
                ChequePageFragment.a aVar = ChequePageFragment.q;
                Context context = chequePageFragment.getContext();
                if (context != null) {
                    final pe1 pe1Var = new pe1(chequePageFragment, vg6Var);
                    AlertDialog.Builder builder = new AlertDialog.Builder(context);
                    builder.setPositiveButton(R.string.dialog_confirm_text, new DialogInterface.OnClickListener() { // from class: x27
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            pe1Var.invoke();
                        }
                    });
                    builder.setNegativeButton(R.string.dialog_cancel_text, new y27());
                    builder.setMessage(R.string.cheque_category_report_confirm_text);
                    builder.setCancelable(false);
                    builder.setOnDismissListener(new z27());
                    AlertDialog alertDialogCreate = builder.create();
                    alertDialogCreate.getClass();
                    alertDialogCreate.show();
                }
                return j59.a;
        }
    }
}
