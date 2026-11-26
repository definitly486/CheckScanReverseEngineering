package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class aa0 implements hd3<nt5> {
    public final /* synthetic */ hd3 b;
    public final /* synthetic */ ca0 c;

    public static final class a<T> implements id3 {
        public final /* synthetic */ id3 b;
        public final /* synthetic */ ca0 c;

        /* JADX INFO: renamed from: aa0$a$a, reason: collision with other inner class name */
        @bd2(c = "com.warefly.checkscan.domain.interactor.bank.BankInteractor$fetchNewAlfaLanding$$inlined$map$1$2", f = "BankInteractor.kt", l = {217}, m = "emit")
        public static final class C0000a extends f02 {
            public /* synthetic */ Object l;
            public int m;

            public C0000a(e02 e02Var) {
                super(e02Var);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                this.l = obj;
                this.m |= Integer.MIN_VALUE;
                return a.this.emit(null, this);
            }
        }

        public a(id3 id3Var, ca0 ca0Var) {
            this.b = id3Var;
            this.c = ca0Var;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // defpackage.id3
        public final Object emit(Object obj, e02 e02Var) {
            C0000a c0000a;
            String strA;
            if (e02Var instanceof C0000a) {
                c0000a = (C0000a) e02Var;
                int i = c0000a.m;
                if ((i & Integer.MIN_VALUE) != 0) {
                    c0000a.m = i - Integer.MIN_VALUE;
                } else {
                    c0000a = new C0000a(e02Var);
                }
            } else {
                c0000a = new C0000a(e02Var);
            }
            Object obj2 = c0000a.l;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = c0000a.m;
            if (i2 == 0) {
                r57.b(obj2);
                di4 di4Var = (di4) obj;
                this.c.getClass();
                ArrayList arrayList = new ArrayList();
                ji0 ji0VarA = di4Var.a();
                Iterable iterableA = ji0VarA != null ? ji0VarA.a() : null;
                List<x88.b> list = kx2.b;
                if (iterableA == null) {
                    iterableA = list;
                }
                Iterable<ji0.b> iterable = iterableA;
                ArrayList arrayList2 = new ArrayList(kn1.q(iterable, 10));
                for (ji0.b bVar : iterable) {
                    arrayList2.add(new xs5(bVar.a(), bVar.c(), bVar.b()));
                }
                arrayList.addAll(arrayList2);
                x88 x88VarF = di4Var.f();
                String strB = x88VarF != null ? x88VarF.b() : null;
                if (strB == null) {
                    strB = "";
                }
                arrayList.add(new gw8(strB));
                x88 x88VarF2 = di4Var.f();
                List<x88.b> listA = x88VarF2 != null ? x88VarF2.a() : null;
                if (listA != null) {
                    list = listA;
                }
                List<x88.b> list2 = list;
                ArrayList arrayList3 = new ArrayList(kn1.q(list2, 10));
                for (x88.b bVar2 : list2) {
                    arrayList3.add(new kt5(bVar2.a(), bVar2.b()));
                }
                arrayList.addAll(arrayList3);
                pf9 pf9VarG = di4Var.g();
                if (pf9VarG != null && (strA = pf9VarG.a()) != null) {
                    arrayList.add(new zs8(strA, strA));
                }
                sn0 sn0VarB = di4Var.b();
                if (sn0VarB != null) {
                    arrayList.add(new gw8(sn0VarB.d()));
                    arrayList.add(new hq8(sn0VarB.c()));
                    List<sn0.b> listA2 = sn0VarB.a();
                    ArrayList arrayList4 = new ArrayList(kn1.q(listA2, 10));
                    Iterator<T> it = listA2.iterator();
                    while (it.hasNext()) {
                        arrayList4.add(new et5(((sn0.b) it.next()).a()));
                    }
                    arrayList.addAll(arrayList4);
                    arrayList.add(new dt5(sn0VarB.b()));
                }
                so4 so4VarE = di4Var.e();
                if (so4VarE != null) {
                    arrayList.add(new mt5(so4VarE.a()));
                }
                jv4 jv4VarD = di4Var.d();
                String strA2 = jv4VarD != null ? jv4VarD.a() : null;
                if (strA2 == null) {
                    strA2 = "";
                }
                iv0 iv0VarC = di4Var.c();
                String strA3 = iv0VarC != null ? iv0VarC.a() : null;
                nt5 nt5Var = new nt5(strA2, strA3 != null ? strA3 : "", arrayList);
                c0000a.m = 1;
                if (this.b.emit(nt5Var, c0000a) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj2);
            }
            return j59.a;
        }
    }

    public aa0(hd3 hd3Var, ca0 ca0Var) {
        this.b = hd3Var;
        this.c = ca0Var;
    }

    @Override // defpackage.hd3
    public final Object collect(id3<? super nt5> id3Var, e02 e02Var) {
        Object objCollect = this.b.collect(new a(id3Var, this.c), e02Var);
        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
    }
}
