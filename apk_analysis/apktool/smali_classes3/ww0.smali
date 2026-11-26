.class public final Lww0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lww0$a;,
        Lww0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnc5<",
        "Ljava/io/File;",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;IILxz5;)Lnc5$a;
    .locals 0

    check-cast p1, Ljava/io/File;

    new-instance p0, Lnc5$a;

    new-instance p2, Loq5;

    invoke-direct {p2, p1}, Loq5;-><init>(Ljava/lang/Object;)V

    new-instance p3, Lww0$a;

    invoke-direct {p3, p1}, Lww0$a;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p2, p3}, Lnc5$a;-><init>(Lkf4;Ls82;)V

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/io/File;

    const/4 p0, 0x1

    return p0
.end method
