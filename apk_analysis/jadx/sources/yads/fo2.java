package yads;

import android.content.Context;
import android.content.res.TypedArray;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import com.yandex.mobile.ads.R$dimen;
import com.yandex.mobile.ads.R$drawable;
import defpackage.j59;
import defpackage.k57;
import defpackage.nl3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public final class fo2 implements tp0 {
    public final vq0 b;
    public final do2 c;
    public final cf2 d;
    public g03 e;
    public vn0 f;
    public go2 g;
    public final tp0 h;

    public fo2(vq0 vq0Var, do2 do2Var, cf2 cf2Var) {
        this.b = vq0Var;
        this.c = do2Var;
        this.d = cf2Var;
        this.h = do2Var.a(new defpackage.av5(this, 3));
    }

    public static final j59 a(fo2 fo2Var, go2 go2Var) {
        int i;
        go2 go2Var2 = fo2Var.g;
        if (go2Var2 == null || go2Var == null || go2Var2.a != go2Var.a) {
            g03 g03Var = fo2Var.e;
            if (g03Var != null) {
                fo2Var.b.removeView(g03Var);
            }
            fo2Var.e = null;
            vn0 vn0Var = fo2Var.f;
            if (vn0Var != null) {
                fo2Var.b.removeView(vn0Var);
            }
            fo2Var.f = null;
        }
        if (go2Var != null) {
            if (go2Var.a) {
                fo2Var.c();
                vn0 vn0Var2 = fo2Var.f;
                if (vn0Var2 != null) {
                    vn0Var2.d.setText(go2Var.b());
                }
                vn0 vn0Var3 = fo2Var.f;
                if (vn0Var3 != null) {
                    ub5 ub5Var = fo2Var.c.b.z;
                    Map mapC = ub5Var.c();
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    linkedHashMap.put("", ub5Var.a().a.d);
                    for (Map.Entry entry : mapC.entrySet()) {
                        linkedHashMap.put((String) entry.getKey(), ((ms2) entry.getValue()).a.d);
                    }
                    g76 g76Var = vn0Var3.c;
                    Map map = g76Var.d;
                    if (!linkedHashMap.isEmpty()) {
                        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                            if (!defpackage.aa4.e(map.get(entry2.getKey()), entry2.getValue())) {
                                Set setY0 = defpackage.qn1.y0(g76Var.d.values());
                                g76Var.d = linkedHashMap;
                                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                                for (Map.Entry entry3 : linkedHashMap.entrySet()) {
                                    if (!setY0.contains((z66) entry3.getValue())) {
                                        linkedHashMap2.put(entry3.getKey(), entry3.getValue());
                                    }
                                }
                                for (Map.Entry entry4 : linkedHashMap2.entrySet()) {
                                    String str = (String) entry4.getKey();
                                    z66 z66Var = (z66) entry4.getValue();
                                    List listB = z66Var.b();
                                    ArrayList arrayList = new ArrayList(defpackage.kn1.q(listB, 10));
                                    Iterator it = listB.iterator();
                                    while (it.hasNext()) {
                                        arrayList.add(((u66) it.next()).a());
                                    }
                                    z66Var.a(arrayList, g76Var.a(str));
                                }
                                g76Var.b.clear();
                                for (Map.Entry entry5 : g76Var.d.entrySet()) {
                                    String str2 = (String) entry5.getKey();
                                    for (u66 u66Var : ((z66) entry5.getValue()).b()) {
                                        g76Var.b.put(new defpackage.b36(str2, u66Var.a()), u66Var);
                                    }
                                }
                                g76Var.a();
                                break;
                            }
                        }
                    }
                }
            } else {
                if (go2Var.a().length() > 0) {
                    fo2Var.a();
                } else {
                    g03 g03Var2 = fo2Var.e;
                    if (g03Var2 != null) {
                        fo2Var.b.removeView(g03Var2);
                    }
                    fo2Var.e = null;
                }
                g03 g03Var3 = fo2Var.e;
                View childAt = g03Var3 != null ? g03Var3.getChildAt(0) : null;
                AppCompatTextView appCompatTextView = childAt instanceof AppCompatTextView ? (AppCompatTextView) childAt : null;
                if (appCompatTextView != null) {
                    appCompatTextView.setText(go2Var.a());
                    int i2 = go2Var.c;
                    if (i2 > 0 && go2Var.b > 0) {
                        i = R$drawable.monetization_ads_divkit_warning_error_counter_background;
                    } else if (i2 == 0 && go2Var.b == 0) {
                        i = R$drawable.monetization_ads_divkit_neutral_counter_background;
                    } else {
                        i = i2 > 0 ? R$drawable.monetization_ads_divkit_warning_counter_background : R$drawable.monetization_ads_divkit_error_counter_background;
                    }
                    appCompatTextView.setBackgroundResource(i);
                }
            }
        }
        fo2Var.g = go2Var;
        return j59.a;
    }

    public static final j59 b(fo2 fo2Var) {
        if (fo2Var.g != null) {
            do2 do2Var = fo2Var.c;
            Throwable thA = k57.a(do2Var.a(do2Var.a()));
            if (thA != null && io2.a(thA)) {
                do2Var.a(do2Var.a());
            }
        }
        return j59.a;
    }

    public final void c() {
        if (this.f != null) {
            return;
        }
        Context context = this.b.getContext();
        do2 do2Var = this.c;
        do2Var.getClass();
        vn0 vn0Var = new vn0(context, new co2(do2Var.b), new defpackage.vo1(this, 6), new defpackage.xh2(this, 4));
        this.b.addView(vn0Var, new ViewGroup.LayoutParams(-1, -1));
        this.f = vn0Var;
    }

    @Override // java.lang.AutoCloseable, java.io.Closeable
    public final void close() {
        boolean zIsTerminated;
        AutoCloseable autoCloseable = this.h;
        if (autoCloseable instanceof AutoCloseable) {
            autoCloseable.close();
        } else if (autoCloseable instanceof ExecutorService) {
            ExecutorService executorService = (ExecutorService) autoCloseable;
            if (executorService != ForkJoinPool.commonPool() && !(zIsTerminated = executorService.isTerminated())) {
                executorService.shutdown();
                boolean z = false;
                while (!zIsTerminated) {
                    try {
                        zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                    } catch (InterruptedException unused) {
                        if (!z) {
                            executorService.shutdownNow();
                            z = true;
                        }
                    }
                }
                if (z) {
                    Thread.currentThread().interrupt();
                }
            }
        } else if (autoCloseable instanceof TypedArray) {
            ((TypedArray) autoCloseable).recycle();
        } else if (autoCloseable instanceof MediaMetadataRetriever) {
            ((MediaMetadataRetriever) autoCloseable).release();
        } else {
            if (!(autoCloseable instanceof MediaDrm)) {
                defpackage.mi2.b();
                return;
            }
            ((MediaDrm) autoCloseable).release();
        }
        this.b.removeView(this.e);
        this.b.removeView(this.f);
    }

    public static final j59 a(fo2 fo2Var) {
        do2 do2Var = fo2Var.c;
        go2 go2VarA = go2.a(do2Var.h, false, 0, 0, null, null, 30);
        do2Var.h = go2VarA;
        Iterator it = do2Var.c.iterator();
        while (it.hasNext()) {
            ((nl3) it.next()).invoke(go2VarA);
        }
        return j59.a;
    }

    public final void a() {
        if (this.e != null) {
            return;
        }
        AppCompatTextView appCompatTextView = new AppCompatTextView(this.b.getContext());
        appCompatTextView.setBackgroundResource(R$drawable.monetization_ads_divkit_error_counter_background);
        appCompatTextView.setTextSize(12.0f);
        appCompatTextView.setTextColor(-16777216);
        appCompatTextView.setGravity(17);
        appCompatTextView.setElevation(appCompatTextView.getResources().getDimension(R$dimen.monetization_ads_divkit_div_shadow_elevation));
        appCompatTextView.setTypeface(this.d.d());
        appCompatTextView.setOnClickListener(new defpackage.y20(this, 1));
        DisplayMetrics displayMetrics = this.b.getContext().getResources().getDisplayMetrics();
        int iB = defpackage.w65.b(pq.a((Number) 24, displayMetrics));
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(iB, iB);
        int iB2 = defpackage.w65.b(pq.a((Number) 8, displayMetrics));
        marginLayoutParams.topMargin = iB2;
        marginLayoutParams.leftMargin = iB2;
        marginLayoutParams.rightMargin = iB2;
        marginLayoutParams.bottomMargin = iB2;
        g03 g03Var = new g03(this.b.getContext(), null, 6, 0);
        g03Var.addView(appCompatTextView, marginLayoutParams);
        this.b.addView(g03Var, -1, -1);
        this.e = g03Var;
    }

    public static final void a(fo2 fo2Var, View view) {
        do2 do2Var = fo2Var.c;
        int width = fo2Var.b.getWidth();
        int height = fo2Var.b.getHeight();
        int iB = defpackage.w65.b(pq.a((Number) 150, do2Var.b.l.getResources().getDisplayMetrics()));
        if (width >= iB && height >= iB) {
            go2 go2VarA = go2.a(do2Var.h, true, 0, 0, null, null, 30);
            do2Var.h = go2VarA;
            Iterator it = do2Var.c.iterator();
            while (it.hasNext()) {
                ((nl3) it.next()).invoke(go2VarA);
            }
            return;
        }
        Throwable thA = k57.a(do2Var.a(do2Var.a()));
        if (thA == null || !io2.a(thA)) {
            return;
        }
        do2Var.a(do2Var.a());
    }
}
