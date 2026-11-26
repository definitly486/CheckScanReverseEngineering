.class public final Lio/appmetrica/analytics/impl/ca;
.super Lio/appmetrica/analytics/impl/da;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/da;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/pm/FeatureInfo;)Lio/appmetrica/analytics/impl/ea;
    .locals 2

    new-instance p0, Lio/appmetrica/analytics/impl/ea;

    iget-object v0, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/FeatureInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 p1, -0x1

    invoke-direct {p0, v0, p1, v1}, Lio/appmetrica/analytics/impl/ea;-><init>(Ljava/lang/String;IZ)V

    return-object p0
.end method
