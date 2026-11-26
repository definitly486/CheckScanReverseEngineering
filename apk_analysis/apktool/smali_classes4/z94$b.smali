.class public final Lz94$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/b3$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz94;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:F

.field public final synthetic b:Lz94;


# direct methods
.method public constructor <init>(Lz94;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz94$b;->b:Lz94;

    const/high16 p1, -0x3ee00000    # -10.0f

    iput p1, p0, Lz94$b;->a:F

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Lz94$b;->b:Lz94;

    iget-object v0, p0, Lz94;->h:Lz94$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lz94$a;->e(Lz94;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Lz94$b;->b:Lz94;

    iget-object v0, p0, Lz94;->h:Lz94$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lz94$a;->b(Lz94;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object p0, p0, Lz94$b;->b:Lz94;

    iget-object v0, p0, Lz94;->h:Lz94$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lz94$a;->c(Lz94;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 6

    iget-object p0, p0, Lz94$b;->b:Lz94;

    iget-object v0, p0, Lkd0;->g:Lcom/my/target/t0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/my/target/t0;->d:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/my/target/t0;->c:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/my/target/t0;->a(IJ)V

    iget-object v0, p0, Lkd0;->g:Lcom/my/target/t0;

    invoke-virtual {v0}, Lcom/my/target/t0;->b()V

    :goto_0
    iget-object v0, p0, Lz94;->h:Lz94$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lz94$a;->a(Lz94;)V

    :cond_1
    return-void
.end method
