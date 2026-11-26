package com.posthog.internal;

import defpackage.mc4;
import defpackage.me0;
import defpackage.nc4;
import defpackage.pc4;
import defpackage.qd4;
import defpackage.vd4;
import defpackage.wd4;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes4.dex */
public final class GsonPropertyTypeAdapter implements nc4<b>, wd4<b> {

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[b.values().length];
            try {
                iArr[b.COHORT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[b.FLAG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[b.PERSON.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    @Override // defpackage.nc4
    public final b deserialize(pc4 pc4Var, Type type, mc4 mc4Var) {
        pc4Var.getClass();
        type.getClass();
        mc4Var.getClass();
        b.a aVar = b.Companion;
        String strG = pc4Var.g();
        aVar.getClass();
        return b.a.a(strG);
    }

    @Override // defpackage.wd4
    public final pc4 serialize(b bVar, Type type, vd4 vd4Var) {
        String str;
        b bVar2 = bVar;
        type.getClass();
        vd4Var.getClass();
        if (bVar2 == null) {
            return null;
        }
        int i = a.a[bVar2.ordinal()];
        if (i == 1) {
            str = "cohort";
        } else if (i == 2) {
            str = "flag";
        } else {
            if (i != 3) {
                me0.e();
                return null;
            }
            str = "person";
        }
        return new qd4(str);
    }
}
