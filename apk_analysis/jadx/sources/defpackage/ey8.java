package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes5.dex */
public final class ey8 extends RecyclerView.ItemDecoration {
    public final int[] e;
    public boolean f;
    public final int g = pl2.e(8) / 2;
    public final int h = pl2.e(8) / 2;
    public final ArrayList i = new ArrayList();
    public final ArrayList j = new ArrayList();
    public int k = -1;
    public int l = -1;

    public ey8(int[] iArr) {
        this.e = iArr;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        List listH;
        List listO0;
        List listH2;
        sg.e(rect, view, recyclerView, state);
        int[] iArr = this.e;
        for (int i : iArr) {
            if (recyclerView.getChildViewHolder(view).getItemViewType() == i) {
                RecyclerView.Adapter adapter = recyclerView.getAdapter();
                if (adapter == null) {
                    return;
                }
                int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
                Integer numValueOf = Integer.valueOf(childAdapterPosition);
                int i2 = -1;
                if (childAdapterPosition == -1) {
                    numValueOf = null;
                }
                if (numValueOf != null) {
                    int iIntValue = numValueOf.intValue();
                    boolean z = this.f;
                    ArrayList arrayList = this.j;
                    ArrayList arrayList2 = this.i;
                    if (!z) {
                        int itemCount = adapter.getItemCount();
                        int i3 = 0;
                        while (true) {
                            if (i3 >= itemCount) {
                                i3 = -1;
                                break;
                            } else if (yr.C(iArr, adapter.getItemViewType(i3))) {
                                break;
                            } else {
                                i3++;
                            }
                        }
                        this.k = i3;
                        for (int itemCount2 = adapter.getItemCount() - 1; -1 < itemCount2; itemCount2--) {
                            if (yr.C(iArr, adapter.getItemViewType(itemCount2))) {
                                i2 = itemCount2;
                                break;
                            }
                        }
                        this.l = i2;
                        int i4 = i2 - this.k;
                        ArrayList arrayList3 = new ArrayList(i4);
                        for (int i5 = 0; i5 < i4; i5++) {
                            arrayList3.add(0);
                        }
                        arrayList2.clear();
                        Integer numValueOf2 = Integer.valueOf(this.k);
                        int iQ = kn1.q(arrayList3, 9);
                        if (iQ == 0) {
                            listH = u96.h(numValueOf2);
                        } else {
                            ArrayList arrayList4 = new ArrayList(iQ + 1);
                            arrayList4.add(numValueOf2);
                            Iterator it = arrayList3.iterator();
                            while (it.hasNext()) {
                                ((Number) it.next()).intValue();
                                numValueOf2 = Integer.valueOf(numValueOf2.intValue() + 3);
                                arrayList4.add(numValueOf2);
                            }
                            listH = arrayList4;
                        }
                        boolean zIsEmpty = listH.isEmpty();
                        List listO1 = kx2.b;
                        if (zIsEmpty) {
                            listO0 = listO1;
                            break;
                        }
                        ListIterator listIterator = listH.listIterator(listH.size());
                        while (true) {
                            if (listIterator.hasPrevious()) {
                                if (((Number) listIterator.previous()).intValue() <= this.l) {
                                    listO0 = qn1.o0(listH, listIterator.nextIndex() + 1);
                                    break;
                                }
                            } else {
                                listO0 = listO1;
                                break;
                            }
                        }
                        arrayList2.addAll(listO0);
                        arrayList.clear();
                        Integer numValueOf3 = Integer.valueOf(this.k);
                        int iQ2 = kn1.q(arrayList3, 9);
                        if (iQ2 == 0) {
                            listH2 = u96.h(numValueOf3);
                        } else {
                            ArrayList arrayList5 = new ArrayList(iQ2 + 1);
                            arrayList5.add(numValueOf3);
                            Iterator it2 = arrayList3.iterator();
                            while (it2.hasNext()) {
                                ((Number) it2.next()).intValue();
                                numValueOf3 = Integer.valueOf(numValueOf3.intValue() + 1);
                                arrayList5.add(numValueOf3);
                            }
                            listH2 = arrayList5;
                        }
                        if (!listH2.isEmpty()) {
                            ListIterator listIterator2 = listH2.listIterator(listH2.size());
                            while (listIterator2.hasPrevious()) {
                                if (((Number) listIterator2.previous()).intValue() <= this.l) {
                                    listO1 = qn1.o0(listH2, listIterator2.nextIndex() + 1);
                                    break;
                                }
                            }
                        }
                        arrayList.addAll(listO1);
                        this.f = true;
                    }
                    int i6 = this.k;
                    int i7 = this.l;
                    arrayList2.getClass();
                    arrayList.getClass();
                    boolean zContains = arrayList2.contains(numValueOf);
                    boolean zContains2 = arrayList.contains(numValueOf);
                    int i8 = this.h;
                    int i9 = this.g;
                    if (zContains && iIntValue == i6) {
                        rect.right = i9;
                        rect.bottom = i8;
                        return;
                    }
                    if (zContains) {
                        rect.right = i9;
                        rect.top = i8;
                        rect.bottom = i8;
                        return;
                    }
                    if (zContains2 && i6 + 1 == iIntValue) {
                        rect.right = i9;
                        rect.left = i9;
                        rect.bottom = i8;
                        return;
                    } else {
                        if (zContains2) {
                            rect.right = i9;
                            rect.left = i9;
                            rect.top = i8;
                            rect.bottom = i8;
                            return;
                        }
                        if (iIntValue == i7) {
                            rect.top = i8;
                            rect.left = i9;
                            return;
                        } else {
                            rect.left = i9;
                            rect.bottom = i8;
                            rect.top = i8;
                            return;
                        }
                    }
                }
                return;
            }
        }
    }
}
