package com.warefly.checkscan.util.calendar.calendar;

import android.content.Context;
import android.content.res.TypedArray;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.presentation.cheques.exportCheques.dialog.view.LightDatePickerDialog;
import defpackage.aa4;
import defpackage.dy0;
import defpackage.h64;
import defpackage.lc2;
import defpackage.sv8;
import defpackage.tv8;
import java.io.Serializable;
import java.time.Clock;
import java.time.DateTimeException;
import java.time.Instant;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import kotlinx.datetime.DateTimeArithmeticException;

/* JADX INFO: loaded from: classes5.dex */
public final class b extends RecyclerView.Adapter<com.warefly.checkscan.util.calendar.calendar.a> implements SimpleMonthView.a {
    public final LightDatePickerDialog i;
    public final TypedArray t;
    public final boolean u;
    public final Calendar v = Calendar.getInstance();
    public final sv8 w;
    public final h64 x;
    public a<dy0> y;
    public final ArrayList z;

    public static final class a<K> implements Serializable {
        public dy0 b;
        public K c;
    }

    public b(LightDatePickerDialog lightDatePickerDialog, TypedArray typedArray, boolean z) throws Exception {
        this.i = lightDatePickerDialog;
        this.t = typedArray;
        this.u = z;
        sv8.Companion.getClass();
        ZoneId zoneIdSystemDefault = ZoneId.systemDefault();
        zoneIdSystemDefault.getClass();
        this.w = sv8.a.b(zoneIdSystemDefault);
        h64.Companion.getClass();
        Instant instant = Clock.systemUTC().instant();
        instant.getClass();
        this.x = new h64(instant);
        ArrayList arrayList = new ArrayList(100);
        for (int i = 0; i < 100; i++) {
            h64 h64Var = this.x;
            lc2.Companion.getClass();
            lc2.d dVar = lc2.b;
            sv8 sv8Var = this.w;
            h64Var.getClass();
            dVar.getClass();
            sv8Var.getClass();
            long j = -i;
            try {
                try {
                    ZonedDateTime zonedDateTimeAtZone = h64Var.b.atZone(sv8Var.a);
                    zonedDateTimeAtZone.getClass();
                    arrayList.add(new h64(zonedDateTimeAtZone.plusMonths(Math.multiplyExact(j, dVar.c)).toInstant()));
                } catch (DateTimeException e) {
                    throw new DateTimeArithmeticException(e);
                }
            } catch (Exception e2) {
                if (!(e2 instanceof DateTimeException) && !(e2 instanceof ArithmeticException)) {
                    throw e2;
                }
                throw new DateTimeArithmeticException("Instant " + h64Var + " cannot be represented as local date when adding " + j + ' ' + dVar + " to it", e2);
            }
        }
        this.z = arrayList;
        this.y = new a<>();
        sv8 sv8Var2 = this.w;
        h64 h64Var2 = this.x;
        if (this.t.getBoolean(9, false)) {
            b(new dy0(tv8.a(h64Var2, sv8Var2).b.getYear(), tv8.a(h64Var2, sv8Var2).b.getMonthValue() - 1, tv8.a(h64Var2, sv8Var2).b.getDayOfMonth()));
        }
    }

    @Override // com.warefly.checkscan.util.calendar.calendar.SimpleMonthView.a
    public final void a(dy0 dy0Var) {
        b(dy0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [K, dy0] */
    public final void b(dy0 dy0Var) {
        Boolean bool;
        a<dy0> aVar = this.y;
        boolean z = this.u;
        LightDatePickerDialog lightDatePickerDialog = this.i;
        if (!z) {
            boolean zE = aa4.e(aVar.b, dy0Var);
            a<dy0> aVar2 = this.y;
            if (zE) {
                aVar2.b = null;
                lightDatePickerDialog.g(null);
                notifyDataSetChanged();
                return;
            } else {
                aVar2.b = dy0Var;
                lightDatePickerDialog.g(dy0Var);
                notifyDataSetChanged();
                return;
            }
        }
        dy0 dy0Var2 = aVar.b;
        if (dy0Var2 == null) {
            dy0 dy0Var3 = aVar.c;
            if (dy0Var3 == null || !dy0Var3.equals(dy0Var)) {
                this.y.b = dy0Var;
                notifyDataSetChanged();
                return;
            } else {
                this.y.c = null;
                notifyDataSetChanged();
                return;
            }
        }
        boolean zEquals = dy0Var2.equals(dy0Var);
        a<dy0> aVar3 = this.y;
        if (zEquals) {
            aVar3.b = null;
            notifyDataSetChanged();
            return;
        }
        dy0 dy0Var4 = aVar3.b;
        dy0Var4.getClass();
        int i = dy0Var4.b;
        int i2 = dy0Var4.d;
        int i3 = dy0Var4.c;
        int i4 = dy0Var.b;
        int i5 = dy0Var.d;
        int i6 = dy0Var.c;
        if (i < i4) {
            bool = Boolean.TRUE;
        } else if (i > i4) {
            bool = Boolean.FALSE;
        } else if (i == i4 && i3 < i6) {
            bool = Boolean.TRUE;
        } else if (i == i4 && i3 > i6) {
            bool = Boolean.FALSE;
        } else if (i == i4 && i3 == i6 && i2 < i5) {
            bool = Boolean.TRUE;
        } else {
            bool = (i == i4 && i3 == i6 && i2 > i5) ? Boolean.FALSE : null;
        }
        if (bool != null) {
            boolean zBooleanValue = bool.booleanValue();
            a<dy0> aVar4 = this.y;
            if (!zBooleanValue) {
                aVar4.c = aVar4.b;
                aVar4.b = dy0Var;
                lightDatePickerDialog.f(aVar4);
                notifyDataSetChanged();
                return;
            }
            dy0 dy0Var5 = aVar4.c;
            if (dy0Var5 == null) {
                aVar4.c = dy0Var;
                lightDatePickerDialog.f(aVar4);
                notifyDataSetChanged();
                return;
            }
            boolean zEquals2 = dy0Var5.equals(dy0Var);
            a<dy0> aVar5 = this.y;
            if (zEquals2) {
                aVar5.c = null;
                lightDatePickerDialog.f(aVar5);
                notifyDataSetChanged();
            } else {
                aVar5.c = dy0Var;
                lightDatePickerDialog.f(aVar5);
                notifyDataSetChanged();
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.z.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        com.warefly.checkscan.util.calendar.calendar.a aVar = (com.warefly.checkscan.util.calendar.calendar.a) viewHolder;
        aVar.getClass();
        SimpleMonthView simpleMonthView = aVar.l;
        HashMap<String, Integer> map = new HashMap<>();
        ArrayList arrayList = this.z;
        h64 h64Var = (h64) arrayList.get(i);
        sv8 sv8Var = this.w;
        int monthValue = tv8.a(h64Var, sv8Var).b.getMonthValue() - 1;
        int year = tv8.a((h64) arrayList.get(i), sv8Var).b.getYear();
        a<dy0> aVar2 = this.y;
        dy0 dy0Var = aVar2.b;
        int i7 = -1;
        if (dy0Var != null) {
            i3 = dy0Var.d;
            i4 = dy0Var.c;
            i2 = dy0Var.b;
        } else {
            i2 = -1;
            i3 = -1;
            i4 = -1;
        }
        dy0 dy0Var2 = aVar2.c;
        if (dy0Var2 != null) {
            int i8 = dy0Var2.d;
            i6 = dy0Var2.c;
            i7 = dy0Var2.b;
            i5 = i8;
        } else {
            i5 = -1;
            i6 = -1;
        }
        simpleMonthView.w = 6;
        simpleMonthView.requestLayout();
        map.put("selected_begin_year", Integer.valueOf(i2));
        map.put("selected_last_year", Integer.valueOf(i7));
        map.put("selected_begin_month", Integer.valueOf(i4));
        map.put("selected_last_month", Integer.valueOf(i6));
        map.put("selected_begin_day", Integer.valueOf(i3));
        map.put("selected_last_day", Integer.valueOf(i5));
        map.put("year", Integer.valueOf(year));
        map.put("month", Integer.valueOf(monthValue));
        map.put("week_start", Integer.valueOf(this.v.getFirstDayOfWeek()));
        simpleMonthView.setMonthParams(map);
        simpleMonthView.invalidate();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        viewGroup.getClass();
        Context context = viewGroup.getContext();
        context.getClass();
        return new com.warefly.checkscan.util.calendar.calendar.a(new SimpleMonthView(context, this.t), this);
    }
}
