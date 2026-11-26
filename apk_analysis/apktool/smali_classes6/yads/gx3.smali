.class public final Lyads/gx3;
.super Lyads/kx5;
.source "SourceFile"


# instance fields
.field public final c:Lyads/p04;


# direct methods
.method public constructor <init>(Lyads/p04;)V
    .locals 0

    invoke-direct {p0}, Lyads/kx5;-><init>()V

    iput-object p1, p0, Lyads/gx3;->c:Lyads/p04;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 47
    const/4 p0, 0x1

    return p0
.end method

.method public final a(Ljava/lang/Object;)I
    .locals 0

    .line 51
    sget-object p0, Lyads/fx3;->f:Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 0

    .line 52
    sget-object p0, Lyads/fx3;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public final a(ILyads/hx5;Z)Lyads/hx5;
    .locals 10

    const/4 p0, 0x0

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v1, p1

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    if-eqz p3, :cond_1

    .line 49
    sget-object p0, Lyads/fx3;->f:Ljava/lang/Object;

    :cond_1
    move-object v2, p0

    sget-object v8, Lyads/a6;->g:Lyads/a6;

    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p2

    .line 50
    invoke-virtual/range {v0 .. v9}, Lyads/hx5;->a(Ljava/lang/Object;Ljava/lang/Object;IJJLyads/a6;Z)Lyads/hx5;

    return-object v0
.end method

.method public final a(ILyads/jx5;J)Lyads/jx5;
    .locals 21

    sget-object v1, Lyads/jx5;->s:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lyads/gx3;->c:Lyads/p04;

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    move-object/from16 v0, p2

    invoke-virtual/range {v0 .. v20}, Lyads/jx5;->a(Ljava/lang/Object;Lyads/p04;Ljava/lang/Object;JJJZZLyads/j04;JJIIJ)Lyads/jx5;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lyads/jx5;->m:Z

    return-object v0
.end method

.method public final b()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
