package defpackage;

import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.personalform.domain.interactor.PersonalFormInteractor$saveForm$1", f = "PersonalFormInteractor.kt", l = {322, 328, 329, 330, 341, 342}, m = "invokeSuspend")
public final class x66 extends pg8 implements bm3<id3<? super w66.a>, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ w66 n;
    public final /* synthetic */ boolean o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x66(w66 w66Var, boolean z, e02<? super x66> e02Var) {
        super(2, e02Var);
        this.n = w66Var;
        this.o = z;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        x66 x66Var = new x66(this.n, this.o, e02Var);
        x66Var.m = obj;
        return x66Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super w66.a> id3Var, e02<? super j59> e02Var) {
        return ((x66) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:50:0x0137  */
    /* JADX WARN: Code duplicated, block: B:78:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:81:0x01f2  */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0164, code lost:
    
        if (r1.emit(w66.a.e.a, r11) == r0) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0181, code lost:
    
        if (r1.emit(w66.a.d.a, r11) == r0) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01d4, code lost:
    
        if (r1.emit(r2, r11) == r0) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01ef, code lost:
    
        if (r1.emit(r2, r11) == r0) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01fd, code lost:
    
        if (r1.emit(w66.a.C0347a.a, r11) == r0) goto L83;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        id3 id3Var;
        String str;
        zk6 zk6Var;
        z68 z68Var;
        Object value;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        boolean z = this.o;
        w66 w66Var = this.n;
        switch (i) {
            case 0:
                r57.b(obj);
                id3Var = (id3) this.m;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                Iterable iterable = (Iterable) w66Var.e.getValue();
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : iterable) {
                    if (obj2 instanceof f56) {
                        arrayList.add(obj2);
                    }
                }
                ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(((f56) it.next()).e);
                }
                ArrayList arrayListR = kn1.r(arrayList2);
                ArrayList<w56> arrayList3 = new ArrayList();
                for (Object obj3 : arrayListR) {
                    if (obj3 instanceof w56) {
                        arrayList3.add(obj3);
                    }
                }
                for (w56 w56Var : arrayList3) {
                    if (!w56Var.h() && !ta8.M(w56Var.getValue())) {
                        if (w56Var instanceof o66) {
                            o66 o66Var = (o66) w56Var;
                            linkedHashMap.put(o66Var.d, "[" + o66Var.g + "]");
                        } else if (w56Var instanceof n56) {
                            n56 n56Var = (n56) w56Var;
                            String str2 = n56Var.a;
                            DateTimeFormatter dateTimeFormatter = qb2.a;
                            String str3 = qb2.b.format(qb2.a.parse(n56Var.d));
                            str3.getClass();
                            linkedHashMap.put(str2, str3);
                        } else if (w56Var instanceof s56) {
                            s56 s56Var = (s56) w56Var;
                            s56.a aVar = s56Var.c;
                            if (aVar != null && (str = aVar.c) != null) {
                                linkedHashMap.put(s56Var.f, "[" + str + "]");
                            }
                        } else {
                            linkedHashMap.put(w56Var.getKey(), w56Var.getValue());
                        }
                    }
                }
                f66 f66Var = w66Var.a;
                this.m = id3Var;
                this.l = 1;
                obj = f66Var.b(linkedHashMap, z, this);
                if (obj != a32Var) {
                    zk6Var = (zk6) obj;
                    if (zk6Var.c()) {
                        z68Var = w66Var.f;
                        do {
                            value = z68Var.getValue();
                            ((Boolean) value).getClass();
                        } while (!z68Var.a(value, Boolean.FALSE));
                    }
                    if (!z && zk6Var.c() && zk6Var.a()) {
                        this.m = null;
                        this.l = 2;
                    } else if (!z && zk6Var.c() && !zk6Var.a()) {
                        this.m = null;
                        this.l = 3;
                    } else if (!zk6Var.c() && zk6Var.d() != null) {
                        w66.a.c cVar = new w66.a.c(new u66(zk6Var.d().a(), zk6Var.d().d(), zk6Var.d().c(), zk6Var.d().b().a(), zk6Var.d().b().b()));
                        this.m = null;
                        this.l = 4;
                    } else if (zk6Var.c()) {
                        w66.a.b bVar = new w66.a.b(zk6Var.b());
                        this.m = null;
                        this.l = 5;
                    } else {
                        this.m = null;
                        this.l = 6;
                    }
                    break;
                }
                return a32Var;
            case 1:
                id3Var = (id3) this.m;
                r57.b(obj);
                zk6Var = (zk6) obj;
                if (zk6Var.c()) {
                    z68Var = w66Var.f;
                    do {
                        value = z68Var.getValue();
                        ((Boolean) value).getClass();
                    } while (!z68Var.a(value, Boolean.FALSE));
                }
                if (!z) {
                }
                if (!z) {
                }
                if (!zk6Var.c()) {
                }
                if (zk6Var.c()) {
                    w66.a.b bVar2 = new w66.a.b(zk6Var.b());
                    this.m = null;
                    this.l = 5;
                } else {
                    this.m = null;
                    this.l = 6;
                }
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                r57.b(obj);
                return j59.a;
            default:
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }
}
