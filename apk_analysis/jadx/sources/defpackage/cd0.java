package defpackage;

import com.google.firebase.messaging.Constants;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes5.dex */
public abstract class cd0 implements e02<Object>, b32, Serializable {
    private final e02<Object> completion;

    public cd0(e02<Object> e02Var) {
        this.completion = e02Var;
    }

    public e02<j59> create(e02<?> e02Var) {
        e02Var.getClass();
        throw new UnsupportedOperationException("create(Continuation) has not been overridden");
    }

    @Override // defpackage.b32
    public b32 getCallerFrame() {
        e02<Object> e02Var = this.completion;
        if (e02Var instanceof b32) {
            return (b32) e02Var;
        }
        return null;
    }

    public final e02<Object> getCompletion() {
        return this.completion;
    }

    public StackTraceElement getStackTraceElement() {
        int iIntValue;
        String strC;
        Method method;
        Object objInvoke;
        Method method2;
        Object objInvoke2;
        bd2 bd2Var = (bd2) getClass().getAnnotation(bd2.class);
        String str = null;
        if (bd2Var == null || bd2Var.v() < 1) {
            return null;
        }
        try {
            Field declaredField = getClass().getDeclaredField(Constants.ScionAnalytics.PARAM_LABEL);
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this);
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            iIntValue = (num != null ? num.intValue() : 0) - 1;
        } catch (Exception unused) {
            iIntValue = -1;
        }
        int i = iIntValue >= 0 ? bd2Var.l()[iIntValue] : -1;
        vc5.a aVar = vc5.b;
        vc5.a aVar2 = vc5.a;
        if (aVar == null) {
            try {
                vc5.a aVar3 = new vc5.a(Class.class.getDeclaredMethod("getModule", null), getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", null), getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", null));
                vc5.b = aVar3;
                aVar = aVar3;
            } catch (Exception unused2) {
                vc5.b = aVar2;
                aVar = aVar2;
            }
        }
        if (aVar != aVar2 && (method = aVar.a) != null && (objInvoke = method.invoke(getClass(), null)) != null && (method2 = aVar.b) != null && (objInvoke2 = method2.invoke(objInvoke, null)) != null) {
            Method method3 = aVar.c;
            Object objInvoke3 = method3 != null ? method3.invoke(objInvoke2, null) : null;
            if (objInvoke3 instanceof String) {
                str = (String) objInvoke3;
            }
        }
        if (str == null) {
            strC = bd2Var.c();
        } else {
            strC = str + '/' + bd2Var.c();
        }
        return new StackTraceElement(strC, bd2Var.m(), bd2Var.f(), i);
    }

    public abstract Object invokeSuspend(Object obj);

    public void releaseIntercepted() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    @Override // defpackage.e02
    public final void resumeWith(Object obj) {
        ?? r2 = this;
        while (true) {
            cd0 cd0Var = (cd0) r2;
            e02<Object> e02Var = cd0Var.completion;
            e02Var.getClass();
            try {
                obj = cd0Var.invokeSuspend(obj);
                if (obj == a32.COROUTINE_SUSPENDED) {
                    return;
                }
            } catch (Throwable th) {
                obj = new k57.a(th);
            }
            cd0Var.releaseIntercepted();
            if (!(e02Var instanceof cd0)) {
                e02Var.resumeWith(obj);
                return;
            }
            r2 = e02Var;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Continuation at ");
        Object stackTraceElement = getStackTraceElement();
        if (stackTraceElement == null) {
            stackTraceElement = getClass().getName();
        }
        sb.append(stackTraceElement);
        return sb.toString();
    }

    public e02<j59> create(Object obj, e02<?> e02Var) {
        e02Var.getClass();
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }
}
