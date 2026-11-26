.class public final Lyads/h14;
.super Lyads/b14;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const/4 v3, -0x1

    const/4 v6, -0x1

    const/4 v2, -0x1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lyads/b14;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIJ)V
    .locals 7

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 13
    invoke-direct/range {v0 .. v6}, Lyads/b14;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 7

    const/4 v3, -0x1

    const/4 v6, -0x1

    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    .line 11
    invoke-direct/range {v0 .. v6}, Lyads/b14;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JI)V
    .locals 7

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    .line 12
    invoke-direct/range {v0 .. v6}, Lyads/b14;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method

.method public constructor <init>(Lyads/b14;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lyads/b14;-><init>(Lyads/b14;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lyads/h14;
    .locals 9

    new-instance v0, Lyads/h14;

    iget-object v1, p0, Lyads/b14;->a:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lyads/b14;

    iget v4, p0, Lyads/b14;->b:I

    iget v5, p0, Lyads/b14;->c:I

    iget-wide v6, p0, Lyads/b14;->d:J

    iget v8, p0, Lyads/b14;->e:I

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lyads/b14;-><init>(Ljava/lang/Object;IIJI)V

    move-object p0, v2

    :goto_0
    invoke-direct {v0, p0}, Lyads/h14;-><init>(Lyads/b14;)V

    return-object v0
.end method
