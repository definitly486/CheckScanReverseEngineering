.class public final Lbn1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbn1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbn1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# virtual methods
.method public final a(Lea5$a;)Ljava/io/OutputStream;
    .locals 0

    new-instance p0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p0
.end method

.method public final b(Ley6$a;)Ljava/io/InputStream;
    .locals 0

    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p0
.end method

.method public final getMessageEncoding()Ljava/lang/String;
    .locals 0

    const-string p0, "gzip"

    return-object p0
.end method
