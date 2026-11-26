.class public final Lyads/wb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ws2;


# instance fields
.field public final a:Lyads/xb;

.field public final b:Lyads/os4;

.field public final c:Lyads/os4;

.field public final d:Lyads/ns4;

.field public e:Lyads/zs2;

.field public f:J

.field public g:J

.field public h:Z

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/xb;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lyads/xb;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lyads/wb;->a:Lyads/xb;

    new-instance v0, Lyads/os4;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Lyads/os4;-><init>(I)V

    iput-object v0, p0, Lyads/wb;->b:Lyads/os4;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lyads/wb;->g:J

    new-instance v0, Lyads/os4;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lyads/os4;-><init>(I)V

    iput-object v0, p0, Lyads/wb;->c:Lyads/os4;

    new-instance v1, Lyads/ns4;

    iget-object v0, v0, Lyads/os4;->a:[B

    invoke-direct {v1, v0}, Lyads/ns4;-><init>([B)V

    iput-object v1, p0, Lyads/wb;->d:Lyads/ns4;

    return-void
.end method

.method public static a()[Lyads/ws2;
    .locals 3

    .line 164
    new-instance v0, Lyads/wb;

    .line 165
    invoke-direct {v0}, Lyads/wb;-><init>()V

    const/4 v1, 0x1

    .line 166
    new-array v1, v1, [Lyads/ws2;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method


# virtual methods
.method public final a(Lyads/xs2;Lyads/qx4;)I
    .locals 9

    .line 175
    iget-object p2, p0, Lyads/wb;->e:Lyads/zs2;

    if-eqz p2, :cond_4

    .line 176
    check-cast p1, Lyads/wk0;

    .line 177
    iget-wide v0, p1, Lyads/wk0;->c:J

    .line 178
    iget-object p2, p0, Lyads/wb;->b:Lyads/os4;

    .line 179
    iget-object p2, p2, Lyads/os4;->a:[B

    const/16 v0, 0x800

    const/4 v1, 0x0

    .line 180
    invoke-virtual {p1, p2, v1, v0}, Lyads/wk0;->c([BII)I

    move-result p1

    const/4 p2, -0x1

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 181
    :goto_0
    iget-boolean v3, p0, Lyads/wb;->i:Z

    if-eqz v3, :cond_1

    goto :goto_1

    .line 182
    :cond_1
    iget-object v3, p0, Lyads/wb;->e:Lyads/zs2;

    new-instance v4, Lyads/rh5;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v7, 0x0

    .line 183
    invoke-direct {v4, v5, v6, v7, v8}, Lyads/rh5;-><init>(JJ)V

    .line 184
    invoke-interface {v3, v4}, Lyads/zs2;->a(Lyads/sh5;)V

    .line 185
    iput-boolean v0, p0, Lyads/wb;->i:Z

    :goto_1
    if-eqz v2, :cond_2

    return p2

    .line 186
    :cond_2
    iget-object p2, p0, Lyads/wb;->b:Lyads/os4;

    invoke-virtual {p2, v1}, Lyads/os4;->e(I)V

    .line 187
    iget-object p2, p0, Lyads/wb;->b:Lyads/os4;

    invoke-virtual {p2, p1}, Lyads/os4;->d(I)V

    .line 188
    iget-boolean p1, p0, Lyads/wb;->h:Z

    if-nez p1, :cond_3

    .line 189
    iget-object p1, p0, Lyads/wb;->a:Lyads/xb;

    iget-wide v2, p0, Lyads/wb;->f:J

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v2, v3}, Lyads/xb;->a(IJ)V

    .line 190
    iput-boolean v0, p0, Lyads/wb;->h:Z

    .line 191
    :cond_3
    iget-object p1, p0, Lyads/wb;->a:Lyads/xb;

    iget-object p0, p0, Lyads/wb;->b:Lyads/os4;

    invoke-virtual {p1, p0}, Lyads/xb;->a(Lyads/os4;)V

    return v1

    .line 192
    :cond_4
    invoke-static {}, Lud;->g()V

    const/4 p0, 0x0

    return p0
.end method

.method public final a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 172
    iput-boolean p1, p0, Lyads/wb;->h:Z

    .line 173
    iget-object p1, p0, Lyads/wb;->a:Lyads/xb;

    invoke-virtual {p1}, Lyads/xb;->a()V

    .line 174
    iput-wide p3, p0, Lyads/wb;->f:J

    return-void
.end method

.method public final a(Lyads/zs2;)V
    .locals 4

    .line 167
    iput-object p1, p0, Lyads/wb;->e:Lyads/zs2;

    .line 168
    iget-object p0, p0, Lyads/wb;->a:Lyads/xb;

    new-instance v0, Lyads/t26;

    const/4 v1, 0x1

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    .line 169
    invoke-direct {v0, v2, v3, v1}, Lyads/t26;-><init>(III)V

    .line 170
    invoke-virtual {p0, p1, v0}, Lyads/xb;->a(Lyads/zs2;Lyads/t26;)V

    .line 171
    invoke-interface {p1}, Lyads/zs2;->a()V

    return-void
.end method

.method public final a(Lyads/xs2;)Z
    .locals 8

    check-cast p1, Lyads/wk0;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lyads/wb;->c:Lyads/os4;

    iget-object v2, v2, Lyads/os4;->a:[B

    const/16 v3, 0xa

    invoke-virtual {p1, v2, v0, v3, v0}, Lyads/wk0;->b([BIIZ)Z

    iget-object v2, p0, Lyads/wb;->c:Lyads/os4;

    invoke-virtual {v2, v0}, Lyads/os4;->e(I)V

    iget-object v2, p0, Lyads/wb;->c:Lyads/os4;

    invoke-virtual {v2}, Lyads/os4;->m()I

    move-result v2

    const v3, 0x494433

    if-eq v2, v3, :cond_5

    iput v0, p1, Lyads/wk0;->f:I

    invoke-virtual {p1, v1, v0}, Lyads/wk0;->a(IZ)Z

    iget-wide v2, p0, Lyads/wb;->g:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    int-to-long v2, v1

    iput-wide v2, p0, Lyads/wb;->g:J

    :cond_0
    move v3, v0

    move v4, v3

    move v2, v1

    :cond_1
    iget-object v5, p0, Lyads/wb;->c:Lyads/os4;

    iget-object v5, v5, Lyads/os4;->a:[B

    const/4 v6, 0x2

    invoke-virtual {p1, v5, v0, v6, v0}, Lyads/wk0;->b([BIIZ)Z

    iget-object v5, p0, Lyads/wb;->c:Lyads/os4;

    invoke-virtual {v5, v0}, Lyads/os4;->e(I)V

    iget-object v5, p0, Lyads/wb;->c:Lyads/os4;

    invoke-virtual {v5}, Lyads/os4;->p()I

    move-result v5

    const v6, 0xfff6

    and-int/2addr v5, v6

    const v6, 0xfff0

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    add-int/2addr v3, v5

    const/4 v6, 0x4

    if-lt v3, v6, :cond_2

    const/16 v7, 0xbc

    if-le v4, v7, :cond_2

    return v5

    :cond_2
    iget-object v5, p0, Lyads/wb;->c:Lyads/os4;

    iget-object v5, v5, Lyads/os4;->a:[B

    invoke-virtual {p1, v5, v0, v6, v0}, Lyads/wk0;->b([BIIZ)Z

    iget-object v5, p0, Lyads/wb;->d:Lyads/ns4;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lyads/ns4;->b(I)V

    iget-object v5, p0, Lyads/wb;->d:Lyads/ns4;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Lyads/ns4;->a(I)I

    move-result v5

    const/4 v6, 0x6

    if-gt v5, v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    iput v0, p1, Lyads/wk0;->f:I

    invoke-virtual {p1, v2, v0}, Lyads/wk0;->a(IZ)Z

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v5, -0x6

    invoke-virtual {p1, v6, v0}, Lyads/wk0;->a(IZ)Z

    add-int/2addr v4, v5

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    iput v0, p1, Lyads/wk0;->f:I

    invoke-virtual {p1, v2, v0}, Lyads/wk0;->a(IZ)Z

    :goto_1
    move v3, v0

    move v4, v3

    :goto_2
    sub-int v5, v2, v1

    const/16 v6, 0x2000

    if-lt v5, v6, :cond_1

    return v0

    :cond_5
    iget-object v2, p0, Lyads/wb;->c:Lyads/os4;

    iget v3, v2, Lyads/os4;->b:I

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Lyads/os4;->e(I)V

    iget-object v2, p0, Lyads/wb;->c:Lyads/os4;

    invoke-virtual {v2}, Lyads/os4;->j()I

    move-result v2

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v1, v3

    invoke-virtual {p1, v2, v0}, Lyads/wk0;->a(IZ)Z

    goto/16 :goto_0
.end method

.method public final release()V
    .locals 0

    return-void
.end method
