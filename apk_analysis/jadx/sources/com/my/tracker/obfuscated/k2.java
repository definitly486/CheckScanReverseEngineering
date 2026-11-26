package com.my.tracker.obfuscated;

import android.util.SparseArray;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public abstract class k2 {
    final SparseArray a = new SparseArray(20);
    final SparseArray b = new SparseArray(20);

    public final ArrayList a() {
        int size = this.b.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add((i2) this.b.valueAt(i));
        }
        return arrayList;
    }

    public final boolean b(int i) {
        return this.a.get(i) != null;
    }

    public final int b() {
        return this.a.size();
    }

    public final h2 a(int i) {
        h2 h2Var = (h2) this.b.get(i);
        if (h2Var != null) {
            return h2Var;
        }
        j2 j2Var = new j2(i);
        this.b.put(i, j2Var);
        return j2Var;
    }

    public final void a(long j) {
        for (int i = 0; i < this.a.size(); i++) {
            ((y1) this.a.valueAt(i)).b(j);
        }
    }

    public final String a(boolean z) {
        return z ? "[FOREGROUND] " : "[BACKGROUND] ";
    }
}
