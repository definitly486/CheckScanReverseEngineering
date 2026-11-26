.class public abstract Lyads/es;
.super Lyads/r75;
.source "SourceFile"


# static fields
.field public static final v:I


# instance fields
.field public final s:Landroid/content/Context;

.field public final t:Lyads/ds;

.field public final u:Lyads/w75;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2710

    sput v0, Lyads/es;->v:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lyads/ds;Lyads/w75;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lyads/r75;-><init>(ILjava/lang/String;Lyads/x85;)V

    iput-object p1, p0, Lyads/es;->s:Landroid/content/Context;

    iput-object p4, p0, Lyads/es;->t:Lyads/ds;

    iput-object p5, p0, Lyads/es;->u:Lyads/w75;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lyads/r75;->j:Z

    new-instance p2, Lyads/am0;

    sget p3, Lyads/es;->v:I

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p2, p3, p4, p1}, Lyads/am0;-><init>(IFI)V

    iput-object p2, p0, Lyads/r75;->o:Lyads/am0;

    return-void
.end method


# virtual methods
.method public a(Lyads/hi6;)Lyads/hi6;
    .locals 0

    .line 53
    return-object p1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 52
    iget-object p0, p0, Lyads/es;->t:Lyads/ds;

    invoke-interface {p0, p1}, Lyads/y85;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 3

    sget-object v0, Lyads/oa3;->R:Lyads/oa3;

    invoke-static {p1, v0}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lyads/es;->s:Landroid/content/Context;

    sget-object v0, Lyads/wi5;->b:Lyads/xi5;

    if-nez v0, :cond_1

    sget-object v0, Lyads/wi5;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/wi5;->b:Lyads/xi5;

    if-nez v1, :cond_0

    new-instance v1, Lyads/xi5;

    const-string v2, "YadPreferenceFile"

    invoke-static {p0, v2}, Lyads/bv3;->a(Landroid/content/Context;Ljava/lang/String;)Lyads/zu3;

    move-result-object p0

    invoke-direct {v1, p0}, Lyads/xi5;-><init>(Lyads/zu3;)V

    sput-object v1, Lyads/wi5;->b:Lyads/xi5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    iget-object p0, v0, Lyads/xi5;->a:Lyads/zu3;

    check-cast p0, Lyads/av3;

    const-string v0, "ServerSideClientIP"

    invoke-virtual {p0, v0, p1}, Lyads/av3;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
