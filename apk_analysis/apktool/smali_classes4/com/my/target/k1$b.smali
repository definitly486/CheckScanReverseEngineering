.class public final Lcom/my/target/k1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/zf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Lcom/my/target/k0;

.field public final c:Lcom/my/target/dg;

.field public final d:Lcom/my/target/s1;


# direct methods
.method public constructor <init>(Lcom/my/target/dg;Lcom/my/target/k0;Lcom/my/target/s1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/k1$b;->c:Lcom/my/target/dg;

    iput-object p2, p0, Lcom/my/target/k1$b;->b:Lcom/my/target/k0;

    iput-object p3, p0, Lcom/my/target/k1$b;->d:Lcom/my/target/s1;

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/my/target/k1$b;->b:Lcom/my/target/k0;

    invoke-virtual {p0, p1}, Lcom/my/target/k0;->d(Z)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/my/target/k1$b;->b:Lcom/my/target/k0;

    invoke-virtual {p0}, Lcom/my/target/k0;->j()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/my/target/k1$b;->b:Lcom/my/target/k0;

    invoke-virtual {v0}, Lcom/my/target/k0;->g()V

    iget-object p0, p0, Lcom/my/target/k1$b;->d:Lcom/my/target/s1;

    check-cast p0, Lcom/my/target/u0;

    iget-object p0, p0, Lcom/my/target/r;->b:Lcom/my/target/b3$a;

    if-eqz p0, :cond_0

    check-cast p0, Lz94$b;

    invoke-virtual {p0}, Lz94$b;->b()V

    :cond_0
    return-void
.end method

.method public final d(FF)V
    .locals 1

    iget-object v0, p0, Lcom/my/target/k1$b;->c:Lcom/my/target/dg;

    invoke-virtual {v0, p1}, Lcom/my/target/dg;->setTimeChanged(F)V

    iget-object p0, p0, Lcom/my/target/k1$b;->b:Lcom/my/target/k0;

    invoke-virtual {p0, p1, p2}, Lcom/my/target/k0;->c(FF)V

    return-void
.end method

.method public final f()V
    .locals 0

    iget-object p0, p0, Lcom/my/target/k1$b;->b:Lcom/my/target/k0;

    invoke-virtual {p0}, Lcom/my/target/k0;->i()V

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 0

    iget-object p0, p0, Lcom/my/target/k1$b;->b:Lcom/my/target/k0;

    invoke-virtual {p0}, Lcom/my/target/k0;->l()V

    return-void
.end method

.method public final j()V
    .locals 0

    iget-object p0, p0, Lcom/my/target/k1$b;->b:Lcom/my/target/k0;

    invoke-virtual {p0}, Lcom/my/target/k0;->k()V

    return-void
.end method

.method public final k()V
    .locals 0

    return-void
.end method

.method public final l()V
    .locals 0

    return-void
.end method

.method public final m()V
    .locals 0

    return-void
.end method

.method public final n()V
    .locals 0

    return-void
.end method

.method public final o()V
    .locals 3

    iget-object p0, p0, Lcom/my/target/k1$b;->b:Lcom/my/target/k0;

    invoke-virtual {p0}, Lcom/my/target/k0;->e()V

    invoke-virtual {p0}, Lcom/my/target/k0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/my/target/k0;->l:Lcom/my/target/e0;

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iget-object p0, p0, Lcom/my/target/e0;->b:Ln4a;

    const-string v1, "playbackStopped"

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lcom/my/target/m1;->e(Ln4a;Ljava/lang/String;Ljava/util/Map;I)V

    return-void
.end method

.method public final onAudioFocusChange(I)V
    .locals 0

    return-void
.end method

.method public final q()V
    .locals 0

    return-void
.end method

.method public final s()V
    .locals 0

    return-void
.end method
