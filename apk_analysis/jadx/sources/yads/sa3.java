package yads;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class sa3 {
    public final int a;
    public final List b;
    public final int c;
    public final InputStream d;
    public final byte[] e;

    public sa3(int i, List list, byte[] bArr) {
        this.a = i;
        this.b = list;
        this.c = bArr.length;
        this.e = bArr;
        this.d = null;
    }

    public sa3(int i, ArrayList arrayList, int i2, InputStream inputStream) {
        this.a = i;
        this.b = arrayList;
        this.c = i2;
        this.d = inputStream;
        this.e = null;
    }
}
