package defpackage;

import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemMonthStatisticsBinding;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

/* JADX INFO: loaded from: classes5.dex */
public final class ed5 extends RecyclerView.Adapter<a> {
    public final zn2 i;
    public final LinearLayoutManager t;
    public final ArrayList u;
    public int v;

    public static final class a extends RecyclerView.ViewHolder {
        public final ItemMonthStatisticsBinding l;

        public a(ItemMonthStatisticsBinding itemMonthStatisticsBinding) {
            super(itemMonthStatisticsBinding.getRoot());
            this.l = itemMonthStatisticsBinding;
        }
    }

    public ed5(zn2 zn2Var, LinearLayoutManager linearLayoutManager) {
        linearLayoutManager.getClass();
        this.i = zn2Var;
        this.t = linearLayoutManager;
        this.u = new ArrayList();
    }

    public final View f(int i) {
        LinearLayoutManager linearLayoutManager = this.t;
        if (linearLayoutManager == null) {
            return null;
        }
        int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        int childCount = (linearLayoutManager.getChildCount() + iFindFirstVisibleItemPosition) - 1;
        if (i < iFindFirstVisibleItemPosition || i > childCount) {
            return null;
        }
        return linearLayoutManager.getChildAt(i - iFindFirstVisibleItemPosition);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.u.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        a aVar = (a) viewHolder;
        aVar.getClass();
        ItemMonthStatisticsBinding itemMonthStatisticsBinding = aVar.l;
        String[] stringArray = itemMonthStatisticsBinding.getRoot().getResources().getStringArray(R.array.cheques_month_name);
        stringArray.getClass();
        Calendar calendar = Calendar.getInstance();
        calendar.set(2, 11);
        calendar.add(1, -1);
        long timeInMillis = calendar.getTimeInMillis();
        ArrayList arrayList = this.u;
        SimpleDateFormat simpleDateFormat = timeInMillis <= ((ld5) arrayList.get(i)).a ? null : new SimpleDateFormat("\nyyyy");
        calendar.setTimeInMillis(((ld5) arrayList.get(i)).a);
        String str = stringArray[calendar.get(2)];
        str.getClass();
        TextView textView = itemMonthStatisticsBinding.tvMonth;
        if (simpleDateFormat != null) {
            str = ((Object) str) + simpleDateFormat.format(Long.valueOf(((ld5) arrayList.get(i)).a));
        }
        textView.setText(str);
        if (((ld5) arrayList.get(i)).b) {
            this.v = aVar.getAbsoluteAdapterPosition();
            itemMonthStatisticsBinding.tvMonth.setTextColor(Color.parseColor("#3085ff"));
            this.i.invoke(Integer.valueOf(i));
        } else {
            boolean z = ((ld5) arrayList.get(i)).c;
            TextView textView2 = itemMonthStatisticsBinding.tvMonth;
            textView2.getClass();
            if (z) {
                textView2.setTextColor(Color.parseColor("#CCCED3"));
            } else {
                textView2.setTextColor(Color.parseColor("#000000"));
            }
        }
        ConstraintLayout root = itemMonthStatisticsBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new fd5(this, i)));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        viewGroup.getClass();
        ItemMonthStatisticsBinding itemMonthStatisticsBindingInflate = ItemMonthStatisticsBinding.inflate(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        itemMonthStatisticsBindingInflate.getClass();
        return new a(itemMonthStatisticsBindingInflate);
    }
}
