.class public abstract Lbx2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lol2;


# instance fields
.field public final a:C


# direct methods
.method public constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lbx2;->a:C

    return-void
.end method


# virtual methods
.method public final a()C
    .locals 0

    iget-char p0, p0, Lbx2;->a:C

    return p0
.end method

.method public final b()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final c()C
    .locals 0

    iget-char p0, p0, Lbx2;->a:C

    return p0
.end method

.method public final d(Ldq8;Ldq8;I)V
    .locals 1

    iget-char p0, p0, Lbx2;->a:C

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    const/4 p0, 0x1

    if-ne p3, p0, :cond_0

    new-instance p0, Lax2;

    invoke-direct {p0}, Lzn5;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lxa8;

    invoke-direct {p0}, Lzn5;-><init>()V

    :goto_0
    iget-object p3, p1, Lzn5;->e:Lzn5;

    :goto_1
    if-eqz p3, :cond_1

    if-eq p3, p2, :cond_1

    iget-object v0, p3, Lzn5;->e:Lzn5;

    invoke-virtual {p0, p3}, Lzn5;->b(Lzn5;)V

    move-object p3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lzn5;->f()V

    iget-object p2, p1, Lzn5;->e:Lzn5;

    iput-object p2, p0, Lzn5;->e:Lzn5;

    if-eqz p2, :cond_2

    iput-object p0, p2, Lzn5;->d:Lzn5;

    :cond_2
    iput-object p1, p0, Lzn5;->d:Lzn5;

    iput-object p0, p1, Lzn5;->e:Lzn5;

    iget-object p1, p1, Lzn5;->a:Lzn5;

    iput-object p1, p0, Lzn5;->a:Lzn5;

    iget-object p2, p0, Lzn5;->e:Lzn5;

    if-nez p2, :cond_3

    iput-object p0, p1, Lzn5;->c:Lzn5;

    :cond_3
    return-void
.end method

.method public final e(Lnl2;Lnl2;)I
    .locals 1

    iget-boolean p0, p1, Lnl2;->d:Z

    if-nez p0, :cond_0

    iget-boolean p0, p2, Lnl2;->c:Z

    if-eqz p0, :cond_1

    :cond_0
    iget p0, p2, Lnl2;->h:I

    rem-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_1

    iget v0, p1, Lnl2;->h:I

    add-int/2addr v0, p0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget p0, p1, Lnl2;->g:I

    const/4 p1, 0x2

    if-lt p0, p1, :cond_2

    iget p0, p2, Lnl2;->g:I

    if-lt p0, p1, :cond_2

    return p1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
