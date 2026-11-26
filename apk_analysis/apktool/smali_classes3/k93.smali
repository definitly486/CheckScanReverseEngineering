.class public final Lk93;
.super Lcu4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcu4<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    const-class p0, Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    return-void
.end method

.method public final e(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0

    iget-boolean p1, p0, Lcu4;->b:Z

    iget-object p0, p0, Lcu4;->d:Landroid/content/ContentResolver;

    if-eqz p1, :cond_0

    invoke-static {p2}, Lf95;->b(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lf95;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0, p2}, Lf95;->c(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p1, "r"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "FileDescriptor is null for: "

    invoke-static {p2, p1}, Lrk3;->c(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
