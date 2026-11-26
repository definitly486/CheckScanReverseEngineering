.class public final Lyads/fq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/x11;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lyads/as2;

.field public final c:Lyads/as2;

.field public final d:Ljava/util/List;

.field public final e:Lyads/as2;

.field public final f:Ljava/lang/String;

.field public final g:Lyads/as2;

.field public final h:Lyads/x91;

.field public final i:Lyads/as2;

.field public final j:Lyads/as2;

.field public final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lyads/m11;->e:Lyads/m11;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    sget-object v0, Lyads/o11;->e:Lyads/o11;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lyads/as2;Lyads/as2;Ljava/util/List;Lyads/as2;Ljava/lang/String;Lyads/as2;Lyads/x91;Lyads/as2;Lyads/as2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/fq1;->a:Ljava/util/List;

    iput-object p2, p0, Lyads/fq1;->b:Lyads/as2;

    iput-object p3, p0, Lyads/fq1;->c:Lyads/as2;

    iput-object p4, p0, Lyads/fq1;->d:Ljava/util/List;

    iput-object p5, p0, Lyads/fq1;->e:Lyads/as2;

    iput-object p6, p0, Lyads/fq1;->f:Ljava/lang/String;

    iput-object p7, p0, Lyads/fq1;->g:Lyads/as2;

    iput-object p8, p0, Lyads/fq1;->h:Lyads/x91;

    iput-object p9, p0, Lyads/fq1;->i:Lyads/as2;

    iput-object p10, p0, Lyads/fq1;->j:Lyads/as2;

    iput-object p11, p0, Lyads/fq1;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/fq1;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Lyads/as2;
    .locals 0

    iget-object p0, p0, Lyads/fq1;->g:Lyads/as2;

    return-object p0
.end method

.method public final c()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyads/fq1;->d:Ljava/util/List;

    return-object p0
.end method

.method public final d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyads/fq1;->a:Ljava/util/List;

    return-object p0
.end method

.method public final e()Lyads/as2;
    .locals 0

    iget-object p0, p0, Lyads/fq1;->i:Lyads/as2;

    return-object p0
.end method

.method public final f()Lyads/x91;
    .locals 0

    iget-object p0, p0, Lyads/fq1;->h:Lyads/x91;

    return-object p0
.end method

.method public final g()Lyads/as2;
    .locals 0

    iget-object p0, p0, Lyads/fq1;->b:Lyads/as2;

    return-object p0
.end method

.method public final getDuration()Lyads/as2;
    .locals 0

    iget-object p0, p0, Lyads/fq1;->c:Lyads/as2;

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/fq1;->k:Ljava/lang/String;

    return-object p0
.end method
