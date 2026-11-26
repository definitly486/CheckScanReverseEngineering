package defpackage;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class ln2 {
    public final /* synthetic */ int a = 1;
    public int b;
    public int c;
    public int d;
    public Serializable e;

    public ln2(int i, String str, int i2, int i3) {
        this.b = i;
        this.e = str;
        this.c = i2;
        this.d = i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.io.Serializable, java.lang.Object[]] */
    public void a(cp2 cp2Var) {
        Object obj;
        Object obj2;
        Object[] objArr = (Object[]) this.e;
        int i = this.b;
        int iHashCode = cp2Var.hashCode() * (-1640531527);
        int i2 = (iHashCode ^ (iHashCode >>> 16)) & i;
        Object obj3 = objArr[i2];
        if (obj3 != null) {
            if (obj3.equals(cp2Var)) {
                return;
            }
            do {
                i2 = (i2 + 1) & i;
                obj2 = objArr[i2];
                if (obj2 == null) {
                }
            } while (!obj2.equals(cp2Var));
            return;
        }
        objArr[i2] = cp2Var;
        int i3 = this.c + 1;
        this.c = i3;
        if (i3 < this.d) {
            return;
        }
        Object[] objArr2 = (Object[]) this.e;
        int length = objArr2.length;
        int i4 = length << 1;
        int i5 = i4 - 1;
        ?? r5 = new Object[i4];
        while (true) {
            int i6 = i3 - 1;
            if (i3 == 0) {
                this.b = i5;
                this.d = (int) (i4 * 0.75f);
                this.e = r5;
                return;
            }
            do {
                length--;
                obj = objArr2[length];
            } while (obj == null);
            int iHashCode2 = obj.hashCode() * (-1640531527);
            int i7 = (iHashCode2 ^ (iHashCode2 >>> 16)) & i5;
            if (r5[i7] != 0) {
                do {
                    i7 = (i7 + 1) & i5;
                } while (r5[i7] != 0);
            }
            r5[i7] = objArr2[length];
            i3 = i6;
        }
    }

    public void b(int i, int i2, Object[] objArr) {
        int i3;
        Object obj;
        this.c--;
        while (true) {
            int i4 = i + 1;
            while (true) {
                i3 = i4 & i2;
                obj = objArr[i3];
                if (obj != null) {
                    int iHashCode = obj.hashCode() * (-1640531527);
                    int i5 = (iHashCode ^ (iHashCode >>> 16)) & i2;
                    if (i > i3) {
                        if (i >= i5 && i5 > i3) {
                            break;
                        } else {
                            i4 = i3 + 1;
                        }
                    } else if (i >= i5 || i5 > i3) {
                        break;
                    } else {
                        i4 = i3 + 1;
                    }
                } else {
                    objArr[i] = null;
                    return;
                }
            }
            objArr[i] = obj;
            i = i3;
        }
    }

    public String toString() {
        switch (this.a) {
            case 0:
                StringBuilder sb = new StringBuilder("ImageInfo{minHeight=");
                sb.append(this.b);
                sb.append(", width=");
                sb.append(this.c);
                sb.append(", height=");
                sb.append(this.d);
                sb.append(", url='");
                return me0.d(sb, (String) this.e, "'}");
            default:
                return super.toString();
        }
    }

    public /* synthetic */ ln2() {
    }
}
