.class public final Lyads/zl4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/x14;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lyads/x14;

    invoke-direct {v0}, Lyads/x14;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/zl4;->a:Lyads/x14;

    return-void
.end method

.method public static final a(Lyads/ja6;)Lb36;
    .locals 2

    .line 30
    iget-object v0, p0, Lyads/ja6;->d:Lyads/aw4;

    .line 31
    check-cast v0, Lyads/ol4;

    .line 32
    iget-object v0, v0, Lyads/ol4;->a:Ljava/lang/String;

    .line 33
    iget-object p0, p0, Lyads/ja6;->f:Ljava/lang/String;

    .line 34
    new-instance v1, Lb36;

    invoke-direct {v1, v0, p0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static final a(Lyads/zl4;Lyads/sd4;)Ljava/util/Set;
    .locals 0

    .line 38
    iget-object p0, p0, Lyads/zl4;->a:Lyads/x14;

    invoke-static {p1}, Lyads/x14;->a(Lyads/sd4;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lyads/r96;)Lyads/ja6;
    .locals 0

    .line 35
    iget-object p0, p0, Lyads/r96;->a:Ljava/util/List;

    .line 36
    invoke-static {p0}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ja6;

    return-object p0
.end method

.method public static final a(Lyads/v14;)Lyads/r96;
    .locals 0

    .line 37
    iget-object p0, p0, Lyads/v14;->b:Lyads/r96;

    return-object p0
.end method

.method public static final b(Lyads/r96;)Lyads/rd3;
    .locals 0

    .line 30
    iget-object p0, p0, Lyads/r96;->c:Lyads/rd3;

    return-object p0
.end method


# virtual methods
.method public final a(Lyads/vg4;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0, p1}, Lyads/zl4;->b(Lyads/vg4;)Lzo7;

    move-result-object p0

    new-instance p1, Lbf;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Lbf;-><init>(I)V

    invoke-static {p0, p1}, Ljp7;->n(Lzo7;Lnl3;)Lf29;

    move-result-object p0

    new-instance p1, Lcf;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Lcf;-><init>(I)V

    new-instance v0, Lf29;

    invoke-direct {v0, p0, p1}, Lf29;-><init>(Lzo7;Lnl3;)V

    invoke-static {v0}, Ljp7;->q(Lzo7;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lyads/vg4;)Lzo7;
    .locals 2

    iget-object p1, p1, Lyads/vg4;->a:Ljava/util/List;

    invoke-static {p1}, Lqn1;->K(Ljava/lang/Iterable;)Lpn1;

    move-result-object p1

    new-instance v0, Lcl5;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcl5;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lnc3;

    sget-object v1, Lhp7;->c:Lhp7;

    invoke-direct {p0, p1, v0, v1}, Lnc3;-><init>(Lzo7;Lnl3;Lnl3;)V

    new-instance p1, Lbt3;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lbt3;-><init>(I)V

    invoke-static {p0, p1}, Ljp7;->o(Lzo7;Lnl3;)Lpa3;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lyads/vg4;)Ljava/util/Set;
    .locals 1

    invoke-virtual {p0, p1}, Lyads/zl4;->b(Lyads/vg4;)Lzo7;

    move-result-object p0

    new-instance p1, Laf;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Laf;-><init>(I)V

    invoke-static {p0, p1}, Ljp7;->o(Lzo7;Lnl3;)Lpa3;

    move-result-object p0

    invoke-static {p0}, Ljp7;->r(Lzo7;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
