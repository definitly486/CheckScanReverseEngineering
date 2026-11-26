.class public final Lel;
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
            "Lkr3;",
            "Lkr3;",
            ">;"
        }
    .end annotation

    new-instance v0, Llr3;

    iget-object p0, p0, Lu1;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Llr3;-><init>(Ljava/util/List;)V

    return-object v0
.end method
