package yads;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AdapterView;
import android.widget.ListView;
import defpackage.j3a;
import defpackage.j59;
import defpackage.nl3;
import java.util.List;
import yads.ni5;

/* JADX INFO: loaded from: classes6.dex */
public class ni5 extends an2 {
    public nl3 n;
    public sg3 o;
    public final mi5 p;

    public ni5(Context context) {
        super(context, null, 6, 0);
        setOnClickListener(new j3a(this, 0));
        final mi5 mi5Var = new mi5(context);
        mi5Var.setModal(true);
        mi5Var.setAnchorView(this);
        mi5Var.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: k3a
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                ni5.a(this.b, mi5Var, adapterView, view, i, j);
            }
        });
        mi5Var.setOverlapAnchor(true);
        mi5Var.setBackgroundDrawable(new ColorDrawable(-1));
        mi5Var.setAdapter(mi5Var.b);
        this.p = mi5Var;
    }

    public static final void a(ni5 ni5Var, View view) {
        sg3 sg3Var = ni5Var.o;
        if (sg3Var != null) {
            pq.a(ni5Var, sg3Var);
        }
        ListView listView = ni5Var.p.getListView();
        if (listView != null) {
            listView.setSelectionAfterHeaderView();
        }
        ni5Var.p.show();
    }

    @Override // android.widget.TextView, android.view.View
    public final /* bridge */ /* synthetic */ CharSequence getAccessibilityClassName() {
        return "android.widget.Spinner";
    }

    @Override // yads.an2, androidx.appcompat.widget.AppCompatTextView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.p.isShowing()) {
            this.p.dismiss();
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCanOpenPopup(true);
        accessibilityNodeInfo.setText(getText());
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z && this.p.isShowing()) {
            this.p.show();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 0 || !this.p.isShowing()) {
            return;
        }
        this.p.dismiss();
    }

    public final void setFocusTracker(sg3 sg3Var) {
        this.o = sg3Var;
    }

    public final void setItems(List<String> list) {
        li5 li5Var = this.p.b;
        li5Var.a = list;
        li5Var.notifyDataSetChanged();
    }

    public final void setOnItemSelectedListener(nl3<? super Integer, j59> nl3Var) {
        this.n = nl3Var;
    }

    public static final void a(ni5 ni5Var, mi5 mi5Var, AdapterView adapterView, View view, int i, long j) {
        ni5Var.sendAccessibilityEvent(4);
        nl3 nl3Var = ni5Var.n;
        if (nl3Var != null) {
            nl3Var.invoke(Integer.valueOf(i));
        }
        mi5Var.dismiss();
    }
}
