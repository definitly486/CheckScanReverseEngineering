package yads;

import android.content.Context;
import android.content.res.TypedArray;

/* JADX INFO: loaded from: classes6.dex */
public abstract class wl {
    public static final int a(Context context, int i) {
        int color;
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{i});
        try {
            color = typedArrayObtainStyledAttributes.getColor(0, 0);
        } catch (Exception unused) {
            color = -16777216;
        }
        typedArrayObtainStyledAttributes.recycle();
        return color;
    }
}
