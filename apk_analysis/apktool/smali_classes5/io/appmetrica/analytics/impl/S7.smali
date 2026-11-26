.class public final Lio/appmetrica/analytics/impl/S7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/appmetrica/analytics/impl/R7;

.field public static final b:Ljava/lang/String; = "appmetrica"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/R7;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/R7;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/S7;->a:Lio/appmetrica/analytics/impl/R7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/xk;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/impl/xk;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/xk;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
