.class public final Lir4;
.super Lm;
.source "SourceFile"


# instance fields
.field public final a:Ldr4;

.field public final b:I

.field public c:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldr4;

    invoke-direct {v0}, Ldr4;-><init>()V

    iput-object v0, p0, Lir4;->a:Ldr4;

    iput p1, p0, Lir4;->b:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final c(Lpj0;)Z
    .locals 0

    iget-boolean p1, p0, Lir4;->c:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lir4;->a:Ldr4;

    iget-object p0, p0, Lzn5;->a:Lzn5;

    check-cast p0, Lpj0;

    instance-of p1, p0, Lyq4;

    if-eqz p1, :cond_0

    check-cast p0, Lyq4;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lyq4;->f:Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final d()Lpj0;
    .locals 0

    iget-object p0, p0, Lir4;->a:Ldr4;

    return-object p0
.end method

.method public final f(Ldq2;)Lrj0;
    .locals 3

    iget-boolean v0, p1, Ldq2;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lir4;->a:Ldr4;

    iget-object v0, v0, Lzn5;->b:Lzn5;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ldq2;->h()Luj0;

    move-result-object v0

    invoke-interface {v0}, Luj0;->d()Lpj0;

    move-result-object v0

    instance-of v2, v0, Ld36;

    if-nez v2, :cond_1

    instance-of v0, v0, Ldr4;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lir4;->c:Z

    iget p0, p1, Ldq2;->e:I

    invoke-static {p0}, Lrj0;->a(I)Lrj0;

    move-result-object p0

    return-object p0

    :cond_3
    iget v0, p1, Ldq2;->g:I

    iget p0, p0, Lir4;->b:I

    if-lt v0, p0, :cond_4

    iget p1, p1, Ldq2;->c:I

    add-int/2addr p1, p0

    new-instance p0, Lrj0;

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, v1}, Lrj0;-><init>(IIZ)V

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
