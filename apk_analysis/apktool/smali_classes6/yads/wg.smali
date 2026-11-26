.class public final Lyads/wg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/k75;


# instance fields
.field public final a:Lyads/lg;

.field public final b:Lcl4;


# direct methods
.method public constructor <init>(Lcl4;Lyads/lg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/wg;->a:Lyads/lg;

    iput-object p1, p0, Lyads/wg;->b:Lcl4;

    return-void
.end method


# virtual methods
.method public final reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lyads/wg;->a:Lyads/lg;

    invoke-virtual {v0}, Lyads/lg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lyads/wg;->b:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/gj0;

    iget-object p0, p0, Lyads/gj0;->a:Lio/appmetrica/analytics/IReporter;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/IReporter;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
