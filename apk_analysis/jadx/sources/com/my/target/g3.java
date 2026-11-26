package com.my.target;

import android.content.Context;
import defpackage.s5a;
import defpackage.y14;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public abstract class g3 {
    public final s5a a;
    public final x0 b;
    public boolean c = false;

    public g3(x0 x0Var, s5a s5aVar) {
        this.b = x0Var;
        this.a = s5aVar;
    }

    public abstract void a(boolean z, float f, Context context);

    public void b() {
        if (this.c) {
            return;
        }
        x0 x0Var = this.b;
        ArrayList arrayList = x0Var.a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == this) {
                arrayList.remove(size);
                break;
            }
        }
        if (arrayList.isEmpty() && x0Var.d) {
            y14.r("ViewabilityTracker", "statTrackers are empty and shouldStopOnShow = true, stop tracking");
            x0Var.e();
        }
        this.c = true;
        y14.r("ViewabilityTracker: StatTracker", "i'm killed");
    }

    public abstract void c();

    public abstract void d();
}
