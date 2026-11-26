.class public Lio/appmetrica/analytics/internal/js/AppMetricaInitializerJsInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lio/appmetrica/analytics/impl/x1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/x1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/internal/js/AppMetricaInitializerJsInterface;->a:Lio/appmetrica/analytics/impl/x1;

    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/internal/js/AppMetricaInitializerJsInterface;->a:Lio/appmetrica/analytics/impl/x1;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/x1;->c(Ljava/lang/String;)V

    return-void
.end method
