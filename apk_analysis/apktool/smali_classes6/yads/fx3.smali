.class public final Lyads/fx3;
.super Lyads/c03;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/Object;


# instance fields
.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/fx3;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lyads/kx5;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/c03;-><init>(Lyads/kx5;)V

    iput-object p2, p0, Lyads/fx3;->d:Ljava/lang/Object;

    iput-object p3, p0, Lyads/fx3;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2

    .line 25
    iget-object v0, p0, Lyads/c03;->c:Lyads/kx5;

    .line 26
    sget-object v1, Lyads/fx3;->f:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lyads/fx3;->e:Ljava/lang/Object;

    if-eqz p0, :cond_0

    move-object p1, p0

    .line 27
    :cond_0
    invoke-virtual {v0, p1}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 1

    .line 28
    iget-object v0, p0, Lyads/c03;->c:Lyads/kx5;

    invoke-virtual {v0, p1}, Lyads/kx5;->a(I)Ljava/lang/Object;

    move-result-object p1

    .line 29
    iget-object p0, p0, Lyads/fx3;->e:Ljava/lang/Object;

    invoke-static {p1, p0}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lyads/fx3;->f:Ljava/lang/Object;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final a(ILyads/hx5;Z)Lyads/hx5;
    .locals 1

    iget-object v0, p0, Lyads/c03;->c:Lyads/kx5;

    invoke-virtual {v0, p1, p2, p3}, Lyads/kx5;->a(ILyads/hx5;Z)Lyads/hx5;

    iget-object p1, p2, Lyads/hx5;->c:Ljava/lang/Object;

    iget-object p0, p0, Lyads/fx3;->e:Ljava/lang/Object;

    invoke-static {p1, p0}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    sget-object p0, Lyads/fx3;->f:Ljava/lang/Object;

    iput-object p0, p2, Lyads/hx5;->c:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final a(ILyads/jx5;J)Lyads/jx5;
    .locals 1

    .line 22
    iget-object v0, p0, Lyads/c03;->c:Lyads/kx5;

    invoke-virtual {v0, p1, p2, p3, p4}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    .line 23
    iget-object p1, p2, Lyads/jx5;->b:Ljava/lang/Object;

    iget-object p0, p0, Lyads/fx3;->d:Ljava/lang/Object;

    invoke-static {p1, p0}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 24
    sget-object p0, Lyads/jx5;->s:Ljava/lang/Object;

    iput-object p0, p2, Lyads/jx5;->b:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method
