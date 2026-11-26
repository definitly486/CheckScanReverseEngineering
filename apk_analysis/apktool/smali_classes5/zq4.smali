.class public final Lzq4;
.super Lm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzq4$c;,
        Lzq4$b;,
        Lzq4$a;
    }
.end annotation


# instance fields
.field public final a:Lyq4;

.field public b:Z

.field public c:I


# direct methods
.method public constructor <init>(Lyq4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzq4;->a:Lyq4;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final c(Lpj0;)Z
    .locals 2

    instance-of p1, p1, Ldr4;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lzq4;->b:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget p1, p0, Lzq4;->c:I

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lzq4;->a:Lyq4;

    iput-boolean v0, p1, Lyq4;->f:Z

    iput-boolean v0, p0, Lzq4;->b:Z

    :cond_0
    return v1

    :cond_1
    return v0
.end method

.method public final d()Lpj0;
    .locals 0

    iget-object p0, p0, Lzq4;->a:Lyq4;

    return-object p0
.end method

.method public final f(Ldq2;)Lrj0;
    .locals 2

    iget-boolean v0, p1, Ldq2;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lzq4;->b:Z

    const/4 v0, 0x0

    iput v0, p0, Lzq4;->c:I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lzq4;->b:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lzq4;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lzq4;->c:I

    :cond_1
    :goto_0
    iget p0, p1, Ldq2;->b:I

    invoke-static {p0}, Lrj0;->a(I)Lrj0;

    move-result-object p0

    return-object p0
.end method
