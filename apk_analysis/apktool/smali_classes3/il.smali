.class public final Lil;
.super Lu1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu1;"
    }
.end annotation


# virtual methods
.method public final a()Lld0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lld0<",
            "Lod7;",
            "Lod7;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnd7;

    iget-object p0, p0, Lu1;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Lnd7;-><init>(Ljava/util/List;)V

    return-object v0
.end method
