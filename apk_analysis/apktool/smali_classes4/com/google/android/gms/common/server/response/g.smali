.class public final Lcom/google/android/gms/common/server/response/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/server/response/i;


# virtual methods
.method public final a(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p1, Lcom/google/android/gms/common/server/response/FastParser;->c:[C

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/common/server/response/FastParser;->l(Ljava/io/BufferedReader;[C)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p2, Ljava/math/BigInteger;

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p2, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
