package defpackage;

import android.view.View;
import android.widget.TextView;
import com.warefly.checkscan.databinding.ItemSortDialogBinding;
import com.warefly.checkscan.presentation.queue.view.QueueSortDialog;

/* JADX INFO: loaded from: classes5.dex */
public final class lw6 extends gh4 implements dm3<ItemSortDialogBinding, mz6, Integer, j59> {
    public final /* synthetic */ QueueSortDialog f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lw6(QueueSortDialog queueSortDialog) {
        super(3);
        this.f = queueSortDialog;
    }

    @Override // defpackage.dm3
    public final j59 invoke(ItemSortDialogBinding itemSortDialogBinding, mz6 mz6Var, Integer num) {
        final ItemSortDialogBinding itemSortDialogBinding2 = itemSortDialogBinding;
        final mz6 mz6Var2 = mz6Var;
        num.intValue();
        itemSortDialogBinding2.getClass();
        mz6Var2.getClass();
        itemSortDialogBinding2.tvCategoryName.setText(mz6Var2.a());
        TextView textView = itemSortDialogBinding2.tvCategoryName;
        final QueueSortDialog queueSortDialog = this.f;
        textView.setOnClickListener(new View.OnClickListener() { // from class: jw6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                itemSortDialogBinding2.cbCategory.setChecked(true);
                QueueSortDialog queueSortDialog2 = queueSortDialog;
                queueSortDialog2.d.invoke(mz6Var2);
                queueSortDialog2.dismiss();
            }
        });
        itemSortDialogBinding2.cbCategory.setOnClickListener(new kw6(0, queueSortDialog, mz6Var2));
        return j59.a;
    }
}
