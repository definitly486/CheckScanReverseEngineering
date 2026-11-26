package defpackage;

import androidx.compose.foundation.draganddrop.DragAndDropSourceNode;
import androidx.compose.ui.draganddrop.DragAndDropStartTransferScope;
import androidx.compose.ui.geometry.Offset;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class xq2 implements bm3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ xq2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x004b  */
    /* JADX WARN: Code duplicated, block: B:39:0x00b4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x00b6 A[LOOP:0: B:29:0x0083->B:40:0x00b6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:56:0x00f1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:57:0x00f3 A[LOOP:2: B:46:0x00c1->B:57:0x00f3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:63:0x00aa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x004b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:0x00e7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x004b A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        Object next;
        String str;
        b36 b36Var;
        String str2;
        Object next2;
        String str3;
        String str4;
        Object objK0;
        int i = this.b;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return DragAndDropSourceNode.dragAndDropModifierNode$lambda$0((DragAndDropSourceNode) obj3, (DragAndDropStartTransferScope) obj, (Offset) obj2);
            default:
                CharSequence charSequence = (CharSequence) obj;
                int iIntValue = ((Integer) obj2).intValue();
                charSequence.getClass();
                List list = (List) obj3;
                if (list.size() == 1) {
                    List list2 = list;
                    if (list2 instanceof List) {
                        objK0 = qn1.k0(list2);
                    } else {
                        Iterator it = list2.iterator();
                        if (!it.hasNext()) {
                            ag.g("Collection is empty.");
                            return null;
                        }
                        Object next3 = it.next();
                        if (it.hasNext()) {
                            fg.c("Collection has more than one element.");
                            return null;
                        }
                        objK0 = next3;
                    }
                    String str5 = (String) objK0;
                    int iK = ta8.K(charSequence, str5, iIntValue, false, 4);
                    if (iK < 0) {
                        b36Var = null;
                    } else {
                        b36Var = new b36(Integer.valueOf(iK), str5);
                    }
                } else {
                    if (iIntValue < 0) {
                        iIntValue = 0;
                    }
                    y74 y74Var = new y74(iIntValue, charSequence.length(), 1);
                    boolean z = charSequence instanceof String;
                    int i2 = y74Var.d;
                    int i3 = y74Var.c;
                    if (z) {
                        if ((i2 <= 0 || iIntValue > i3) && (i2 >= 0 || i3 > iIntValue)) {
                            b36Var = null;
                        } else {
                            while (true) {
                                Iterator it2 = list.iterator();
                                do {
                                    if (it2.hasNext()) {
                                        next2 = it2.next();
                                        str4 = (String) next2;
                                    } else {
                                        next2 = null;
                                    }
                                    str3 = (String) next2;
                                    if (str3 != null) {
                                        b36Var = new b36(Integer.valueOf(iIntValue), str3);
                                    } else if (iIntValue != i3) {
                                        iIntValue += i2;
                                    } else {
                                        b36Var = null;
                                    }
                                } while (!str4.regionMatches(0, (String) charSequence, iIntValue, str4.length()));
                                str3 = (String) next2;
                                if (str3 != null) {
                                    b36Var = new b36(Integer.valueOf(iIntValue), str3);
                                } else if (iIntValue != i3) {
                                    iIntValue += i2;
                                } else {
                                    b36Var = null;
                                }
                            }
                        }
                    } else if ((i2 <= 0 || iIntValue > i3) && (i2 >= 0 || i3 > iIntValue)) {
                        b36Var = null;
                    } else {
                        int i4 = iIntValue;
                        while (true) {
                            Iterator it3 = list.iterator();
                            do {
                                if (it3.hasNext()) {
                                    next = it3.next();
                                    str2 = (String) next;
                                } else {
                                    next = null;
                                }
                                str = (String) next;
                                if (str != null) {
                                    b36Var = new b36(Integer.valueOf(i4), str);
                                } else if (i4 != i3) {
                                    i4 += i2;
                                } else {
                                    b36Var = null;
                                }
                            } while (!ta8.S(str2, 0, charSequence, i4, str2.length(), false));
                            str = (String) next;
                            if (str != null) {
                                b36Var = new b36(Integer.valueOf(i4), str);
                            } else if (i4 != i3) {
                                i4 += i2;
                            } else {
                                b36Var = null;
                            }
                        }
                    }
                }
                if (b36Var != null) {
                    return new b36(b36Var.b, Integer.valueOf(((String) b36Var.c).length()));
                }
                return null;
        }
    }
}
