package yads;

import android.content.Context;
import android.graphics.Color;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class j76 extends LinearLayout {
    public final Context a;
    public final x66 b;
    public final LinearLayout c;

    /* JADX WARN: Multi-variable type inference failed */
    public j76(Context context, g76 g76Var) {
        super(context);
        this.a = context;
        this.b = new x66(new i76(g76Var));
        LinearLayout linearLayout = new LinearLayout(context);
        List listI = u96.i(200, 60, 100);
        List<String> listI2 = u96.i("name", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "value");
        ArrayList arrayList = new ArrayList(defpackage.kn1.q(listI2, 10));
        for (String str : listI2) {
            TextView textView = new TextView(this.a);
            int iB = defpackage.w65.b(pq.a((Number) 8, textView.getResources().getDisplayMetrics()));
            textView.setPadding(iB, iB, iB, iB);
            textView.setTextColor(-1);
            textView.setText(str);
            textView.setTypeface(textView.getTypeface(), 1);
            arrayList.add(textView);
        }
        for (defpackage.b36 b36Var : defpackage.qn1.z0(arrayList, listI)) {
            linearLayout.addView((TextView) b36Var.b, new LinearLayout.LayoutParams(defpackage.w65.b(pq.a((Number) Integer.valueOf(((Number) b36Var.c).intValue()), linearLayout.getResources().getDisplayMetrics())), -2));
        }
        this.c = linearLayout;
        setOrientation(1);
        g76Var.c = new h76(this);
        g76Var.a();
        addView(linearLayout, new LinearLayout.LayoutParams(-1, -2));
        RecyclerView recyclerView = new RecyclerView(this.a);
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
        recyclerView.setAdapter(this.b);
        recyclerView.setBackgroundColor(Color.argb(50, 0, 0, 0));
        addView(recyclerView, new LinearLayout.LayoutParams(-1, -2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(List list) {
        String str;
        x66 x66Var = this.b;
        ArrayList arrayList = new ArrayList(defpackage.kn1.q(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            defpackage.b36 b36Var = (defpackage.b36) it.next();
            String str2 = (String) b36Var.b;
            u66 u66Var = (u66) b36Var.c;
            String strA = u66Var.a();
            if (u66Var instanceof m66) {
                str = "array";
            } else if (u66Var instanceof n66) {
                str = TypedValues.Custom.S_BOOLEAN;
            } else if (u66Var instanceof o66) {
                str = "color";
            } else if (u66Var instanceof p66) {
                str = "dict";
            } else if (u66Var instanceof q66) {
                str = "number";
            } else if (u66Var instanceof r66) {
                str = TypedValues.Custom.S_INT;
            } else if (u66Var instanceof s66) {
                str = TypedValues.Custom.S_STRING;
            } else {
                if (!(u66Var instanceof t66)) {
                    defpackage.me0.e();
                    return;
                }
                str = "url";
            }
            arrayList.add(new e76(strA, str2, str, u66Var.b().toString()));
        }
        x66Var.submitList(arrayList, new defpackage.tu1(this, 2));
    }

    public static final void a(j76 j76Var) {
        j76Var.c.setVisibility(j76Var.b.getItemCount() != 0 ? 0 : 8);
    }
}
