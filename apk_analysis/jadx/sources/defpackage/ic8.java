package defpackage;

import android.graphics.Color;
import com.warefly.checkscan.subscription.presentation.badge.ProfileBadgeView;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes5.dex */
public final class ic8 {
    public final tc8 a;
    public final jf6 b;
    public final z68 c = px.a(ProfileBadgeView.b.c.a);
    public final fh8 d = nm4.b(a.f);
    public final z68 e;
    public final gy6 f;

    public static final class a extends gh4 implements ll3<ProfileBadgeView.b.a> {
        public static final a f = new a(0);

        @Override // defpackage.ll3
        public final ProfileBadgeView.b.a invoke() {
            return new ProfileBadgeView.b.a(Color.parseColor("#3085FF"), Color.parseColor("#3085FF"));
        }
    }

    public ic8(tc8 tc8Var, jf6 jf6Var) {
        this.a = tc8Var;
        this.b = jf6Var;
        z68 z68VarA = px.a(null);
        this.e = z68VarA;
        this.f = bf3.b(z68VarA);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(f02 f02Var) throws Throwable {
        jc8 jc8Var;
        Object aVar;
        Object value;
        Object value2;
        if (f02Var instanceof jc8) {
            jc8Var = (jc8) f02Var;
            int i = jc8Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                jc8Var.n = i - Integer.MIN_VALUE;
            } else {
                jc8Var = new jc8(this, f02Var);
            }
        } else {
            jc8Var = new jc8(this, f02Var);
        }
        Object objA = jc8Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = jc8Var.n;
        z68 z68Var = this.e;
        try {
            if (i2 == 0) {
                r57.b(objA);
                if (!this.b.G0()) {
                    tc8 tc8Var = this.a;
                    jc8Var.n = 1;
                    objA = tc8Var.a(jc8Var);
                    if (objA == a32Var) {
                        return a32Var;
                    }
                }
                return j59.a;
            }
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objA);
            xc8 xc8Var = (xc8) objA;
            do {
                value2 = z68Var.getValue();
            } while (!z68Var.a(value2, xc8Var.a()));
            aVar = j59.a;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Throwable thA = k57.a(aVar);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            do {
                value = z68Var.getValue();
            } while (!z68Var.a(value, null));
        }
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0070  */
    /* JADX WARN: Code duplicated, block: B:34:0x0074 A[LOOP:1: B:34:0x0074->B:46:?, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:37:0x008b  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(f02 f02Var) throws Throwable {
        kc8 kc8Var;
        Object aVar;
        Throwable thA;
        Object value;
        Object obj;
        Object value2;
        if (f02Var instanceof kc8) {
            kc8Var = (kc8) f02Var;
            int i = kc8Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                kc8Var.n = i - Integer.MIN_VALUE;
            } else {
                kc8Var = new kc8(this, f02Var);
            }
        } else {
            kc8Var = new kc8(this, f02Var);
        }
        Object objB = kc8Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = kc8Var.n;
        z68 z68Var = this.c;
        jf6 jf6Var = this.b;
        try {
            if (i2 == 0) {
                r57.b(objB);
                if (jf6Var.G0()) {
                    tc8 tc8Var = this.a;
                    kc8Var.n = 1;
                    objB = tc8Var.b(kc8Var);
                    if (objB == a32Var) {
                        return a32Var;
                    }
                } else {
                    obj = (ProfileBadgeView.b.a) this.d.getValue();
                }
                do {
                    value2 = z68Var.getValue();
                } while (!z68Var.a(value2, obj));
                aVar = j59.a;
                thA = k57.a(aVar);
                if (thA != null) {
                    if (!(thA instanceof CancellationException)) {
                        throw thA;
                    }
                    do {
                        value = z68Var.getValue();
                    } while (!z68Var.a(value, new ProfileBadgeView.b.d(jf6Var.L())));
                }
                return j59.a;
            }
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objB);
            obj = (ProfileBadgeView.b) objB;
            do {
                value2 = z68Var.getValue();
            } while (!z68Var.a(value2, obj));
            aVar = j59.a;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        thA = k57.a(aVar);
        if (thA != null) {
            if (!(thA instanceof CancellationException)) {
                throw thA;
            }
            do {
                value = z68Var.getValue();
            } while (!z68Var.a(value, new ProfileBadgeView.b.d(jf6Var.L())));
        }
        return j59.a;
    }
}
