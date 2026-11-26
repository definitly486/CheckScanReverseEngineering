.class public final Lio/appmetrica/analytics/impl/Yd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/Vg;

.field public final c:Lio/appmetrica/analytics/impl/ee;

.field public final d:Lio/appmetrica/analytics/impl/pb;

.field public final e:Lio/appmetrica/analytics/impl/be;

.field public final f:Lio/appmetrica/analytics/impl/oa;

.field public final g:Lio/appmetrica/analytics/impl/Qd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Vg;Lio/appmetrica/analytics/impl/ee;Lio/appmetrica/analytics/impl/pb;Lio/appmetrica/analytics/impl/be;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Yd;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Yd;->b:Lio/appmetrica/analytics/impl/Vg;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Yd;->c:Lio/appmetrica/analytics/impl/ee;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/Yd;->d:Lio/appmetrica/analytics/impl/pb;

    iput-object p5, p0, Lio/appmetrica/analytics/impl/Yd;->e:Lio/appmetrica/analytics/impl/be;

    new-instance p1, Lio/appmetrica/analytics/impl/oa;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/oa;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Yd;->f:Lio/appmetrica/analytics/impl/oa;

    new-instance p1, Lio/appmetrica/analytics/impl/Qd;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/Qd;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Yd;->g:Lio/appmetrica/analytics/impl/Qd;

    return-void
.end method
