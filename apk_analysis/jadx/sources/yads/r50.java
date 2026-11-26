package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class r50 {
    public static final Boolean a(zu3 zu3Var, String str) {
        av3 av3Var = (av3) zu3Var;
        if (!av3Var.a(str)) {
            av3Var = null;
        }
        if (av3Var != null) {
            return Boolean.valueOf(av3Var.a(str, false));
        }
        return null;
    }

    public static final Integer b(zu3 zu3Var, String str) {
        av3 av3Var = (av3) zu3Var;
        if (!av3Var.a(str)) {
            av3Var = null;
        }
        if (av3Var != null) {
            return Integer.valueOf(av3Var.a(0, str));
        }
        return null;
    }

    public static final Long c(zu3 zu3Var, String str) {
        av3 av3Var = (av3) zu3Var;
        if (!av3Var.a(str)) {
            av3Var = null;
        }
        if (av3Var != null) {
            return Long.valueOf(av3Var.b(str));
        }
        return null;
    }

    public static final void a(zu3 zu3Var, String str, Boolean bool) {
        if (bool != null) {
            ((av3) zu3Var).b(str, bool.booleanValue());
        } else {
            ((av3) zu3Var).d(str);
        }
    }

    public static final void a(zu3 zu3Var, String str, Integer num) {
        if (num != null) {
            ((av3) zu3Var).b(num.intValue(), str);
        } else {
            ((av3) zu3Var).d(str);
        }
    }
}
