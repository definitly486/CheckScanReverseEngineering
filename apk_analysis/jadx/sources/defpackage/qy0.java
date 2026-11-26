package defpackage;

import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class qy0 implements me4, Serializable {
    public static final Object NO_RECEIVER = a.b;
    private final boolean isTopLevel;
    private final String name;
    private final Class owner;
    protected final Object receiver;
    private transient me4 reflected;
    private final String signature;

    public static class a implements Serializable {
        public static final a b = new a();

        private Object readResolve() {
            return b;
        }
    }

    public qy0(Object obj, Class cls, String str, String str2, boolean z) {
        this.receiver = obj;
        this.owner = cls;
        this.name = str;
        this.signature = str2;
        this.isTopLevel = z;
    }

    @Override // defpackage.me4
    public Object call(Object... objArr) {
        return getReflected().call(objArr);
    }

    @Override // defpackage.me4
    public Object callBy(Map map) {
        return getReflected().callBy(map);
    }

    public me4 compute() {
        me4 me4Var = this.reflected;
        if (me4Var != null) {
            return me4Var;
        }
        me4 me4VarComputeReflected = computeReflected();
        this.reflected = me4VarComputeReflected;
        return me4VarComputeReflected;
    }

    public abstract me4 computeReflected();

    public GenericDeclaration findJavaDeclaration() {
        pe4 owner = getOwner();
        String signature = getSignature();
        signature.getClass();
        if (!(owner instanceof xk1)) {
            return null;
        }
        String strC0 = ta8.c0(signature, '(');
        if (strC0.equals("<init>")) {
            throw new UnsupportedOperationException("Generic Java constructors are not supported: " + owner + '/' + signature);
        }
        Method[] declaredMethods = ((xk1) owner).c().getDeclaredMethods();
        declaredMethods.getClass();
        for (Method method : declaredMethods) {
            if (aa4.e(method.getName(), strC0)) {
                StringBuilder sb = new StringBuilder();
                sb.append(method.getName());
                sb.append("(");
                Class<?>[] parameterTypes = method.getParameterTypes();
                parameterTypes.getClass();
                for (Class<?> cls : parameterTypes) {
                    cls.getClass();
                    vg4.a(sb, cls);
                }
                sb.append(")");
                Class<?> returnType = method.getReturnType();
                returnType.getClass();
                vg4.a(sb, returnType);
                if (sb.toString().equals(signature)) {
                    return method;
                }
            }
        }
        return null;
    }

    @Override // defpackage.le4
    public List<Annotation> getAnnotations() {
        return getReflected().getAnnotations();
    }

    public Object getBoundReceiver() {
        return this.receiver;
    }

    @Override // defpackage.me4
    public String getName() {
        return this.name;
    }

    public pe4 getOwner() {
        Class cls = this.owner;
        if (cls == null) {
            return null;
        }
        if (!this.isTopLevel) {
            return x07.a(cls);
        }
        x07.a.getClass();
        return new g16(cls);
    }

    @Override // defpackage.me4
    public List<Object> getParameters() {
        return getReflected().getParameters();
    }

    public me4 getReflected() {
        me4 me4VarCompute = compute();
        if (me4VarCompute != this) {
            return me4VarCompute;
        }
        throw new wg4("Kotlin reflection implementation is not found at runtime. Make sure you have kotlin-reflect.jar in the classpath");
    }

    @Override // defpackage.me4
    public ef4 getReturnType() {
        return getReflected().getReturnType();
    }

    public String getSignature() {
        return this.signature;
    }

    @Override // defpackage.me4
    public List<Object> getTypeParameters() {
        return getReflected().getTypeParameters();
    }

    @Override // defpackage.me4
    public hf4 getVisibility() {
        return getReflected().getVisibility();
    }

    @Override // defpackage.me4
    public boolean isAbstract() {
        return getReflected().isAbstract();
    }

    @Override // defpackage.me4
    public boolean isFinal() {
        return getReflected().isFinal();
    }

    @Override // defpackage.me4
    public boolean isOpen() {
        return getReflected().isOpen();
    }

    @Override // defpackage.me4, defpackage.qe4
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }

    public qy0(Object obj) {
        this(obj, null, null, null, false);
    }

    public qy0() {
        this(NO_RECEIVER);
    }
}
