.class public final Lio/appmetrica/analytics/impl/Ud;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnl3;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Zd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ud;->a:Lnl3;

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/J0;)Lio/appmetrica/analytics/impl/tl;
    .locals 1

    .line 25
    new-instance v0, Lio/appmetrica/analytics/impl/Sd;

    .line 26
    iget-object p0, p0, Lio/appmetrica/analytics/impl/J0;->f:Lio/appmetrica/analytics/impl/K0;

    .line 27
    iget p0, p0, Lio/appmetrica/analytics/impl/K0;->d:I

    .line 28
    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/Sd;-><init>(I)V

    return-object v0
.end method

.method public static final b(Lio/appmetrica/analytics/impl/J0;)Lio/appmetrica/analytics/impl/tl;
    .locals 0

    .line 25
    new-instance p0, Lio/appmetrica/analytics/impl/a0;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/a0;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lio/appmetrica/analytics/impl/Vg;)Lio/appmetrica/analytics/impl/Vd;
    .locals 8

    new-instance v0, Lio/appmetrica/analytics/impl/Vd;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/Ud;->a:Lnl3;

    new-instance v4, Li2;

    const/4 p0, 0x4

    invoke-direct {v4, p0}, Li2;-><init>(I)V

    sget-object v5, Lio/appmetrica/analytics/impl/pb;->w:Lio/appmetrica/analytics/impl/pb;

    new-instance v7, Lio/appmetrica/analytics/impl/B6;

    invoke-direct {v7}, Lio/appmetrica/analytics/impl/B6;-><init>()V

    const-string v6, "actual"

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lio/appmetrica/analytics/impl/Vd;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Vg;Lnl3;Lio/appmetrica/analytics/impl/ee;Lio/appmetrica/analytics/impl/pb;Ljava/lang/String;Lio/appmetrica/analytics/impl/be;)V

    return-object v0
.end method

.method public final b(Landroid/content/Context;Lio/appmetrica/analytics/impl/Vg;)Lio/appmetrica/analytics/impl/Vd;
    .locals 8

    new-instance v0, Lio/appmetrica/analytics/impl/Vd;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/Ud;->a:Lnl3;

    new-instance v4, Lj2;

    const/4 p0, 0x4

    invoke-direct {v4, p0}, Lj2;-><init>(I)V

    sget-object v5, Lio/appmetrica/analytics/impl/pb;->x:Lio/appmetrica/analytics/impl/pb;

    new-instance v7, Lio/appmetrica/analytics/impl/B6;

    invoke-direct {v7}, Lio/appmetrica/analytics/impl/B6;-><init>()V

    const-string v6, "prev session"

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lio/appmetrica/analytics/impl/Vd;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Vg;Lnl3;Lio/appmetrica/analytics/impl/ee;Lio/appmetrica/analytics/impl/pb;Ljava/lang/String;Lio/appmetrica/analytics/impl/be;)V

    return-object v0
.end method
