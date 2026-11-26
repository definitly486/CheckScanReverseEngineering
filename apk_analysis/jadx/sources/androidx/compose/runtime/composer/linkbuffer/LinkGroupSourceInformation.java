package androidx.compose.runtime.composer.linkbuffer;

import androidx.compose.runtime.composer.GroupSourceInformation;
import defpackage.aa4;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class LinkGroupSourceInformation implements GroupSourceInformation {
    public static final int $stable = 8;
    private boolean closed;
    private int dataEndOffset;
    private final int dataStartOffset;
    private ArrayList<Object> groups;
    private final int key;
    private String sourceInformation;

    public LinkGroupSourceInformation(int i, String str, int i2) {
        this.key = i;
        this.sourceInformation = str;
        this.dataStartOffset = i2;
    }

    private final void add(Object obj) {
        ArrayList<Object> groups = getGroups();
        if (groups == null) {
            groups = new ArrayList<>();
            this.groups = groups;
        }
        groups.add(obj);
    }

    private final boolean hasGroup(LinkAnchor linkAnchor) {
        ArrayList<Object> groups = getGroups();
        if (groups != null) {
            int size = groups.size();
            for (int i = 0; i < size; i++) {
                Object obj = groups.get(i);
                if (aa4.e(obj, linkAnchor)) {
                    return true;
                }
                if ((obj instanceof LinkGroupSourceInformation) && ((LinkGroupSourceInformation) obj).hasGroup(linkAnchor)) {
                    return true;
                }
            }
        }
        return false;
    }

    private final LinkGroupSourceInformation openInformation() {
        LinkGroupSourceInformation linkGroupSourceInformationOpenInformation;
        ArrayList<Object> groups = getGroups();
        Object obj = null;
        if (groups != null) {
            for (int size = groups.size() - 1; size >= 0; size--) {
                Object obj2 = groups.get(size);
                if ((obj2 instanceof LinkGroupSourceInformation) && !((LinkGroupSourceInformation) obj2).getClosed()) {
                    obj = obj2;
                    break;
                }
            }
        }
        LinkGroupSourceInformation linkGroupSourceInformation = (LinkGroupSourceInformation) obj;
        return (linkGroupSourceInformation == null || (linkGroupSourceInformationOpenInformation = linkGroupSourceInformation.openInformation()) == null) ? this : linkGroupSourceInformationOpenInformation;
    }

    public final void addGroupAfter(LinkAnchor linkAnchor, LinkAnchor linkAnchor2) {
        ArrayList<Object> groups = getGroups();
        if (groups == null) {
            groups = new ArrayList<>();
            this.groups = groups;
        }
        int i = 0;
        if (linkAnchor != null) {
            int size = groups.size();
            while (i < size) {
                Object obj = groups.get(i);
                if (!aa4.e(obj, linkAnchor) && (!(obj instanceof LinkGroupSourceInformation) || !((LinkGroupSourceInformation) obj).hasGroup(linkAnchor))) {
                    i++;
                }
            }
            i = -1;
        }
        groups.add(i, linkAnchor2);
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

    public final boolean removeGroup(LinkAnchor linkAnchor) {
        ArrayList<Object> groups = getGroups();
        if (groups != null) {
            for (int size = groups.size() - 1; size >= 0; size--) {
                Object obj = groups.get(size);
                if (obj instanceof LinkAnchor) {
                    if (obj == linkAnchor) {
                        groups.remove(size);
                    }
                } else if ((obj instanceof LinkGroupSourceInformation) && !((LinkGroupSourceInformation) obj).removeGroup(linkAnchor)) {
                    groups.remove(size);
                }
            }
            if (groups.isEmpty()) {
                this.groups = null;
                return false;
            }
        }
        return true;
    }

    public final void reportGroup(LinkAnchor linkAnchor) {
        openInformation().add(linkAnchor);
    }

    public void setClosed(boolean z) {
        this.closed = z;
    }

    public void setDataEndOffset(int i) {
        this.dataEndOffset = i;
    }

    public void setSourceInformation(String str) {
        this.sourceInformation = str;
    }

    public final void startGrouplessCall(int i, String str, int i2) {
        openInformation().add(new LinkGroupSourceInformation(i, str, i2));
    }
}
