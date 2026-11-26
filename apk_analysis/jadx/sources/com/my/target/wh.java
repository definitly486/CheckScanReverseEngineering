package com.my.target;

import android.content.Context;
import android.util.SparseIntArray;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.i4a;
import defpackage.ko9;
import defpackage.l3;
import defpackage.yu9;

/* JADX INFO: loaded from: classes4.dex */
public class wh extends LinearLayout {
    public static final /* synthetic */ int e = 0;
    public final y1 b;
    public final o2 c;
    public final l3 d;

    public wh(Context context, p.a aVar, d2.b bVar) {
        super(context);
        ko9 ko9Var = new ko9(context);
        this.d = new l3(bVar, 6);
        setOrientation(1);
        LinearLayout linearLayout = new LinearLayout(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        int i = ko9.v;
        SparseIntArray sparseIntArray = ko9Var.a;
        int i2 = sparseIntArray.get(i);
        layoutParams.setMargins(i2, i2, i2, i2);
        layoutParams.weight = 1.0f;
        linearLayout.setGravity(17);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOrientation(1);
        y1 y1Var = new y1(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -1);
        int i3 = ko9.m;
        int i4 = sparseIntArray.get(i3);
        int i5 = sparseIntArray.get(ko9.g);
        y1Var.getActionButton().setPadding(i4, i5, i4, i5);
        y1Var.setLayoutParams(layoutParams2);
        this.b = y1Var;
        yu9 yu9Var = new yu9(context);
        Button actionButton = y1Var.getActionButton();
        int i6 = yu9.B;
        SparseIntArray sparseIntArray2 = yu9Var.a;
        actionButton.setBackground(yu9.b(sparseIntArray2.get(i6), sparseIntArray2.get(yu9.A), sparseIntArray2.get(yu9.C), sparseIntArray.get(i3)));
        y1Var.getActionButton().setTextColor(sparseIntArray2.get(yu9.y));
        linearLayout.addView(y1Var);
        o2 o2Var = new o2(aVar);
        this.c = o2Var;
        RecyclerView recyclerView = new RecyclerView(context);
        recyclerView.setAdapter(o2Var);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        int i7 = sparseIntArray.get(ko9.i);
        int i8 = ko9.n;
        recyclerView.addItemDecoration(new i4a(i7, sparseIntArray.get(i8)));
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.setMargins(0, 0, 0, sparseIntArray.get(i8));
        recyclerView.setLayoutParams(layoutParams3);
        addView(linearLayout);
        addView(recyclerView);
    }

    public y1 getAdCardView() {
        return this.b;
    }
}
