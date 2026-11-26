package yads;

import android.os.Bundle;
import android.os.Parcel;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class jr2 implements nt5 {
    public final qt5 a = new qt5();
    public final ArrayDeque b = new ArrayDeque();
    public int c;
    public boolean d;

    public jr2() {
        for (int i = 0; i < 2; i++) {
            this.b.addFirst(new hr2(this));
        }
        this.c = 0;
    }

    @Override // yads.ii0
    public final rt5 a() {
        if (this.d) {
            defpackage.ud.g();
            return null;
        }
        if (this.c != 2 || this.b.isEmpty()) {
            return null;
        }
        rt5 rt5Var = (rt5) this.b.removeFirst();
        if (this.a.b(4)) {
            rt5Var.b |= 4;
        } else {
            qt5 qt5Var = this.a;
            long j = qt5Var.f;
            ByteBuffer byteBuffer = qt5Var.d;
            byteBuffer.getClass();
            byte[] bArrArray = byteBuffer.array();
            Parcel parcelObtain = Parcel.obtain();
            parcelObtain.unmarshall(bArrArray, 0, bArrArray.length);
            parcelObtain.setDataPosition(0);
            Bundle bundle = parcelObtain.readBundle(Bundle.class.getClassLoader());
            parcelObtain.recycle();
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("c");
            parcelableArrayList.getClass();
            ir2 ir2Var = new ir2(j, lv.a(sb0.t, parcelableArrayList));
            rt5Var.c = this.a.f;
            rt5Var.d = ir2Var;
            rt5Var.e = 0L;
        }
        this.a.b();
        this.c = 0;
        return rt5Var;
    }

    @Override // yads.ii0
    public final Object b() {
        if (this.d) {
            defpackage.ud.g();
            return null;
        }
        if (this.c != 0) {
            return null;
        }
        this.c = 1;
        return this.a;
    }

    @Override // yads.ii0
    public final void flush() {
        if (this.d) {
            defpackage.ud.g();
        } else {
            this.a.b();
            this.c = 0;
        }
    }

    @Override // yads.ii0
    public final void release() {
        this.d = true;
    }

    @Override // yads.ii0
    public final void a(qt5 qt5Var) {
        if (!this.d) {
            if (this.c == 1) {
                if (this.a == qt5Var) {
                    this.c = 2;
                    return;
                } else {
                    defpackage.mi2.b();
                    return;
                }
            }
            defpackage.ud.g();
            return;
        }
        defpackage.ud.g();
    }

    @Override // yads.nt5
    public final void a(long j) {
    }

    public final void a(rt5 rt5Var) {
        if (this.b.size() < 2) {
            if (!this.b.contains(rt5Var)) {
                rt5Var.b = 0;
                rt5Var.d = null;
                this.b.addFirst(rt5Var);
                return;
            }
            defpackage.mi2.b();
            return;
        }
        defpackage.ud.g();
    }
}
