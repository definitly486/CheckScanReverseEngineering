.class public final Lyads/e14;
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

    iput-object v0, p0, Lyads/e14;->a:Lyads/x14;

    return-void
.end method

.method public static final a(Lyads/e14;Lyads/sd4;)Ljava/util/Set;
    .locals 0

    .line 50
    iget-object p0, p0, Lyads/e14;->a:Lyads/x14;

    invoke-static {p1}, Lyads/x14;->a(Lyads/sd4;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lyads/v14;)Lyads/by3;
    .locals 0

    .line 49
    iget-object p0, p0, Lyads/v14;->a:Lyads/by3;

    return-object p0
.end method


# virtual methods
.method public final a(Lyads/ee4;)Ljava/util/Set;
    .locals 2

    iget-object p1, p1, Lyads/ee4;->a:Lyads/vg4;

    iget-object p1, p1, Lyads/vg4;->a:Ljava/util/List;

    invoke-static {p1}, Lqn1;->K(Ljava/lang/Iterable;)Lpn1;

    move-result-object p1

    new-instance v0, Lqn3;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lqn3;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lnc3;

    sget-object v1, Lhp7;->c:Lhp7;

    invoke-direct {p0, p1, v0, v1}, Lnc3;-><init>(Lzo7;Lnl3;Lnl3;)V

    new-instance p1, Lgn6;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Lgn6;-><init>(I)V

    new-instance v0, Lf29;

    invoke-direct {v0, p0, p1}, Lf29;-><init>(Lzo7;Lnl3;)V

    new-instance p0, Lxi1;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lxi1;-><init>(I)V

    new-instance p1, Lpa3;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lpa3;-><init>(Lzo7;ZLnl3;)V

    invoke-static {p1}, Ljp7;->r(Lzo7;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
