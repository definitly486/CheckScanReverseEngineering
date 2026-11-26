package yads;

import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt;
import defpackage.j59;
import defpackage.jp7;
import defpackage.nl3;
import defpackage.u96;
import defpackage.v39;
import defpackage.ws6;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import org.json.JSONException;
import yads.a91;

/* JADX INFO: loaded from: classes6.dex */
public final class a91 extends oh2 {
    public final v41 b;
    public final ws6 c;
    public final zt1 d;
    public final ws6 e;
    public final bo2 f;
    public final Rect g;

    public a91(v41 v41Var, ws6 ws6Var, zt1 zt1Var, ws6 ws6Var2, bo2 bo2Var) {
        super(v41Var);
        this.b = v41Var;
        this.c = ws6Var;
        this.d = zt1Var;
        this.e = ws6Var2;
        this.f = bo2Var;
        this.g = new Rect();
    }

    /* JADX WARN: Code duplicated, block: B:100:0x017d  */
    /* JADX WARN: Code duplicated, block: B:103:0x0186  */
    /* JADX WARN: Code duplicated, block: B:106:0x018e  */
    /* JADX WARN: Code duplicated, block: B:109:0x0197  */
    /* JADX WARN: Code duplicated, block: B:225:0x0351  */
    /* JADX WARN: Code duplicated, block: B:230:0x0375  */
    /* JADX WARN: Code duplicated, block: B:260:0x03d0  */
    /* JADX WARN: Code duplicated, block: B:262:0x03d9  */
    /* JADX WARN: Code duplicated, block: B:263:0x03dc  */
    /* JADX WARN: Code duplicated, block: B:266:0x03e3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:267:0x03e5  */
    /* JADX WARN: Code duplicated, block: B:268:0x03e8  */
    /* JADX WARN: Code duplicated, block: B:271:0x03ef A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:272:0x03f1  */
    /* JADX WARN: Code duplicated, block: B:273:0x03f4  */
    /* JADX WARN: Code duplicated, block: B:277:0x03fc  */
    /* JADX WARN: Code duplicated, block: B:279:0x040e  */
    /* JADX WARN: Code duplicated, block: B:282:0x0417  */
    /* JADX WARN: Code duplicated, block: B:285:0x041f  */
    /* JADX WARN: Code duplicated, block: B:288:0x0428  */
    /* JADX WARN: Code duplicated, block: B:291:0x0430  */
    /* JADX WARN: Code duplicated, block: B:294:0x0439  */
    /* JADX WARN: Code duplicated, block: B:392:0x0568  */
    /* JADX WARN: Code duplicated, block: B:393:0x056c  */
    /* JADX WARN: Code duplicated, block: B:395:0x0575  */
    /* JADX WARN: Code duplicated, block: B:396:0x0578  */
    /* JADX WARN: Code duplicated, block: B:399:0x057f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:400:0x0581  */
    /* JADX WARN: Code duplicated, block: B:401:0x0584  */
    /* JADX WARN: Code duplicated, block: B:404:0x058b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:405:0x058d  */
    /* JADX WARN: Code duplicated, block: B:406:0x0590  */
    /* JADX WARN: Code duplicated, block: B:40:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:412:0x05a8  */
    /* JADX WARN: Code duplicated, block: B:415:0x05b1  */
    /* JADX WARN: Code duplicated, block: B:418:0x05b9  */
    /* JADX WARN: Code duplicated, block: B:421:0x05c2  */
    /* JADX WARN: Code duplicated, block: B:424:0x05ca  */
    /* JADX WARN: Code duplicated, block: B:427:0x05d3  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:74:0x0127  */
    /* JADX WARN: Code duplicated, block: B:75:0x012b  */
    /* JADX WARN: Code duplicated, block: B:77:0x0134  */
    /* JADX WARN: Code duplicated, block: B:78:0x0137  */
    /* JADX WARN: Code duplicated, block: B:81:0x013e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:82:0x0140  */
    /* JADX WARN: Code duplicated, block: B:83:0x0143  */
    /* JADX WARN: Code duplicated, block: B:86:0x014a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:87:0x014c  */
    /* JADX WARN: Code duplicated, block: B:88:0x014f  */
    /* JADX WARN: Code duplicated, block: B:94:0x016c  */
    /* JADX WARN: Code duplicated, block: B:97:0x0175  */
    @Override // yads.oh2
    public final void a(ViewGroup viewGroup, tt ttVar, j81 j81Var, j81 j81Var2) {
        as2 as2Var;
        tp0 tp0VarA;
        tp0 tp0VarA2;
        tp0 tp0VarA3;
        as2 as2Var2;
        as2 as2Var3;
        as2 as2Var4;
        as2 as2Var5;
        as2 as2Var6;
        as2 as2Var7;
        a91 a91Var;
        tp0 tp0VarA4;
        tp0 tp0VarA5;
        tp0 tp0VarA6;
        as2 as2Var8;
        as2 as2Var9;
        as2 as2Var10;
        as2 as2Var11;
        as2 as2Var12;
        as2 as2Var13;
        j81 j81Var3;
        j81 j81Var4;
        tp0 tp0VarA7;
        tp0 tp0VarA8;
        tp0 tp0VarA9;
        as2 as2Var14;
        as2 as2Var15;
        as2 as2Var16;
        as2 as2Var17;
        as2 as2Var18;
        a91 a91Var2 = this;
        pq.a(viewGroup, ttVar, j81Var.b, j81Var.d, j81Var.G, j81Var.r, j81Var.x, j81Var.w, j81Var.L, j81Var.K, j81Var.c, j81Var.l);
        fs2 fs2Var = ttVar.b;
        bo2 bo2Var = a91Var2.f;
        vq0 vq0Var = ttVar.a;
        ao2 ao2VarA = bo2Var.a(vq0Var.Q, vq0Var.O);
        tq.a(viewGroup, j81Var.i, j81Var2 != null ? j81Var2.i : null, fs2Var);
        tq.a(viewGroup, j81Var.m, j81Var2 != null ? j81Var2.m : null, fs2Var);
        if (viewGroup instanceof op1) {
            op1 op1Var = (op1) viewGroup;
            if (!ls2.a(j81Var.I, j81Var2 != null ? j81Var2.I : null)) {
                op1Var.setOrientation(k81.a[((h81) j81Var.I.a(fs2Var)).ordinal()] != 1 ? 1 : 0);
                as2 as2Var19 = j81Var.I;
                if (!(as2Var19 instanceof xr2)) {
                    op1Var.C.a(as2Var19.a(fs2Var, new s81(op1Var, a91Var2)));
                }
            }
            if (ls2.a(j81Var.o, j81Var2 != null ? j81Var2.o : null)) {
                if (!ls2.a(j81Var.p, j81Var2 != null ? j81Var2.p : null)) {
                    op1Var.setGravity(jf2.a((m91) j81Var.o.a(fs2Var), (o91) j81Var.p.a(fs2Var)));
                    if ((j81Var.o instanceof xr2) || !(j81Var.p instanceof xr2)) {
                        o81 o81Var = new o81(j81Var, fs2Var, op1Var);
                        op1Var.C.a(j81Var.o.a(fs2Var, o81Var));
                        op1Var.C.a(j81Var.p.a(fs2Var, o81Var));
                    }
                }
            } else {
                op1Var.setGravity(jf2.a((m91) j81Var.o.a(fs2Var), (o91) j81Var.p.a(fs2Var)));
                if (j81Var.o instanceof xr2) {
                    o81 o81Var2 = new o81(j81Var, fs2Var, op1Var);
                    op1Var.C.a(j81Var.o.a(fs2Var, o81Var2));
                    op1Var.C.a(j81Var.p.a(fs2Var, o81Var2));
                } else {
                    o81 o81Var3 = new o81(j81Var, fs2Var, op1Var);
                    op1Var.C.a(j81Var.o.a(fs2Var, o81Var3));
                    op1Var.C.a(j81Var.p.a(fs2Var, o81Var3));
                }
            }
            i81 i81Var = j81Var.P;
            i81 i81Var2 = j81Var2 != null ? j81Var2.P : null;
            if (ls2.a(i81Var != null ? i81Var.c : null, i81Var2 != null ? i81Var2.c : null)) {
                if (ls2.a(i81Var != null ? i81Var.d : null, i81Var2 != null ? i81Var2.d : null)) {
                    if (ls2.a(i81Var != null ? i81Var.b : null, i81Var2 != null ? i81Var2.b : null)) {
                        j81Var3 = j81Var;
                        j81Var4 = j81Var2;
                    } else {
                        op1Var.setShowDividers(a(i81Var, fs2Var));
                        if (i81Var != null) {
                            as2Var13 = i81Var.c;
                        } else {
                            as2Var13 = null;
                        }
                        if (ls2.a(as2Var13)) {
                            if (i81Var != null) {
                                as2Var17 = i81Var.d;
                            } else {
                                as2Var17 = null;
                            }
                            if (ls2.a(as2Var17)) {
                                if (i81Var != null) {
                                    as2Var18 = i81Var.b;
                                } else {
                                    as2Var18 = null;
                                }
                                if (ls2.a(as2Var18)) {
                                    j81Var3 = j81Var;
                                    j81Var4 = j81Var2;
                                }
                            }
                        }
                        j81Var3 = j81Var;
                        j81Var4 = j81Var2;
                        w81 w81Var = new w81(i81Var, fs2Var, op1Var, a91Var2, fs2Var);
                        op1Var = op1Var;
                        a91Var2 = a91Var2;
                        if (i81Var != null) {
                            tp0VarA7 = null;
                        } else {
                            tp0VarA7 = null;
                        }
                        op1Var.C.a(tp0VarA7);
                        if (i81Var != null) {
                            tp0VarA8 = null;
                        } else {
                            tp0VarA8 = null;
                        }
                        op1Var.C.a(tp0VarA8);
                        if (i81Var != null) {
                            tp0VarA9 = null;
                        } else {
                            tp0VarA9 = null;
                        }
                        op1Var.C.a(tp0VarA9);
                    }
                } else {
                    op1Var.setShowDividers(a(i81Var, fs2Var));
                    if (i81Var != null) {
                        as2Var13 = i81Var.c;
                    } else {
                        as2Var13 = null;
                    }
                    if (ls2.a(as2Var13)) {
                        if (i81Var != null) {
                            as2Var17 = i81Var.d;
                        } else {
                            as2Var17 = null;
                        }
                        if (ls2.a(as2Var17)) {
                            if (i81Var != null) {
                                as2Var18 = i81Var.b;
                            } else {
                                as2Var18 = null;
                            }
                            if (ls2.a(as2Var18)) {
                                j81Var3 = j81Var;
                                j81Var4 = j81Var2;
                            }
                        }
                    }
                    j81Var3 = j81Var;
                    j81Var4 = j81Var2;
                    w81 w81Var2 = new w81(i81Var, fs2Var, op1Var, a91Var2, fs2Var);
                    op1Var = op1Var;
                    a91Var2 = a91Var2;
                    if (i81Var != null) {
                        tp0VarA7 = null;
                    } else {
                        tp0VarA7 = null;
                    }
                    op1Var.C.a(tp0VarA7);
                    if (i81Var != null) {
                        tp0VarA8 = null;
                    } else {
                        tp0VarA8 = null;
                    }
                    op1Var.C.a(tp0VarA8);
                    if (i81Var != null) {
                        tp0VarA9 = null;
                    } else {
                        tp0VarA9 = null;
                    }
                    op1Var.C.a(tp0VarA9);
                }
            } else {
                op1Var.setShowDividers(a(i81Var, fs2Var));
                if (i81Var != null) {
                    as2Var13 = i81Var.c;
                } else {
                    as2Var13 = null;
                }
                if (ls2.a(as2Var13)) {
                    if (i81Var != null) {
                        as2Var17 = i81Var.d;
                    } else {
                        as2Var17 = null;
                    }
                    if (ls2.a(as2Var17)) {
                        if (i81Var != null) {
                            as2Var18 = i81Var.b;
                        } else {
                            as2Var18 = null;
                        }
                        if (ls2.a(as2Var18)) {
                            j81Var3 = j81Var;
                            j81Var4 = j81Var2;
                        }
                    }
                }
                j81Var3 = j81Var;
                j81Var4 = j81Var2;
                w81 w81Var3 = new w81(i81Var, fs2Var, op1Var, a91Var2, fs2Var);
                op1Var = op1Var;
                a91Var2 = a91Var2;
                if (i81Var != null || (as2Var16 = i81Var.c) == null) {
                    tp0VarA7 = null;
                } else {
                    tp0VarA7 = as2Var16.a(fs2Var, w81Var3);
                }
                op1Var.C.a(tp0VarA7);
                if (i81Var != null || (as2Var15 = i81Var.d) == null) {
                    tp0VarA8 = null;
                } else {
                    tp0VarA8 = as2Var15.a(fs2Var, w81Var3);
                }
                op1Var.C.a(tp0VarA8);
                if (i81Var != null || (as2Var14 = i81Var.b) == null) {
                    tp0VarA9 = null;
                } else {
                    tp0VarA9 = as2Var14.a(fs2Var, w81Var3);
                }
                op1Var.C.a(tp0VarA9);
            }
            i81 i81Var3 = j81Var3.P;
            i81 i81Var4 = j81Var4 != null ? j81Var4.P : null;
            if (!gb1.a(i81Var3 != null ? i81Var3.e : null, i81Var4 != null ? i81Var4.e : null)) {
                tc1 tc1Var = i81Var3 != null ? i81Var3.e : null;
                op1Var.setDividerDrawable(tc1Var != null ? jf2.a(tc1Var, op1Var.getResources().getDisplayMetrics(), fs2Var) : null);
                if (!gb1.a(i81Var3 != null ? i81Var3.e : null)) {
                    js2.a(op1Var, i81Var3 != null ? i81Var3.e : null, fs2Var, new y81(i81Var3, fs2Var, op1Var, fs2Var));
                }
            }
            i81 i81Var5 = j81Var3.P;
            i81 i81Var6 = j81Var4 != null ? j81Var4.P : null;
            if (!gb1.a(i81Var5 != null ? i81Var5.a : null, i81Var6 != null ? i81Var6.a : null)) {
                Rect rectA = a(a91Var2, i81Var5 != null ? i81Var5.a : null, op1Var.getResources(), fs2Var);
                op1Var.setDividerMargins(rectA.left, rectA.top, rectA.right, rectA.bottom);
                yc1 yc1Var = i81Var5 != null ? i81Var5.a : null;
                if (yc1Var != null && !gb1.a(yc1Var)) {
                    u81 u81Var = new u81(yc1Var, fs2Var, a91Var2, op1Var, fs2Var);
                    op1Var.C.a(yc1Var.f.a(fs2Var, u81Var));
                    op1Var.C.a(yc1Var.a.a(fs2Var, u81Var));
                    as2 as2Var20 = yc1Var.e;
                    if (as2Var20 == null && yc1Var.b == null) {
                        op1Var.C.a(yc1Var.c.a(fs2Var, u81Var));
                        op1Var.C.a(yc1Var.d.a(fs2Var, u81Var));
                    } else {
                        op1Var.C.a(as2Var20 != null ? as2Var20.a(fs2Var, u81Var) : null);
                        as2 as2Var21 = yc1Var.b;
                        op1Var.C.a(as2Var21 != null ? as2Var21.a(fs2Var, u81Var) : null);
                    }
                }
            }
            if (!ls2.a(j81Var3.A, j81Var4 != null ? j81Var4.A : null)) {
                op1Var.setItemSpacing(uq.a(Long.valueOf(((Number) j81Var3.A.a(fs2Var)).longValue()), op1Var.getResources().getDisplayMetrics()));
                as2 as2Var22 = j81Var3.A;
                if (!(as2Var22 instanceof xr2)) {
                    op1Var.C.a(as2Var22.a(fs2Var, new q81(op1Var)));
                }
            }
            long jLongValue = ((Number) j81Var3.A.a(fs2Var)).longValue();
            if ((a(j81Var3.P, fs2Var) & 2) == 0 || jLongValue == 0) {
                return;
            }
            ao2VarA.d.add(new Throwable("item_spacing will be ignored due to the 'separator' property."));
            ao2VarA.a();
            return;
        }
        if (viewGroup instanceof jj2) {
            jj2 jj2Var = (jj2) viewGroup;
            if (!ls2.a(j81Var.I, j81Var2 != null ? j81Var2.I : null)) {
                jj2Var.setWrapDirection(k81.a[((h81) j81Var.I.a(fs2Var)).ordinal()] != 1 ? 1 : 0);
                as2 as2Var23 = j81Var.I;
                if (!(as2Var23 instanceof xr2)) {
                    jj2Var.A.a(as2Var23.a(fs2Var, new t81(jj2Var, a91Var2)));
                }
            }
            if (ls2.a(j81Var.o, j81Var2 != null ? j81Var2.o : null)) {
                if (!ls2.a(j81Var.p, j81Var2 != null ? j81Var2.p : null)) {
                    jj2Var.setGravity(jf2.a((m91) j81Var.o.a(fs2Var), (o91) j81Var.p.a(fs2Var)));
                    if ((j81Var.o instanceof xr2) || !(j81Var.p instanceof xr2)) {
                        p81 p81Var = new p81(j81Var, fs2Var, jj2Var);
                        jj2Var.A.a(j81Var.o.a(fs2Var, p81Var));
                        jj2Var.A.a(j81Var.p.a(fs2Var, p81Var));
                    }
                }
            } else {
                jj2Var.setGravity(jf2.a((m91) j81Var.o.a(fs2Var), (o91) j81Var.p.a(fs2Var)));
                if (j81Var.o instanceof xr2) {
                    p81 p81Var2 = new p81(j81Var, fs2Var, jj2Var);
                    jj2Var.A.a(j81Var.o.a(fs2Var, p81Var2));
                    jj2Var.A.a(j81Var.p.a(fs2Var, p81Var2));
                } else {
                    p81 p81Var3 = new p81(j81Var, fs2Var, jj2Var);
                    jj2Var.A.a(j81Var.o.a(fs2Var, p81Var3));
                    jj2Var.A.a(j81Var.p.a(fs2Var, p81Var3));
                }
            }
            i81 i81Var7 = j81Var.P;
            i81 i81Var8 = j81Var2 != null ? j81Var2.P : null;
            if (ls2.a(i81Var7 != null ? i81Var7.c : null, i81Var8 != null ? i81Var8.c : null)) {
                if (ls2.a(i81Var7 != null ? i81Var7.d : null, i81Var8 != null ? i81Var8.d : null)) {
                    if (!ls2.a(i81Var7 != null ? i81Var7.b : null, i81Var8 != null ? i81Var8.b : null)) {
                        jj2Var.setShowSeparators(a(i81Var7, fs2Var));
                        if (i81Var7 != null) {
                            as2Var = i81Var7.c;
                        } else {
                            as2Var = null;
                        }
                        if (ls2.a(as2Var)) {
                            if (i81Var7 != null) {
                                as2Var5 = i81Var7.d;
                            } else {
                                as2Var5 = null;
                            }
                            if (ls2.a(as2Var5)) {
                                if (i81Var7 != null) {
                                    as2Var6 = i81Var7.b;
                                } else {
                                    as2Var6 = null;
                                }
                                if (!ls2.a(as2Var6)) {
                                    x81 x81Var = new x81(i81Var7, fs2Var, jj2Var, a91Var2, fs2Var);
                                    jj2Var = jj2Var;
                                    a91Var2 = a91Var2;
                                    if (i81Var7 != null) {
                                        tp0VarA = null;
                                    } else {
                                        tp0VarA = null;
                                    }
                                    jj2Var.A.a(tp0VarA);
                                    if (i81Var7 != null) {
                                        tp0VarA2 = null;
                                    } else {
                                        tp0VarA2 = null;
                                    }
                                    jj2Var.A.a(tp0VarA2);
                                    if (i81Var7 != null) {
                                        tp0VarA3 = null;
                                    } else {
                                        tp0VarA3 = null;
                                    }
                                    jj2Var.A.a(tp0VarA3);
                                }
                            } else {
                                x81 x81Var2 = new x81(i81Var7, fs2Var, jj2Var, a91Var2, fs2Var);
                                jj2Var = jj2Var;
                                a91Var2 = a91Var2;
                                if (i81Var7 != null) {
                                    tp0VarA = null;
                                } else {
                                    tp0VarA = null;
                                }
                                jj2Var.A.a(tp0VarA);
                                if (i81Var7 != null) {
                                    tp0VarA2 = null;
                                } else {
                                    tp0VarA2 = null;
                                }
                                jj2Var.A.a(tp0VarA2);
                                if (i81Var7 != null) {
                                    tp0VarA3 = null;
                                } else {
                                    tp0VarA3 = null;
                                }
                                jj2Var.A.a(tp0VarA3);
                            }
                        } else {
                            x81 x81Var3 = new x81(i81Var7, fs2Var, jj2Var, a91Var2, fs2Var);
                            jj2Var = jj2Var;
                            a91Var2 = a91Var2;
                            if (i81Var7 != null) {
                                tp0VarA = null;
                            } else {
                                tp0VarA = null;
                            }
                            jj2Var.A.a(tp0VarA);
                            if (i81Var7 != null) {
                                tp0VarA2 = null;
                            } else {
                                tp0VarA2 = null;
                            }
                            jj2Var.A.a(tp0VarA2);
                            if (i81Var7 != null) {
                                tp0VarA3 = null;
                            } else {
                                tp0VarA3 = null;
                            }
                            jj2Var.A.a(tp0VarA3);
                        }
                    }
                } else {
                    jj2Var.setShowSeparators(a(i81Var7, fs2Var));
                    if (i81Var7 != null) {
                        as2Var = i81Var7.c;
                    } else {
                        as2Var = null;
                    }
                    if (ls2.a(as2Var)) {
                        x81 x81Var4 = new x81(i81Var7, fs2Var, jj2Var, a91Var2, fs2Var);
                        jj2Var = jj2Var;
                        a91Var2 = a91Var2;
                        if (i81Var7 != null) {
                            tp0VarA = null;
                        } else {
                            tp0VarA = null;
                        }
                        jj2Var.A.a(tp0VarA);
                        if (i81Var7 != null) {
                            tp0VarA2 = null;
                        } else {
                            tp0VarA2 = null;
                        }
                        jj2Var.A.a(tp0VarA2);
                        if (i81Var7 != null) {
                            tp0VarA3 = null;
                        } else {
                            tp0VarA3 = null;
                        }
                        jj2Var.A.a(tp0VarA3);
                    } else {
                        if (i81Var7 != null) {
                            as2Var5 = i81Var7.d;
                        } else {
                            as2Var5 = null;
                        }
                        if (ls2.a(as2Var5)) {
                            x81 x81Var5 = new x81(i81Var7, fs2Var, jj2Var, a91Var2, fs2Var);
                            jj2Var = jj2Var;
                            a91Var2 = a91Var2;
                            if (i81Var7 != null) {
                                tp0VarA = null;
                            } else {
                                tp0VarA = null;
                            }
                            jj2Var.A.a(tp0VarA);
                            if (i81Var7 != null) {
                                tp0VarA2 = null;
                            } else {
                                tp0VarA2 = null;
                            }
                            jj2Var.A.a(tp0VarA2);
                            if (i81Var7 != null) {
                                tp0VarA3 = null;
                            } else {
                                tp0VarA3 = null;
                            }
                            jj2Var.A.a(tp0VarA3);
                        } else {
                            if (i81Var7 != null) {
                                as2Var6 = i81Var7.b;
                            } else {
                                as2Var6 = null;
                            }
                            if (!ls2.a(as2Var6)) {
                                x81 x81Var6 = new x81(i81Var7, fs2Var, jj2Var, a91Var2, fs2Var);
                                jj2Var = jj2Var;
                                a91Var2 = a91Var2;
                                if (i81Var7 != null) {
                                    tp0VarA = null;
                                } else {
                                    tp0VarA = null;
                                }
                                jj2Var.A.a(tp0VarA);
                                if (i81Var7 != null) {
                                    tp0VarA2 = null;
                                } else {
                                    tp0VarA2 = null;
                                }
                                jj2Var.A.a(tp0VarA2);
                                if (i81Var7 != null) {
                                    tp0VarA3 = null;
                                } else {
                                    tp0VarA3 = null;
                                }
                                jj2Var.A.a(tp0VarA3);
                            }
                        }
                    }
                }
            } else {
                jj2Var.setShowSeparators(a(i81Var7, fs2Var));
                if (i81Var7 != null) {
                    as2Var = i81Var7.c;
                } else {
                    as2Var = null;
                }
                if (ls2.a(as2Var)) {
                    x81 x81Var7 = new x81(i81Var7, fs2Var, jj2Var, a91Var2, fs2Var);
                    jj2Var = jj2Var;
                    a91Var2 = a91Var2;
                    if (i81Var7 != null || (as2Var4 = i81Var7.c) == null) {
                        tp0VarA = null;
                    } else {
                        tp0VarA = as2Var4.a(fs2Var, x81Var7);
                    }
                    jj2Var.A.a(tp0VarA);
                    if (i81Var7 != null || (as2Var3 = i81Var7.d) == null) {
                        tp0VarA2 = null;
                    } else {
                        tp0VarA2 = as2Var3.a(fs2Var, x81Var7);
                    }
                    jj2Var.A.a(tp0VarA2);
                    if (i81Var7 != null || (as2Var2 = i81Var7.b) == null) {
                        tp0VarA3 = null;
                    } else {
                        tp0VarA3 = as2Var2.a(fs2Var, x81Var7);
                    }
                    jj2Var.A.a(tp0VarA3);
                } else {
                    if (i81Var7 != null) {
                        as2Var5 = i81Var7.d;
                    } else {
                        as2Var5 = null;
                    }
                    if (ls2.a(as2Var5)) {
                        x81 x81Var8 = new x81(i81Var7, fs2Var, jj2Var, a91Var2, fs2Var);
                        jj2Var = jj2Var;
                        a91Var2 = a91Var2;
                        if (i81Var7 != null) {
                            tp0VarA = null;
                        } else {
                            tp0VarA = null;
                        }
                        jj2Var.A.a(tp0VarA);
                        if (i81Var7 != null) {
                            tp0VarA2 = null;
                        } else {
                            tp0VarA2 = null;
                        }
                        jj2Var.A.a(tp0VarA2);
                        if (i81Var7 != null) {
                            tp0VarA3 = null;
                        } else {
                            tp0VarA3 = null;
                        }
                        jj2Var.A.a(tp0VarA3);
                    } else {
                        if (i81Var7 != null) {
                            as2Var6 = i81Var7.b;
                        } else {
                            as2Var6 = null;
                        }
                        if (!ls2.a(as2Var6)) {
                            x81 x81Var9 = new x81(i81Var7, fs2Var, jj2Var, a91Var2, fs2Var);
                            jj2Var = jj2Var;
                            a91Var2 = a91Var2;
                            if (i81Var7 != null) {
                                tp0VarA = null;
                            } else {
                                tp0VarA = null;
                            }
                            jj2Var.A.a(tp0VarA);
                            if (i81Var7 != null) {
                                tp0VarA2 = null;
                            } else {
                                tp0VarA2 = null;
                            }
                            jj2Var.A.a(tp0VarA2);
                            if (i81Var7 != null) {
                                tp0VarA3 = null;
                            } else {
                                tp0VarA3 = null;
                            }
                            jj2Var.A.a(tp0VarA3);
                        }
                    }
                }
            }
            i81 i81Var9 = j81Var.P;
            i81 i81Var10 = j81Var2 != null ? j81Var2.P : null;
            if (!gb1.a(i81Var9 != null ? i81Var9.e : null, i81Var10 != null ? i81Var10.e : null)) {
                tc1 tc1Var2 = i81Var9 != null ? i81Var9.e : null;
                jj2Var.setSeparatorDrawable(tc1Var2 != null ? jf2.a(tc1Var2, jj2Var.getResources().getDisplayMetrics(), fs2Var) : null);
                if (!gb1.a(i81Var9 != null ? i81Var9.e : null)) {
                    js2.a(jj2Var, i81Var9 != null ? i81Var9.e : null, fs2Var, new z81(i81Var9, fs2Var, jj2Var, fs2Var));
                }
            }
            i81 i81Var11 = j81Var.P;
            i81 i81Var12 = j81Var2 != null ? j81Var2.P : null;
            if (!gb1.a(i81Var11 != null ? i81Var11.a : null, i81Var12 != null ? i81Var12.a : null)) {
                Rect rectA2 = a(a91Var2, i81Var11 != null ? i81Var11.a : null, jj2Var.getResources(), fs2Var);
                jj2Var.setSeparatorMargins(rectA2.left, rectA2.top, rectA2.right, rectA2.bottom);
                yc1 yc1Var2 = i81Var11 != null ? i81Var11.a : null;
                if (yc1Var2 != null && !gb1.a(yc1Var2)) {
                    v81 v81Var = new v81(yc1Var2, fs2Var, a91Var2, jj2Var, fs2Var);
                    jj2Var.A.a(yc1Var2.f.a(fs2Var, v81Var));
                    jj2Var.A.a(yc1Var2.a.a(fs2Var, v81Var));
                    as2 as2Var24 = yc1Var2.e;
                    if (as2Var24 == null && yc1Var2.b == null) {
                        jj2Var.A.a(yc1Var2.c.a(fs2Var, v81Var));
                        jj2Var.A.a(yc1Var2.d.a(fs2Var, v81Var));
                    } else {
                        jj2Var.A.a(as2Var24 != null ? as2Var24.a(fs2Var, v81Var) : null);
                        as2 as2Var25 = yc1Var2.b;
                        jj2Var.A.a(as2Var25 != null ? as2Var25.a(fs2Var, v81Var) : null);
                    }
                }
            }
            i81 i81Var13 = j81Var.E;
            i81 i81Var14 = j81Var2 != null ? j81Var2.E : null;
            if (ls2.a(i81Var13 != null ? i81Var13.c : null, i81Var14 != null ? i81Var14.c : null)) {
                if (ls2.a(i81Var13 != null ? i81Var13.d : null, i81Var14 != null ? i81Var14.d : null)) {
                    if (ls2.a(i81Var13 != null ? i81Var13.b : null, i81Var14 != null ? i81Var14.b : null)) {
                        a91Var = this;
                    } else {
                        jj2Var.setShowLineSeparators(a(i81Var13, fs2Var));
                        if (i81Var13 != null) {
                            as2Var7 = i81Var13.c;
                        } else {
                            as2Var7 = null;
                        }
                        if (ls2.a(as2Var7)) {
                            if (i81Var13 != null) {
                                as2Var11 = i81Var13.d;
                            } else {
                                as2Var11 = null;
                            }
                            if (ls2.a(as2Var11)) {
                                if (i81Var13 != null) {
                                    as2Var12 = i81Var13.b;
                                } else {
                                    as2Var12 = null;
                                }
                                if (ls2.a(as2Var12)) {
                                    a91Var = this;
                                }
                            }
                        }
                        jj2 jj2Var2 = jj2Var;
                        m81 m81Var = new m81(i81Var13, fs2Var, jj2Var2, this, fs2Var);
                        jj2Var = jj2Var2;
                        a91Var = this;
                        if (i81Var13 != null) {
                            tp0VarA4 = null;
                        } else {
                            tp0VarA4 = null;
                        }
                        jj2Var.A.a(tp0VarA4);
                        if (i81Var13 != null) {
                            tp0VarA5 = null;
                        } else {
                            tp0VarA5 = null;
                        }
                        jj2Var.A.a(tp0VarA5);
                        if (i81Var13 != null) {
                            tp0VarA6 = null;
                        } else {
                            tp0VarA6 = null;
                        }
                        jj2Var.A.a(tp0VarA6);
                    }
                } else {
                    jj2Var.setShowLineSeparators(a(i81Var13, fs2Var));
                    if (i81Var13 != null) {
                        as2Var7 = i81Var13.c;
                    } else {
                        as2Var7 = null;
                    }
                    if (ls2.a(as2Var7)) {
                        if (i81Var13 != null) {
                            as2Var11 = i81Var13.d;
                        } else {
                            as2Var11 = null;
                        }
                        if (ls2.a(as2Var11)) {
                            if (i81Var13 != null) {
                                as2Var12 = i81Var13.b;
                            } else {
                                as2Var12 = null;
                            }
                            if (ls2.a(as2Var12)) {
                                a91Var = this;
                            }
                        }
                    }
                    jj2 jj2Var3 = jj2Var;
                    m81 m81Var2 = new m81(i81Var13, fs2Var, jj2Var3, this, fs2Var);
                    jj2Var = jj2Var3;
                    a91Var = this;
                    if (i81Var13 != null) {
                        tp0VarA4 = null;
                    } else {
                        tp0VarA4 = null;
                    }
                    jj2Var.A.a(tp0VarA4);
                    if (i81Var13 != null) {
                        tp0VarA5 = null;
                    } else {
                        tp0VarA5 = null;
                    }
                    jj2Var.A.a(tp0VarA5);
                    if (i81Var13 != null) {
                        tp0VarA6 = null;
                    } else {
                        tp0VarA6 = null;
                    }
                    jj2Var.A.a(tp0VarA6);
                }
            } else {
                jj2Var.setShowLineSeparators(a(i81Var13, fs2Var));
                if (i81Var13 != null) {
                    as2Var7 = i81Var13.c;
                } else {
                    as2Var7 = null;
                }
                if (ls2.a(as2Var7)) {
                    if (i81Var13 != null) {
                        as2Var11 = i81Var13.d;
                    } else {
                        as2Var11 = null;
                    }
                    if (ls2.a(as2Var11)) {
                        if (i81Var13 != null) {
                            as2Var12 = i81Var13.b;
                        } else {
                            as2Var12 = null;
                        }
                        if (ls2.a(as2Var12)) {
                            a91Var = this;
                        }
                    }
                }
                jj2 jj2Var4 = jj2Var;
                m81 m81Var3 = new m81(i81Var13, fs2Var, jj2Var4, this, fs2Var);
                jj2Var = jj2Var4;
                a91Var = this;
                if (i81Var13 != null || (as2Var10 = i81Var13.c) == null) {
                    tp0VarA4 = null;
                } else {
                    tp0VarA4 = as2Var10.a(fs2Var, m81Var3);
                }
                jj2Var.A.a(tp0VarA4);
                if (i81Var13 != null || (as2Var9 = i81Var13.d) == null) {
                    tp0VarA5 = null;
                } else {
                    tp0VarA5 = as2Var9.a(fs2Var, m81Var3);
                }
                jj2Var.A.a(tp0VarA5);
                if (i81Var13 != null || (as2Var8 = i81Var13.b) == null) {
                    tp0VarA6 = null;
                } else {
                    tp0VarA6 = as2Var8.a(fs2Var, m81Var3);
                }
                jj2Var.A.a(tp0VarA6);
            }
            i81 i81Var15 = j81Var.E;
            i81 i81Var16 = j81Var2 != null ? j81Var2.E : null;
            if (!gb1.a(i81Var15 != null ? i81Var15.e : null, i81Var16 != null ? i81Var16.e : null)) {
                tc1 tc1Var3 = i81Var15 != null ? i81Var15.e : null;
                jj2Var.setLineSeparatorDrawable(tc1Var3 != null ? jf2.a(tc1Var3, jj2Var.getResources().getDisplayMetrics(), fs2Var) : null);
                if (!gb1.a(i81Var15 != null ? i81Var15.e : null)) {
                    js2.a(jj2Var, i81Var15 != null ? i81Var15.e : null, fs2Var, new n81(i81Var15, fs2Var, jj2Var, fs2Var));
                }
            }
            i81 i81Var17 = j81Var.E;
            i81 i81Var18 = j81Var2 != null ? j81Var2.E : null;
            if (!gb1.a(i81Var17 != null ? i81Var17.a : null, i81Var18 != null ? i81Var18.a : null)) {
                Rect rectA3 = a(a91Var, i81Var17 != null ? i81Var17.a : null, jj2Var.getResources(), fs2Var);
                jj2Var.setLineSeparatorMargins(rectA3.left, rectA3.top, rectA3.right, rectA3.bottom);
                yc1 yc1Var3 = i81Var17 != null ? i81Var17.a : null;
                if (yc1Var3 != null && !gb1.a(yc1Var3)) {
                    l81 l81Var = new l81(yc1Var3, fs2Var, a91Var, jj2Var, fs2Var);
                    jj2Var.A.a(yc1Var3.f.a(fs2Var, l81Var));
                    jj2Var.A.a(yc1Var3.a.a(fs2Var, l81Var));
                    as2 as2Var26 = yc1Var3.e;
                    if (as2Var26 == null && yc1Var3.b == null) {
                        jj2Var.A.a(yc1Var3.c.a(fs2Var, l81Var));
                        jj2Var.A.a(yc1Var3.d.a(fs2Var, l81Var));
                    } else {
                        jj2Var.A.a(as2Var26 != null ? as2Var26.a(fs2Var, l81Var) : null);
                        as2 as2Var27 = yc1Var3.b;
                        jj2Var.A.a(as2Var27 != null ? as2Var27.a(fs2Var, l81Var) : null);
                    }
                }
            }
            if (!ls2.a(j81Var.A, j81Var2 != null ? j81Var2.A : null)) {
                jj2Var.setItemSpacing(uq.a(Long.valueOf(((Number) j81Var.A.a(fs2Var)).longValue()), jj2Var.getResources().getDisplayMetrics()));
                as2 as2Var28 = j81Var.A;
                if (!(as2Var28 instanceof xr2)) {
                    jj2Var.A.a(as2Var28.a(fs2Var, new r81(jj2Var)));
                }
            }
            a(jj2Var, j81Var, j81Var2, fs2Var);
            long jLongValue2 = ((Number) j81Var.A.a(fs2Var)).longValue();
            if ((a(j81Var.P, fs2Var) & 2) != 0 && jLongValue2 != 0) {
                ao2VarA.d.add(new Throwable("item_spacing will be ignored due to the 'separator' property."));
                ao2VarA.a();
            }
            long jLongValue3 = ((Number) j81Var.F.a(fs2Var)).longValue();
            if ((a(j81Var.E, fs2Var) & 2) == 0 || jLongValue3 == 0) {
                return;
            }
            ao2VarA.d.add(new Throwable("line_spacing will be ignored due to the 'line_separator' property."));
            ao2VarA.a();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(ViewGroup viewGroup, tt ttVar, j81 j81Var, j81 j81Var2, fs2 fs2Var, n32 n32Var, boolean z) {
        vq0 vq0Var = ttVar.a;
        List<cn1> listA = f71.a(j81Var.B, j81Var.z, ttVar.b);
        viewGroup.getClass();
        List listH = ((g71) viewGroup).h();
        if (listH == null) {
            for (cn1 cn1Var : listA) {
                viewGroup.addView(((qh2) this.c.get()).c(cn1Var.a, cn1Var.b));
            }
        } else if (j81Var != j81Var2) {
            vq0Var.getClass();
            if (j81Var2 == null || !b81.a(j81Var2, j81Var, fs2Var, ttVar.b) || !b81.a(listH, listA)) {
                a(viewGroup, vq0Var, listH, listA);
                listH = null;
            }
        }
        List list = listH;
        ao2 ao2VarA = this.f.a(vq0Var.Q, vq0Var.O);
        if (z) {
            a(viewGroup, ttVar, j81Var, n32Var, ao2VarA);
        }
        a(viewGroup, ttVar, j81Var, j81Var2, listA, list, n32Var, ao2VarA);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final j59 a(j71 j71Var, tt ttVar, ViewGroup viewGroup, a91 a91Var, j81 j81Var, n32 n32Var, ao2 ao2Var, Object obj) throws Throwable {
        ArrayList arrayListA = f71.a(j71Var, ttVar.b);
        viewGroup.getClass();
        List listH = ((g71) viewGroup).h();
        if (listH == null) {
            listH = defpackage.kx2.b;
        }
        List list = listH;
        a91Var.a(viewGroup, ttVar.a, list, arrayListA);
        a91Var.a(viewGroup, ttVar, j81Var, j81Var, arrayListA, list, n32Var, ao2Var);
        return j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [yads.a91] */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v2, types: [yads.a91] */
    /* JADX WARN: Type inference failed for: r12v5, types: [yads.w41] */
    /* JADX WARN: Type inference failed for: r17v0, types: [yads.a91] */
    /* JADX WARN: Type inference failed for: r18v0, types: [android.view.ViewGroup, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.util.WeakHashMap] */
    /* JADX WARN: Type inference failed for: r4v2, types: [android.view.View, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v9, types: [yads.p41] */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3, types: [yads.wh1] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [yads.br0] */
    public final void a(ViewGroup viewGroup, tt ttVar, j81 j81Var, j81 j81Var2, List list, List list2, n32 n32Var, ao2 ao2Var) throws Throwable {
        List list3;
        List listH;
        ?? r7;
        ?? A;
        gs2 gs2Var;
        wh1 wh1Var;
        b31 b31Var;
        ?? r0 = this;
        ttVar.a.getClass();
        fs2 fs2Var = ttVar.b;
        if (!(viewGroup instanceof uf1)) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                p41 p41VarA = ((cn1) it.next()).a.a();
                if (viewGroup instanceof jj2) {
                    if (j81Var.I.a(fs2Var) == h81.HORIZONTAL) {
                        a(p41VarA.getHeight(), p41VarA, ao2Var, "wrap layout mode", "cross");
                    } else {
                        a(p41VarA.getWidth(), p41VarA, ao2Var, "wrap layout mode", "cross");
                    }
                } else if (viewGroup instanceof op1) {
                    if (j81Var.I.a(fs2Var) == h81.HORIZONTAL) {
                        if (j81Var.b0 instanceof w02) {
                            a(p41VarA.getWidth(), p41VarA, ao2Var, "wrap_content size", "main");
                        }
                    } else if ((j81Var.v instanceof w02) && ((b31Var = j81Var.i) == null || ((float) ((Number) b31Var.a.a(fs2Var)).doubleValue()) == 0.0f)) {
                        a(p41VarA.getHeight(), p41VarA, ao2Var, "wrap_content size", "main");
                    }
                }
            }
        }
        int i = 0;
        Throwable th = null;
        if (j81Var.z == null || list == null) {
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            for (Object obj : list) {
                int i3 = i2 + 1;
                if (i2 >= 0) {
                    cn1 cn1Var = (cn1) obj;
                    br0 br0Var = cn1Var.a;
                    if (br0Var.a().a() == null) {
                        listH = u96.h(br0Var);
                    } else if (r0.d.a.a.get(ttVar.a.O) == null) {
                        listH = u96.h(br0Var);
                    } else {
                        throw new ClassCastException();
                    }
                    ArrayList arrayList2 = new ArrayList(defpackage.kn1.q(listH, 10));
                    Iterator it2 = listH.iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(new cn1((br0) it2.next(), cn1Var.b));
                    }
                    arrayList2.size();
                    defpackage.nn1.s(arrayList2, arrayList);
                    i2 = i3;
                } else {
                    u96.o();
                    throw null;
                }
            }
            list3 = arrayList;
        } else {
            list3 = list;
        }
        ArrayList arrayListB = du1.b(list3);
        ?? r1 = r0;
        for (Object obj2 : list3) {
            int i4 = i + 1;
            if (i >= 0) {
                cn1 cn1Var2 = (cn1) obj2;
                ?? childAt = viewGroup.getChildAt(i);
                br0 br0Var2 = cn1Var2.a;
                fs2 fs2Var2 = cn1Var2.b;
                n32 n32VarA = n32Var.a((String) arrayListB.get(i));
                if (childAt instanceof wh1) {
                    wh1Var = (wh1) childAt;
                } else {
                    r7 = th;
                }
                if (r7 != 0) {
                    r7 = wh1Var;
                    A = r7.a();
                } else {
                    r7 = wh1Var;
                    A = th;
                }
                vq0 vq0Var = ttVar.a;
                Throwable th2 = th;
                ms2 ms2VarA = vq0Var.z.a(n32VarA, br0Var2, fs2Var2, ttVar.b);
                ((w41) r1.e.get()).a(defpackage.aa4.e(ttVar.b, fs2Var2) ? ttVar : new tt(ttVar.a, fs2Var2), childAt, br0Var2, n32VarA);
                a(childAt, j81Var, j81Var2, br0Var2.a(), A != 0 ? A.a() : th2, ttVar.b, (ms2VarA == null || (gs2Var = ms2VarA.a) == null) ? fs2Var2 : gs2Var, s55.a(childAt), vq0Var);
                boolean zA = jf2.a(br0Var2.a());
                ?? r2 = vq0Var.w;
                if (zA) {
                    r2.put(childAt, br0Var2);
                }
                r1 = this;
                th = th2;
                i = i4;
            } else {
                Throwable th3 = th;
                u96.o();
                throw th3;
            }
        }
        viewGroup.getClass();
        ((g71) viewGroup).setItems(list3);
        tq.a((ViewGroup) viewGroup, ttVar.a, list3, list2);
    }

    public final void a(final View view, final j81 j81Var, j81 j81Var2, final p41 p41Var, p41 p41Var2, final fs2 fs2Var, final fs2 fs2Var2, hs2 hs2Var, vq0 vq0Var) {
        vq0Var.getClass();
        if (p41Var2 != null) {
            if (ls2.a(j81Var.o, j81Var2 != null ? j81Var2.o : null)) {
                if (ls2.a(j81Var.p, j81Var2 != null ? j81Var2.p : null) && ls2.a(p41Var.f(), p41Var2.f()) && ls2.a(p41Var.q(), p41Var2.q())) {
                    return;
                }
            }
        }
        a(view, j81Var, p41Var, fs2Var, fs2Var2);
        if ((j81Var.o instanceof xr2) && (j81Var.p instanceof xr2) && ls2.a(p41Var.f()) && ls2.a(p41Var.q())) {
            return;
        }
        nl3 nl3Var = new nl3() { // from class: gn9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return a91.a(this.b, view, j81Var, p41Var, fs2Var, fs2Var2, obj);
            }
        };
        hs2Var.a(j81Var.o.a(fs2Var, nl3Var));
        hs2Var.a(j81Var.p.a(fs2Var, nl3Var));
        as2 as2VarF = p41Var.f();
        hs2Var.a(as2VarF != null ? as2VarF.a(fs2Var2, nl3Var) : null);
        as2 as2VarQ = p41Var.q();
        hs2Var.a(as2VarQ != null ? as2VarQ.a(fs2Var2, nl3Var) : null);
    }

    public final void a(final ViewGroup viewGroup, final tt ttVar, final j81 j81Var, final n32 n32Var, final ao2 ao2Var) throws JSONException {
        final j71 j71Var = j81Var.z;
        if (j71Var == null) {
            return;
        }
        pq.a(j71Var, ttVar.b, new nl3() { // from class: hn9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return a91.a(j71Var, ttVar, viewGroup, this, j81Var, n32Var, ao2Var, obj);
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00dc  */
    public final void a(ViewGroup viewGroup, vq0 vq0Var, List list, List list2) {
        Object next;
        boolean zE;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List listQ = jp7.q(ViewGroupKt.getChildren(viewGroup));
        Iterator it = list.iterator();
        Iterator it2 = listQ.iterator();
        ArrayList arrayList = new ArrayList(Math.min(defpackage.kn1.q(list, 10), defpackage.kn1.q(listQ, 10)));
        while (it.hasNext() && it2.hasNext()) {
            linkedHashMap.put(((cn1) it.next()).a, (View) it2.next());
            arrayList.add(j59.a);
        }
        viewGroup.removeAllViews();
        ArrayList arrayList2 = new ArrayList();
        Iterator it3 = list2.iterator();
        int i = 0;
        while (true) {
            Object obj = null;
            if (!it3.hasNext()) {
                Iterator it4 = arrayList2.iterator();
                while (it4.hasNext()) {
                    int iIntValue = ((Number) it4.next()).intValue();
                    cn1 cn1Var = (cn1) list2.get(iIntValue);
                    Iterator it5 = linkedHashMap.keySet().iterator();
                    do {
                        if (!it5.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it5.next();
                    } while (!defpackage.aa4.e(jf2.a((br0) next), jf2.a(cn1Var.a)));
                    View viewC = (View) v39.b(linkedHashMap).remove((br0) next);
                    if (viewC == null) {
                        viewC = ((qh2) this.c.get()).c(cn1Var.a, cn1Var.b);
                    }
                    viewGroup.addView(viewC, iIntValue);
                }
                Iterator it6 = linkedHashMap.values().iterator();
                while (it6.hasNext()) {
                    di2.a(vq0Var.u(), (View) it6.next());
                }
                return;
            }
            Object next2 = it3.next();
            int i2 = i + 1;
            if (i >= 0) {
                cn1 cn1Var2 = (cn1) next2;
                for (Object obj2 : linkedHashMap.keySet()) {
                    br0 br0Var = (br0) obj2;
                    if (jf2.b(br0Var)) {
                        zE = defpackage.aa4.e(jf2.a(cn1Var2.a), jf2.a(br0Var));
                    } else {
                        br0 br0Var2 = cn1Var2.a;
                        fs2 fs2Var = cn1Var2.b;
                        if (defpackage.aa4.e(jf2.a(br0Var), jf2.a(br0Var2))) {
                            p41 p41VarA = br0Var.a();
                            p41 p41VarA2 = br0Var2.a();
                            if ((p41VarA instanceof zh1) && (p41VarA2 instanceof zh1)) {
                                zE = defpackage.aa4.e(((zh1) p41VarA).B.a(fs2Var), ((zh1) p41VarA2).B.a(fs2Var));
                            } else if (p41VarA.e() == p41VarA2.e()) {
                                zE = true;
                            } else {
                                zE = false;
                            }
                        } else {
                            zE = false;
                        }
                    }
                    if (zE) {
                        obj = obj2;
                        break;
                    }
                }
                View view = (View) v39.b(linkedHashMap).remove((br0) obj);
                if (view != null) {
                    viewGroup.addView(view);
                } else {
                    arrayList2.add(Integer.valueOf(i));
                }
                i = i2;
            } else {
                u96.o();
                throw null;
            }
        }
    }

    public static void a(jj2 jj2Var, j81 j81Var, j81 j81Var2, fs2 fs2Var) {
        if (ls2.a(j81Var.F, j81Var2 != null ? j81Var2.F : null)) {
            return;
        }
        DisplayMetrics displayMetrics = jj2Var.getResources().getDisplayMetrics();
        jj2Var.setLineSpacing(uq.a((Long) j81Var.F.a(fs2Var), displayMetrics));
        as2 as2Var = j81Var.F;
        if (as2Var instanceof xr2) {
            return;
        }
        jj2Var.A.a(as2Var.a(fs2Var, new defpackage.fu3(3, jj2Var, displayMetrics)));
    }

    public static final j59 a(jj2 jj2Var, DisplayMetrics displayMetrics, long j) {
        jj2Var.setLineSpacing(uq.a(Long.valueOf(j), displayMetrics));
        return j59.a;
    }

    public static final j59 a(a91 a91Var, View view, j81 j81Var, p41 p41Var, fs2 fs2Var, fs2 fs2Var2, Object obj) {
        a91Var.getClass();
        a(view, j81Var, p41Var, fs2Var, fs2Var2);
        return j59.a;
    }

    public static void a(View view, j81 j81Var, p41 p41Var, fs2 fs2Var, fs2 fs2Var2) {
        f11 f11Var;
        as2 as2VarF = p41Var.f();
        h11 h11Var = null;
        if (as2VarF != null) {
            f11Var = (f11) as2VarF.a(fs2Var2);
        } else if (jf2.a(j81Var, fs2Var)) {
            f11Var = null;
        } else {
            int iOrdinal = ((m91) j81Var.o.a(fs2Var)).ordinal();
            if (iOrdinal == 0) {
                f11Var = f11.LEFT;
            } else if (iOrdinal == 1) {
                f11Var = f11.CENTER;
            } else if (iOrdinal == 2) {
                f11Var = f11.RIGHT;
            } else if (iOrdinal == 3 || iOrdinal != 4) {
                f11Var = f11.START;
            } else {
                f11Var = f11.END;
            }
        }
        as2 as2VarQ = p41Var.q();
        if (as2VarQ != null) {
            h11Var = (h11) as2VarQ.a(fs2Var2);
        } else if (!jf2.a(j81Var, fs2Var)) {
            int iOrdinal2 = ((o91) j81Var.p.a(fs2Var)).ordinal();
            if (iOrdinal2 == 0) {
                h11Var = h11.TOP;
            } else if (iOrdinal2 == 1) {
                h11Var = h11.CENTER;
            } else if (iOrdinal2 == 2) {
                h11Var = h11.BOTTOM;
            } else if (iOrdinal2 != 3) {
                h11Var = h11.TOP;
            } else {
                h11Var = h11.BASELINE;
            }
        }
        pq.a(view, f11Var, h11Var);
    }

    public static void a(x02 x02Var, p41 p41Var, ao2 ao2Var, String str, String str2) {
        String strC;
        if (x02Var instanceof v02) {
            String strA = p41Var.a();
            if (strA != null) {
                strC = defpackage.me0.c(" with id='", strA, "'");
            } else {
                strC = "";
            }
            ao2Var.a(new Throwable(String.format("Incorrect child size. Container with %s contains child%s with match_parent size along the %s axis.", Arrays.copyOf(new Object[]{str, strC, str2}, 3))));
        }
    }

    public static final Rect a(a91 a91Var, yc1 yc1Var, Resources resources, fs2 fs2Var) {
        if (yc1Var == null) {
            a91Var.g.set(0, 0, 0, 0);
            return a91Var.g;
        }
        a91Var.getClass();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        g12 g12Var = (g12) yc1Var.g.a(fs2Var);
        if (yc1Var.e == null && yc1Var.b == null) {
            a91Var.g.left = uq.a((Long) yc1Var.c.a(fs2Var), displayMetrics, g12Var);
            a91Var.g.right = uq.a((Long) yc1Var.d.a(fs2Var), displayMetrics, g12Var);
        } else {
            int layoutDirection = resources.getConfiguration().getLayoutDirection();
            Rect rect = a91Var.g;
            if (layoutDirection == 0) {
                as2 as2Var = yc1Var.e;
                rect.left = uq.a(as2Var != null ? (Long) as2Var.a(fs2Var) : null, displayMetrics, g12Var);
                Rect rect2 = a91Var.g;
                as2 as2Var2 = yc1Var.b;
                rect2.right = uq.a(as2Var2 != null ? (Long) as2Var2.a(fs2Var) : null, displayMetrics, g12Var);
            } else {
                as2 as2Var3 = yc1Var.b;
                rect.left = uq.a(as2Var3 != null ? (Long) as2Var3.a(fs2Var) : null, displayMetrics, g12Var);
                Rect rect3 = a91Var.g;
                as2 as2Var4 = yc1Var.e;
                rect3.right = uq.a(as2Var4 != null ? (Long) as2Var4.a(fs2Var) : null, displayMetrics, g12Var);
            }
        }
        a91Var.g.top = uq.a((Long) yc1Var.f.a(fs2Var), displayMetrics, g12Var);
        a91Var.g.bottom = uq.a((Long) yc1Var.a.a(fs2Var), displayMetrics, g12Var);
        return a91Var.g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    public static int a(i81 i81Var, fs2 fs2Var) {
        ?? r0;
        if (i81Var == null) {
            return 0;
        }
        boolean zBooleanValue = ((Boolean) i81Var.c.a(fs2Var)).booleanValue();
        if (((Boolean) i81Var.d.a(fs2Var)).booleanValue()) {
            r0 = zBooleanValue;
            r0 = (zBooleanValue ? 1 : 0) | 2;
        }
        r0 = zBooleanValue;
        return ((Boolean) i81Var.b.a(fs2Var)).booleanValue() ? r0 | 4 : r0;
    }
}
