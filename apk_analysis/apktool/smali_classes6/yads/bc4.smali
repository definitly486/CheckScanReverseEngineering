.class public final Lyads/bc4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ub4;


# instance fields
.field public final a:Lyads/gc4;

.field public final b:Lyads/by3;

.field public final c:Lyads/cc4;


# direct methods
.method public constructor <init>(Lyads/gc4;Lyads/by3;Lyads/cc4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/bc4;->a:Lyads/gc4;

    iput-object p2, p0, Lyads/bc4;->b:Lyads/by3;

    iput-object p3, p0, Lyads/bc4;->c:Lyads/cc4;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lyads/bc4;->a:Lyads/gc4;

    iget-object v1, p0, Lyads/bc4;->b:Lyads/by3;

    iget-object v0, v0, Lyads/gc4;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/vb4;

    iget-object p0, p0, Lyads/bc4;->c:Lyads/cc4;

    iget-boolean v0, p0, Lyads/cc4;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyads/cc4;->b:Lc31;

    invoke-virtual {v0}, Lc31;->t()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lno5;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/cc4;->b:Lc31;

    sget-object v0, Lj59;->a:Lj59;

    invoke-virtual {p0, v0}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Lyads/bc4;->c:Lyads/cc4;

    iget-boolean v0, p0, Lyads/cc4;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyads/cc4;->b:Lc31;

    invoke-virtual {v0}, Lc31;->t()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lno5;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/cc4;->b:Lc31;

    sget-object v0, Lj59;->a:Lj59;

    invoke-virtual {p0, v0}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
