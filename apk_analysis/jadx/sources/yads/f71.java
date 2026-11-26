package yads;

import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.ll3;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import yads.f71;

/* JADX INFO: loaded from: classes6.dex */
public abstract class f71 {
    public static final br0 a(br0 br0Var, String str) {
        if (br0Var instanceof zp0) {
            zh1 zh1Var = ((zp0) br0Var).a;
            return new zp0(new zh1(zh1Var.a, zh1Var.b, zh1Var.c, zh1Var.d, zh1Var.e, zh1Var.f, zh1Var.g, zh1Var.h, zh1Var.i, zh1Var.j, zh1Var.k, zh1Var.l, zh1Var.m, zh1Var.n, zh1Var.o, zh1Var.p, zh1Var.q, zh1Var.r, zh1Var.s, zh1Var.t, zh1Var.u, zh1Var.v, zh1Var.w, zh1Var.x, zh1Var.y, zh1Var.z, str, zh1Var.B, zh1Var.C, zh1Var.D, zh1Var.E, zh1Var.F, zh1Var.G, zh1Var.H, zh1Var.I, zh1Var.J, zh1Var.K, zh1Var.L, zh1Var.M, zh1Var.N, zh1Var.O, zh1Var.P, zh1Var.Q, zh1Var.R, zh1Var.S, zh1Var.T, zh1Var.U, zh1Var.V, zh1Var.W, zh1Var.X, zh1Var.Y, zh1Var.Z, zh1Var.a0, zh1Var.b0, zh1Var.c0));
        }
        if (br0Var instanceof xp0) {
            eh1 eh1Var = ((xp0) br0Var).a;
            int i = eh1.Y;
            return new xp0(new eh1(eh1Var.a, eh1Var.b, eh1Var.c, eh1Var.d, eh1Var.e, eh1Var.f, eh1Var.g, eh1Var.h, eh1Var.i, eh1Var.j, eh1Var.k, eh1Var.l, eh1Var.m, eh1Var.n, eh1Var.o, eh1Var.p, eh1Var.q, eh1Var.r, eh1Var.s, eh1Var.t, eh1Var.u, eh1Var.v, eh1Var.w, eh1Var.x, str, eh1Var.z, eh1Var.A, eh1Var.B, eh1Var.C, eh1Var.D, eh1Var.E, eh1Var.F, eh1Var.G, eh1Var.H, eh1Var.I, eh1Var.J, eh1Var.K, eh1Var.L, eh1Var.M, eh1Var.N, eh1Var.O, eh1Var.P, eh1Var.Q, eh1Var.R, eh1Var.S, eh1Var.T, eh1Var.U, eh1Var.V, eh1Var.W, eh1Var.X));
        }
        if (br0Var instanceof jq0) {
            b82 b82Var = ((jq0) br0Var).a;
            return new jq0(new b82(b82Var.a, b82Var.b, b82Var.c, b82Var.d, b82Var.e, b82Var.f, b82Var.g, b82Var.h, b82Var.i, b82Var.j, b82Var.k, b82Var.l, b82Var.m, b82Var.n, b82Var.o, b82Var.p, b82Var.q, b82Var.r, b82Var.s, b82Var.t, b82Var.u, b82Var.v, b82Var.w, b82Var.x, b82Var.y, b82Var.z, b82Var.A, b82Var.B, b82Var.C, b82Var.D, str, b82Var.F, b82Var.G, b82Var.H, b82Var.I, b82Var.J, b82Var.K, b82Var.L, b82Var.M, b82Var.N, b82Var.O, b82Var.P, b82Var.Q, b82Var.R, b82Var.S, b82Var.T, b82Var.U, b82Var.V, b82Var.W, b82Var.X, b82Var.Y, b82Var.Z, b82Var.a0, b82Var.b0, b82Var.c0, b82Var.d0, b82Var.e0, b82Var.f0, b82Var.g0, b82Var.h0, b82Var.i0, b82Var.j0, b82Var.k0, b82Var.l0, b82Var.m0, b82Var.n0, b82Var.o0, b82Var.p0, b82Var.q0));
        }
        if (br0Var instanceof eq0) {
            kz1 kz1Var = ((eq0) br0Var).a;
            return new eq0(new kz1(kz1Var.a, kz1Var.b, kz1Var.c, kz1Var.d, kz1Var.e, kz1Var.f, kz1Var.g, kz1Var.h, kz1Var.i, kz1Var.j, kz1Var.k, kz1Var.l, kz1Var.m, kz1Var.n, kz1Var.o, kz1Var.p, kz1Var.q, kz1Var.r, kz1Var.s, kz1Var.t, kz1Var.u, str, kz1Var.w, kz1Var.x, kz1Var.y, kz1Var.z, kz1Var.A, kz1Var.B, kz1Var.C, kz1Var.D, kz1Var.E, kz1Var.F, kz1Var.G, kz1Var.H, kz1Var.I, kz1Var.J, kz1Var.K, kz1Var.L, kz1Var.M, kz1Var.N, kz1Var.O, kz1Var.P, kz1Var.Q));
        }
        ArrayList arrayList = null;
        if (br0Var instanceof up0) {
            j81 j81Var = ((up0) br0Var).a;
            List list = j81Var.B;
            if (list != null) {
                arrayList = new ArrayList(defpackage.kn1.q(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(a((br0) it.next()));
                }
            }
            return new up0(new j81(j81Var.a, j81Var.b, j81Var.c, j81Var.d, j81Var.e, j81Var.f, j81Var.g, j81Var.h, j81Var.i, j81Var.j, j81Var.k, j81Var.l, j81Var.m, j81Var.n, j81Var.o, j81Var.p, j81Var.q, j81Var.r, j81Var.s, j81Var.t, j81Var.u, j81Var.v, j81Var.w, j81Var.x, str, j81Var.z, j81Var.A, arrayList, j81Var.C, j81Var.D, j81Var.E, j81Var.F, j81Var.G, j81Var.H, j81Var.I, j81Var.J, j81Var.K, j81Var.L, j81Var.M, j81Var.N, j81Var.O, j81Var.P, j81Var.Q, j81Var.R, j81Var.S, j81Var.T, j81Var.U, j81Var.V, j81Var.W, j81Var.X, j81Var.Y, j81Var.Z, j81Var.a0, j81Var.b0));
        }
        if (br0Var instanceof yp0) {
            oh1 oh1Var = ((yp0) br0Var).a;
            List list2 = oh1Var.y;
            if (list2 != null) {
                arrayList = new ArrayList(defpackage.kn1.q(list2, 10));
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    arrayList.add(a((br0) it2.next()));
                }
            }
            return new yp0(new oh1(oh1Var.a, oh1Var.b, oh1Var.c, oh1Var.d, oh1Var.e, oh1Var.f, oh1Var.g, oh1Var.h, oh1Var.i, oh1Var.j, oh1Var.k, oh1Var.l, oh1Var.m, oh1Var.n, oh1Var.o, oh1Var.p, oh1Var.q, oh1Var.r, oh1Var.s, oh1Var.t, oh1Var.u, oh1Var.v, oh1Var.w, str, arrayList, oh1Var.z, oh1Var.A, oh1Var.B, oh1Var.C, oh1Var.D, oh1Var.E, oh1Var.F, oh1Var.G, oh1Var.H, oh1Var.I, oh1Var.J, oh1Var.K, oh1Var.L, oh1Var.M, oh1Var.N, oh1Var.O, oh1Var.P, oh1Var.Q, oh1Var.R, oh1Var.S, oh1Var.T));
        }
        if (br0Var instanceof wp0) {
            og1 og1Var = ((wp0) br0Var).a;
            List list3 = og1Var.u;
            if (list3 != null) {
                arrayList = new ArrayList(defpackage.kn1.q(list3, 10));
                Iterator it3 = list3.iterator();
                while (it3.hasNext()) {
                    arrayList.add(a((br0) it3.next()));
                }
            }
            return new wp0(new og1(og1Var.a, og1Var.b, og1Var.c, og1Var.d, og1Var.e, og1Var.f, og1Var.g, og1Var.h, og1Var.i, og1Var.j, og1Var.k, og1Var.l, og1Var.m, og1Var.n, og1Var.o, og1Var.p, og1Var.q, str, og1Var.s, og1Var.t, arrayList, og1Var.v, og1Var.w, og1Var.x, og1Var.y, og1Var.z, og1Var.A, og1Var.B, og1Var.C, og1Var.D, og1Var.E, og1Var.F, og1Var.G, og1Var.H, og1Var.I, og1Var.J, og1Var.K, og1Var.L, og1Var.M, og1Var.N, og1Var.O, og1Var.P, og1Var.Q));
        }
        if (br0Var instanceof cq0) {
            ur1 ur1Var = ((cq0) br0Var).a;
            List list4 = ur1Var.t;
            if (list4 != null) {
                arrayList = new ArrayList(defpackage.kn1.q(list4, 10));
                Iterator it4 = list4.iterator();
                while (it4.hasNext()) {
                    arrayList.add(a((br0) it4.next()));
                }
            }
            return new cq0(new ur1(ur1Var.a, ur1Var.b, ur1Var.c, ur1Var.d, ur1Var.e, ur1Var.f, ur1Var.g, ur1Var.h, ur1Var.i, ur1Var.j, ur1Var.k, ur1Var.l, ur1Var.m, ur1Var.n, ur1Var.o, str, ur1Var.q, ur1Var.r, ur1Var.s, arrayList, ur1Var.u, ur1Var.v, ur1Var.w, ur1Var.x, ur1Var.y, ur1Var.z, ur1Var.A, ur1Var.B, ur1Var.C, ur1Var.D, ur1Var.E, ur1Var.F, ur1Var.G, ur1Var.H, ur1Var.I, ur1Var.J, ur1Var.K, ur1Var.L, ur1Var.M, ur1Var.N, ur1Var.O, ur1Var.P, ur1Var.Q));
        }
        if (br0Var instanceof iq0) {
            y52 y52Var = ((iq0) br0Var).a;
            List<t52> list5 = y52Var.q;
            ArrayList arrayList2 = new ArrayList(defpackage.kn1.q(list5, 10));
            for (t52 t52Var : list5) {
                arrayList2.add(new t52(a(t52Var.a), t52Var.b, t52Var.c));
            }
            return new iq0(new y52(y52Var.a, y52Var.b, y52Var.c, y52Var.d, y52Var.e, y52Var.f, y52Var.g, y52Var.h, y52Var.i, y52Var.j, y52Var.k, y52Var.l, y52Var.m, y52Var.n, y52Var.o, str, arrayList2, y52Var.r, y52Var.s, y52Var.t, y52Var.u, y52Var.v, y52Var.w, y52Var.x, y52Var.y, y52Var.z, y52Var.A, y52Var.B, y52Var.C, y52Var.D, y52Var.E, y52Var.F, y52Var.G, y52Var.H, y52Var.I, y52Var.J, y52Var.K, y52Var.L, y52Var.M, y52Var.N, y52Var.O, y52Var.P, y52Var.Q));
        }
        if (br0Var instanceof gq0) {
            z22 z22Var = ((gq0) br0Var).a;
            List<y22> list6 = z22Var.I;
            ArrayList arrayList3 = new ArrayList(defpackage.kn1.q(list6, 10));
            for (y22 y22Var : list6) {
                br0 br0Var2 = y22Var.c;
                arrayList3.add(new y22(y22Var.a, y22Var.b, br0Var2 != null ? a(br0Var2, br0Var2.a().a()) : null, y22Var.d, y22Var.e));
            }
            return new gq0(new z22(z22Var.a, z22Var.b, z22Var.c, z22Var.d, z22Var.e, z22Var.f, z22Var.g, z22Var.h, z22Var.i, z22Var.j, z22Var.k, z22Var.l, z22Var.m, z22Var.n, z22Var.o, str, z22Var.q, z22Var.r, z22Var.s, z22Var.t, z22Var.u, z22Var.v, z22Var.w, str, z22Var.y, z22Var.z, z22Var.A, z22Var.B, z22Var.C, z22Var.D, z22Var.E, z22Var.F, z22Var.G, z22Var.H, arrayList3, z22Var.J, z22Var.K, z22Var.L, z22Var.M, z22Var.N, z22Var.O, z22Var.P, z22Var.Q, z22Var.R, z22Var.S, z22Var.T, z22Var.U, z22Var.V));
        }
        if (br0Var instanceof vp0) {
            return new vp0(ka1.a(((vp0) br0Var).a, str, null, -32769));
        }
        if (br0Var instanceof aq0) {
            bj1 bj1Var = ((aq0) br0Var).a;
            return new aq0(new bj1(bj1Var.a, bj1Var.b, bj1Var.c, bj1Var.d, bj1Var.e, bj1Var.f, bj1Var.g, bj1Var.h, bj1Var.i, bj1Var.j, bj1Var.k, bj1Var.l, bj1Var.m, bj1Var.n, bj1Var.o, bj1Var.p, bj1Var.q, str, bj1Var.s, bj1Var.t, bj1Var.u, bj1Var.v, bj1Var.w, bj1Var.x, bj1Var.y, bj1Var.z, bj1Var.A, bj1Var.B, bj1Var.C, bj1Var.D, bj1Var.E, bj1Var.F, bj1Var.G, bj1Var.H, bj1Var.I, bj1Var.J, bj1Var.K, bj1Var.L, bj1Var.M, bj1Var.N, bj1Var.O, bj1Var.P, bj1Var.Q, bj1Var.R));
        }
        if (br0Var instanceof fq0) {
            x12 x12Var = ((fq0) br0Var).a;
            return new fq0(new x12(x12Var.a, x12Var.b, x12Var.c, x12Var.d, x12Var.e, x12Var.f, x12Var.g, x12Var.h, x12Var.i, x12Var.j, x12Var.k, x12Var.l, x12Var.m, str, x12Var.o, x12Var.p, x12Var.q, x12Var.r, x12Var.s, x12Var.t, x12Var.u, x12Var.v, x12Var.w, x12Var.x, x12Var.y, x12Var.z, x12Var.A, x12Var.B, x12Var.C, x12Var.D, x12Var.E, x12Var.F, x12Var.G, x12Var.H, x12Var.I, x12Var.J, x12Var.K, x12Var.L, x12Var.M, x12Var.N, x12Var.O, x12Var.P, x12Var.Q, x12Var.R, x12Var.S, x12Var.T, x12Var.U));
        }
        if (br0Var instanceof bq0) {
            ek1 ek1Var = ((bq0) br0Var).a;
            return new bq0(new ek1(ek1Var.a, ek1Var.b, ek1Var.c, ek1Var.d, ek1Var.e, ek1Var.f, ek1Var.g, ek1Var.h, ek1Var.i, ek1Var.j, ek1Var.k, ek1Var.l, ek1Var.m, ek1Var.n, ek1Var.o, ek1Var.p, ek1Var.q, ek1Var.r, ek1Var.s, ek1Var.t, ek1Var.u, ek1Var.v, ek1Var.w, ek1Var.x, ek1Var.y, ek1Var.z, str, ek1Var.B, ek1Var.C, ek1Var.D, ek1Var.E, ek1Var.F, ek1Var.G, ek1Var.H, ek1Var.I, ek1Var.J, ek1Var.K, ek1Var.L, ek1Var.M, ek1Var.N, ek1Var.O, ek1Var.P, ek1Var.Q, ek1Var.R, ek1Var.S, ek1Var.T, ek1Var.U, ek1Var.V, ek1Var.W, ek1Var.X, ek1Var.Y, ek1Var.Z, ek1Var.a0, ek1Var.b0, ek1Var.c0, ek1Var.d0, ek1Var.e0, ek1Var.f0, ek1Var.g0));
        }
        if (br0Var instanceof dq0) {
            uy1 uy1Var = ((dq0) br0Var).a;
            return new dq0(new uy1(uy1Var.a, uy1Var.b, uy1Var.c, uy1Var.d, uy1Var.e, uy1Var.f, uy1Var.g, uy1Var.h, uy1Var.i, uy1Var.j, uy1Var.k, uy1Var.l, uy1Var.m, uy1Var.n, uy1Var.o, uy1Var.p, uy1Var.q, uy1Var.r, uy1Var.s, uy1Var.t, uy1Var.u, str, uy1Var.w, uy1Var.x, uy1Var.y, uy1Var.z, uy1Var.A, uy1Var.B, uy1Var.C, uy1Var.D, uy1Var.E, uy1Var.F, uy1Var.G, uy1Var.H, uy1Var.I, uy1Var.J, uy1Var.K, uy1Var.L, uy1Var.M, uy1Var.N, uy1Var.O, uy1Var.P, uy1Var.Q, uy1Var.R, uy1Var.S));
        }
        if (br0Var instanceof kq0) {
            return new kq0(ng2.a(((kq0) br0Var).a, str));
        }
        if (br0Var instanceof hq0) {
            return new hq0(k52.a(((hq0) br0Var).a, str));
        }
        defpackage.me0.e();
        return null;
    }

    public static final ArrayList a(j71 j71Var, fs2 fs2Var) {
        Object next;
        JSONArray jSONArray = (JSONArray) j71Var.a.a(fs2Var);
        int length = jSONArray.length();
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            fs2 fs2VarA = a(j71Var, jSONArray.get(i), i, fs2Var);
            cn1 cn1Var = null;
            cn1Var = null;
            if (fs2VarA != null) {
                Iterator it = j71Var.c.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!((Boolean) ((i71) next).c.a(fs2VarA)).booleanValue());
                i71 i71Var = (i71) next;
                if (i71Var != null) {
                    br0 br0Var = i71Var.a;
                    as2 as2Var = i71Var.b;
                    cn1Var = new cn1(a(br0Var, as2Var != null ? (String) as2Var.a(fs2VarA) : null), fs2VarA);
                }
            }
            if (cn1Var != null) {
                arrayList.add(cn1Var);
            }
        }
        return arrayList;
    }

    public static final fs2 a(final j71 j71Var, Object obj, final int i, fs2 fs2Var) {
        final gs2 gs2VarA = w56.a(fs2Var);
        if (gs2VarA == null) {
            return fs2Var;
        }
        final JSONObject jSONObjectA = gs2VarA.a(i, obj);
        if (jSONObjectA == null) {
            return null;
        }
        final String str = obj + StringUtils.PROCESS_POSTFIX_DELIMITER + i;
        return gs2VarA.d().a(defpackage.cg.d(gs2VarA.c(), "/", str), fs2Var, new ll3() { // from class: av9
            @Override // defpackage.ll3
            public final Object invoke() {
                return f71.a(j71Var, jSONObjectA, i, gs2VarA, str);
            }
        });
    }

    public static final fs2 a(j71 j71Var, JSONObject jSONObject, int i, gs2 gs2Var, String str) {
        return gs2Var.a(str, new z50(defpackage.n05.e(new defpackage.b36(j71Var.b, jSONObject), new defpackage.b36(FirebaseAnalytics.Param.INDEX, Long.valueOf(i)))));
    }

    public static /* synthetic */ br0 a(br0 br0Var) {
        return a(br0Var, br0Var.a().a());
    }

    public static final List a(List list, j71 j71Var, fs2 fs2Var) {
        if (j71Var != null) {
            return a(j71Var, fs2Var);
        }
        if (list != null) {
            return a(list, fs2Var);
        }
        return defpackage.kx2.b;
    }

    public static final List a(oh1 oh1Var) {
        List list = oh1Var.y;
        return list == null ? defpackage.kx2.b : list;
    }

    public static final ArrayList a(List list, fs2 fs2Var) {
        ArrayList arrayList = new ArrayList(defpackage.kn1.q(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new cn1((br0) it.next(), fs2Var));
        }
        return arrayList;
    }
}
