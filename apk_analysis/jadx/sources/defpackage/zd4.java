package defpackage;

import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlinx.serialization.json.JsonDecodingException;

/* JADX INFO: loaded from: classes5.dex */
public class zd4 extends t0 {
    public final jd4 f;
    public final mp7 g;
    public int h;
    public boolean i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zd4(xb4 xb4Var, jd4 jd4Var, String str, mp7 mp7Var) {
        super(xb4Var, jd4Var, str);
        xb4Var.getClass();
        this.f = jd4Var;
        this.g = mp7Var;
    }

    @Override // defpackage.t0, defpackage.ud2
    public final du1 beginStructure(mp7 mp7Var) {
        mp7Var.getClass();
        mp7 mp7Var2 = this.g;
        if (mp7Var != mp7Var2) {
            return super.beginStructure(mp7Var);
        }
        oc4 oc4VarS = s();
        String strH = mp7Var2.h();
        boolean z = oc4VarS instanceof jd4;
        xb4 xb4Var = this.c;
        if (z) {
            return new zd4(xb4Var, (jd4) oc4VarS, this.d, mp7Var2);
        }
        throw new JsonDecodingException(yc4.c(-1, "Expected " + x07.a(jd4.class).f() + ", but had " + x07.a(oc4VarS.getClass()).f() + " as the serialized body of " + strH, q(), null, xb4Var.a.h ? yc4.e(-1, oc4VarS.toString()).toString() : null));
    }

    public int decodeElementIndex(mp7 mp7Var) {
        mp7Var.getClass();
        while (this.h < mp7Var.e()) {
            int i = this.h;
            this.h = i + 1;
            String strN = n(mp7Var, i);
            strN.getClass();
            int i2 = this.h - 1;
            this.i = false;
            if (t().containsKey(strN) || x(mp7Var, i2)) {
                if (this.e.d) {
                    boolean zI = mp7Var.i(i2);
                    mp7 mp7VarD = mp7Var.d(i2);
                    if (!zI || mp7VarD.b() || !(((oc4) t().get(strN)) instanceof gd4)) {
                        if (aa4.e(mp7VarD.getKind(), sp7.b.a) && (!mp7VarD.b() || !(((oc4) t().get(strN)) instanceof gd4))) {
                            oc4 oc4Var = (oc4) t().get(strN);
                            String strA = null;
                            pd4 pd4Var = oc4Var instanceof pd4 ? (pd4) oc4Var : null;
                            if (pd4Var != null) {
                                i54 i54Var = rc4.a;
                                if (!(pd4Var instanceof gd4)) {
                                    strA = pd4Var.a();
                                }
                            }
                            if (strA != null) {
                                xb4 xb4Var = this.c;
                                int iA = fd4.a(mp7VarD, xb4Var, strA);
                                boolean z = !xb4Var.a.b && mp7VarD.b();
                                if (iA != -3 || ((!zI && !z) || x(mp7Var, i2))) {
                                }
                            }
                        }
                    }
                }
                return i2;
            }
        }
        return -1;
    }

    @Override // defpackage.t0, defpackage.ud2
    public final boolean decodeNotNullMark() {
        return !this.i && super.decodeNotNullMark();
    }

    @Override // defpackage.t0, defpackage.du1
    public void endStructure(mp7 mp7Var) {
        Set setL;
        mp7Var.getClass();
        xb4 xb4Var = this.c;
        if (fd4.c(xb4Var, mp7Var) || (mp7Var.getKind() instanceof ba6)) {
            return;
        }
        fd4.d(xb4Var, mp7Var);
        if (this.e.f) {
            Set setA = m96.a(mp7Var);
            Map map = (Map) xb4Var.c.a.get(mp7Var);
            Object obj = map != null ? map.get(fd4.a) : null;
            if (obj == null) {
                obj = null;
            }
            Map map2 = (Map) obj;
            Set setKeySet = map2 != null ? map2.keySet() : null;
            if (setKeySet == null) {
                setKeySet = ox2.b;
            }
            setL = mr7.l(setA, setKeySet);
        } else {
            setL = m96.a(mp7Var);
        }
        for (String str : t().b.keySet()) {
            if (!setL.contains(str) && !aa4.e(str, this.d)) {
                throw new JsonDecodingException(yc4.c(-1, lt0.d('\'', "Encountered an unknown key '", str), q(), "Use 'ignoreUnknownKeys = true' in 'Json {}' builder or '@JsonIgnoreUnknownKeys' annotation to ignore unknown keys.", xb4Var.a.h ? yc4.e(-1, t().toString()).toString() : null));
            }
        }
    }

    @Override // defpackage.yh5
    public String n(mp7 mp7Var, int i) {
        mp7Var.getClass();
        xb4 xb4Var = this.c;
        fd4.d(xb4Var, mp7Var);
        String strF = mp7Var.f(i);
        if (this.e.f && !t().b.keySet().contains(strF)) {
            wl2 wl2Var = xb4Var.c;
            eb ebVar = new eb(1, mp7Var, xb4Var);
            ConcurrentHashMap concurrentHashMap = wl2Var.a;
            Map map = (Map) concurrentHashMap.get(mp7Var);
            Object obj = null;
            wl2.a<Map<String, Integer>> aVar = fd4.a;
            Object objInvoke = map != null ? map.get(aVar) : null;
            if (objInvoke == null) {
                objInvoke = null;
            }
            if (objInvoke == null) {
                objInvoke = ebVar.invoke();
                Object concurrentHashMap2 = concurrentHashMap.get(mp7Var);
                if (concurrentHashMap2 == null) {
                    concurrentHashMap2 = new ConcurrentHashMap(2);
                    concurrentHashMap.put(mp7Var, concurrentHashMap2);
                }
                ((Map) concurrentHashMap2).put(aVar, objInvoke);
            }
            Map map2 = (Map) objInvoke;
            for (Object obj2 : t().b.keySet()) {
                Integer num = (Integer) map2.get((String) obj2);
                if (num != null && num.intValue() == i) {
                    obj = obj2;
                    break;
                }
            }
            String str = (String) obj;
            if (str != null) {
                return str;
            }
        }
        return strF;
    }

    @Override // defpackage.t0
    public oc4 r(String str) {
        str.getClass();
        return (oc4) n05.c(str, t());
    }

    @Override // defpackage.t0
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public jd4 t() {
        return this.f;
    }

    public final boolean x(mp7 mp7Var, int i) {
        boolean z = (this.c.a.b || mp7Var.i(i) || !mp7Var.d(i).b()) ? false : true;
        this.i = z;
        return z;
    }

    public /* synthetic */ zd4(xb4 xb4Var, jd4 jd4Var, String str, int i) {
        this(xb4Var, jd4Var, (i & 4) != 0 ? null : str, (mp7) null);
    }
}
