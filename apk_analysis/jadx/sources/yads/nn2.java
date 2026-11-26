package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class nn2 {
    public static final nn2 c = new nn2("MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCznqFqHos01bT613or9cQ8OWXEB0nvx8UZ//V75T+fb1IDn1/lPBwGY/OK5RfQYuqeIKoKasqfwtRo3sr8dJ+SDm29Brh3lV9r+apohla+GIAyYd5wcJugMfVH5z9SBxh19ukg+GiIvvDpmgi0M8gNVo6Nk21tkEgFxc9FfdT/HwIDAQAB", 1);
    public final String a;
    public final int b;

    public nn2(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public final String a() {
        return this.a;
    }

    public final int b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nn2)) {
            return false;
        }
        nn2 nn2Var = (nn2) obj;
        return defpackage.aa4.e(this.a, nn2Var.a) && this.b == nn2Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return defpackage.hg.d(this.b, "EncryptionParameters(publicKey=", this.a, ", version=", ")");
    }
}
