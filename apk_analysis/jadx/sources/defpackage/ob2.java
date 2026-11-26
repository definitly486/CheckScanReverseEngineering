package defpackage;

import android.view.View;
import android.widget.TextView;
import com.warefly.checkscan.databinding.ItemSortDialogBinding;
import com.warefly.checkscan.presentation.cheques.view.sortDialogs.view.DateSortDialog;

/* JADX INFO: loaded from: classes5.dex */
public final class ob2 extends gh4 implements dm3<ItemSortDialogBinding, s48, Integer, j59> {
    public final /* synthetic */ DateSortDialog f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ob2(DateSortDialog dateSortDialog) {
        super(3);
        this.f = dateSortDialog;
    }

    @Override // defpackage.dm3
    public final j59 invoke(ItemSortDialogBinding itemSortDialogBinding, s48 s48Var, Integer num) {
        final ItemSortDialogBinding itemSortDialogBinding2 = itemSortDialogBinding;
        final s48 s48Var2 = s48Var;
        num.intValue();
        itemSortDialogBinding2.getClass();
        s48Var2.getClass();
        itemSortDialogBinding2.tvCategoryName.setText(s48Var2.d());
        TextView textView = itemSortDialogBinding2.tvCategoryName;
        final DateSortDialog dateSortDialog = this.f;
        textView.setOnClickListener(new View.OnClickListener() { // from class: mb2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                itemSortDialogBinding2.cbCategory.setChecked(true);
                DateSortDialog dateSortDialog2 = dateSortDialog;
                dateSortDialog2.d.invoke(s48Var2);
                dateSortDialog2.dismiss();
            }
        });
        itemSortDialogBinding2.cbCategory.setOnClickListener(new View.OnClickListener() { // from class: nb2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                s48 s48Var3 = s48Var2;
                DateSortDialog dateSortDialog2 = dateSortDialog;
                dateSortDialog2.d.invoke(s48Var3);
                dateSortDialog2.dismiss();
            }
        });
        return j59.a;
    }
}
