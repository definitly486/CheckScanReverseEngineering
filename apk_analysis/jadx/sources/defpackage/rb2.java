package defpackage;

import androidx.collection.SieveCacheKt;
import com.tapjoy.TapjoyCacheKt;
import java.time.DateTimeException;
import java.time.Instant;
import kotlinx.datetime.DateTimeFormatException;

/* JADX INFO: loaded from: classes5.dex */
public final class rb2 {
    public static final a b;
    public static final /* synthetic */ ze4<Object>[] c;
    public final ec2 a;

    public static final class a {
    }

    public static final class b {
        public static final fc2 a;

        public static final class a extends gh4 implements nl3<ic2.c, j59> {
            public static final a f = new a(1);

            @Override // defpackage.nl3
            public final j59 invoke(ic2.c cVar) {
                ic2.c cVar2 = cVar;
                cVar2.getClass();
                cVar2.a((hc2) ft4.a.getValue());
                jc2.a(cVar2, new nl3[]{sb2.f}, tb2.f);
                cVar2.h(h16.ZERO);
                jc2.b(cVar2, ':');
                cVar2.m(h16.ZERO);
                jc2.b(cVar2, ':');
                cVar2.i(h16.ZERO);
                jc2.c(cVar2, "", ub2.f);
                jc2.a(cVar2, new nl3[]{vb2.f}, wb2.f);
                return j59.a;
            }
        }

        /* JADX INFO: renamed from: rb2$b$b, reason: collision with other inner class name */
        public static final class C0324b extends gh4 implements nl3<ic2.c, j59> {
            public static final C0324b f = new C0324b(1);

            @Override // defpackage.nl3
            public final j59 invoke(ic2.c cVar) {
                ic2.c cVar2 = cVar;
                cVar2.getClass();
                jc2.a(cVar2, new nl3[]{xb2.f}, yb2.f);
                cVar2.p(h16.NONE);
                jc2.b(cVar2, ' ');
                cVar2.t(kd5.b);
                jc2.b(cVar2, ' ');
                cVar2.j(h16.ZERO);
                jc2.b(cVar2, ' ');
                cVar2.h(h16.ZERO);
                jc2.b(cVar2, ':');
                cVar2.m(h16.ZERO);
                jc2.c(cVar2, "", zb2.f);
                cVar2.f(" ");
                jc2.a(cVar2, new nl3[]{ac2.f, bc2.f}, dc2.f);
                return j59.a;
            }
        }

        static {
            rb2.b.getClass();
            a aVar = a.f;
            aVar.getClass();
            fc2.a aVar2 = new fc2.a(new nq());
            aVar.invoke(aVar2);
            a = new fc2(e0.a.c(aVar2));
            C0324b c0324b = C0324b.f;
            c0324b.getClass();
            fc2.a aVar3 = new fc2.a(new nq());
            c0324b.invoke(aVar3);
            e0.a.c(aVar3);
        }
    }

    public /* synthetic */ class c extends rg5 {
        @Override // defpackage.rg5, defpackage.af4
        public final Object get() {
            return ((b44) this.receiver).c;
        }

        @Override // defpackage.rg5
        public final void set(Object obj) {
            ((b44) this.receiver).c = (Integer) obj;
        }
    }

    public /* synthetic */ class d extends rg5 {
        @Override // defpackage.rg5, defpackage.af4
        public final Object get() {
            return ((b44) this.receiver).e;
        }

        @Override // defpackage.rg5
        public final void set(Object obj) {
            ((b44) this.receiver).e = (Integer) obj;
        }
    }

    public /* synthetic */ class e extends rg5 {
        @Override // defpackage.rg5, defpackage.af4
        public final Object get() {
            return ((d44) this.receiver).a;
        }

        @Override // defpackage.rg5
        public final void set(Object obj) {
            ((d44) this.receiver).a = (Integer) obj;
        }
    }

    public /* synthetic */ class f extends rg5 {
        @Override // defpackage.rg5, defpackage.af4
        public final Object get() {
            return ((d44) this.receiver).b;
        }

        @Override // defpackage.rg5
        public final void set(Object obj) {
            ((d44) this.receiver).b = (Integer) obj;
        }
    }

    public /* synthetic */ class g extends rg5 {
        @Override // defpackage.rg5, defpackage.af4
        public final Object get() {
            return ((d44) this.receiver).d;
        }

        @Override // defpackage.rg5
        public final void set(Object obj) {
            ((d44) this.receiver).d = (Integer) obj;
        }
    }

    public /* synthetic */ class h extends rg5 {
        @Override // defpackage.rg5, defpackage.af4
        public final Object get() {
            return ((b44) this.receiver).b;
        }

        @Override // defpackage.rg5
        public final void set(Object obj) {
            ((b44) this.receiver).b = (Integer) obj;
        }
    }

    public /* synthetic */ class i extends rg5 {
        @Override // defpackage.rg5, defpackage.af4
        public final Object get() {
            return ((f44) this.receiver).b;
        }

        @Override // defpackage.rg5
        public final void set(Object obj) {
            ((f44) this.receiver).b = (Integer) obj;
        }
    }

    public /* synthetic */ class j extends rg5 {
        @Override // defpackage.rg5, defpackage.af4
        public final Object get() {
            return ((f44) this.receiver).c;
        }

        @Override // defpackage.rg5
        public final void set(Object obj) {
            ((f44) this.receiver).c = (Integer) obj;
        }
    }

    public /* synthetic */ class k extends rg5 {
        @Override // defpackage.rg5, defpackage.af4
        public final Object get() {
            return ((f44) this.receiver).d;
        }

        @Override // defpackage.rg5
        public final void set(Object obj) {
            ((f44) this.receiver).d = (Integer) obj;
        }
    }

    public /* synthetic */ class l extends rg5 {
        @Override // defpackage.rg5, defpackage.af4
        public final Object get() {
            return ((d44) this.receiver).e;
        }

        @Override // defpackage.rg5
        public final void set(Object obj) {
            ((d44) this.receiver).e = (Integer) obj;
        }
    }

    static {
        tg5 tg5Var = new tg5(rb2.class, "monthNumber", "getMonthNumber()Ljava/lang/Integer;", 0);
        a17 a17Var = x07.a;
        a17Var.getClass();
        tg5 tg5Var2 = new tg5(rb2.class, "dayOfMonth", "getDayOfMonth()Ljava/lang/Integer;", 0);
        a17Var.getClass();
        tg5 tg5Var3 = new tg5(rb2.class, "dayOfYear", "getDayOfYear()Ljava/lang/Integer;", 0);
        a17Var.getClass();
        tg5 tg5Var4 = new tg5(rb2.class, "hour", "getHour()Ljava/lang/Integer;", 0);
        a17Var.getClass();
        tg5 tg5Var5 = new tg5(rb2.class, "hourOfAmPm", "getHourOfAmPm()Ljava/lang/Integer;", 0);
        a17Var.getClass();
        tg5 tg5Var6 = new tg5(rb2.class, "minute", "getMinute()Ljava/lang/Integer;", 0);
        a17Var.getClass();
        tg5 tg5Var7 = new tg5(rb2.class, "second", "getSecond()Ljava/lang/Integer;", 0);
        a17Var.getClass();
        tg5 tg5Var8 = new tg5(rb2.class, "offsetHours", "getOffsetHours()Ljava/lang/Integer;", 0);
        a17Var.getClass();
        tg5 tg5Var9 = new tg5(rb2.class, "offsetMinutesOfHour", "getOffsetMinutesOfHour()Ljava/lang/Integer;", 0);
        a17Var.getClass();
        tg5 tg5Var10 = new tg5(rb2.class, "offsetSecondsOfMinute", "getOffsetSecondsOfMinute()Ljava/lang/Integer;", 0);
        a17Var.getClass();
        c = new ze4[]{tg5Var, tg5Var2, tg5Var3, tg5Var4, tg5Var5, tg5Var6, tg5Var7, tg5Var8, tg5Var9, tg5Var10};
        b = new a();
    }

    public rb2(ec2 ec2Var) {
        this.a = ec2Var;
        b44 b44Var = ec2Var.a;
        new h(b44Var, b44.class, "monthNumber", "getMonthNumber()Ljava/lang/Integer;", 0);
        new c(b44Var, b44.class, "dayOfMonth", "getDayOfMonth()Ljava/lang/Integer;", 0);
        new d(b44Var, b44.class, "dayOfYear", "getDayOfYear()Ljava/lang/Integer;", 0);
        d44 d44Var = ec2Var.b;
        new e(d44Var, d44.class, "hour", "getHour()Ljava/lang/Integer;", 0);
        new f(d44Var, d44.class, "hourOfAmPm", "getHourOfAmPm()Ljava/lang/Integer;", 0);
        new g(d44Var, d44.class, "minute", "getMinute()Ljava/lang/Integer;", 0);
        new l(d44Var, d44.class, "second", "getSecond()Ljava/lang/Integer;", 0);
        f44 f44Var = ec2Var.c;
        new i(f44Var, f44.class, "totalHoursAbs", "getTotalHoursAbs()Ljava/lang/Integer;", 0);
        new j(f44Var, f44.class, "minutesOfHour", "getMinutesOfHour()Ljava/lang/Integer;", 0);
        new k(f44Var, f44.class, "secondsOfMinute", "getSecondsOfMinute()Ljava/lang/Integer;", 0);
    }

    public final h64 a() throws Exception {
        int i2;
        ec2 ec2Var = this.a;
        da9 da9VarA = ec2Var.c.a();
        d44 d44Var = ec2Var.b;
        ut4 ut4VarC = d44Var.c();
        b44 b44Var = ec2Var.a;
        b44 b44VarCopy = b44Var.copy();
        Integer num = b44VarCopy.a;
        ft4.a(num, "year");
        b44VarCopy.a = Integer.valueOf(num.intValue() % 10000);
        try {
            Integer num2 = b44Var.a;
            num2.getClass();
            long jMultiplyExact = Math.multiplyExact(num2.intValue() / 10000, 315569520000L);
            long epochDay = b44VarCopy.c().b.toEpochDay();
            if (epochDay > SieveCacheKt.NodeLinkMask) {
                i2 = Integer.MAX_VALUE;
            } else {
                i2 = epochDay < SieveCacheKt.NodeMetaAndPreviousMask ? Integer.MIN_VALUE : (int) epochDay;
            }
            long jAddExact = Math.addExact(jMultiplyExact, ((((long) i2) * TapjoyCacheKt.DEFAULT_TIME_TO_LIVE) + ((long) ut4VarC.b.toSecondOfDay())) - ((long) da9VarA.a.getTotalSeconds()));
            h64.Companion.getClass();
            if (jAddExact < h64.c.b.getEpochSecond() || jAddExact > h64.d.b.getEpochSecond()) {
                throw new DateTimeFormatException("The parsed date is outside the range representable by Instant");
            }
            Integer num3 = d44Var.f;
            try {
                Instant instantOfEpochSecond = Instant.ofEpochSecond(jAddExact, num3 != null ? num3.intValue() : 0);
                instantOfEpochSecond.getClass();
                return new h64(instantOfEpochSecond);
            } catch (Exception e2) {
                if ((e2 instanceof ArithmeticException) || (e2 instanceof DateTimeException)) {
                    return jAddExact > 0 ? h64.d : h64.c;
                }
                throw e2;
            }
        } catch (ArithmeticException e3) {
            throw new DateTimeFormatException("The parsed date is outside the range representable by Instant", e3);
        }
    }

    public rb2() {
        this(new ec2(0));
    }
}
