.class public final Lio/appmetrica/analytics/impl/sn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/C0;

.field public final b:Lio/appmetrica/analytics/impl/Ro;

.field public final c:Lio/appmetrica/analytics/impl/o;

.field public final d:Lio/appmetrica/analytics/impl/pl;

.field public final e:Lio/appmetrica/analytics/impl/P5;

.field public final f:Lio/appmetrica/analytics/impl/ra;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/C0;Lio/appmetrica/analytics/impl/Ro;)V
    .locals 8

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/p4;->a()Lio/appmetrica/analytics/impl/o;

    move-result-object v4

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/p4;->o()Lio/appmetrica/analytics/impl/pl;

    move-result-object v5

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/p4;->h()Lio/appmetrica/analytics/impl/P5;

    move-result-object v6

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/p4;->k()Lio/appmetrica/analytics/impl/ra;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lio/appmetrica/analytics/impl/sn;-><init>(Lio/appmetrica/analytics/impl/C0;Lio/appmetrica/analytics/impl/Ro;Lio/appmetrica/analytics/impl/o;Lio/appmetrica/analytics/impl/pl;Lio/appmetrica/analytics/impl/P5;Lio/appmetrica/analytics/impl/ra;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/C0;Lio/appmetrica/analytics/impl/Ro;Lio/appmetrica/analytics/impl/o;Lio/appmetrica/analytics/impl/pl;Lio/appmetrica/analytics/impl/P5;Lio/appmetrica/analytics/impl/ra;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lio/appmetrica/analytics/impl/sn;->a:Lio/appmetrica/analytics/impl/C0;

    .line 41
    iput-object p2, p0, Lio/appmetrica/analytics/impl/sn;->b:Lio/appmetrica/analytics/impl/Ro;

    .line 42
    iput-object p3, p0, Lio/appmetrica/analytics/impl/sn;->c:Lio/appmetrica/analytics/impl/o;

    .line 43
    iput-object p4, p0, Lio/appmetrica/analytics/impl/sn;->d:Lio/appmetrica/analytics/impl/pl;

    .line 44
    iput-object p5, p0, Lio/appmetrica/analytics/impl/sn;->e:Lio/appmetrica/analytics/impl/P5;

    .line 45
    iput-object p6, p0, Lio/appmetrica/analytics/impl/sn;->f:Lio/appmetrica/analytics/impl/ra;

    return-void
.end method

.method public static a(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Lm2;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lm2;-><init>(I)V

    const-string v1, "getting intent"

    const-string v2, "activity"

    invoke-static {p0, v1, v2, v0}, Lio/appmetrica/analytics/coreutils/internal/system/SystemServiceUtils;->accessSystemServiceSafely(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    return-object p0
.end method

.method public static final b(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
