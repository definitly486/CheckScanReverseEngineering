.class public abstract Lyads/fs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kw4;


# instance fields
.field public final a:Lyads/jx5;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/jx5;

    invoke-direct {v0}, Lyads/jx5;-><init>()V

    iput-object v0, p0, Lyads/fs;->a:Lyads/jx5;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    check-cast p0, Lyads/eq2;

    invoke-virtual {p0}, Lyads/eq2;->q()V

    iget-object v0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget v0, v0, Lyads/bw4;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lyads/eq2;->q()V

    iget-object v0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-boolean v0, v0, Lyads/bw4;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyads/eq2;->q()V

    iget-object p0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget p0, p0, Lyads/bw4;->m:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
