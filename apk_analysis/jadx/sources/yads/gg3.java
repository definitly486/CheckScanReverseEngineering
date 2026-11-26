package yads;

import defpackage.j48;
import defpackage.kx6;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes6.dex */
public final class gg3 {
    public final ArrayList a = new ArrayList();
    public final ArrayList b = new ArrayList();
    public final /* synthetic */ hg3 c;

    public gg3(hg3 hg3Var) {
        this.c = hg3Var;
    }

    public final List a(int i, float f) {
        hg3 hg3Var;
        float fB;
        float f2;
        int iNextIndex;
        fg3 fg3Var;
        float f3;
        int size = this.a.size();
        hg3 hg3Var2 = this.c;
        int i2 = hg3Var2.g;
        int i3 = hg3Var2.k;
        float f4 = 2.0f;
        if (size <= i2) {
            fg3 fg3Var2 = (fg3) defpackage.qn1.b0(this.a);
            fB = (i3 / 2.0f) - (((fg3Var2.d.b() / 2.0f) + fg3Var2.c) / 2.0f);
        } else {
            float f5 = i3 / 2.0f;
            if (oh6.b(hg3Var2.d)) {
                if (i == -1) {
                    f2 = 0.0f;
                } else {
                    ArrayList arrayList = this.a;
                    f2 = ((fg3) arrayList.get((arrayList.size() - 1) - i)).c;
                }
                float f6 = f5 - f2;
                hg3 hg3Var3 = this.c;
                float f7 = (hg3Var3.i * f) + f6;
                hg3Var = hg3Var3;
                fB = f7;
            } else {
                float f8 = f5 - (i == -1 ? 0.0f : ((fg3) this.a.get(i)).c);
                hg3 hg3Var4 = this.c;
                float f9 = f8 - (hg3Var4.i * f);
                hg3Var = hg3Var4;
                fB = f9;
            }
            if (hg3Var.g % 2 == 0) {
                fB += hg3Var.i / 2.0f;
            }
        }
        ArrayList<fg3> arrayList2 = this.a;
        ArrayList arrayList3 = new ArrayList(defpackage.kn1.q(arrayList2, 10));
        for (fg3 fg3Var3 : arrayList2) {
            arrayList3.add(fg3.a(fg3Var3, fg3Var3.c + fB, null, 0.0f, 27));
        }
        ArrayList arrayList4 = new ArrayList(arrayList3);
        int size2 = arrayList4.size();
        hg3 hg3Var5 = this.c;
        if (size2 > hg3Var5.g) {
            defpackage.mm1 mm1Var = new defpackage.mm1(0.0f, hg3Var5.k);
            fg3 fg3Var4 = (fg3) defpackage.qn1.T(arrayList4);
            if (mm1Var.contains(Float.valueOf(fg3Var4.c - (fg3Var4.d.b() / 2.0f)))) {
                fg3 fg3Var5 = (fg3) defpackage.qn1.T(arrayList4);
                float f10 = -(fg3Var5.c - (fg3Var5.d.b() / 2.0f));
                int i4 = 0;
                for (Object obj : arrayList4) {
                    int i5 = i4 + 1;
                    if (i4 < 0) {
                        u96.o();
                        throw null;
                    }
                    fg3 fg3Var6 = (fg3) obj;
                    arrayList4.set(i4, fg3.a(fg3Var6, fg3Var6.c + f10, null, 0.0f, 27));
                    i4 = i5;
                }
            } else {
                fg3 fg3Var7 = (fg3) defpackage.qn1.b0(arrayList4);
                if (mm1Var.contains(Float.valueOf((fg3Var7.d.b() / 2.0f) + fg3Var7.c))) {
                    float f11 = this.c.k;
                    fg3 fg3Var8 = (fg3) defpackage.qn1.b0(arrayList4);
                    float fB2 = f11 - ((fg3Var8.d.b() / 2.0f) + fg3Var8.c);
                    int i6 = 0;
                    for (Object obj2 : arrayList4) {
                        int i7 = i6 + 1;
                        if (i6 < 0) {
                            u96.o();
                            throw null;
                        }
                        fg3 fg3Var9 = (fg3) obj2;
                        arrayList4.set(i6, fg3.a(fg3Var9, fg3Var9.c + fB2, null, 0.0f, 27));
                        i6 = i7;
                    }
                }
            }
            defpackage.nn1.y(new j48(mm1Var, 3), arrayList4);
            hg3 hg3Var6 = this.c;
            Iterator it = arrayList4.iterator();
            int i8 = 0;
            while (true) {
                if (it.hasNext()) {
                    Object next = it.next();
                    int i9 = i8 + 1;
                    if (i8 < 0) {
                        u96.o();
                        throw null;
                    }
                    fg3 fg3VarA = (fg3) next;
                    float f12 = fg3VarA.c;
                    hg3 hg3Var7 = this.c;
                    float f13 = hg3Var7.i + 0.0f;
                    if (f12 > f13) {
                        float f14 = hg3Var7.k - f12;
                        f12 = f14 > f13 ? f13 : f14;
                    }
                    float fD = f12 <= f13 ? kx6.d(f12 / (f13 - 0.0f), 0.0f, 1.0f) : 1.0f;
                    int i10 = fg3VarA.a;
                    if (i10 == 0 || i10 == hg3Var6.f - 1 || fg3VarA.b) {
                        f3 = f4;
                        fg3VarA = fg3.a(fg3VarA, 0.0f, null, fD, 15);
                    } else {
                        yf3 yf3Var = fg3VarA.d;
                        float fB3 = yf3Var.b() * fD;
                        if (fB3 <= this.c.a.d.b().b()) {
                            fg3VarA = fg3.a(fg3VarA, 0.0f, this.c.a.d.b(), fD, 7);
                        } else if (fB3 < yf3Var.b()) {
                            if (yf3Var instanceof xf3) {
                                xf3 xf3Var = (xf3) yf3Var;
                                f3 = f4;
                                fg3VarA = fg3.a(fg3VarA, 0.0f, xf3.a(xf3Var, fB3, (fB3 / xf3Var.a) * xf3Var.b, 4), fD, 7);
                            } else {
                                f3 = f4;
                                if (!(yf3Var instanceof wf3)) {
                                    defpackage.me0.e();
                                    return null;
                                }
                                fg3VarA = fg3.a(fg3VarA, 0.0f, new wf3((yf3Var.b() * fD) / f3), fD, 7);
                            }
                        }
                        f3 = f4;
                    }
                    arrayList4.set(i8, fg3VarA);
                    i8 = i9;
                    f4 = f3;
                } else {
                    Iterator it2 = arrayList4.iterator();
                    int i11 = 0;
                    while (true) {
                        if (!it2.hasNext()) {
                            i11 = -1;
                            break;
                        }
                        if (((fg3) it2.next()).e == 1.0f) {
                            break;
                        }
                        i11++;
                    }
                    Integer numValueOf = Integer.valueOf(i11);
                    if (i11 < 0) {
                        numValueOf = null;
                    }
                    if (numValueOf != null) {
                        int iIntValue = numValueOf.intValue();
                        ListIterator listIterator = arrayList4.listIterator(arrayList4.size());
                        while (true) {
                            if (!listIterator.hasPrevious()) {
                                iNextIndex = -1;
                                break;
                            }
                            if (((fg3) listIterator.previous()).e == 1.0f) {
                                iNextIndex = listIterator.nextIndex();
                                break;
                            }
                        }
                        Integer numValueOf2 = Integer.valueOf(iNextIndex);
                        if (iNextIndex < 0) {
                            numValueOf2 = null;
                        }
                        if (numValueOf2 != null) {
                            int i12 = iIntValue - 1;
                            int iIntValue2 = numValueOf2.intValue() + 1;
                            hg3 hg3Var8 = this.c;
                            int i13 = 0;
                            for (Object obj3 : arrayList4) {
                                int i14 = i13 + 1;
                                if (i13 < 0) {
                                    u96.o();
                                    throw null;
                                }
                                fg3 fg3Var10 = (fg3) obj3;
                                if (i13 < i12) {
                                    fg3 fg3Var11 = (fg3) defpackage.qn1.W(i12, arrayList4);
                                    if (fg3Var11 != null) {
                                        arrayList4.set(i13, fg3.a(fg3Var10, fg3Var10.c - (hg3Var8.i * (1.0f - fg3Var11.e)), null, 0.0f, 27));
                                        if (i13 <= iIntValue2) {
                                        }
                                    }
                                } else if (i13 <= iIntValue2 && (fg3Var = (fg3) defpackage.qn1.W(iIntValue2, arrayList4)) != null) {
                                    arrayList4.set(i13, fg3.a(fg3Var10, fg3Var10.c + (hg3Var8.i * (1.0f - fg3Var.e)), null, 0.0f, 27));
                                }
                                i13 = i14;
                            }
                        }
                    }
                }
            }
        }
        return arrayList4;
    }

    public static final boolean a(defpackage.nm1 nm1Var, fg3 fg3Var) {
        return !nm1Var.contains(Float.valueOf(fg3Var.c));
    }
}
