package yads;

import android.R;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class li5 extends BaseAdapter {
    public List a = defpackage.kx2.b;
    public final /* synthetic */ mi5 b;

    public li5(mi5 mi5Var) {
        this.b = mi5Var;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.a.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        return (String) this.a.get(i);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        Object obj = view;
        if (view == null) {
            TextView textView = new TextView(this.b.a, null, R.attr.spinnerDropDownItemStyle);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            textView.setSingleLine(true);
            textView.setLayoutParams(new ViewGroup.LayoutParams(-1, defpackage.w65.b(pq.a((Number) 48, textView.getResources().getDisplayMetrics()))));
            textView.setTextAlignment(5);
            obj = textView;
        }
        TextView textView2 = (TextView) obj;
        textView2.setText((String) this.a.get(i));
        return textView2;
    }
}
