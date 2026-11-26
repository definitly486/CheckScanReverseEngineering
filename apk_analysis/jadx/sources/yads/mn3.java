package yads;

/* JADX INFO: loaded from: classes6.dex */
public enum mn3 {
    CLICK("click"),
    /* JADX INFO: Fake field, exist only in values array */
    INVITATION_ACCEPTED("invitationAccept");

    public final String b;

    mn3(String str) {
        this.b = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.b;
    }
}
