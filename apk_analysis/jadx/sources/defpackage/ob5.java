package defpackage;

import android.graphics.Bitmap;
import android.os.SystemClock;
import com.google.android.gms.internal.mlkit_vision_common.zzms;
import com.google.android.gms.internal.mlkit_vision_common.zzmu;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.scanner.presentation.detector.MlQrDetector$detect$1", f = "MlQrDetector.kt", l = {26}, m = "invokeSuspend")
public final class ob5 extends pg8 implements bm3<ug6<? super List<? extends String>>, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ Bitmap n;
    public final /* synthetic */ pb5 o;

    public static final class a extends gh4 implements nl3<List<pc0>, j59> {
        public final /* synthetic */ pb5 f;
        public final /* synthetic */ ug6<List<String>> g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(pb5 pb5Var, ug6<? super List<String>> ug6Var) {
            super(1);
            this.f = pb5Var;
            this.g = ug6Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(List<pc0> list) {
            List<pc0> list2 = list;
            list2.getClass();
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = list2.iterator();
            while (it.hasNext()) {
                String strC = ((pc0) it.next()).a.c();
                if (strC != null) {
                    arrayList.add(strC);
                }
            }
            la3 la3Var = this.f.a;
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                if (la3Var.invoke(obj).booleanValue()) {
                    arrayList2.add(obj);
                }
            }
            boolean zIsEmpty = arrayList2.isEmpty();
            ug6<List<String>> ug6Var = this.g;
            if (zIsEmpty) {
                z22.b(ug6Var, pib.a("No qrs", new Exception()));
            } else {
                t91.a(ug6Var, arrayList2);
            }
            return j59.a;
        }
    }

    public static final class b extends gh4 implements ll3<j59> {
        public final /* synthetic */ ylb f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(ylb ylbVar) {
            super(0);
            this.f = ylbVar;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            this.f.close();
            return j59.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ob5(Bitmap bitmap, pb5 pb5Var, e02<? super ob5> e02Var) {
        super(2, e02Var);
        this.n = bitmap;
        this.o = pb5Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        ob5 ob5Var = new ob5(this.n, this.o, e02Var);
        ob5Var.m = obj;
        return ob5Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(ug6<? super List<? extends String>> ug6Var, e02<? super j59> e02Var) {
        return ((ob5) create(ug6Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        if (i == 0) {
            r57.b(obj);
            ug6 ug6Var = (ug6) this.m;
            ylb ylbVarH = tc0.h(new sc0(256));
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            Bitmap bitmap = this.n;
            q54 q54Var = new q54(bitmap);
            zzmu.zza(zzms.zzb("vision-common"), -1, 1, jElapsedRealtime, bitmap.getHeight(), bitmap.getWidth(), bitmap.getAllocationByteCount(), 0);
            ylbVarH.a(q54Var).addOnSuccessListener(new ff1(new a(this.o, ug6Var))).addOnFailureListener(new gd0(ug6Var));
            b bVar = new b(ylbVarH);
            this.l = 1;
            if (sg6.a(ug6Var, bVar, this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}
