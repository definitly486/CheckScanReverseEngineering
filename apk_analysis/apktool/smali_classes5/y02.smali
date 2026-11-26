.class public final Ly02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le15;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le15<",
        "Lum1;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Lg15;Lzn5;)V
    .locals 4

    check-cast p2, Lum1;

    invoke-virtual {p1}, Lg15;->c()I

    move-result p0

    iget-object v0, p1, Lg15;->c:Lf58;

    iget-object v1, v0, Lf58;->b:Ljava/lang/StringBuilder;

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lum1;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Lf58;->a(C)V

    invoke-virtual {p1, p2, p0}, Lg15;->d(Lzn5;I)V

    return-void
.end method
