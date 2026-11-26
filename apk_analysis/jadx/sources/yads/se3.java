package yads;

import java.io.Serializable;

/* JADX INFO: loaded from: classes6.dex */
public final class se3 implements Serializable {
    public final Object[] b;

    public se3(Object[] objArr) {
        this.b = objArr;
    }

    public Object readResolve() {
        Object[] objArr = this.b;
        int length = objArr.length;
        if (length != 0) {
            return length != 1 ? te3.b(objArr.length, (Object[]) objArr.clone()) : new pl5(objArr[0]);
        }
        return q55.j;
    }
}
