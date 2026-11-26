.class public final Lm53;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls18;


# instance fields
.field public final b:Ls18;

.field public final c:Ltx;

.field public d:Z


# direct methods
.method public constructor <init>(Ls18;Ltx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm53;->b:Ls18;

    iput-object p2, p0, Lm53;->c:Ltx;

    return-void
.end method


# virtual methods
.method public final H(Lbu0;J)V
    .locals 1

    iget-boolean v0, p0, Lm53;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Lbu0;->skip(J)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lm53;->b:Ls18;

    invoke-interface {v0, p1, p2, p3}, Ls18;->H(Lbu0;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lm53;->d:Z

    iget-object p0, p0, Lm53;->c:Ltx;

    invoke-virtual {p0, p1}, Ltx;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final close()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lm53;->b:Ls18;

    invoke-interface {v0}, Ls18;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lm53;->d:Z

    iget-object p0, p0, Lm53;->c:Ltx;

    invoke-virtual {p0, v0}, Ltx;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final flush()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lm53;->b:Ls18;

    invoke-interface {v0}, Ls18;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lm53;->d:Z

    iget-object p0, p0, Lm53;->c:Ltx;

    invoke-virtual {p0, v0}, Ltx;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final r()Lwv8;
    .locals 0

    iget-object p0, p0, Lm53;->b:Ls18;

    invoke-interface {p0}, Ls18;->r()Lwv8;

    move-result-object p0

    return-object p0
.end method
