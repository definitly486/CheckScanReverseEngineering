package com.warefly.checkscan.util.calendar.calendar;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.format.Time;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.material.timepicker.TimeModel;
import com.tapjoy.TJAdUnitConstants;
import com.warefly.checkscan.R;
import defpackage.dy0;
import defpackage.fg;
import java.security.InvalidParameterException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class SimpleMonthView extends View {
    public final Calendar A;
    public final int B;
    public final int C;
    public final int D;
    public final int E;
    public final int F;
    public final int G;
    public final int H;
    public final int I;
    public final int J;
    public final int K;
    public final Paint b;
    public final Paint c;
    public final Paint d;
    public boolean e;
    public boolean f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public int t;
    public int u;
    public final boolean v;
    public int w;
    public final boolean x;
    public a y;
    public final Time z;

    public interface a {
        void a(dy0 dy0Var);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimpleMonthView(Context context, TypedArray typedArray) {
        super(context);
        typedArray.getClass();
        Paint paint = new Paint();
        Paint paint2 = new Paint();
        this.b = paint2;
        Paint paint3 = new Paint();
        Paint paint4 = new Paint();
        this.c = paint4;
        Paint paint5 = new Paint();
        this.d = paint5;
        this.g = -1;
        this.h = -1;
        this.i = -1;
        this.j = -1;
        this.k = -1;
        this.l = -1;
        this.m = -1;
        this.n = -1;
        this.o = 1;
        this.p = 7;
        this.s = 32;
        this.v = true;
        this.w = 6;
        this.x = typedArray.getBoolean(10, false);
        Paint paint6 = new Paint();
        Time time = new Time(Time.getCurrentTimezone());
        this.z = time;
        this.A = Calendar.getInstance();
        String string = getResources().getString(R.string.sans_serif);
        string.getClass();
        String string2 = getResources().getString(R.string.sans_serif);
        string2.getClass();
        this.B = typedArray.getColor(1, getResources().getColor(R.color.current_day));
        int color = typedArray.getColor(4, getResources().getColor(R.color.month));
        int color2 = typedArray.getColor(2, getResources().getColor(R.color.normal_day));
        this.C = typedArray.getColor(5, getResources().getColor(R.color.normal_day));
        int color3 = typedArray.getColor(8, getResources().getColor(R.color.selected_day_text));
        this.D = color3;
        this.E = typedArray.getColor(6, getResources().getColor(R.color.normal_day));
        int color4 = typedArray.getColor(7, getResources().getColor(R.color.selected_day_background));
        this.F = color4;
        int color5 = typedArray.getColor(7, getResources().getColor(R.color.selected_day_background));
        this.G = typedArray.getColor(3, getResources().getColor(R.color.future_day));
        this.H = typedArray.getDimensionPixelSize(12, getResources().getDimensionPixelOffset(R.dimen.selected_day_radius));
        int dimensionPixelSize = typedArray.getDimensionPixelSize(13, getResources().getDimensionPixelSize(R.dimen.text_size_day));
        this.I = dimensionPixelSize;
        int dimensionPixelSize2 = typedArray.getDimensionPixelSize(14, getResources().getDimensionPixelSize(R.dimen.text_size_day_name));
        int dimensionPixelOffset = typedArray.getDimensionPixelOffset(11, getResources().getDimensionPixelOffset(R.dimen.header_month_height));
        this.J = dimensionPixelOffset;
        int dimensionPixelSize3 = typedArray.getDimensionPixelSize(15, getResources().getDimensionPixelSize(R.dimen.text_size_month));
        this.K = dimensionPixelSize3;
        time.setToNow();
        this.s = (typedArray.getDimensionPixelSize(0, getResources().getDimensionPixelOffset(R.dimen.calendar_height)) - dimensionPixelOffset) / 6;
        paint4.setFakeBoldText(true);
        paint4.setAntiAlias(true);
        paint4.setTextSize(dimensionPixelSize3);
        paint4.setTypeface(Typeface.create(string2, 1));
        paint4.setColor(color);
        Paint.Align align = Paint.Align.CENTER;
        paint4.setTextAlign(align);
        Paint.Style style = Paint.Style.FILL;
        paint4.setStyle(style);
        paint3.setFakeBoldText(true);
        paint3.setAntiAlias(true);
        paint3.setColor(color3);
        paint3.setTextAlign(align);
        paint3.setStyle(style);
        paint5.setFakeBoldText(true);
        paint5.setAntiAlias(true);
        paint5.setColor(color4);
        paint5.setTextAlign(align);
        paint5.setStyle(style);
        paint.setAntiAlias(true);
        paint.setTextSize(dimensionPixelSize2);
        paint.setColor(color2);
        paint.setTypeface(Typeface.create(string, 0));
        paint.setStyle(style);
        paint.setTextAlign(align);
        paint.setFakeBoldText(true);
        paint2.setAntiAlias(true);
        paint2.setTextSize(dimensionPixelSize);
        paint2.setStyle(style);
        paint2.setTextAlign(align);
        paint2.setFakeBoldText(false);
        paint6.setFakeBoldText(true);
        paint6.setAntiAlias(true);
        paint6.setColor(color5);
        paint6.setTextAlign(align);
        paint6.setStyle(style);
        paint6.setAlpha(128);
    }

    private final String getMonthAndYearString() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("LLLL", Locale.getDefault());
        Calendar calendar = this.A;
        return simpleDateFormat.format(calendar.getTime()) + " " + calendar.get(1);
    }

    private final void setRangeCells(int i) {
        int i2;
        int i3 = this.g;
        if (i3 == -1 || (i2 = this.h) == -1) {
            return;
        }
        int i4 = this.k;
        int i5 = this.l;
        Paint paint = this.b;
        int i6 = this.F;
        if (i4 == i5) {
            int i7 = this.i;
            int i8 = i7 + 1;
            int i9 = this.j;
            int i10 = this.r;
            if (i8 <= i10 && i10 < i9) {
                paint.setColor(i6);
                return;
            }
            if (i10 == i7 && i10 < i9 && i > i3) {
                paint.setColor(i6);
                return;
            }
            if (i10 == i7 && i10 == i9) {
                int i11 = i3 + 1;
                if (i < i2 && i11 <= i) {
                    paint.setColor(i6);
                    return;
                }
            }
            if (i10 != i9 || i10 == i7 || i >= i2) {
                return;
            }
            paint.setColor(i6);
            return;
        }
        int i12 = i4 + 1;
        int i13 = this.u;
        if (i12 <= i13 && i13 < i5) {
            paint.setColor(i6);
            return;
        }
        if (i13 == i4) {
            int i14 = this.r;
            int i15 = this.i;
            if (i14 > i15) {
                paint.setColor(i6);
                return;
            } else if (i14 == i15) {
                if (i > i3) {
                    paint.setColor(i6);
                    return;
                }
                return;
            }
        }
        if (i13 == i5) {
            int i16 = this.r;
            int i17 = this.j;
            if (i16 < i17) {
                paint.setColor(i6);
            } else {
                if (i16 != i17 || i >= i2) {
                    return;
                }
                paint.setColor(i6);
            }
        }
    }

    private final void setSelectedCell(int i) {
        int i2 = this.k;
        int i3 = this.u;
        if ((i2 == i3 && this.r == this.i && this.g == i) || (this.l == i3 && this.r == this.j && this.h == i)) {
            this.b.setColor(this.D);
        }
    }

    public final boolean a(int i, Time time) {
        int i2 = this.u;
        int i3 = time.year;
        if (i2 < i3) {
            return true;
        }
        if (i2 != i3 || this.r >= time.month) {
            return this.r == time.month && i < time.monthDay;
        }
        return true;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        canvas.getClass();
        char c = 2;
        int i = this.t / 2;
        int i2 = this.J;
        int i3 = (this.K / 3) + (i2 / 2);
        String monthAndYearString = getMonthAndYearString();
        Locale locale = Locale.ROOT;
        locale.getClass();
        String lowerCase = monthAndYearString.toLowerCase(locale);
        lowerCase.getClass();
        StringBuilder sb = new StringBuilder(lowerCase);
        int i4 = 0;
        sb.setCharAt(0, Character.toUpperCase(sb.charAt(0)));
        canvas.drawText(sb.toString(), i, i3, this.c);
        int i5 = this.s;
        int i6 = this.I;
        int i7 = (((i5 + i6) / 2) - 1) + i2;
        int i8 = this.t / 14;
        int i9 = this.q;
        int i10 = this.o;
        if (i9 < i10) {
            i9 += 7;
        }
        int i11 = i9 - i10;
        int i12 = 1;
        while (i12 <= this.p) {
            int i13 = ((i11 * 2) + 1) * i8;
            int i14 = this.r;
            if ((i14 == this.i && this.g == i12 && this.k == this.u) || (i14 == this.j && this.h == i12 && this.l == this.u)) {
                boolean z = this.x;
                Paint paint = this.d;
                int i15 = this.H;
                if (z) {
                    int i16 = i7 - (i6 / 3);
                    canvas.drawRoundRect(new RectF(i13 - i15, i16 - i15, i13 + i15, i16 + i15), 10.0f, 10.0f, paint);
                } else {
                    canvas.drawCircle(i13, i7 - (i6 / 3), i15, paint);
                }
            }
            boolean z2 = this.e;
            Paint paint2 = this.b;
            if (z2 && this.n == i12) {
                paint2.setColor(this.B);
                paint2.setTypeface(Typeface.defaultFromStyle(1));
            } else if (!this.f || i12 < this.m) {
                paint2.setColor(this.C);
                paint2.setTypeface(Typeface.defaultFromStyle(i4));
            } else {
                paint2.setColor(this.G);
                paint2.setTypeface(Typeface.defaultFromStyle(i4));
            }
            setSelectedCell(i12);
            setRangeCells(i12);
            if (!this.v) {
                Time time = this.z;
                if (a(i12, time) && time.month == this.r && time.year == this.u) {
                    paint2.setColor(this.E);
                    paint2.setTypeface(Typeface.defaultFromStyle(c));
                }
            }
            canvas.drawText(String.format(TimeModel.NUMBER_FORMAT, Arrays.copyOf(new Object[]{Integer.valueOf(i12)}, 1)), i13, i7, paint2);
            i11++;
            if (i11 == 7) {
                i7 += this.s;
                i11 = i4;
            }
            i12++;
            c = c;
            i4 = i4;
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        setMeasuredDimension(View.MeasureSpec.getSize(i), (this.s * this.w) + this.J);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        this.t = i;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        a aVar;
        int i;
        motionEvent.getClass();
        if (motionEvent.getAction() == 1) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            dy0 dy0Var = null;
            if (x >= 0.0f) {
                float f = this.t;
                if (x <= f) {
                    int i2 = ((int) (y - this.J)) / this.s;
                    int i3 = (int) (((x - 0.0f) * 7.0f) / f);
                    int i4 = this.q;
                    int i5 = this.o;
                    if (i4 < i5) {
                        i4 += 7;
                    }
                    int i6 = (i2 * 7) + (i3 - (i4 - i5)) + 1;
                    int i7 = this.r;
                    if (i7 <= 11 && i7 >= 0) {
                        int i8 = this.u;
                        switch (i7) {
                            case 0:
                            case 2:
                            case 4:
                            case 6:
                            case 7:
                            case 9:
                            case 11:
                                i = 31;
                                break;
                            case 1:
                                i = ((i8 % 4 == 0 && i8 % 100 != 0) || i8 % 400 == 0) ? 29 : 28;
                                break;
                            case 3:
                            case 5:
                            case 8:
                            case 10:
                                i = 30;
                                break;
                            default:
                                fg.c("Invalid Month");
                                return false;
                        }
                        if (i >= i6 && i6 >= 1) {
                            dy0Var = new dy0(i8, i7, i6);
                        }
                    }
                }
            }
            if (dy0Var != null && (aVar = this.y) != null) {
                int i9 = dy0Var.c;
                Time time = this.z;
                if (i9 != time.month || dy0Var.b != time.year || dy0Var.d <= time.monthDay) {
                    aVar.a(dy0Var);
                }
            }
        }
        return true;
    }

    public final void setMonthParams(HashMap<String, Integer> map) {
        int firstDayOfWeek;
        int i;
        map.getClass();
        if (!map.containsKey("month") && !map.containsKey("year")) {
            throw new InvalidParameterException("You must specify month and year for this view");
        }
        setTag(map);
        if (map.containsKey(TJAdUnitConstants.String.HEIGHT)) {
            Integer num = map.get(TJAdUnitConstants.String.HEIGHT);
            num.getClass();
            int iIntValue = num.intValue();
            this.s = iIntValue;
            if (iIntValue < 10) {
                this.s = 10;
            }
        }
        if (map.containsKey("selected_begin_day")) {
            Integer num2 = map.get("selected_begin_day");
            num2.getClass();
            this.g = num2.intValue();
        }
        if (map.containsKey("selected_last_day")) {
            Integer num3 = map.get("selected_last_day");
            num3.getClass();
            this.h = num3.intValue();
        }
        if (map.containsKey("selected_begin_month")) {
            Integer num4 = map.get("selected_begin_month");
            num4.getClass();
            this.i = num4.intValue();
        }
        if (map.containsKey("selected_last_month")) {
            Integer num5 = map.get("selected_last_month");
            num5.getClass();
            this.j = num5.intValue();
        }
        if (map.containsKey("selected_begin_year")) {
            Integer num6 = map.get("selected_begin_year");
            num6.getClass();
            this.k = num6.intValue();
        }
        if (map.containsKey("selected_last_year")) {
            Integer num7 = map.get("selected_last_year");
            num7.getClass();
            this.l = num7.intValue();
        }
        Integer num8 = map.get("month");
        num8.getClass();
        this.r = num8.intValue();
        Integer num9 = map.get("year");
        num9.getClass();
        this.u = num9.intValue();
        this.e = false;
        this.f = false;
        this.m = -1;
        this.n = -1;
        int i2 = this.r;
        Calendar calendar = this.A;
        calendar.set(2, i2);
        calendar.set(1, this.u);
        calendar.set(5, 1);
        this.q = calendar.get(7);
        if (map.containsKey("week_start")) {
            Integer num10 = map.get("week_start");
            num10.getClass();
            firstDayOfWeek = num10.intValue();
        } else {
            firstDayOfWeek = calendar.getFirstDayOfWeek();
        }
        this.o = firstDayOfWeek;
        int i3 = this.r;
        int i4 = this.u;
        switch (i3) {
            case 0:
            case 2:
            case 4:
            case 6:
            case 7:
            case 9:
            case 11:
                i = 31;
                break;
            case 1:
                i = ((i4 % 4 == 0 && i4 % 100 != 0) || i4 % 400 == 0) ? 29 : 28;
                break;
            case 3:
            case 5:
            case 8:
            case 10:
                i = 30;
                break;
            default:
                fg.c("Invalid Month");
                return;
        }
        this.p = i;
        int i5 = 0;
        while (true) {
            int i6 = i5 + 1;
            int i7 = this.u;
            Time time = this.z;
            int i8 = time.year;
            if (i7 == i8 && this.r == time.month && i6 == time.monthDay) {
                this.e = true;
                this.n = i6;
            }
            if (this.m == -1 && i7 == i8 && this.r == time.month && i6 > time.monthDay) {
                this.f = true;
                this.m = i6;
            }
            a(i6, time);
            if (i5 == i) {
                int i9 = this.q;
                int i10 = this.o;
                if (i9 < i10) {
                    i9 += 7;
                }
                int i11 = (i9 - i10) + this.p;
                this.w = (i11 / 7) + (i11 % 7 > 0 ? 1 : 0);
                return;
            }
            i5 = i6;
        }
    }

    public final void setOnDayClickListener(a aVar) {
        this.y = aVar;
    }
}
