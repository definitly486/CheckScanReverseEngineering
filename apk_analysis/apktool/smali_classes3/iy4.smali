.class public final Liy4;
.super Lgy4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgy4<",
        "Lkf4;",
        "Le47<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public d:Lkz2;


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Le47;

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-interface {p1}, Le47;->getSize()I

    move-result p0

    return p0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkf4;

    check-cast p2, Le47;

    iget-object p0, p0, Liy4;->d:Lkz2;

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lkz2;->e:Lu47;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lu47;->a(Le47;Z)V

    :cond_0
    return-void
.end method
