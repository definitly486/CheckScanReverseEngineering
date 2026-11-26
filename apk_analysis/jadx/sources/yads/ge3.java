package yads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ge3 extends he3 {
    public Object[] a;
    public int b;
    public boolean c;

    public ge3() {
        h20.a(4, "initialCapacity");
        this.a = new Object[4];
        this.b = 0;
    }

    public final void a(int i) {
        Object[] objArr = this.a;
        if (objArr.length < i) {
            this.a = Arrays.copyOf(objArr, he3.a(objArr.length, i));
            this.c = false;
        } else if (this.c) {
            this.a = (Object[]) objArr.clone();
            this.c = false;
        }
    }
}
