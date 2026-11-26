package yads;

import android.os.SystemClock;
import android.view.View;
import com.tapjoy.TJAdUnitConstants;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.u96;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class d65 extends pg8 implements defpackage.bm3 {
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ e65 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d65(e65 e65Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.d = e65Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        d65 d65Var = new d65(this.d, e02Var);
        d65Var.c = obj;
        return d65Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        d65 d65Var = new d65(this.d, (defpackage.e02) obj2);
        d65Var.c = (defpackage.y22) obj;
        return d65Var.invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:124:0x0289 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:126:0x028a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:17:0x003f  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v44 */
    /* JADX WARN: Type inference failed for: r1v46, types: [yads.y14] */
    /* JADX WARN: Type inference failed for: r1v52 */
    /* JADX WARN: Type inference failed for: r1v53 */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v31, types: [yads.ey3] */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.y22 y22Var;
        View view;
        boolean z;
        defpackage.a32 a32Var;
        View viewA;
        ?? r5;
        defpackage.a32 a32Var2;
        List listI;
        bk bkVarA;
        ?? r3;
        ?? r1;
        y14 y14VarD;
        ey3 ey3Var;
        boolean z2;
        defpackage.a32 a32Var3 = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        View view2 = null;
        ?? r4 = 1;
        if (i == 0) {
            r57.b(obj);
            y22Var = (defpackage.y22) this.c;
        } else {
            if (i != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            y22Var = (defpackage.y22) this.c;
            r57.b(obj);
        }
        while (defpackage.z22.e(y22Var)) {
            e65 e65Var = this.d;
            if (e65Var.d) {
                break;
            }
            m8 m8Var = e65Var.a;
            dh4 dh4Var = m8Var.a.a.f;
            if (dh4Var == null || (viewA = dh4Var.d.a()) == null || eh6.a.a(viewA).a < r4) {
                r5 = z2;
                defpackage.a32 a32Var4 = a32Var3;
                view = view2;
                this.c = y22Var;
                z = true;
                this.b = 1;
                a32Var = a32Var4;
                if (defpackage.yk2.b(300L, this) == a32Var) {
                    return a32Var;
                }
            } else {
                lh4 lh4Var = m8Var.b;
                fe5 fe5VarA = lh4Var.c.a(lh4Var.a);
                if (fe5VarA == null || !fe5VarA.C) {
                    r5 = r4;
                } else {
                    z2 = lh4Var.b.a(false) instanceof g66;
                }
                if (r5 != 0) {
                    e65 e65Var2 = this.d;
                    e65Var2.d = r4;
                    j65 j65Var = e65Var2.b;
                    l65 l65Var = j65Var.c;
                    if (l65Var != null) {
                        r5 = z2;
                        l65Var.a = Long.valueOf(SystemClock.elapsedRealtime());
                    }
                    r5 = z2;
                    i65 i65Var = j65Var.d;
                    h75 h75VarA = i65Var.f.a(i65Var.b, i65Var.a);
                    Iterator it = i65Var.c.iterator();
                    while (it.hasNext()) {
                        ea.a(i65Var.d, (String) it.next(), i16.RENDER, h75VarA, 4);
                    }
                    h65 h65Var = i65Var.e;
                    h75 h75VarA2 = h65Var.f.a(h65Var.a, h65Var.b);
                    h75VarA2.b(c75.a, "adapter");
                    yj4 yj4Var = h65Var.g;
                    if (yj4Var != null) {
                        Map map = yj4Var.a.a().a;
                        yk ykVar = yj4Var.b;
                        ykVar.getClass();
                        HashMap map2 = new HashMap();
                        Iterator it2 = ykVar.a.iterator();
                        while (it2.hasNext()) {
                            ak akVar = (ak) it2.next();
                            String str = akVar.a;
                            view2 = view2;
                            dh4 dh4Var2 = ykVar.b;
                            if (dh4Var2 != null && (bkVarA = dh4Var2.a(akVar)) != null && bkVarA.b()) {
                                HashMap map3 = new HashMap();
                                tg6 tg6VarC = bkVarA.c();
                                if (tg6VarC != null) {
                                    map3.put(TJAdUnitConstants.String.WIDTH, Integer.valueOf(e46.a(tg6VarC.a)));
                                    map3.put(TJAdUnitConstants.String.HEIGHT, Integer.valueOf(e46.a(tg6VarC.b)));
                                }
                                if (bkVarA instanceof ey3) {
                                    ey3Var = (ey3) bkVarA;
                                } else {
                                    r3 = view2;
                                }
                                if (r3 != 0) {
                                    z14 z14Var = r3.b;
                                    if (z14Var == null || (y14VarD = z14Var.d()) == null) {
                                        r3 = ey3Var;
                                        r1 = y14VarD;
                                        r3 = ey3Var;
                                        r1 = r3.a != null ? y14.IMAGE : view2;
                                    }
                                    if (r1 != 0) {
                                        map3.put("value_type", r1.b);
                                    }
                                }
                                r3 = ey3Var;
                                map2.put(str, map3);
                                it2 = it2;
                                a32Var3 = a32Var3;
                            }
                        }
                        a32Var2 = a32Var3;
                        view = view2;
                        dh4 dh4Var3 = ykVar.b;
                        View viewA2 = dh4Var3 != null ? dh4Var3.d.a() : view;
                        defpackage.uz4 uz4Var = new defpackage.uz4();
                        if (viewA2 != null) {
                            uz4Var.put(TJAdUnitConstants.String.WIDTH, Integer.valueOf(e46.a(viewA2.getWidth())));
                            uz4Var.put(TJAdUnitConstants.String.HEIGHT, Integer.valueOf(e46.a(viewA2.getHeight())));
                        }
                        defpackage.uz4 uz4VarB = uz4Var.b();
                        if (!uz4VarB.isEmpty()) {
                            map2.put("superview", uz4VarB);
                        }
                        Map mapSingletonMap = Collections.singletonMap("rendered", map2);
                        mapSingletonMap.getClass();
                        Map mapSingletonMap2 = Collections.singletonMap("assets", mapSingletonMap);
                        mapSingletonMap2.getClass();
                        h75VarA2.a.putAll(defpackage.n05.g(map, mapSingletonMap2));
                    } else {
                        a32Var2 = a32Var3;
                        view = view2;
                    }
                    sl5 sl5Var = h65Var.a.d.a;
                    if (sl5Var != null) {
                        h75VarA2.b(sl5Var.b().b, "size_type");
                        h75VarA2.b(Integer.valueOf(sl5Var.getWidth()), TJAdUnitConstants.String.WIDTH);
                        h75VarA2.b(Integer.valueOf(sl5Var.getHeight()), TJAdUnitConstants.String.HEIGHT);
                    }
                    fe5 fe5Var = h65Var.e;
                    if (fe5Var != null) {
                        h75VarA2.b(fe5Var.S, "banner_size_calculation_type");
                    }
                    int iOrdinal = h65Var.c.ordinal();
                    if (iOrdinal == 0) {
                        listI = u96.i(e75.DSP_RENDERING_START, e75.RENDERING_START);
                    } else if (iOrdinal == 1) {
                        listI = u96.h(e75.DSP_RENDERING_START);
                    } else {
                        if (iOrdinal != 2) {
                            defpackage.me0.e();
                            return view;
                        }
                        listI = u96.h(e75.RENDERING_START);
                    }
                    Iterator it3 = listI.iterator();
                    while (it3.hasNext()) {
                        h65Var.d.a(new g75((e75) it3.next(), h75VarA2.a, h75VarA2.b));
                    }
                    g5 g5Var = j65Var.a;
                    String str2 = g5Var.a.a;
                    if (str2 != null && str2.length() != 0) {
                        f5 f5Var = g5Var.b;
                        f5Var.getClass();
                        synchronized (f5.c) {
                            f5Var.a.remove(str2);
                            f5Var.a.add(str2);
                        }
                    }
                    j65Var.b.f();
                    a32Var = a32Var2;
                    z = true;
                } else {
                    r5 = z2;
                    defpackage.a32 a32Var5 = a32Var3;
                    view = view2;
                    this.c = y22Var;
                    z = true;
                    this.b = 1;
                    a32Var = a32Var5;
                    if (defpackage.yk2.b(300L, this) == a32Var) {
                        return a32Var;
                    }
                }
            }
            a32Var3 = a32Var;
            r4 = z;
            view2 = view;
        }
        return j59.a;
    }
}
