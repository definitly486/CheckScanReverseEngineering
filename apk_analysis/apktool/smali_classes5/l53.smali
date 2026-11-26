.class public final Ll53;
.super Lpj3;
.source "SourceFile"


# instance fields
.field public final c:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/io/IOException;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>(Ls18;Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls18;",
            "Lnl3<",
            "-",
            "Ljava/io/IOException;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lpj3;-><init>(Ls18;)V

    iput-object p2, p0, Ll53;->c:Lnl3;

    return-void
.end method


# virtual methods
.method public final H(Lbu0;J)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Ll53;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Lbu0;->skip(J)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lpj3;->b:Ls18;

    invoke-interface {v0, p1, p2, p3}, Ls18;->H(Lbu0;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Ll53;->d:Z

    iget-object p0, p0, Ll53;->c:Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final close()V
    .locals 2

    iget-boolean v0, p0, Ll53;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Lpj3;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Ll53;->d:Z

    iget-object p0, p0, Ll53;->c:Lnl3;

    invoke-interface {p0, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final flush()V
    .locals 2

    iget-boolean v0, p0, Ll53;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Lpj3;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Ll53;->d:Z

    iget-object p0, p0, Ll53;->c:Lnl3;

    invoke-interface {p0, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
