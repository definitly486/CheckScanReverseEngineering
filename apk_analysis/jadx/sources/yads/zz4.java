package yads;

import androidx.compose.material3.internal.CalendarModelKt;
import defpackage.j59;
import defpackage.r57;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class zz4 {
    public final defpackage.yg5 a = new defpackage.ch5();
    public final ArrayList b = new ArrayList();

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(a13 a13Var, defpackage.e02 e02Var) {
        xz4 xz4Var;
        defpackage.yg5 yg5Var;
        Object next;
        Object obj;
        if (e02Var instanceof xz4) {
            xz4Var = (xz4) e02Var;
            int i = xz4Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                xz4Var.f = i - Integer.MIN_VALUE;
            } else {
                xz4Var = new xz4(this, e02Var);
            }
        } else {
            xz4Var = new xz4(this, e02Var);
        }
        Object obj2 = xz4Var.d;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = xz4Var.f;
        if (i2 == 0) {
            r57.b(obj2);
            yg5Var = this.a;
            xz4Var.b = a13Var;
            xz4Var.c = yg5Var;
            xz4Var.f = 1;
            if (yg5Var.lock(null, xz4Var) == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            defpackage.yg5 yg5Var2 = xz4Var.c;
            a13 a13Var2 = xz4Var.b;
            r57.b(obj2);
            yg5Var = yg5Var2;
            a13Var = a13Var2;
        }
        try {
            a();
            Iterator it = this.b.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!defpackage.aa4.e(((vz4) next).a, a13Var));
            vz4 vz4Var = (vz4) next;
            if (vz4Var == null || (obj = vz4Var.b) == null) {
                obj = null;
            } else {
                this.b.remove(vz4Var);
            }
            return obj;
        } finally {
            yg5Var.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(defpackage.f02 f02Var) {
        yz4 yz4Var;
        defpackage.yg5 yg5Var;
        if (f02Var instanceof yz4) {
            yz4Var = (yz4) f02Var;
            int i = yz4Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                yz4Var.e = i - Integer.MIN_VALUE;
            } else {
                yz4Var = new yz4(this, f02Var);
            }
        } else {
            yz4Var = new yz4(this, f02Var);
        }
        Object obj = yz4Var.c;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = yz4Var.e;
        boolean z = true;
        if (i2 == 0) {
            r57.b(obj);
            defpackage.yg5 yg5Var2 = this.a;
            yz4Var.b = yg5Var2;
            yz4Var.e = 1;
            if (yg5Var2.lock(null, yz4Var) == a32Var) {
                return a32Var;
            }
            yg5Var = yg5Var2;
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            yg5Var = yz4Var.b;
            r57.b(obj);
        }
        try {
            a();
            if (this.b.size() >= 5) {
                z = false;
            }
            return Boolean.valueOf(z);
        } finally {
            yg5Var.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(a13 a13Var, Object obj, defpackage.f02 f02Var) {
        wz4 wz4Var;
        defpackage.yg5 yg5Var;
        if (f02Var instanceof wz4) {
            wz4Var = (wz4) f02Var;
            int i = wz4Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                wz4Var.g = i - Integer.MIN_VALUE;
            } else {
                wz4Var = new wz4(this, f02Var);
            }
        } else {
            wz4Var = new wz4(this, f02Var);
        }
        Object obj2 = wz4Var.e;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = wz4Var.g;
        if (i2 == 0) {
            r57.b(obj2);
            yg5Var = this.a;
            wz4Var.b = a13Var;
            wz4Var.c = obj;
            wz4Var.d = yg5Var;
            wz4Var.g = 1;
            if (yg5Var.lock(null, wz4Var) == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            defpackage.yg5 yg5Var2 = wz4Var.d;
            obj = wz4Var.c;
            a13 a13Var2 = wz4Var.b;
            r57.b(obj2);
            yg5Var = yg5Var2;
            a13Var = a13Var2;
        }
        try {
            a();
            if (this.b.size() < 5) {
                this.b.add(new vz4(a13Var, obj, System.currentTimeMillis() + CalendarModelKt.MillisecondsIn24Hours));
            }
            return j59.a;
        } finally {
            yg5Var.unlock(null);
        }
    }

    public final void a() {
        ArrayList arrayList = this.b;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (System.currentTimeMillis() > ((vz4) ((nr2) obj)).c) {
                arrayList2.add(obj);
            }
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            this.b.remove((vz4) it.next());
        }
    }
}
