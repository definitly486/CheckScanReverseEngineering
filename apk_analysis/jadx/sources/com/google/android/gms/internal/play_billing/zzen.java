package com.google.android.gms.internal.play_billing;

import defpackage.dh;
import defpackage.gqb;
import defpackage.kv2;
import defpackage.o2;
import defpackage.ppb;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzen extends zzgp implements zzhs {
    private static final zzen zzb;
    private zzgu zzd = ppb.f;

    static {
        zzen zzenVar = new zzen();
        zzb = zzenVar;
        zzgp.c(zzen.class, zzenVar);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void l(zzen zzenVar, Iterable iterable) {
        zzgu zzguVar = zzenVar.zzd;
        if (!zzguVar.zzc()) {
            int size = zzguVar.size();
            zzenVar.zzd = zzguVar.zzd(size + size);
        }
        List list = zzenVar.zzd;
        int size2 = ((Collection) iterable).size();
        if (list instanceof ArrayList) {
            ((ArrayList) list).ensureCapacity(list.size() + size2);
        } else if (list instanceof ppb) {
            ppb ppbVar = (ppb) list;
            int i = ppbVar.d + size2;
            int length = ppbVar.c.length;
            if (i > length) {
                if (length != 0) {
                    while (length < i) {
                        length = dh.c(length, 3, 2, 1, 10);
                    }
                    ppbVar.c = Arrays.copyOf(ppbVar.c, length);
                } else {
                    ppbVar.c = new Object[Math.max(i, 10)];
                }
            }
        }
        int size3 = list.size();
        List list2 = (List) iterable;
        int size4 = list2.size();
        for (int i2 = 0; i2 < size4; i2++) {
            Object obj = list2.get(i2);
            if (obj == null) {
                String strB = kv2.b(list.size() - size3, "Element at index ", " is null.");
                int size5 = list.size();
                while (true) {
                    size5--;
                    if (size5 < size3) {
                        o2.d(strB);
                        return;
                    }
                    list.remove(size5);
                }
            } else {
                list.add(obj);
            }
        }
    }

    public static zzem zza() {
        return (zzem) zzb.h();
    }

    @Override // com.google.android.gms.internal.play_billing.zzgp
    public final Object g(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new gqb(zzb, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzd", zzel.class});
        }
        if (i2 == 3) {
            return new zzen();
        }
        if (i2 == 4) {
            return new zzem(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
