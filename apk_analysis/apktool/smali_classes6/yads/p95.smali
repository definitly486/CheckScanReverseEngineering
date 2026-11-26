.class public final Lyads/p95;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/a3;


# instance fields
.field public final a:Lyads/oa5;

.field public final b:Lyads/q95;


# direct methods
.method public constructor <init>(Lyads/x2;Lyads/oa5;)V
    .locals 1

    new-instance v0, Lyads/q95;

    invoke-direct {v0, p1}, Lyads/q95;-><init>(Lyads/x2;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/p95;->a:Lyads/oa5;

    iput-object v0, p0, Lyads/p95;->b:Lyads/q95;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lyads/p95;->a:Lyads/oa5;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lyads/oa5;->d:Z

    iget-object v0, v0, Lyads/oa5;->b:Lyads/ao1;

    iget-object v0, v0, Lyads/ao1;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lyads/eo0;->a(Landroid/app/Dialog;)V

    :cond_0
    iget-object p0, p0, Lyads/p95;->b:Lyads/q95;

    iget-object p0, p0, Lyads/q95;->a:Lyads/x2;

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lyads/x2;->a(ILandroid/os/Bundle;)V

    return-void
.end method
