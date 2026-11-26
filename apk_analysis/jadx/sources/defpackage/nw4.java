package defpackage;

import android.graphics.Bitmap;
import android.graphics.Rect;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class nw4 {
    public HashMap c;
    public HashMap d;
    public float e;
    public HashMap f;
    public ArrayList g;
    public SparseArrayCompat<gi3> h;
    public LongSparseArray<xk4> i;
    public ArrayList j;
    public Rect k;
    public float l;
    public float m;
    public float n;
    public boolean o;
    public final s46 a = new s46();
    public final HashSet<String> b = new HashSet<>();
    public int p = 0;

    public final void a(String str) {
        gv4.b(str);
        this.b.add(str);
    }

    public final float b() {
        return (long) (((this.m - this.l) / this.n) * 1000.0f);
    }

    public final Map<String, sx4> c() {
        float fC = ib9.c();
        if (fC != this.e) {
            for (Map.Entry entry : this.d.entrySet()) {
                HashMap map = this.d;
                String str = (String) entry.getKey();
                sx4 sx4Var = (sx4) entry.getValue();
                float f = this.e / fC;
                int i = (int) (sx4Var.a * f);
                int i2 = (int) (sx4Var.b * f);
                sx4 sx4Var2 = new sx4(i, i2, sx4Var.c, sx4Var.d, sx4Var.e);
                Bitmap bitmap = sx4Var.f;
                if (bitmap != null) {
                    sx4Var2.f = Bitmap.createScaledBitmap(bitmap, i, i2, true);
                }
                map.put(str, sx4Var2);
            }
        }
        this.e = fC;
        return this.d;
    }

    public final u05 d(String str) {
        int size = this.g.size();
        for (int i = 0; i < size; i++) {
            u05 u05Var = (u05) this.g.get(i);
            String str2 = u05Var.a;
            if (str2.equalsIgnoreCase(str) || (str2.endsWith("\r") && str2.substring(0, str2.length() - 1).equalsIgnoreCase(str))) {
                return u05Var;
            }
        }
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LottieComposition:\n");
        Iterator it = this.j.iterator();
        while (it.hasNext()) {
            sb.append(((xk4) it.next()).a("\t"));
        }
        return sb.toString();
    }
}
