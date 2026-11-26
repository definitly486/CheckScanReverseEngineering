package androidx.core.backported.fixes;

import defpackage.ar4;
import defpackage.b11;
import defpackage.cl4;
import defpackage.fh8;
import defpackage.ir7;
import defpackage.l1;
import defpackage.ox2;
import defpackage.qn1;
import defpackage.ta8;
import defpackage.u96;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class SystemPropertyResolver implements StatusResolver {
    private final cl4 aliases$delegate = new fh8(new b11(this, 4));

    private final String getAliasBitsetString() {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            Object objInvoke = cls.getMethod("get", String.class, String.class).invoke(cls, SystemPropertyResolverKt.ALIAS_BITSET_PROP_NAME, "");
            objInvoke.getClass();
            return (String) objInvoke;
        } catch (Exception unused) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Set<Integer> initAliases() {
        BitSet bitSetValueOf = BitSet.valueOf(parseLongListString(getAliasBitsetString()));
        int size = bitSetValueOf.size();
        if (size == 0) {
            return ox2.b;
        }
        ir7 ir7Var = new ir7(size);
        for (int iNextSetBit = 0; iNextSetBit >= 0; iNextSetBit = bitSetValueOf.nextSetBit(iNextSetBit + 1)) {
            if (bitSetValueOf.get(iNextSetBit)) {
                ir7Var.add(Integer.valueOf(iNextSetBit));
            }
            if (iNextSetBit == Integer.MAX_VALUE) {
                break;
            }
        }
        return l1.d(ir7Var);
    }

    private final long[] parseLongListString(String str) {
        ar4 ar4VarE = u96.e();
        Iterator it = ta8.X(str, new char[]{','}).iterator();
        while (it.hasNext()) {
            try {
                ar4VarE.add(Long.valueOf(Long.parseLong((String) it.next())));
            } catch (NumberFormatException unused) {
            }
        }
        return qn1.u0(u96.d(ar4VarE));
    }

    public final Set<Integer> getAliases() {
        return (Set) this.aliases$delegate.getValue();
    }

    @Override // androidx.core.backported.fixes.StatusResolver
    public Status getStatus(KnownIssue knownIssue) {
        knownIssue.getClass();
        if (knownIssue.getAlias$core_backported_fixes() == null) {
            return Status.Unknown;
        }
        return getAliases().contains(knownIssue.getAlias$core_backported_fixes()) ? Status.Fixed : Status.NotFixed;
    }
}
