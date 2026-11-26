package yads;

import android.view.View;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.yandex.mobile.ads.R$id;
import com.yandex.mobile.ads.features.debugpanel.ui.IntegrationInspectorActivity;
import defpackage.nl3;
import yads.jh0;

/* JADX INFO: loaded from: classes6.dex */
public final class jh0 {
    public final ge0 a;
    public final TextView b;
    public final ProgressBar c;

    public jh0(IntegrationInspectorActivity integrationInspectorActivity, final an3 an3Var, LinearLayoutManager linearLayoutManager, ge0 ge0Var) {
        sp0 sp0VarA;
        this.a = ge0Var;
        ImageButton imageButton = (ImageButton) integrationInspectorActivity.findViewById(R$id.toolbar_navigation_button);
        this.b = (TextView) integrationInspectorActivity.findViewById(R$id.toolbar_title);
        this.c = (ProgressBar) integrationInspectorActivity.findViewById(R$id.loading_view);
        RecyclerView recyclerView = (RecyclerView) integrationInspectorActivity.findViewById(R$id.recycler_view);
        uf0 uf0Var = new uf0();
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: qz9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                jh0.a(an3Var, view);
            }
        });
        try {
            sp0VarA = xk6.a(integrationInspectorActivity);
        } catch (Throwable unused) {
            sp0VarA = sp0.g;
        }
        int i = (int) sp0VarA.d;
        recyclerView.setAdapter(ge0Var);
        recyclerView.setLayoutManager(linearLayoutManager);
        recyclerView.addItemDecoration(uf0Var);
        recyclerView.setPadding(recyclerView.getPaddingLeft(), recyclerView.getPaddingTop(), recyclerView.getPaddingRight(), recyclerView.getPaddingBottom() + i);
    }

    public static final void a(nl3 nl3Var, View view) {
        nl3Var.invoke(vg0.a);
    }
}
