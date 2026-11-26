.class public final Ldl;
.super Lu1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu1;"
    }
.end annotation


# virtual methods
.method public final bridge synthetic a()Lld0;
    .locals 0

    invoke-virtual {p0}, Ldl;->p()Ltc3;

    move-result-object p0

    return-object p0
.end method

.method public final p()Ltc3;
    .locals 1

    new-instance v0, Ltc3;

    iget-object p0, p0, Lu1;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Lld0;-><init>(Ljava/util/List;)V

    return-object v0
.end method
