package defpackage;

import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.RecyclerViewStatisticsExpensesTagBinding;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class dk8 extends RecyclerView.Adapter<ck8> {
    public final ArrayList i = new ArrayList();
    public vc1 t;

    public static final class a {
        public final int a;
        public final String b;
        public final long c;
        public final int d;
        public final int e;
        public final boolean f;

        public a(int i, String str, long j, int i2, int i3, boolean z) {
            str.getClass();
            this.a = i;
            this.b = str;
            this.c = j;
            this.d = i2;
            this.e = i3;
            this.f = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && aa4.e(this.b, aVar.b) && this.c == aVar.c && this.d == aVar.d && this.e == aVar.e && this.f == aVar.f;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f) + ej0.b(this.e, ej0.b(this.d, vg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31), 31);
        }

        public final String toString() {
            StringBuilder sbE = ng.e(this.a, "TagData(id=", ", name=", this.b, ", expenses=");
            sbE.append(this.c);
            sbE.append(", textColor=");
            sbE.append(this.d);
            sbE.append(", backgroundColor=");
            sbE.append(this.e);
            sbE.append(", isExtraTagsButton=");
            sbE.append(this.f);
            sbE.append(")");
            return sbE.toString();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.i.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        ck8 ck8Var = (ck8) viewHolder;
        ck8Var.getClass();
        a aVar = (a) this.i.get(i);
        as3 as3Var = new as3(1, this, aVar);
        aVar.getClass();
        RecyclerViewStatisticsExpensesTagBinding recyclerViewStatisticsExpensesTagBinding = ck8Var.l;
        recyclerViewStatisticsExpensesTagBinding.getRoot().setOnClickListener(as3Var);
        TextView textView = recyclerViewStatisticsExpensesTagBinding.tvTagName;
        textView.setText(aVar.b);
        int i2 = aVar.d;
        textView.setTextColor(i2);
        TextView textView2 = recyclerViewStatisticsExpensesTagBinding.tvTagExpenses;
        textView2.setText(textView2.getContext().getString(R.string.placeholder_ruble_price, Float.valueOf(aVar.c / 100.0f)));
        textView2.setTextColor(i2);
        Drawable drawableB = oz1.b(recyclerViewStatisticsExpensesTagBinding, R.drawable.statistics_tag_filled_background);
        if (drawableB != null) {
            LinearLayout linearLayout = recyclerViewStatisticsExpensesTagBinding.tagWrapper;
            if (!aVar.f) {
                drawableB = DrawableCompat.wrap(drawableB);
                DrawableCompat.setTintMode(drawableB, PorterDuff.Mode.SRC_IN);
                DrawableCompat.setTint(drawableB, aVar.e);
            }
            linearLayout.setBackground(drawableB);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        viewGroup.getClass();
        RecyclerViewStatisticsExpensesTagBinding recyclerViewStatisticsExpensesTagBindingInflate = RecyclerViewStatisticsExpensesTagBinding.inflate(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        recyclerViewStatisticsExpensesTagBindingInflate.getClass();
        return new ck8(recyclerViewStatisticsExpensesTagBindingInflate);
    }
}
