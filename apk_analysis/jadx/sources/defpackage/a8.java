package defpackage;

import androidx.fragment.app.FragmentActivity;
import com.warefly.checkscan.presentation.tasks.main.view.TasksFragment;
import java.util.List;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes5.dex */
public final class a8 {
    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    public final Object a(FragmentActivity fragmentActivity, TasksFragment.j.a aVar, TasksFragment.j.b bVar, TasksFragment.j.c cVar, TasksFragment.j.d dVar, TasksFragment.j.e eVar, TasksFragment.j.f fVar, TasksFragment.j.g gVar, List list, f02 f02Var) {
        y7 y7Var;
        TasksFragment.j.g gVar2;
        TasksFragment.j.c cVar2;
        TasksFragment.j.g gVar3;
        boolean zBooleanValue;
        if (f02Var instanceof y7) {
            y7Var = (y7) f02Var;
            int i = y7Var.q;
            if ((i & Integer.MIN_VALUE) != 0) {
                y7Var.q = i - Integer.MIN_VALUE;
            } else {
                y7Var = new y7(this, f02Var);
            }
        } else {
            y7Var = new y7(this, f02Var);
        }
        y7 y7Var2 = y7Var;
        Object objB = y7Var2.o;
        Object obj = a32.COROUTINE_SUSPENDED;
        int i2 = y7Var2.q;
        try {
            try {
                if (i2 == 0) {
                    r57.b(objB);
                    aVar.invoke();
                    try {
                        y7Var2.l = bVar;
                        y7Var2.m = cVar;
                        gVar2 = gVar;
                        try {
                            y7Var2.n = gVar2;
                            y7Var2.q = 1;
                            objB = b(fragmentActivity, cVar, dVar, eVar, fVar, list, y7Var2);
                            if (objB == obj) {
                                return obj;
                            }
                            gVar3 = gVar2;
                        } catch (Exception unused) {
                            cVar2 = cVar;
                            cVar2.invoke();
                            bVar.invoke();
                            zBooleanValue = false;
                            gVar3 = gVar2;
                        }
                    } catch (Exception unused2) {
                        gVar2 = gVar;
                    }
                } else {
                    if (i2 != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    gVar3 = y7Var2.n;
                    cVar2 = y7Var2.m;
                    bVar = y7Var2.l;
                    try {
                        r57.b(objB);
                    } catch (Exception unused3) {
                        gVar2 = gVar3;
                        cVar2.invoke();
                        bVar.invoke();
                        zBooleanValue = false;
                        gVar3 = gVar2;
                    }
                }
                zBooleanValue = ((Boolean) objB).booleanValue();
                bVar.invoke();
                if (!zBooleanValue) {
                    gVar3.invoke();
                }
                return Boolean.valueOf(zBooleanValue);
            } catch (Throwable th) {
                bVar.invoke();
                throw th;
            }
        } catch (CancellationException e) {
            throw e;
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x009d  */
    /* JADX WARN: Code duplicated, block: B:39:0x00d3 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:40:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:50:0x0108  */
    /* JADX WARN: Code duplicated, block: B:53:0x0119  */
    /* JADX WARN: Code duplicated, block: B:59:0x0134 A[LOOP:1: B:57:0x012e->B:59:0x0134, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:62:0x0141  */
    /* JADX WARN: Code duplicated, block: B:76:0x0126 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:78:0x0113 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d4 -> B:41:0x00db). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object b(android.app.Activity r11, defpackage.ll3 r12, defpackage.nl3 r13, defpackage.ll3 r14, defpackage.ll3 r15, java.util.List r16, defpackage.f02 r17) {
        /*
            Method dump skipped, instruction units count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.a8.b(android.app.Activity, ll3, nl3, ll3, ll3, java.util.List, f02):java.lang.Object");
    }
}
