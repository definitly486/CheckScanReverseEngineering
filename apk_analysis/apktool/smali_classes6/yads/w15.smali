.class public final Lyads/w15;
.super Lyads/c03;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lyads/jl5;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/c03;-><init>(Lyads/kx5;)V

    return-void
.end method


# virtual methods
.method public final a(ILyads/hx5;Z)Lyads/hx5;
    .locals 0

    iget-object p0, p0, Lyads/c03;->c:Lyads/kx5;

    invoke-virtual {p0, p1, p2, p3}, Lyads/kx5;->a(ILyads/hx5;Z)Lyads/hx5;

    const/4 p0, 0x1

    iput-boolean p0, p2, Lyads/hx5;->g:Z

    return-object p2
.end method

.method public final a(ILyads/jx5;J)Lyads/jx5;
    .locals 0

    .line 9
    invoke-super {p0, p1, p2, p3, p4}, Lyads/c03;->a(ILyads/jx5;J)Lyads/jx5;

    const/4 p0, 0x1

    .line 10
    iput-boolean p0, p2, Lyads/jx5;->m:Z

    return-object p2
.end method
