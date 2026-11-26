package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public abstract class wh2 {
    /* JADX WARN: Code duplicated, block: B:12:0x002e A[PHI: r9
      0x002e: PHI (r9v8 int) = (r9v0 int), (r9v0 int), (r9v10 int), (r9v0 int) binds: [B:24:0x0049, B:19:0x0041, B:11:0x0026, B:8:0x0021] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:30:0x005b  */
    /* JADX WARN: Code duplicated, block: B:31:0x005d  */
    public static int a(int i, int i2, int i3, int i4, int i5) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i) - i2;
        int i6 = 0;
        int iMax = Math.max(0, size);
        if (mode != Integer.MIN_VALUE) {
            if (mode != 0) {
                if (mode == 1073741824) {
                    if (i3 < 0 || i3 > Integer.MAX_VALUE) {
                        if (i3 == -1) {
                            i3 = Math.min(Math.max(iMax, i4), i5);
                        } else {
                            if (i3 == -2) {
                                if (i5 == Integer.MAX_VALUE) {
                                    i3 = iMax;
                                } else {
                                    i3 = i5;
                                }
                            } else if (i3 == -3) {
                                i3 = Math.min(Math.max(iMax, i4), i5);
                            }
                            i6 = Integer.MIN_VALUE;
                        }
                    }
                    i6 = 1073741824;
                }
                i3 = 0;
            } else if (i3 >= 0) {
                i6 = 1073741824;
            } else if (i5 == Integer.MAX_VALUE) {
                i3 = iMax;
            } else {
                i3 = i5;
                i6 = Integer.MIN_VALUE;
            }
        } else if (i3 < 0 || i3 > Integer.MAX_VALUE) {
            if (i3 == -1) {
                i3 = Math.min(Math.max(iMax, i4), i5);
            } else if (i3 == -2) {
                if (i5 == Integer.MAX_VALUE) {
                    i3 = iMax;
                } else {
                    i3 = i5;
                }
            } else if (i3 == -3) {
                i3 = Math.min(Math.max(iMax, i4), i5);
            } else {
                i3 = 0;
            }
            i6 = Integer.MIN_VALUE;
        } else {
            i6 = 1073741824;
        }
        return View.MeasureSpec.makeMeasureSpec(i3, i6);
    }

    public static float b(int i, float f) {
        if (i == 1) {
            return 0.0f;
        }
        return f / (i - 1);
    }

    public static float c(int i, float f) {
        return f / (i + 1);
    }

    public static float a(int i, float f) {
        return f / (i * 2);
    }
}
