.class public final Lyads/jl5;
.super Lyads/kx5;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/Object;


# instance fields
.field public final c:J

.field public final d:J

.field public final e:Z

.field public final f:Lyads/p04;

.field public final g:Lyads/j04;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/jl5;->h:Ljava/lang/Object;

    sget-object v0, Lyads/oe3;->c:Lyads/le3;

    sget-object v0, Lyads/k55;->f:Lyads/k55;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v6, Lyads/k55;->f:Lyads/k55;

    sget-object v0, Lyads/m04;->d:Lyads/m04;

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eqz v2, :cond_0

    new-instance v1, Lyads/k04;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lyads/k04;-><init>(Landroid/net/Uri;Lyads/i04;Ljava/util/List;Ljava/lang/String;Lyads/oe3;)V

    :cond_0
    new-instance v0, Lyads/p04;

    new-instance v0, Lyads/g04;

    new-instance v0, Lyads/j04;

    sget-object v0, Lyads/t04;->H:Lyads/t04;

    return-void
.end method

.method public constructor <init>(JZZLyads/p04;)V
    .locals 0

    if-eqz p4, :cond_0

    iget-object p4, p5, Lyads/p04;->d:Lyads/j04;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-direct {p0}, Lyads/kx5;-><init>()V

    iput-wide p1, p0, Lyads/jl5;->c:J

    iput-wide p1, p0, Lyads/jl5;->d:J

    iput-boolean p3, p0, Lyads/jl5;->e:Z

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Lyads/jl5;->f:Lyads/p04;

    iput-object p4, p0, Lyads/jl5;->g:Lyads/j04;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 52
    const/4 p0, 0x1

    return p0
.end method

.method public final a(Ljava/lang/Object;)I
    .locals 0

    .line 57
    sget-object p0, Lyads/jl5;->h:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x1

    .line 58
    invoke-static {p1, p0}, Lyads/zj;->a(II)V

    .line 59
    sget-object p0, Lyads/jl5;->h:Ljava/lang/Object;

    return-object p0
.end method

.method public final a(ILyads/hx5;Z)Lyads/hx5;
    .locals 10

    const/4 v0, 0x1

    .line 53
    invoke-static {p1, v0}, Lyads/zj;->a(II)V

    if-eqz p3, :cond_0

    .line 54
    sget-object p1, Lyads/jl5;->h:Ljava/lang/Object;

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 55
    :goto_1
    iget-wide v4, p0, Lyads/jl5;->c:J

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    sget-object v8, Lyads/a6;->g:Lyads/a6;

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v9}, Lyads/hx5;->a(Ljava/lang/Object;Ljava/lang/Object;IJJLyads/a6;Z)Lyads/hx5;

    move-result-object p0

    return-object p0
.end method

.method public final a(ILyads/jx5;J)Lyads/jx5;
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x1

    move/from16 v2, p1

    invoke-static {v2, v1}, Lyads/zj;->a(II)V

    sget-object v3, Lyads/jx5;->s:Ljava/lang/Object;

    iget-object v4, v0, Lyads/jl5;->f:Lyads/p04;

    iget-boolean v12, v0, Lyads/jl5;->e:Z

    iget-object v14, v0, Lyads/jl5;->g:Lyads/j04;

    iget-wide v0, v0, Lyads/jl5;->d:J

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/4 v5, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v19, 0x0

    move-object/from16 v2, p2

    move-wide/from16 v17, v0

    invoke-virtual/range {v2 .. v22}, Lyads/jx5;->a(Ljava/lang/Object;Lyads/p04;Ljava/lang/Object;JJJZZLyads/j04;JJIIJ)Lyads/jx5;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
