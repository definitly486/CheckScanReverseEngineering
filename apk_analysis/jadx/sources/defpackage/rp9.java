package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.my.target.d;
import com.my.target.h0;
import com.my.target.o;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class rp9 extends BaseAdapter {
    public ArrayList b;
    public zu c;

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.b.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        return (s95) this.b.get(i);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        d dVar = new d(viewGroup.getContext());
        final s95 s95Var = (s95) this.b.get(i);
        dVar.setData(s95Var);
        dVar.setOnClickListener(new View.OnClickListener() { // from class: lp9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                zu zuVar = this.b.c;
                if (zuVar != null) {
                    ((o) ((h0.a) zuVar.b)).c(s95Var);
                }
            }
        });
        return dVar;
    }
}
