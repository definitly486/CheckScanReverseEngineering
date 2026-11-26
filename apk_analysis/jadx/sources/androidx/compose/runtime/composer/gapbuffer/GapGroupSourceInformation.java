package androidx.compose.runtime.composer.gapbuffer;

import androidx.compose.runtime.composer.GroupSourceInformation;
import defpackage.aa4;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class GapGroupSourceInformation implements GroupSourceInformation {
    public static final int $stable = 8;
    private boolean closed;
    private int dataEndOffset;
    private final int dataStartOffset;
    private ArrayList<Object> groups;
    private final int key;
    private String sourceInformation;

    public GapGroupSourceInformation(int i, String str, int i2) {
        this.key = i;
        this.sourceInformation = str;
        this.dataStartOffset = i2;
    }

    private final void add(Object obj) {
        ArrayList<Object> groups = getGroups();
        if (groups == null) {
            groups = new ArrayList<>();
        }
        setGroups(groups);
        groups.add(obj);
    }

    private final boolean hasAnchor(GapAnchor gapAnchor) {
        ArrayList<Object> groups = getGroups();
        if (groups != null) {
            int size = groups.size();
            for (int i = 0; i < size; i++) {
                Object obj = groups.get(i);
                if (aa4.e(obj, gapAnchor)) {
                    return true;
                }
                if ((obj instanceof GapGroupSourceInformation) && ((GapGroupSourceInformation) obj).hasAnchor(gapAnchor)) {
                    return true;
                }
            }
        }
        return false;
    }

    private final GapGroupSourceInformation openInformation() {
        Object obj;
        GapGroupSourceInformation gapGroupSourceInformationOpenInformation;
        ArrayList<Object> groups = getGroups();
        if (groups == null) {
            obj = null;
            break;
        }
        int size = groups.size() - 1;
        while (true) {
            if (size < 0) {
                obj = null;
                break;
            }
            obj = groups.get(size);
            if ((obj instanceof GapGroupSourceInformation) && !((GapGroupSourceInformation) obj).getClosed()) {
                break;
            }
            size--;
        }
        GapGroupSourceInformation gapGroupSourceInformation = obj instanceof GapGroupSourceInformation ? (GapGroupSourceInformation) obj : null;
        return (gapGroupSourceInformation == null || (gapGroupSourceInformationOpenInformation = gapGroupSourceInformation.openInformation()) == null) ? this : gapGroupSourceInformationOpenInformation;
    }

    public final void addGroupAfter(SlotWriter slotWriter, int i, int i2) {
        GapAnchor gapAnchorTryAnchor$runtime;
        ArrayList<Object> groups = getGroups();
        if (groups == null) {
            groups = new ArrayList<>();
            setGroups(groups);
        }
        int i3 = 0;
        if (i >= 0 && (gapAnchorTryAnchor$runtime = slotWriter.tryAnchor$runtime(i)) != null) {
            int size = groups.size();
            while (i3 < size) {
                Object obj = groups.get(i3);
                if (!aa4.e(obj, gapAnchorTryAnchor$runtime) && (!(obj instanceof GapGroupSourceInformation) || !((GapGroupSourceInformation) obj).hasAnchor(gapAnchorTryAnchor$runtime))) {
                    i3++;
                }
            }
            i3 = -1;
        }
        groups.add(i3, slotWriter.anchor(i2));
    }

    public final void close(int i) {
        setClosed(true);
        setDataEndOffset(i);
    }

    public final void endGrouplessCall(int i) {
        openInformation().close(i);
    }

    @Override // androidx.compose.runtime.composer.GroupSourceInformation
    public boolean getClosed() {
        return this.closed;
    }

    @Override // androidx.compose.runtime.composer.GroupSourceInformation
    public int getDataEndOffset() {
        return this.dataEndOffset;
    }

    @Override // androidx.compose.runtime.composer.GroupSourceInformation
    public int getDataStartOffset() {
        return this.dataStartOffset;
    }

    @Override // androidx.compose.runtime.composer.GroupSourceInformation
    public ArrayList<Object> getGroups() {
        return this.groups;
    }

    @Override // androidx.compose.runtime.composer.GroupSourceInformation
    public int getKey() {
        return this.key;
    }

    @Override // androidx.compose.runtime.composer.GroupSourceInformation
    public String getSourceInformation() {
        return this.sourceInformation;
    }

    public final boolean removeAnchor(GapAnchor gapAnchor) {
        ArrayList<Object> groups = getGroups();
        if (groups != null) {
            for (int size = groups.size() - 1; size >= 0; size--) {
                Object obj = groups.get(size);
                if (obj instanceof GapAnchor) {
                    if (obj == gapAnchor) {
                        groups.remove(size);
                    }
                } else if ((obj instanceof GapGroupSourceInformation) && !((GapGroupSourceInformation) obj).removeAnchor(gapAnchor)) {
                    groups.remove(size);
                }
            }
            if (groups.isEmpty()) {
                setGroups(null);
                return false;
            }
        }
        return true;
    }

    public final void reportGroup(SlotWriter slotWriter, int i) {
        openInformation().add(slotWriter.anchor(i));
    }

    public void setClosed(boolean z) {
        this.closed = z;
    }

    public void setDataEndOffset(int i) {
        this.dataEndOffset = i;
    }

    public void setGroups(ArrayList<Object> arrayList) {
        this.groups = arrayList;
    }

    public void setSourceInformation(String str) {
        this.sourceInformation = str;
    }

    public final void startGrouplessCall(int i, String str, int i2) {
        openInformation().add(new GapGroupSourceInformation(i, str, i2));
    }

    public final void reportGroup(SlotTable slotTable, int i) {
        openInformation().add(slotTable.anchor(i));
    }
}
