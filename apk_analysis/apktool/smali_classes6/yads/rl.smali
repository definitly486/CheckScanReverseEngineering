.class public final Lyads/rl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ol;


# instance fields
.field public final a:Lyads/os4;

.field public final b:I

.field public final c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Lyads/kl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lyads/kl;->b:Lyads/os4;

    iput-object p1, p0, Lyads/rl;->a:Lyads/os4;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lyads/os4;->e(I)V

    invoke-virtual {p1}, Lyads/os4;->n()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lyads/rl;->c:I

    invoke-virtual {p1}, Lyads/os4;->n()I

    move-result p1

    iput p1, p0, Lyads/rl;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lyads/rl;->b:I

    return p0
.end method

.method public final c()I
    .locals 2

    iget v0, p0, Lyads/rl;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lyads/rl;->a:Lyads/os4;

    invoke-virtual {p0}, Lyads/os4;->k()I

    move-result p0

    return p0

    :cond_0
    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lyads/rl;->a:Lyads/os4;

    invoke-virtual {p0}, Lyads/os4;->p()I

    move-result p0

    return p0

    :cond_1
    iget v0, p0, Lyads/rl;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lyads/rl;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lyads/rl;->a:Lyads/os4;

    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v0

    iput v0, p0, Lyads/rl;->e:I

    and-int/lit16 p0, v0, 0xf0

    shr-int/lit8 p0, p0, 0x4

    return p0

    :cond_2
    iget p0, p0, Lyads/rl;->e:I

    and-int/lit8 p0, p0, 0xf

    return p0
.end method
