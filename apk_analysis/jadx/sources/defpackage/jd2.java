package defpackage;

import android.graphics.Color;
import android.util.Log;
import android.view.animation.LinearInterpolator;
import com.hookedonplay.decoviewlib.DecoView;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class jd2 implements Runnable {
    public final /* synthetic */ id2 b;
    public final /* synthetic */ kd2 c;

    public jd2(kd2 kd2Var, boolean z, id2 id2Var, boolean z2) {
        this.c = kd2Var;
        this.b = id2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList<ka1> arrayList;
        boolean z;
        int i;
        DecoView decoView = this.c.b;
        String str = decoView.b;
        id2 id2Var = this.b;
        id2.b bVar = id2Var.a;
        long jAbs = id2Var.b;
        int i2 = id2Var.e;
        int i3 = id2Var.c;
        if (!(bVar == id2.b.EVENT_MOVE || bVar == id2.b.EVENT_COLOR_CHANGE) || (arrayList = decoView.e) == null) {
            z = true;
            i = 0;
        } else {
            if (arrayList.size() <= i3) {
                StringBuilder sbC = n7.c(i3, "Invalid index: Position out of range (Index: ", " Series Count: ");
                sbC.append(decoView.e.size());
                sbC.append(")");
                throw new IllegalArgumentException(sbC.toString());
            }
            if (i3 < 0 || i3 >= decoView.e.size()) {
                z = true;
                i = 0;
                StringBuilder sbC2 = n7.c(i3, "Ignoring move request: Invalid array index. Index: ", " Size: ");
                sbC2.append(decoView.e.size());
                Log.e(str, sbC2.toString());
            } else {
                ka1 ka1Var = decoView.e.get(i3);
                if (bVar == id2.b.EVENT_COLOR_CHANGE) {
                    ka1Var.b();
                    ka1Var.m = true;
                    ka1Var.c = bVar;
                    ka1Var.g = 0.0f;
                    if (Color.alpha(i2) > 0) {
                        pq7 pq7Var = ka1Var.b;
                        ka1Var.o = new sn1(pq7Var.a, i2);
                        pq7Var.a = i2;
                        zb9 zb9VarL = zb9.l(0.0f, 1.0f);
                        ka1Var.n = zb9VarL;
                        zb9VarL.p(jAbs);
                        ka1Var.n.n = new LinearInterpolator();
                        zb9 zb9Var = ka1Var.n;
                        la1 la1Var = new la1(ka1Var);
                        ArrayList<zb9.g> arrayList2 = zb9Var.o;
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList<>();
                            zb9Var.o = arrayList2;
                        }
                        arrayList2.add(la1Var);
                        zb9 zb9Var2 = ka1Var.n;
                        ma1 ma1Var = new ma1();
                        ArrayList<tm.a> arrayList3 = zb9Var2.b;
                        if (arrayList3 == null) {
                            arrayList3 = new ArrayList<>();
                            zb9Var2.b = arrayList3;
                        }
                        arrayList3.add(ma1Var);
                        ka1Var.n.q();
                    } else {
                        Log.w(ka1Var.a, "Must set new color to start CHANGE_COLOR event");
                    }
                    z = true;
                    i = 0;
                } else {
                    pq7 pq7Var2 = ka1Var.b;
                    ka1Var.c = bVar;
                    ka1Var.m = true;
                    ka1Var.b();
                    boolean z2 = Color.alpha(i2) > 0;
                    if (z2) {
                        ka1Var.o = new sn1(pq7Var2.a, i2);
                        pq7Var2.a = i2;
                    }
                    float f = id2Var.d;
                    float f2 = ka1Var.f;
                    ka1Var.d = f2;
                    ka1Var.e = f;
                    if (jAbs != 0) {
                        z = true;
                        i = 0;
                        if (Math.abs(f - f2) >= 0.01d) {
                            if (jAbs < 0) {
                                jAbs = Math.abs((int) (((ka1Var.d - ka1Var.e) / pq7Var2.d) * 5000.0f));
                            }
                            zb9 zb9VarL2 = zb9.l(ka1Var.d, f);
                            ka1Var.n = zb9VarL2;
                            zb9VarL2.p(jAbs);
                            zb9 zb9Var3 = ka1Var.n;
                            ia1 ia1Var = new ia1(ka1Var);
                            ArrayList<zb9.g> arrayList4 = zb9Var3.o;
                            if (arrayList4 == null) {
                                arrayList4 = new ArrayList<>();
                                zb9Var3.o = arrayList4;
                            }
                            arrayList4.add(ia1Var);
                            zb9 zb9Var4 = ka1Var.n;
                            ja1 ja1Var = new ja1(ka1Var, z2, id2Var);
                            ArrayList<tm.a> arrayList5 = zb9Var4.b;
                            if (arrayList5 == null) {
                                arrayList5 = new ArrayList<>();
                                zb9Var4.b = arrayList5;
                            }
                            arrayList5.add(ja1Var);
                            ka1Var.n.q();
                        }
                    } else {
                        z = true;
                        i = 0;
                    }
                    ka1Var.b();
                    ka1Var.f = ka1Var.e;
                    ka1Var.g = 1.0f;
                    Iterator<pq7.c> it = pq7Var2.j.iterator();
                    while (it.hasNext()) {
                        it.next().a();
                    }
                }
            }
        }
        id2.b bVar2 = id2.b.EVENT_SHOW;
        if (bVar == bVar2 || bVar == id2.b.EVENT_HIDE) {
            if (bVar == bVar2) {
                decoView.setVisibility(i);
            }
            if (decoView.e != null) {
                for (int i4 = 0; i4 < decoView.e.size(); i4++) {
                    if (i3 == i4 || i3 < 0) {
                        decoView.e.get(i4).f(id2Var, bVar == id2.b.EVENT_SHOW ? z : false);
                    }
                }
            }
        }
        if (bVar == id2.b.EVENT_EFFECT && decoView.e != null) {
            if (i3 < 0) {
                Log.e(str, "EffectType " + bVar.toString() + " must specify valid data series index");
                return;
            }
            if (hd2.EFFECT_SPIRAL_EXPLODE != null) {
                for (int i5 = 0; i5 < decoView.e.size(); i5++) {
                    if (i3 == i5 || i3 < 0) {
                        decoView.e.get(i5).getClass();
                        ah.f("Unable to execute null effect type");
                        return;
                    }
                }
                return;
            }
            for (int i6 = 0; i6 < decoView.e.size(); i6++) {
                ka1 ka1Var2 = decoView.e.get(i6);
                if (i6 == i3) {
                    ka1Var2.getClass();
                    ah.f("Unable to execute null effect type");
                    return;
                }
                ka1Var2.f(id2Var, false);
            }
        }
    }
}
