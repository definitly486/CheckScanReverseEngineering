package com.posthog.internal;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.gson.internal.bind.TreeTypeAdapter;
import com.google.gson.stream.MalformedJsonException;
import com.tapjoy.TJKeyValueStorageKt;
import defpackage.ac4;
import defpackage.kd4;
import defpackage.kn1;
import defpackage.lc3;
import defpackage.mc4;
import defpackage.nc4;
import defpackage.pc4;
import defpackage.qd4;
import defpackage.xq4;
import defpackage.xr6;
import java.io.Serializable;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class PropertyValueDeserializer implements nc4<c> {
    /* JADX WARN: Code duplicated, block: B:36:0x00a9  */
    public static ArrayList b(ac4 ac4Var) throws MalformedJsonException {
        kd4 kd4VarD;
        pc4 pc4VarH;
        String strG;
        Object obj;
        a aVarA;
        b bVarA;
        ArrayList arrayList;
        String strG2;
        String strG3;
        Object objG;
        ArrayList arrayList2 = new ArrayList();
        for (pc4 pc4Var : ac4Var.b) {
            pc4Var.getClass();
            lc3 lc3Var = null;
            if ((pc4Var instanceof kd4) && (pc4VarH = (kd4VarD = pc4Var.d()).h(TJKeyValueStorageKt.KEY)) != null && (strG = pc4VarH.g()) != null) {
                pc4 pc4VarH2 = kd4VarD.h("value");
                if (pc4VarH2 != null) {
                    if (pc4VarH2 instanceof qd4) {
                        qd4 qd4VarF = pc4VarH2.f();
                        Serializable serializable = qd4VarF.b;
                        if (serializable instanceof Boolean) {
                            objG = Boolean.valueOf(qd4VarF.a());
                        } else if (serializable instanceof Number) {
                            String strG4 = qd4VarF.g();
                            try {
                                try {
                                    strG4.getClass();
                                    objG = Integer.valueOf(Integer.parseInt(strG4));
                                } catch (NumberFormatException unused) {
                                    strG4.getClass();
                                    objG = Long.valueOf(Long.parseLong(strG4));
                                }
                            } catch (NumberFormatException unused2) {
                                strG4.getClass();
                                double d = Double.parseDouble(strG4);
                                if (Double.isInfinite(d) || Double.isNaN(d)) {
                                    throw new MalformedJsonException("failed to parse number: " + d);
                                }
                                objG = Double.valueOf(d);
                            }
                        } else if (serializable instanceof String) {
                            objG = qd4VarF.g();
                        } else {
                            objG = null;
                        }
                    } else if (pc4VarH2 instanceof ac4) {
                        ac4 ac4VarC = pc4VarH2.c();
                        ArrayList arrayList3 = new ArrayList(kn1.q(ac4VarC, 10));
                        Iterator<pc4> it = ac4VarC.b.iterator();
                        while (it.hasNext()) {
                            arrayList3.add(it.next().g());
                        }
                        objG = arrayList3;
                    } else {
                        objG = null;
                    }
                    obj = objG;
                } else {
                    obj = null;
                }
                pc4 pc4VarH3 = kd4VarD.h("operator");
                if (pc4VarH3 == null || (strG3 = pc4VarH3.g()) == null) {
                    aVarA = null;
                } else {
                    a.Companion.getClass();
                    aVarA = a.C0155a.a(strG3);
                }
                pc4 pc4VarH4 = kd4VarD.h(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
                if (pc4VarH4 == null || (strG2 = pc4VarH4.g()) == null) {
                    bVarA = null;
                } else {
                    b.Companion.getClass();
                    bVarA = b.a.a(strG2);
                }
                pc4 pc4VarH5 = kd4VarD.h("negation");
                Boolean boolValueOf = pc4VarH5 != null ? Boolean.valueOf(pc4VarH5.a()) : null;
                pc4 pc4VarH6 = kd4VarD.h("dependency_chain");
                if (pc4VarH6 != null) {
                    ac4 ac4VarC2 = pc4VarH6.c();
                    ArrayList arrayList4 = new ArrayList();
                    for (pc4 pc4Var2 : ac4VarC2.b) {
                        pc4Var2.getClass();
                        String strG5 = ((pc4Var2 instanceof qd4) && (pc4Var2.f().b instanceof String)) ? pc4Var2.g() : null;
                        if (strG5 != null) {
                            arrayList4.add(strG5);
                        }
                    }
                    arrayList = arrayList4;
                } else {
                    arrayList = null;
                }
                lc3Var = new lc3(strG, obj, aVarA, bVarA, boolValueOf, arrayList);
            }
            if (lc3Var != null) {
                arrayList2.add(lc3Var);
            }
        }
        return arrayList2;
    }

    @Override // defpackage.nc4
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final c deserialize(pc4 pc4Var, Type type, mc4 mc4Var) {
        pc4Var.getClass();
        type.getClass();
        mc4Var.getClass();
        if (!(pc4Var instanceof ac4)) {
            return null;
        }
        ac4 ac4VarC = pc4Var.c();
        ArrayList<pc4> arrayList = ac4VarC.b;
        if (arrayList.size() == 0) {
            return null;
        }
        pc4 pc4Var2 = arrayList.get(0);
        pc4Var2.getClass();
        if (!(pc4Var2 instanceof kd4)) {
            return null;
        }
        xq4<String, pc4> xq4Var = pc4Var2.d().b;
        if (xq4Var.containsKey(TJKeyValueStorageKt.KEY)) {
            return new c.a(b(ac4VarC));
        }
        if (!xq4Var.containsKey(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY) || !xq4Var.containsKey("values")) {
            return new c.a(b(ac4VarC));
        }
        ArrayList arrayList2 = new ArrayList(kn1.q(ac4VarC, 10));
        Iterator<pc4> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add((xr6) ((TreeTypeAdapter.a) mc4Var).a(it.next(), xr6.class));
        }
        return new c.b(arrayList2);
    }
}
