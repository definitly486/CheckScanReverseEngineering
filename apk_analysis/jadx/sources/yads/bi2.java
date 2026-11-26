package yads;

import androidx.collection.ArrayMap;

/* JADX INFO: loaded from: classes6.dex */
public final class bi2 {
    public final long a;
    public final ArrayMap b;

    public bi2(long j) {
        ArrayMap arrayMap = new ArrayMap();
        this.a = j;
        this.b = arrayMap;
    }

    public final ai2 a(String str) {
        return (ai2) this.b.get(str);
    }

    public bi2(long j, ArrayMap arrayMap) {
        this.a = j;
        this.b = arrayMap;
    }
}
