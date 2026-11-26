package com.my.target;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.GradientDrawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.my.target.k4;
import defpackage.f2a;
import defpackage.g8a;
import defpackage.ko9;
import defpackage.tda;
import defpackage.v2a;
import defpackage.xda;
import defpackage.yu9;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class k4 extends LinearLayout implements z0 {
    public static final /* synthetic */ int f = 0;
    public final r1 b;
    public final ko9 c;
    public final f2a d;
    public final RecyclerView e;

    public k4(final z0.a aVar, w1.a aVar2, Context context) {
        super(context);
        ko9 ko9Var = new ko9(context);
        this.c = ko9Var;
        setOrientation(1);
        r1 r1Var = new r1(context);
        this.b = r1Var;
        r1Var.setGravity(8388661);
        r1Var.getAdChoicesButton().setVisibility(8);
        addView(r1Var);
        RecyclerView recyclerView = new RecyclerView(context);
        this.e = recyclerView;
        f2a f2aVar = new f2a(aVar2);
        this.d = f2aVar;
        recyclerView.setAdapter(f2aVar);
        recyclerView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        int i = ko9Var.a.get(ko9.r);
        if (context.getResources().getConfiguration().orientation == 2) {
            recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
            recyclerView.addItemDecoration(new g8a(i));
        } else {
            recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
            recyclerView.addItemDecoration(new tda(i));
        }
        r1Var.getCloseButton().setOnClickListener(new View.OnClickListener() { // from class: q0a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i2 = k4.f;
                aVar.e();
            }
        });
        e();
        addView(recyclerView);
    }

    @Override // com.my.target.z0
    public final View a() {
        return this;
    }

    @Override // com.my.target.z0
    public final void b() {
        r1 r1Var = this.b;
        r1Var.getCloseButton().setVisibility(0);
        r1Var.getProgressFrame().setVisibility(8);
    }

    @Override // com.my.target.z0
    public final void c() {
        this.b.getProgressFrame().setVisibility(8);
    }

    @Override // com.my.target.z0
    public final void d() {
    }

    public final void e() {
        yu9 yu9Var = new yu9(getContext());
        int i = yu9.r;
        SparseIntArray sparseIntArray = yu9Var.a;
        setBackgroundColor(sparseIntArray.get(i));
        r1 r1Var = this.b;
        r1Var.getProgress().setTextColor(sparseIntArray.get(yu9.v));
        RelativeLayout progressFrame = r1Var.getProgressFrame();
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(sparseIntArray.get(yu9.I));
        gradientDrawable.setShape(1);
        progressFrame.setBackground(gradientDrawable);
    }

    @Override // com.my.target.z0
    public View getCloseButton() {
        return this.b.getCloseButton();
    }

    @Override // com.my.target.z0
    public LinearLayout getTopBar() {
        return null;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        RecyclerView recyclerView;
        super.onConfigurationChanged(configuration);
        int i = 0;
        while (true) {
            recyclerView = this.e;
            if (i >= recyclerView.getItemDecorationCount()) {
                break;
            }
            recyclerView.removeItemDecorationAt(i);
            i++;
        }
        int i2 = this.c.a.get(ko9.r);
        if (configuration.orientation == 2) {
            recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
            recyclerView.addItemDecoration(new g8a(i2));
        } else {
            recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
            recyclerView.addItemDecoration(new tda(i2));
        }
        e();
    }

    @Override // com.my.target.z0
    public void setBanner(xda xdaVar) {
    }

    @Override // com.my.target.z0
    public void setDoubleBanners(List<v2a> list) {
        f2a f2aVar = this.d;
        if (f2aVar == null) {
            return;
        }
        f2aVar.i = list;
        for (int i = 0; i < f2aVar.i.size(); i++) {
            f2aVar.notifyItemChanged(i, f2aVar.i.get(i));
        }
    }

    @Override // com.my.target.z0
    public void setRemainingAllowCloseDelay(int i) {
        this.b.getProgress().setText(String.valueOf(i));
    }
}
