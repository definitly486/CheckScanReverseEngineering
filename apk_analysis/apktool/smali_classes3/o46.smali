.class public final Lo46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg05;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg05<",
        "Lj46;",
        "Lb99;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lzz5;)Lb99;
    .locals 0

    check-cast p1, Lj46;

    iget-object p0, p1, Lj46;->b:Lgx0;

    invoke-virtual {p0}, Lgx0;->x()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxz2;->a(Ljava/lang/String;)Lb99;

    move-result-object p0

    return-object p0
.end method
