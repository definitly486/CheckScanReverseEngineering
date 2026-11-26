package yads;

import android.content.Context;
import android.graphics.Typeface;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class rz2 {
    public final ry2 a;

    public rz2(Context context) {
        this.a = new ry2(context.getApplicationContext());
    }

    public final Typeface a(cz2 cz2Var) {
        ConcurrentHashMap concurrentHashMap = oz2.a;
        Typeface typeface = (Typeface) concurrentHashMap.get(cz2Var);
        if (typeface != null) {
            return typeface;
        }
        Typeface typefaceA = this.a.a(cz2Var);
        if (typefaceA == null) {
            return null;
        }
        concurrentHashMap.put(cz2Var, typefaceA);
        return typefaceA;
    }
}
