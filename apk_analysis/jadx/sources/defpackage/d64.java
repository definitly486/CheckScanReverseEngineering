package defpackage;

import java.util.Arrays;
import org.koin.core.error.InstanceCreationException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class d64<T> {
    public final gi0<T> a;

    public d64(gi0<T> gi0Var) {
        this.a = gi0Var;
    }

    public T a(z37 z37Var) throws InstanceCreationException {
        Iterable iterableH;
        lx2 lx2Var = z37Var.a;
        StringBuilder sb = new StringBuilder("| (+) '");
        gi0<T> gi0Var = this.a;
        sb.append(gi0Var);
        sb.append('\'');
        String string = sb.toString();
        lx2Var.getClass();
        lx2Var.a(uo4.DEBUG, string);
        try {
            i36 i36Var = z37Var.e;
            if (i36Var == null) {
                i36Var = new i36(null, 3);
            }
            return gi0Var.d.invoke(z37Var.b, i36Var);
        } catch (Exception e) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(e);
            sb2.append("\n\t");
            StackTraceElement[] stackTrace = e.getStackTrace();
            stackTrace.getClass();
            int i = 0;
            while (i < stackTrace.length) {
                String className = stackTrace[i].getClassName();
                className.getClass();
                if (ta8.D(className, "sun.reflect", false)) {
                    break;
                }
                i++;
            }
            if (i == 0) {
                iterableH = kx2.b;
            } else if (i != 1) {
                iterableH = Arrays.asList(aq5.r(0, i, stackTrace));
                iterableH.getClass();
            } else {
                iterableH = u96.h(stackTrace[0]);
            }
            sb2.append(qn1.a0(iterableH, "\n\t", null, null, 0, null, 62));
            lx2Var.a(uo4.ERROR, "* Instance creation error : could not create instance for '" + gi0Var + "': " + sb2.toString());
            throw new InstanceCreationException("Could not create instance for '" + gi0Var + '\'', e);
        }
    }

    public abstract void b();

    public abstract T c(z37 z37Var);
}
