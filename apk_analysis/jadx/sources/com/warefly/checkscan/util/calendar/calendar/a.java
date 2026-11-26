package com.warefly.checkscan.util.calendar.calendar;

import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends RecyclerView.ViewHolder {
    public final SimpleMonthView l;

    public a(SimpleMonthView simpleMonthView, b bVar) {
        super(simpleMonthView);
        this.l = simpleMonthView;
        simpleMonthView.setClickable(true);
        simpleMonthView.setOnDayClickListener(bVar);
    }
}
