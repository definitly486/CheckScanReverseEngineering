package yads;

import androidx.lifecycle.Lifecycle;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class t55 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[Lifecycle.Event.values().length];
        try {
            iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        a = iArr;
    }
}
