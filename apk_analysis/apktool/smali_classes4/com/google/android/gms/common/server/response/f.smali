.class public final Lcom/google/android/gms/common/server/response/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/server/response/i;


# virtual methods
.method public final a(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p1, Lcom/google/android/gms/common/server/response/FastParser;->b:[C

    iget-object v0, p1, Lcom/google/android/gms/common/server/response/FastParser;->d:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p0, v0, v1}, Lcom/google/android/gms/common/server/response/FastParser;->f(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
