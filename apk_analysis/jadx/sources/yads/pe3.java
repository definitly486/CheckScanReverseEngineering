package yads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class pe3 {
    public Object[] a;
    public int b = 0;

    public pe3(int i) {
        this.a = new Object[i * 2];
    }

    public final pe3 a(Object obj, Object obj2) {
        a(this.b + 1);
        h20.a(obj, obj2);
        Object[] objArr = this.a;
        int i = this.b;
        int i2 = i * 2;
        objArr[i2] = obj;
        objArr[i2 + 1] = obj2;
        this.b = i + 1;
        return this;
    }

    public final void a(int i) {
        int i2 = i * 2;
        Object[] objArr = this.a;
        if (i2 > objArr.length) {
            this.a = Arrays.copyOf(objArr, he3.a(objArr.length, i2));
        }
    }
}
