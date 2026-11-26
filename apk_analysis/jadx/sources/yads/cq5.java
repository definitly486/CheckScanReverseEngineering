package yads;

import com.monetization.ads.core.utils.CallbackStackTraceMarker;
import defpackage.ra8;
import defpackage.ta8;
import defpackage.yr;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public abstract class cq5 {
    public static final Set a = yr.k0(new String[]{"com.yandex.mobile.ads", "yads", "com.monetization.ads"});

    /* JADX WARN: Code duplicated, block: B:20:0x004d  */
    /* JADX WARN: Code duplicated, block: B:25:0x0060  */
    /* JADX WARN: Code duplicated, block: B:28:0x006a  */
    /* JADX WARN: Code duplicated, block: B:37:0x0084 A[LOOP:4: B:37:0x0084->B:95:?, LOOP_LABEL: LOOP:4: B:37:0x0084->B:95:?, LOOP_START, PHI: r1
      0x0084: PHI (r1v6 int) = (r1v5 int), (r1v7 int) binds: [B:35:0x0081, B:95:?] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:79:0x0080 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x0081 A[EDGE_INSN: B:80:0x0081->B:35:0x0081 BREAK  A[LOOP:2: B:18:0x004a->B:33:0x007d], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:82:0x007d A[EDGE_INSN: B:82:0x007d->B:33:0x007d BREAK  A[LOOP:3: B:26:0x0064->B:85:?], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:84:0x0076 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:? A[LOOP:3: B:26:0x0064->B:85:?, LOOP_END, SYNTHETIC] */
    public static boolean a(StackTraceElement[] stackTraceElementArr, Set set) {
        int length;
        int i;
        StackTraceElement stackTraceElement;
        StackTraceElement stackTraceElement2;
        String className;
        StackTraceElement stackTraceElement3;
        String className2;
        String className3;
        StackTraceElement stackTraceElement4;
        String className4;
        Set set2;
        Iterator it;
        ArrayList<jp2> arrayList = new ArrayList();
        for (Object obj : set) {
            if (((jp2) obj).a == kp2.TRACE) {
                arrayList.add(obj);
            }
        }
        boolean z = false;
        if (arrayList.isEmpty()) {
            length = stackTraceElementArr.length;
            i = 0;
            while (true) {
                if (i < length) {
                    i = -1;
                    break;
                }
                stackTraceElement4 = stackTraceElementArr[i];
                className4 = stackTraceElement4.getClassName();
                set2 = a;
                if (!(set2 instanceof Collection) || !set2.isEmpty()) {
                    it = set2.iterator();
                    while (it.hasNext()) {
                        if (ra8.C(className4, (String) it.next(), false)) {
                            if (!a(stackTraceElement4, set)) {
                                break;
                            }
                            break;
                        }
                    }
                }
                i++;
            }
            if (i != -1) {
                loop4: do {
                    i++;
                    stackTraceElement = (StackTraceElement) yr.O(i, stackTraceElementArr);
                    if (stackTraceElement != null && !a(stackTraceElement, set) && (stackTraceElement3 = (StackTraceElement) yr.O(i, stackTraceElementArr)) != null && (className2 = stackTraceElement3.getClassName()) != null) {
                        Set set3 = a;
                        if ((set3 instanceof Collection) && set3.isEmpty()) {
                            break;
                        }
                        Iterator it2 = set3.iterator();
                        do {
                            if (!it2.hasNext()) {
                                break loop4;
                            }
                        } while (!ra8.C(className2, (String) it2.next(), false));
                        StackTraceElement stackTraceElement5 = (StackTraceElement) yr.O(i, stackTraceElementArr);
                        if (stackTraceElement5 == null || (className3 = stackTraceElement5.getClassName()) == null) {
                            break;
                        }
                    } else {
                        break;
                    }
                } while (!className3.equals(CallbackStackTraceMarker.class.getName()));
                stackTraceElement2 = (StackTraceElement) yr.O(i, stackTraceElementArr);
                if (stackTraceElement2 != null && (className = stackTraceElement2.getClassName()) != null && className.equals(CallbackStackTraceMarker.class.getName())) {
                    z = true;
                }
                return !z;
            }
        } else {
            for (jp2 jp2Var : arrayList) {
                String string = Arrays.toString(stackTraceElementArr);
                string.getClass();
                if (ta8.D(string, jp2Var.b, false)) {
                }
            }
            length = stackTraceElementArr.length;
            i = 0;
            while (true) {
                if (i < length) {
                    i = -1;
                    break;
                }
                stackTraceElement4 = stackTraceElementArr[i];
                className4 = stackTraceElement4.getClassName();
                set2 = a;
                if (!(set2 instanceof Collection)) {
                    it = set2.iterator();
                    while (it.hasNext()) {
                        if (ra8.C(className4, (String) it.next(), false)) {
                            if (!a(stackTraceElement4, set)) {
                                break;
                                break;
                            }
                            break;
                            break;
                        }
                    }
                } else {
                    it = set2.iterator();
                    while (it.hasNext()) {
                        if (ra8.C(className4, (String) it.next(), false)) {
                            if (!a(stackTraceElement4, set)) {
                                break;
                                break;
                            }
                            break;
                            break;
                        }
                    }
                }
                i++;
            }
            if (i != -1) {
                loop4: do {
                    i++;
                    stackTraceElement = (StackTraceElement) yr.O(i, stackTraceElementArr);
                    if (stackTraceElement != null) {
                        break;
                    }
                    break;
                } while (!className3.equals(CallbackStackTraceMarker.class.getName()));
                stackTraceElement2 = (StackTraceElement) yr.O(i, stackTraceElementArr);
                if (stackTraceElement2 != null) {
                    z = true;
                }
                return !z;
            }
        }
        return false;
    }

    public static boolean a(StackTraceElement stackTraceElement, Set set) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : set) {
            if (((jp2) obj).a == kp2.FRAME) {
                arrayList.add(obj);
            }
        }
        if (!arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (ta8.D(stackTraceElement.toString(), ((jp2) it.next()).b, false)) {
                    return true;
                }
            }
        }
        return false;
    }
}
