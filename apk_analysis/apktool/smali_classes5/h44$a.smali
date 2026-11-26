.class public final Lh44$a;
.super Ln;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh44;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# virtual methods
.method public final a(Ldq2;Ldq2$a;)Lbk0;
    .locals 2

    iget p0, p1, Ldq2;->g:I

    const/4 p2, 0x4

    if-lt p0, p2, :cond_0

    iget-boolean p0, p1, Ldq2;->h:Z

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ldq2;->h()Luj0;

    move-result-object p0

    invoke-interface {p0}, Luj0;->d()Lpj0;

    move-result-object p0

    instance-of p0, p0, Ld36;

    if-nez p0, :cond_0

    new-instance p0, Lh44;

    invoke-direct {p0}, Lh44;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Luj0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    new-instance p0, Lbk0;

    invoke-direct {p0, v0}, Lbk0;-><init>([Luj0;)V

    iget p1, p1, Ldq2;->c:I

    add-int/2addr p1, p2

    iput p1, p0, Lbk0;->c:I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
