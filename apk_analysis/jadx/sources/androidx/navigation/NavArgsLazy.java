package androidx.navigation;

import android.os.Bundle;
import androidx.navigation.NavArgs;
import defpackage.cl4;
import defpackage.d31;
import defpackage.ll3;
import defpackage.ne4;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class NavArgsLazy<Args extends NavArgs> implements cl4<Args> {
    private final ll3<Bundle> argumentProducer;
    private Args cached;
    private final ne4<Args> navArgsClass;

    public NavArgsLazy(ne4<Args> ne4Var, ll3<Bundle> ll3Var) {
        ne4Var.getClass();
        ll3Var.getClass();
        this.navArgsClass = ne4Var;
        this.argumentProducer = ll3Var;
    }

    @Override // defpackage.cl4
    public Args getValue() throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        Args args = this.cached;
        if (args != null) {
            return args;
        }
        Bundle bundleInvoke = this.argumentProducer.invoke();
        Method method = NavArgsLazy_androidKt.getMethodMap().get(this.navArgsClass);
        if (method == null) {
            Class clsN = d31.n(this.navArgsClass);
            Class<Bundle>[] methodSignature = NavArgsLazy_androidKt.getMethodSignature();
            method = clsN.getMethod("fromBundle", (Class[]) Arrays.copyOf(methodSignature, methodSignature.length));
            NavArgsLazy_androidKt.getMethodMap().put(this.navArgsClass, method);
            method.getClass();
        }
        Object objInvoke = method.invoke(null, bundleInvoke);
        objInvoke.getClass();
        Args args2 = (Args) objInvoke;
        this.cached = args2;
        return args2;
    }

    @Override // defpackage.cl4
    public boolean isInitialized() {
        return this.cached != null;
    }
}
