.class public final Lyads/gn0;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lc31;


# direct methods
.method public constructor <init>(Lc31;)V
    .locals 0

    iput-object p1, p0, Lyads/gn0;->b:Lc31;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lyads/gn0;->b:Lc31;

    invoke-virtual {v0}, Lc31;->t()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lno5;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/gn0;->b:Lc31;

    sget-object v0, Lj59;->a:Lj59;

    new-instance v1, Lk57;

    invoke-direct {v1, v0}, Lk57;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
