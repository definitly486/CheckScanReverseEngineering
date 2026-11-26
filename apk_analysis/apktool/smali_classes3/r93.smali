.class public final Lr93;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg05;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg05<",
        "Ljava/io/File;",
        "Lb99;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lzz5;)Lb99;
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxz2;->a(Ljava/lang/String;)Lb99;

    move-result-object p0

    return-object p0
.end method
