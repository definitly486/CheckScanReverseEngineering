.class public abstract Lyads/gs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tw4;


# instance fields
.field public final b:I

.field public final c:Lyads/a03;

.field public d:Lyads/n65;

.field public e:I

.field public f:Lyads/rw4;

.field public g:I

.field public h:Lyads/mc5;

.field public i:[Lyads/vz2;

.field public j:J

.field public k:J

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyads/gs;->b:I

    new-instance p1, Lyads/a03;

    invoke-direct {p1}, Lyads/a03;-><init>()V

    iput-object p1, p0, Lyads/gs;->c:Lyads/a03;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lyads/gs;->k:J

    return-void
.end method

.method public static a(I)I
    .locals 0

    .line 99
    and-int/lit16 p0, p0, 0x80

    return p0
.end method

.method public static a(III)I
    .locals 0

    .line 85
    or-int/2addr p0, p1

    or-int/2addr p0, p2

    or-int/lit16 p0, p0, 0x80

    return p0
.end method

.method public static b(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x40

    return p0
.end method


# virtual methods
.method public final a(Lyads/a03;Lyads/mi0;I)I
    .locals 5

    iget-object v0, p0, Lyads/gs;->h:Lyads/mc5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1, p2, p3}, Lyads/mc5;->a(Lyads/a03;Lyads/mi0;I)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Lyads/ev;->b(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lyads/gs;->k:J

    iget-boolean p0, p0, Lyads/gs;->l:Z

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, -0x3

    return p0

    :cond_1
    iget-wide v0, p2, Lyads/mi0;->f:J

    iget-wide v2, p0, Lyads/gs;->j:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lyads/mi0;->f:J

    iget-wide p1, p0, Lyads/gs;->k:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lyads/gs;->k:J

    return p3

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    iget-object p2, p1, Lyads/a03;->b:Lyads/vz2;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p2, Lyads/vz2;->q:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    new-instance v0, Lyads/uz2;

    invoke-direct {v0, p2}, Lyads/uz2;-><init>(Lyads/vz2;)V

    iget-wide v1, p2, Lyads/vz2;->q:J

    iget-wide v3, p0, Lyads/gs;->j:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lyads/uz2;->o:J

    new-instance p0, Lyads/vz2;

    invoke-direct {p0, v0}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iput-object p0, p1, Lyads/a03;->b:Lyads/vz2;

    :cond_3
    return p3
.end method

.method public abstract a(Lyads/vz2;)I
.end method

.method public final a(Ljava/lang/Exception;Lyads/vz2;ZI)Lyads/up2;
    .locals 10

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    .line 89
    iget-boolean v2, p0, Lyads/gs;->m:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 90
    iput-boolean v2, p0, Lyads/gs;->m:Z

    const/4 v2, 0x0

    .line 91
    :try_start_0
    invoke-virtual {p0, p2}, Lyads/gs;->a(Lyads/vz2;)I

    move-result v3
    :try_end_0
    .catch Lyads/up2; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x7

    .line 92
    iput-boolean v2, p0, Lyads/gs;->m:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lyads/gs;->m:Z

    .line 93
    throw v0

    .line 94
    :catch_0
    iput-boolean v2, p0, Lyads/gs;->m:Z

    :cond_0
    move v3, v0

    .line 95
    :goto_0
    invoke-virtual {p0}, Lyads/gs;->c()Ljava/lang/String;

    move-result-object v5

    .line 96
    iget v6, p0, Lyads/gs;->e:I

    move v1, v0

    .line 97
    new-instance v0, Lyads/up2;

    if-nez p2, :cond_1

    move v8, v1

    goto :goto_1

    :cond_1
    move v8, v3

    :goto_1
    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v2, p1

    move-object v7, p2

    move v9, p3

    move v4, p4

    .line 98
    invoke-direct/range {v0 .. v9}, Lyads/up2;-><init>(ILjava/lang/Exception;Ljava/lang/String;ILjava/lang/String;ILyads/vz2;IZ)V

    return-object v0
.end method

.method public a(FF)V
    .locals 0

    .line 86
    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0

    .line 87
    return-void
.end method

.method public abstract a(JJ)V
.end method

.method public abstract a(JZ)V
.end method

.method public a(Z)V
    .locals 0

    .line 88
    return-void
.end method

.method public abstract a([Lyads/vz2;JJ)V
.end method

.method public b()Lyads/my3;
    .locals 0

    .line 3
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public final d()Z
    .locals 4

    iget-wide v0, p0, Lyads/gs;->k:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract e()Z
.end method

.method public abstract f()Z
.end method

.method public abstract g()V
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
