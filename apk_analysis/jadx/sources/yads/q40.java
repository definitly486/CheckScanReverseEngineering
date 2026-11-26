package yads;

import java.util.Comparator;

/* JADX INFO: loaded from: classes6.dex */
public final class q40 extends s40 {
    @Override // yads.s40
    public final s40 a(int i, int i2) {
        int i3;
        if (i < i2) {
            i3 = -1;
        } else {
            i3 = i > i2 ? 1 : 0;
        }
        return a(i3);
    }

    @Override // yads.s40
    public final s40 b(boolean z, boolean z2) {
        return a(xu.a(z2, z));
    }

    @Override // yads.s40
    public final s40 a(Object obj, Object obj2, Comparator comparator) {
        return a(comparator.compare(obj, obj2));
    }

    @Override // yads.s40
    public final int a() {
        return 0;
    }

    @Override // yads.s40
    public final s40 a(boolean z, boolean z2) {
        return a(xu.a(z, z2));
    }

    public static s40 a(int i) {
        if (i < 0) {
            return s40.b;
        }
        return i > 0 ? s40.c : s40.a;
    }
}
