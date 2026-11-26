package com.my.target;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.my.target.common.views.StarsRatingView;
import defpackage.bd8;
import defpackage.bj;
import defpackage.d6a;
import defpackage.e6a;
import defpackage.gia;
import defpackage.l3a;
import defpackage.o6a;
import defpackage.t2a;
import defpackage.up9;
import defpackage.xda;
import java.util.HashMap;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class p1 extends FrameLayout implements View.OnTouchListener {
    public static final /* synthetic */ int p = 0;
    public final TextView b;
    public final TextView c;
    public final TextView d;
    public final LinearLayout e;
    public final LinearLayout f;
    public final TextView g;
    public final StarsRatingView h;
    public final TextView i;
    public final l3a j;
    public final boolean k;
    public final HashMap l;
    public String m;
    public wf.b n;
    public boolean o;

    public p1(Context context, l3a l3aVar, boolean z) {
        super(context);
        this.l = new HashMap();
        this.o = false;
        TextView textView = new TextView(context);
        this.b = textView;
        this.c = new TextView(context);
        TextView textView2 = new TextView(context);
        this.d = textView2;
        this.e = new LinearLayout(context);
        TextView textView3 = new TextView(context);
        this.g = textView3;
        StarsRatingView starsRatingView = new StarsRatingView(context);
        this.h = starsRatingView;
        TextView textView4 = new TextView(context);
        this.i = textView4;
        this.f = new LinearLayout(context);
        l3a.n(textView, "title_text");
        l3a.n(textView2, "description_text");
        l3a.n(textView3, "disclaimer_text");
        l3a.n(starsRatingView, "stars_view");
        l3a.n(textView4, "votes_text");
        this.j = l3aVar;
        this.k = z;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:14:0x008b  */
    public final void a(t2a t2aVar, wf.b bVar) {
        boolean z = t2aVar.l;
        boolean z2 = t2aVar.p;
        boolean z3 = t2aVar.f;
        boolean z4 = t2aVar.e;
        boolean z5 = t2aVar.b;
        boolean z6 = t2aVar.j;
        boolean z7 = t2aVar.k;
        boolean z8 = t2aVar.a;
        boolean z9 = t2aVar.m;
        boolean z10 = this.o;
        HashMap map = this.l;
        TextView textView = this.g;
        TextView textView2 = this.i;
        StarsRatingView starsRatingView = this.h;
        TextView textView3 = this.d;
        TextView textView4 = this.c;
        TextView textView5 = this.b;
        if (!z10) {
            if (z9) {
                setOnClickListener(new bd8(bVar, 2));
                l3a.h(this, -1, -3806472);
                return;
            }
            this.n = bVar;
            textView5.setOnTouchListener(this);
            textView4.setOnTouchListener(this);
            textView3.setOnTouchListener(this);
            starsRatingView.setOnTouchListener(this);
            textView2.setOnTouchListener(this);
            textView.setOnTouchListener(this);
            setOnTouchListener(this);
            map.put(textView5, Boolean.valueOf(z8));
            String str = this.m;
            if (str == null) {
                str = "";
            }
            switch (str) {
                case "web":
                case "webform":
                    map.put(textView4, Boolean.valueOf(z6));
                    break;
                case "store":
                    map.put(textView4, Boolean.valueOf(z7));
                    break;
            }
            map.put(textView3, Boolean.valueOf(z5));
            map.put(starsRatingView, Boolean.valueOf(z4));
            map.put(textView2, Boolean.valueOf(z3));
            map.put(textView, Boolean.valueOf(z2));
            map.put(this, Boolean.valueOf(z));
            return;
        }
        this.n = bVar;
        textView5.setOnTouchListener(this);
        textView4.setOnTouchListener(this);
        textView3.setOnTouchListener(this);
        starsRatingView.setOnTouchListener(this);
        textView2.setOnTouchListener(this);
        textView.setOnTouchListener(this);
        setOnTouchListener(this);
        if (z9) {
            Boolean bool = Boolean.TRUE;
            map.put(textView5, bool);
            map.put(textView3, bool);
            map.put(starsRatingView, bool);
            map.put(textView2, bool);
            map.put(textView4, bool);
            map.put(textView, bool);
            map.put(this, bool);
            l3a.h(this, -1, -3806472);
            return;
        }
        map.put(textView5, Boolean.valueOf(z8));
        String str2 = this.m;
        if (str2 == null) {
            str2 = "";
        }
        switch (str2) {
            case "web":
            case "webform":
                map.put(textView4, Boolean.valueOf(z6));
                break;
            case "store":
                map.put(textView4, Boolean.valueOf(z7));
                break;
        }
        map.put(textView3, Boolean.valueOf(z5));
        map.put(starsRatingView, Boolean.valueOf(z4));
        map.put(textView2, Boolean.valueOf(z3));
        map.put(textView, Boolean.valueOf(z2));
        map.put(this, Boolean.valueOf(z));
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        e6a d6aVar;
        boolean z = this.o;
        HashMap map = this.l;
        if (!z) {
            if (map.containsKey(view)) {
                if (((Boolean) map.get(view)).booleanValue()) {
                    int action = motionEvent.getAction();
                    if (action == 0) {
                        setBackgroundColor(-3806472);
                        return true;
                    }
                    if (action == 1) {
                        setBackgroundColor(-1);
                        wf.b bVar = this.n;
                        if (bVar != null) {
                            bVar.a(view, new gia());
                        }
                    } else if (action == 3) {
                        setBackgroundColor(-1);
                        return true;
                    }
                }
                return true;
            }
            return false;
        }
        if (map.containsKey(view)) {
            if (((Boolean) map.get(view)).booleanValue()) {
                int action2 = motionEvent.getAction();
                if (action2 == 0) {
                    setBackgroundColor(-3806472);
                    return true;
                }
                if (action2 == 1) {
                    setBackgroundColor(-1);
                    int i = 2;
                    if (motionEvent.getAction() == 1) {
                        float x = motionEvent.getX();
                        float y = motionEvent.getY();
                        float f = view.getContext().getResources().getDisplayMetrics().widthPixels;
                        float f2 = view.getContext().getResources().getDisplayMetrics().heightPixels;
                        int[] iArr = new int[2];
                        view.getLocationOnScreen(iArr);
                        d6aVar = new o6a((iArr[0] + x) / f, (iArr[1] + y) / f2);
                    } else {
                        d6aVar = null;
                    }
                    if (d6aVar == null) {
                        d6aVar = new d6a();
                    }
                    if (view == this.b) {
                        i = 1;
                    } else if (view == this.c) {
                        i = Objects.equals(this.m, "store") ? 1024 : 512;
                    } else if (view != this.d) {
                        if (view == this.h) {
                            i = 16;
                        } else if (view == this.i) {
                            i = 32;
                        } else {
                            i = view == this.g ? 32768 : 2048;
                        }
                    }
                    up9 up9Var = new up9(i, d6aVar);
                    wf.b bVar2 = this.n;
                    if (bVar2 != null) {
                        bVar2.a(view, up9Var);
                        return true;
                    }
                } else if (action2 == 3) {
                    setBackgroundColor(-1);
                    return true;
                }
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void setBanner(xda xdaVar) {
        this.m = xdaVar.m;
        String str = xdaVar.e;
        TextView textView = this.b;
        textView.setText(str);
        String str2 = xdaVar.c;
        TextView textView2 = this.d;
        textView2.setText(str2);
        float fB = xdaVar.b();
        StarsRatingView starsRatingView = this.h;
        starsRatingView.setRating(fB);
        Integer num = xdaVar.i;
        String strValueOf = String.valueOf(num == null ? 0 : num.intValue());
        TextView textView3 = this.i;
        textView3.setText(strValueOf);
        this.o = xdaVar.Q.c;
        String str3 = xdaVar.m;
        str3.getClass();
        byte b = -1;
        switch (str3.hashCode()) {
            case 117588:
                if (str3.equals("web")) {
                    b = 0;
                }
                break;
            case 109770977:
                if (str3.equals("store")) {
                    b = 1;
                }
                break;
            case 1223953944:
                if (str3.equals("webform")) {
                    b = 2;
                }
                break;
        }
        LinearLayout linearLayout = this.e;
        TextView textView4 = this.c;
        switch (b) {
            case 0:
            case 2:
                l3a.n(textView4, "domain_text");
                linearLayout.setVisibility(8);
                textView4.setText(xdaVar.l);
                linearLayout.setVisibility(8);
                textView4.setTextColor(-16733198);
                break;
            case 1:
                l3a.n(textView4, "category_text");
                String str4 = xdaVar.j;
                String str5 = xdaVar.k;
                String strC = TextUtils.isEmpty(str4) ? "" : bj.c("", str4);
                if (!TextUtils.isEmpty(strC) && !TextUtils.isEmpty(str5)) {
                    strC = strC.concat(", ");
                }
                if (!TextUtils.isEmpty(str5)) {
                    strC = bj.c(strC, str5);
                }
                if (TextUtils.isEmpty(strC)) {
                    textView4.setVisibility(8);
                } else {
                    textView4.setText(strC);
                    textView4.setVisibility(0);
                }
                linearLayout.setVisibility(0);
                linearLayout.setGravity(16);
                if (xdaVar.b() > 0.0f) {
                    starsRatingView.setVisibility(0);
                    Integer num2 = xdaVar.i;
                    if ((num2 == null ? 0 : num2.intValue()) > 0) {
                        textView3.setVisibility(0);
                    } else {
                        textView3.setVisibility(8);
                    }
                } else {
                    starsRatingView.setVisibility(8);
                    textView3.setVisibility(8);
                }
                textView4.setTextColor(-3355444);
                break;
        }
        boolean zIsEmpty = TextUtils.isEmpty(xdaVar.f);
        TextView textView5 = this.g;
        if (zIsEmpty) {
            textView5.setVisibility(8);
        } else {
            textView5.setVisibility(0);
            textView5.setText(xdaVar.f);
        }
        if (this.k) {
            textView.setTextSize(2, 32.0f);
            textView2.setTextSize(2, 24.0f);
            textView5.setTextSize(2, 18.0f);
            textView4.setTextSize(2, 18.0f);
            return;
        }
        textView.setTextSize(2, 20.0f);
        textView2.setTextSize(2, 16.0f);
        textView5.setTextSize(2, 14.0f);
        textView4.setTextSize(2, 16.0f);
    }
}
