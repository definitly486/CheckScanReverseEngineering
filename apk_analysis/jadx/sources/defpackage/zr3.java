package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class zr3 extends RecyclerView.ItemDecoration {
    public final int e;
    public final int f;
    public final int[] g;
    public boolean h;
    public final int i;
    public final int j;
    public List<? extends List<Integer>> k;
    public int l;

    public zr3(int i, int i2, int i3, int i4, int[] iArr) {
        this.e = i3;
        this.f = i4;
        this.g = iArr;
        this.i = i3 == Integer.MIN_VALUE ? i2 / 2 : i2;
        this.j = i / 2;
        this.k = kx2.b;
        this.l = -1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        sg.e(rect, view, recyclerView, state);
        int[] iArr = this.g;
        int i = 0;
        for (int i2 : iArr) {
            if (recyclerView.getChildViewHolder(view).getItemViewType() == i2) {
                RecyclerView.Adapter adapter = recyclerView.getAdapter();
                if (adapter == null) {
                    return;
                }
                int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
                Integer numValueOf = Integer.valueOf(childAdapterPosition);
                int i3 = -1;
                if (childAdapterPosition == -1) {
                    numValueOf = null;
                }
                if (numValueOf != null) {
                    int iIntValue = numValueOf.intValue();
                    if (!this.h) {
                        int itemCount = adapter.getItemCount();
                        int i4 = 0;
                        while (true) {
                            if (i4 >= itemCount) {
                                i4 = -1;
                                break;
                            } else if (yr.C(iArr, adapter.getItemViewType(i4))) {
                                break;
                            } else {
                                i4++;
                            }
                        }
                        this.l = i4;
                        for (int itemCount2 = adapter.getItemCount() - 1; -1 < itemCount2; itemCount2--) {
                            if (yr.C(iArr, adapter.getItemViewType(itemCount2))) {
                                i3 = itemCount2;
                                break;
                            }
                        }
                        int i5 = (i3 + 1) - this.l;
                        ArrayList arrayList = new ArrayList(i5);
                        for (int i6 = 0; i6 < i5; i6++) {
                            arrayList.add(Integer.valueOf(this.l + i6));
                        }
                        this.k = qn1.L(3, arrayList);
                        this.h = true;
                    }
                    List<? extends List<Integer>> list = this.k;
                    list.getClass();
                    int i7 = 0;
                    for (Object obj : list) {
                        int i8 = i7 + 1;
                        if (i7 < 0) {
                            u96.o();
                            throw null;
                        }
                        List list2 = (List) obj;
                        if (list2.size() < 3) {
                            ArrayList arrayList2 = new ArrayList(list2);
                            int size = 3 - list2.size();
                            ArrayList arrayList3 = new ArrayList(size);
                            for (int i9 = i; i9 < size; i9++) {
                                arrayList3.add(Integer.MIN_VALUE);
                            }
                            arrayList2.addAll(arrayList3);
                            list2 = arrayList2;
                        }
                        int iIntValue2 = ((Number) list2.get(i)).intValue();
                        int iIntValue3 = ((Number) list2.get(1)).intValue();
                        int iIntValue4 = ((Number) list2.get(2)).intValue();
                        int i10 = this.i;
                        int i11 = this.e;
                        int i12 = this.j;
                        int i13 = this.f;
                        if (iIntValue2 == iIntValue) {
                            if (i13 == Integer.MIN_VALUE || i7 != 0) {
                                i13 = i12;
                            }
                            rect.top = i13;
                            rect.bottom = i12;
                            if (i11 != Integer.MIN_VALUE) {
                                rect.left = i11;
                            } else {
                                rect.left = i10;
                                rect.right = i10;
                            }
                        } else if (iIntValue3 == iIntValue) {
                            if (i13 == Integer.MIN_VALUE || i7 != 0) {
                                i13 = i12;
                            }
                            rect.top = i13;
                            rect.bottom = i12;
                            if (i11 != Integer.MIN_VALUE) {
                                rect.left = i10;
                                rect.right = i10;
                            }
                        } else if (iIntValue4 == iIntValue) {
                            if (i13 == Integer.MIN_VALUE || i7 != 0) {
                                i13 = i12;
                            }
                            rect.top = i13;
                            rect.bottom = i12;
                            if (i11 != Integer.MIN_VALUE) {
                                rect.right = i11;
                            } else {
                                rect.left = i10;
                                rect.right = i10;
                            }
                        }
                        i7 = i8;
                        i = 0;
                    }
                    return;
                }
                return;
            }
        }
    }
}
