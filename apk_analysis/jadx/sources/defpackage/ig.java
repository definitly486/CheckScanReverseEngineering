package defpackage;

import android.os.Bundle;
import android.view.View;
import android.view.inputmethod.DeleteRangeGesture;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import com.my.target.m1;
import java.util.HashMap;
import java.util.TreeMap;
import yads.cd1;
import yads.f04;
import yads.iz3;
import yads.jv;
import yads.jz3;
import yads.kv;
import yads.l66;
import yads.lh1;
import yads.r03;
import yads.vy3;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class ig implements mq5, l66, jv, m1.b, iz3, OnApplyWindowInsetsListener {
    public final /* synthetic */ int b;

    public static void d(int i, HashMap map, String str, int i2, String str2) {
        map.put(str, Integer.valueOf(i));
        map.put(str2, Integer.valueOf(i2));
    }

    public static /* bridge */ /* synthetic */ boolean e(Object obj) {
        return obj instanceof DeleteRangeGesture;
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a, reason: collision with other method in class */
    public boolean mo9528a(Object obj) {
        Long l = (Long) obj;
        switch (this.b) {
            case 4:
                return cd1.b(l.longValue());
            default:
                return lh1.b(l.longValue());
        }
    }

    @Override // defpackage.mq5
    public Object c() {
        return new TreeMap();
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        return r03.c(view, windowInsetsCompat);
    }

    public /* synthetic */ ig(int i) {
        this.b = i;
    }

    @Override // yads.jv
    public kv a(Bundle bundle) {
        return f04.a(bundle);
    }

    @Override // com.my.target.m1.b
    /* JADX INFO: renamed from: a */
    public void mo1a() {
    }

    @Override // yads.iz3
    public int a(Object obj) {
        return jz3.a((vy3) obj);
    }
}
