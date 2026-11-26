package androidx.media3.common.util;

import defpackage.o8;

/* JADX INFO: loaded from: classes3.dex */
public final class GlRect {
    public int bottom;
    public int left;
    public int right;
    public int top;

    public GlRect(int i, int i2, int i3, int i4) {
        o8.e(i <= i3 && i2 <= i4);
        this.left = i;
        this.bottom = i2;
        this.right = i3;
        this.top = i4;
    }

    public GlRect(int i, int i2) {
        this(0, 0, i, i2);
    }
}
