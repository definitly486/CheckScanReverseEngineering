.class public final Lh93;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li47;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li47<",
        "Ljava/io/File;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;IILxz5;)Le47;
    .locals 0

    check-cast p1, Ljava/io/File;

    new-instance p0, Lt93;

    invoke-direct {p0, p1}, Lt93;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b(Ljava/lang/Object;Lxz5;)Z
    .locals 0

    check-cast p1, Ljava/io/File;

    const/4 p0, 0x1

    return p0
.end method
