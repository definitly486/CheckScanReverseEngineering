package com.my.tracker.obfuscated;

import android.util.SparseArray;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class a0 {
    final SparseArray a = new SparseArray(50);

    private x c(int i) {
        z zVar = new z(i);
        this.a.put(i, zVar);
        return zVar;
    }

    public ArrayList a() {
        b3.a("TimeSpentCore: CountBasedTimeSpentsManager: onTick: start collecting count based TimeSpents");
        int size = this.a.size();
        ArrayList arrayList = new ArrayList(size);
        int i = 0;
        while (true) {
            SparseArray sparseArray = this.a;
            if (i >= size) {
                sparseArray.clear();
                b3.a("TimeSpentCore: CountBasedTimeSpentsManager: onTick: collected " + arrayList.size() + " count based TimeSpents");
                return arrayList;
            }
            arrayList.add((y) sparseArray.valueAt(i));
            i++;
        }
    }

    public void b(int i) {
        x xVarC = (x) this.a.get(i);
        if (xVarC != null) {
            b3.a("TimeSpentCore: CountBasedTimeSpentsManager: found existed count based record with id = " + i);
        } else {
            b3.a("TimeSpentCore: CountBasedTimeSpentsManager: not found existed count based record with id = " + i + ", creating new");
            xVarC = c(i);
        }
        xVarC.f();
        b3.c("TimeSpent: incremented count based TimeSpent, id = " + i + ", count = " + xVarC.d());
    }

    public boolean a(int i) {
        return this.a.get(i) != null;
    }
}
