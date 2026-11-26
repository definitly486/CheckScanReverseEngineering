package defpackage;

import android.view.View;
import com.warefly.checkscan.data.db.CheckscanDatabase;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class gh1 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ gh1(int i, Object obj, Object obj2) {
        super(1);
        this.f = i;
        this.g = obj;
        this.h = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.h;
        Object obj3 = this.g;
        switch (i) {
            case 0:
                List list = (List) obj;
                ih1 ih1Var = (ih1) obj3;
                list.getClass();
                HashSet hashSet = new HashSet();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    hashSet.add(((sd1) it.next()).b());
                }
                ArrayList arrayList = new ArrayList();
                for (Object obj4 : (List) obj2) {
                    if (!hashSet.contains((String) obj4)) {
                        arrayList.add(obj4);
                    }
                }
                CheckscanDatabase checkscanDatabase = ih1Var.a;
                ArrayList arrayListL = qn1.L(500, arrayList);
                ArrayList arrayList2 = new ArrayList(kn1.q(arrayListL, 10));
                Iterator it2 = arrayListL.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(checkscanDatabase.f().k((List) it2.next()));
                }
                return new h08(new up1(arrayList2).d(checkscanDatabase.f().m()), new fh1(new jd1(1, ih1Var, list), 0));
            default:
                ((View) obj).getClass();
                ((si4) obj3).b.onImageClick(((ti4) obj2).a.a);
                return j59.a;
        }
    }
}
