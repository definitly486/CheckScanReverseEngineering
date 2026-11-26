.class public final Lyads/n75;
.super Lyads/o75;
.source "SourceFile"


# instance fields
.field public final f:Lyads/y35;

.field public final g:Lyads/ll5;


# direct methods
.method public constructor <init>(Lyads/vz2;Lyads/oe3;Lyads/di5;Ljava/util/ArrayList;)V
    .locals 6

    invoke-direct {p0, p1, p2, p3, p4}, Lyads/o75;-><init>(Lyads/vz2;Lyads/oe3;Lyads/ei5;Ljava/util/ArrayList;)V

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/ms;

    iget-object p1, p1, Lyads/ms;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    iget-wide v4, p3, Lyads/di5;->e:J

    const-wide/16 p1, 0x0

    cmp-long p1, v4, p1

    const/4 p2, 0x0

    if-gtz p1, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/y35;

    iget-wide v2, p3, Lyads/di5;->d:J

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Lyads/y35;-><init>(Ljava/lang/String;JJ)V

    :goto_0
    iput-object v0, p0, Lyads/n75;->f:Lyads/y35;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p2, Lyads/ll5;

    new-instance v0, Lyads/y35;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Lyads/y35;-><init>(Ljava/lang/String;JJ)V

    invoke-direct {p2, v0}, Lyads/ll5;-><init>(Lyads/y35;)V

    :goto_1
    iput-object p2, p0, Lyads/n75;->g:Lyads/ll5;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()Lyads/qc0;
    .locals 0

    iget-object p0, p0, Lyads/n75;->g:Lyads/ll5;

    return-object p0
.end method

.method public final e()Lyads/y35;
    .locals 0

    iget-object p0, p0, Lyads/n75;->f:Lyads/y35;

    return-object p0
.end method
