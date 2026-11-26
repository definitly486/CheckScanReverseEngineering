.class public final Lv68;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leu7;


# virtual methods
.method public final b(Ly68;)Lhd3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly68<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lhd3<",
            "Lcu7;",
            ">;"
        }
    .end annotation

    new-instance p0, Lv68$a;

    invoke-direct {p0, p1}, Lv68$a;-><init>(Ly68;)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "SharingStarted.Lazily"

    return-object p0
.end method
