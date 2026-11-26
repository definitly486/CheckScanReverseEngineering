.class public final Lcom/google/android/gms/common/server/response/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/server/response/i;


# virtual methods
.method public final a(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p1, Lcom/google/android/gms/common/server/response/FastParser;->c:[C

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/common/server/response/FastParser;->l(Ljava/io/BufferedReader;[C)I

    move-result p1

    if-nez p1, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, p1}, Ljava/lang/String;-><init>([CII)V

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method
