package defpackage;

import android.widget.ImageView;
import com.warefly.checkscan.tasks.presentation.flows.TasksReason;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class wn8 {

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;
        public static final /* synthetic */ int[] c;
        public static final /* synthetic */ int[] d;

        static {
            int[] iArr = new int[fo8.a.values().length];
            try {
                iArr[fo8.a.SIMPLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[fo8.a.SIMPLE_WITH_SUBTASKS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[fo8.a.SIMPLE_WITH_REWARD_SUBTASKS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[fo8.a.GROUPED_TASKS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[fo8.a.CHECKBOX_TASK.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[fo8.a.PROMOCODE_TASK.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[fo8.a.SIMPLE_WITH_CHECKBOX_SUBTASKS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[fo8.a.DETAILED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            a = iArr;
            int[] iArr2 = new int[tm8.b.a.values().length];
            try {
                iArr2[tm8.b.a.COMPLETED.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[tm8.b.a.CURRENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[tm8.b.a.DISABLED.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr2[tm8.b.a.FINAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
            b = iArr2;
            int[] iArr3 = new int[zo8.a.values().length];
            try {
                iArr3[zo8.a.AVAILABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr3[zo8.a.COMPLETED.ordinal()] = 2;
            } catch (NoSuchFieldError unused14) {
            }
            c = iArr3;
            int[] iArr4 = new int[zo8.b.values().length];
            try {
                iArr4[zo8.b.AD.ordinal()] = 1;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr4[zo8.b.DAILY.ordinal()] = 2;
            } catch (NoSuchFieldError unused16) {
            }
            d = iArr4;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [kx2] */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.util.ArrayList] */
    public static final fm8 a(fo8 fo8Var) {
        TasksReason taskDetails;
        TasksReason tasksReason;
        fo8Var.getClass();
        fo8.a aVarO = fo8Var.o();
        ?? arrayList = 0;
        switch (aVarO == null ? -1 : a.a[aVarO.ordinal()]) {
            case -1:
                return null;
            case 0:
            default:
                me0.e();
                return null;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                fo8.a aVarO2 = fo8Var.o();
                switch (aVarO2 != null ? a.a[aVarO2.ordinal()] : -1) {
                    case 1:
                        taskDetails = new TasksReason.TaskDetails(fo8Var.i());
                        tasksReason = taskDetails;
                        break;
                    case 2:
                        taskDetails = new TasksReason.MultiTaskDetails(fo8Var.i());
                        tasksReason = taskDetails;
                        break;
                    case 3:
                        taskDetails = new TasksReason.RewardedMultiTaskDetails(fo8Var.i());
                        tasksReason = taskDetails;
                        break;
                    case 4:
                        taskDetails = new TasksReason.GroupedTasks(fo8Var.i());
                        tasksReason = taskDetails;
                        break;
                    case 5:
                        taskDetails = new TasksReason.CheckboxTaskDetails(fo8Var.i());
                        tasksReason = taskDetails;
                        break;
                    case 6:
                        taskDetails = new TasksReason.PromocodeDetailsTask(fo8Var.i());
                        tasksReason = taskDetails;
                        break;
                    case 7:
                        taskDetails = new TasksReason.CheckboxStepsTaskDetails(fo8Var.i());
                        tasksReason = taskDetails;
                        break;
                    default:
                        tasksReason = null;
                        break;
                }
                if (tasksReason != null) {
                    pw7 pw7Var = new pw7(24, fo8Var.e(), fo8Var.b(), Integer.valueOf(fo8Var.i()));
                    int i = fo8Var.i();
                    String strM = fo8Var.m();
                    String strK = fo8Var.k();
                    String str = strK == null ? "" : strK;
                    String strN = fo8Var.n();
                    String str2 = strN == null ? "" : strN;
                    List<String> listD = fo8Var.d();
                    if (listD != null) {
                        List<String> list = listD;
                        arrayList = new ArrayList(kn1.q(list, 10));
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            arrayList.add(new rl8((String) it.next(), 32, ImageView.ScaleType.FIT_START));
                        }
                    }
                    if (arrayList == 0) {
                        arrayList = kx2.b;
                    }
                    ?? r10 = arrayList;
                    boolean zF = fo8Var.f();
                    boolean zH = fo8Var.h();
                    Boolean boolP = fo8Var.p();
                    return new kz7(i, str, str2, strM, r10, zF, zH, boolP != null ? boolP.booleanValue() : false, false, tasksReason, fo8Var.g(), aa4.e(fo8Var.l(), Boolean.TRUE), pw7Var);
                }
                return null;
            case 8:
                pw7 pw7Var2 = new pw7(24, fo8Var.e(), fo8Var.b(), Integer.valueOf(fo8Var.i()));
                int i2 = fo8Var.i();
                String strK2 = fo8Var.k();
                String str3 = strK2 == null ? "" : strK2;
                String strN2 = fo8Var.n();
                return new rm8(i2, str3, strN2 == null ? "" : strN2, fo8Var.c(), fo8Var.a(), fo8Var.f(), fo8Var.h(), pw7Var2);
        }
    }

    public static final kk1 b(go8 go8Var, int i) {
        go8Var.getClass();
        go8.d dVarC = go8Var.c();
        if (dVarC == null) {
            go8.c cVarB = go8Var.b();
            if (cVarB != null) {
                return new hn8(i, cVarB.c(), cVarB.b(), cVarB.a().a());
            }
            return null;
        }
        String strB = dVarC.b();
        List<String> listA = dVarC.a();
        ArrayList arrayList = new ArrayList(kn1.q(listA, 10));
        Iterator<T> it = listA.iterator();
        while (it.hasNext()) {
            arrayList.add(new rl8((String) it.next(), 44, ImageView.ScaleType.FIT_CENTER));
        }
        return new no8(strB, arrayList, dVarC.g(), dVarC.e(), dVarC.f(), new no8.a(dVarC.c().a(), dVarC.c().b()), dVarC.d() != null ? new no8.a(dVarC.d().a(), dVarC.d().b()) : null);
    }
}
