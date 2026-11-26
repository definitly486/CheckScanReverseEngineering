.class public final Lgs6$a;
.super Lgs6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgs6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public j:Luc3;

.field public k:F


# virtual methods
.method public final b(F)V
    .locals 1

    iget-object v0, p0, Lgs6$a;->j:Luc3;

    invoke-virtual {v0, p1}, Luc3;->b(F)F

    move-result p1

    iput p1, p0, Lgs6$a;->k:F

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lgs6;->e()Lgs6;

    move-result-object p0

    check-cast p0, Lgs6$a;

    iget-object v0, p0, Lgs6;->d:Luc3;

    iput-object v0, p0, Lgs6$a;->j:Luc3;

    return-object p0
.end method

.method public final e()Lgs6;
    .locals 1

    invoke-super {p0}, Lgs6;->e()Lgs6;

    move-result-object p0

    check-cast p0, Lgs6$a;

    iget-object v0, p0, Lgs6;->d:Luc3;

    iput-object v0, p0, Lgs6$a;->j:Luc3;

    return-object p0
.end method

.method public final h()Ljava/lang/Float;
    .locals 0

    iget p0, p0, Lgs6$a;->k:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final varargs i([F)V
    .locals 0

    invoke-super {p0, p1}, Lgs6;->i([F)V

    iget-object p1, p0, Lgs6;->d:Luc3;

    iput-object p1, p0, Lgs6$a;->j:Luc3;

    return-void
.end method
