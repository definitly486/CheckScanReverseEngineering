package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemQueueChequeBinding;
import com.warefly.checkscan.presentation.queue.view.QueueFragment;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;

/* JADX INFO: loaded from: classes5.dex */
public final class hf9 extends RecyclerView.Adapter<jf9> {
    public final QueueFragment i;
    public final ArrayList t = new ArrayList();

    public hf9(QueueFragment queueFragment) {
        this.i = queueFragment;
        setHasStableIds(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.t.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long getItemId(int i) {
        return ((gf9) this.t.get(i)).hashCode();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:19:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:20:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:21:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:22:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:23:0x0106  */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        String strI;
        final jf9 jf9Var = (jf9) viewHolder;
        jf9Var.getClass();
        gf9 gf9Var = (gf9) this.t.get(i);
        gf9Var.getClass();
        ItemQueueChequeBinding itemQueueChequeBinding = jf9Var.l;
        TextView textView = itemQueueChequeBinding.tvSum;
        String string = itemQueueChequeBinding.getRoot().getResources().getString(R.string.cheque_request_sum);
        string.getClass();
        textView.setText(String.format(string, Arrays.copyOf(new Object[]{gf9Var.g()}, 1)));
        TextView textView2 = itemQueueChequeBinding.tvDateTime;
        pb2 pb2Var = pb2.a;
        String strA = gf9Var.a();
        pb2Var.getClass();
        strA.getClass();
        try {
            try {
                Date date = ((SimpleDateFormat) pb2.l.getValue()).parse(strA);
                date.getClass();
                strI = pb2.i(date, true);
                if (strI == null) {
                    strI = ((SimpleDateFormat) pb2.f.getValue()).format(date);
                }
                strI.getClass();
            } catch (Exception unused) {
                Date date2 = ((SimpleDateFormat) pb2.m.getValue()).parse(strA);
                date2.getClass();
                String strI2 = pb2.i(date2, true);
                strA = strI2 == null ? ((SimpleDateFormat) pb2.f.getValue()).format(date2) : strI2;
                strA.getClass();
                strI = strA;
                textView2.setText(strI);
                itemQueueChequeBinding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: if9
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        jf9 jf9Var2 = jf9Var;
                        jf9Var2.m.a(jf9Var2);
                    }
                });
                switch (jf9.a.a[gf9Var.f().ordinal()]) {
                    case 1:
                    case 2:
                        itemQueueChequeBinding.tvShopAddress.setText(R.string.request_fns_not_responding);
                        itemQueueChequeBinding.tvShopName.setText(R.string.request_cheque_not_accepted);
                        break;
                    case 3:
                        itemQueueChequeBinding.tvShopAddress.setText(R.string.request_cheque_invalid);
                        itemQueueChequeBinding.tvShopName.setText(R.string.request_cheque_not_accepted);
                        break;
                    case 4:
                        itemQueueChequeBinding.tvShopAddress.setText(R.string.no_shop_received);
                        itemQueueChequeBinding.tvShopName.setText(R.string.request_cheque_not_accepted);
                        break;
                    case 5:
                        itemQueueChequeBinding.tvShopAddress.setText(R.string.request_cheque_valid);
                        itemQueueChequeBinding.tvShopName.setText(R.string.request_cheque_not_accepted);
                        break;
                    case 6:
                        itemQueueChequeBinding.tvShopAddress.setText(R.string.request_cheque_already_scanned);
                        itemQueueChequeBinding.tvShopName.setText(R.string.request_cheque_not_accepted);
                        break;
                    case 7:
                        itemQueueChequeBinding.tvShopAddress.setText(R.string.not_correct_format);
                        itemQueueChequeBinding.tvShopName.setText(R.string.rejected_cheque);
                        break;
                }
                jf9Var.n = gf9Var;
            }
        } catch (Exception unused2) {
            "Invalid dateString: ".concat(strA);
            strA.getClass();
            strI = strA;
        }
        textView2.setText(strI);
        itemQueueChequeBinding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: if9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                jf9 jf9Var2 = jf9Var;
                jf9Var2.m.a(jf9Var2);
            }
        });
        switch (jf9.a.a[gf9Var.f().ordinal()]) {
            case 1:
            case 2:
                itemQueueChequeBinding.tvShopAddress.setText(R.string.request_fns_not_responding);
                itemQueueChequeBinding.tvShopName.setText(R.string.request_cheque_not_accepted);
                break;
            case 3:
                itemQueueChequeBinding.tvShopAddress.setText(R.string.request_cheque_invalid);
                itemQueueChequeBinding.tvShopName.setText(R.string.request_cheque_not_accepted);
                break;
            case 4:
                itemQueueChequeBinding.tvShopAddress.setText(R.string.no_shop_received);
                itemQueueChequeBinding.tvShopName.setText(R.string.request_cheque_not_accepted);
                break;
            case 5:
                itemQueueChequeBinding.tvShopAddress.setText(R.string.request_cheque_valid);
                itemQueueChequeBinding.tvShopName.setText(R.string.request_cheque_not_accepted);
                break;
            case 6:
                itemQueueChequeBinding.tvShopAddress.setText(R.string.request_cheque_already_scanned);
                itemQueueChequeBinding.tvShopName.setText(R.string.request_cheque_not_accepted);
                break;
            case 7:
                itemQueueChequeBinding.tvShopAddress.setText(R.string.not_correct_format);
                itemQueueChequeBinding.tvShopName.setText(R.string.rejected_cheque);
                break;
        }
        jf9Var.n = gf9Var;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        viewGroup.getClass();
        int i2 = jf9.o;
        QueueFragment queueFragment = this.i;
        queueFragment.getClass();
        ItemQueueChequeBinding itemQueueChequeBindingInflate = ItemQueueChequeBinding.inflate(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        itemQueueChequeBindingInflate.getClass();
        return new jf9(itemQueueChequeBindingInflate, queueFragment);
    }
}
