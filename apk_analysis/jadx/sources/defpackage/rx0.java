package defpackage;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class rx0 {
    public static vm5 a(iy6 iy6Var) {
        int i = Integer.parseInt(iy6Var.S(Long.MAX_VALUE));
        long j = Long.parseLong(iy6Var.S(Long.MAX_VALUE));
        long j2 = Long.parseLong(iy6Var.S(Long.MAX_VALUE));
        pm5.a aVar = new pm5.a();
        int i2 = Integer.parseInt(iy6Var.S(Long.MAX_VALUE));
        for (int i3 = 0; i3 < i2; i3++) {
            String strS = iy6Var.S(Long.MAX_VALUE);
            int iJ = ta8.J(':', 0, 6, strS);
            if (iJ == -1) {
                c9.f("Unexpected header: ".concat(strS));
                return null;
            }
            aVar.a(ta8.f0(strS.substring(0, iJ)).toString(), strS.substring(iJ + 1));
        }
        return new vm5(i, j, j2, new pm5(n05.l(aVar.a)), 48);
    }

    public static void b(vm5 vm5Var, hy6 hy6Var) {
        hy6Var.h(vm5Var.a);
        hy6Var.writeByte(10);
        hy6Var.h(vm5Var.b);
        hy6Var.writeByte(10);
        hy6Var.h(vm5Var.c);
        hy6Var.writeByte(10);
        Set<Map.Entry<String, List<String>>> setEntrySet = vm5Var.d.a.entrySet();
        Iterator<T> it = setEntrySet.iterator();
        int size = 0;
        while (it.hasNext()) {
            size += ((List) ((Map.Entry) it.next()).getValue()).size();
        }
        hy6Var.h(size);
        hy6Var.writeByte(10);
        for (Map.Entry<String, List<String>> entry : setEntrySet) {
            for (String str : entry.getValue()) {
                hy6Var.l(entry.getKey());
                hy6Var.l(StringUtils.PROCESS_POSTFIX_DELIMITER);
                hy6Var.l(str);
                hy6Var.writeByte(10);
            }
        }
    }
}
