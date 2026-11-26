.class public final Lyads/hs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/w80;


# instance fields
.field public final synthetic a:Lc31;


# direct methods
.method public constructor <init>(Lc31;)V
    .locals 0

    iput-object p1, p0, Lyads/hs;->a:Lc31;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/ja5;)V
    .locals 1

    iget-object v0, p0, Lyads/hs;->a:Lc31;

    invoke-virtual {v0}, Lc31;->t()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lno5;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/hs;->a:Lc31;

    new-instance v0, Lyads/k70;

    invoke-direct {v0, p1}, Lyads/k70;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onAdFailedToLoad(Lyads/m4;)V
    .locals 1

    iget-object v0, p0, Lyads/hs;->a:Lc31;

    invoke-virtual {v0}, Lc31;->t()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lno5;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/hs;->a:Lc31;

    new-instance v0, Lyads/j70;

    invoke-direct {v0, p1}, Lyads/j70;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
