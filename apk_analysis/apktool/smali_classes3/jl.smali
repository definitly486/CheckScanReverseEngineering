.class public final Ljl;
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

    new-instance v0, Lyr7;

    iget-object p0, p0, Lu1;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Lyr7;-><init>(Ljava/util/List;)V

    return-object v0
.end method
