package yads;

import androidx.viewpager.widget.ViewPager;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class z52 implements ViewPager.OnPageChangeListener {
    public final tt a;
    public final n32 b;
    public final zu5 c;
    public final my1 d;
    public y52 e;

    public z52(tt ttVar, n32 n32Var, zu5 zu5Var, my1 my1Var, y52 y52Var) {
        this.a = ttVar;
        this.b = n32Var;
        this.c = zu5Var;
        this.d = my1Var;
        this.e = y52Var;
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageScrollStateChanged(int i) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageScrolled(int i, float f, int i2) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageSelected(int i) {
        vq0 vq0Var = this.a.a;
        zu5 zu5Var = this.c;
        String str = vq0Var.O.a;
        String str2 = (String) this.b.e.getValue();
        LinkedHashMap linkedHashMap = zu5Var.a;
        Object linkedHashMap2 = linkedHashMap.get(str);
        if (linkedHashMap2 == null) {
            linkedHashMap2 = new LinkedHashMap();
            linkedHashMap.put(str, linkedHashMap2);
        }
        ((Map) linkedHashMap2).put(str2, Integer.valueOf(i));
        my1 my1Var = this.d;
        tt ttVar = this.a;
        vq0 vq0Var2 = ttVar.a;
        y52 y52Var = this.e;
        n32 n32Var = this.b;
        fs2 fs2Var = ttVar.b;
        my1Var.getClass();
        ms2 ms2VarA = vq0Var2.z.a(fs2Var);
        if (ms2VarA == null) {
            return;
        }
        my1Var.a(y52Var, vq0Var2, n32Var, ms2VarA);
    }
}
