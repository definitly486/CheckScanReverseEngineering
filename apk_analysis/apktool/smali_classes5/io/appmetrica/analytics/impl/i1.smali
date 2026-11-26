.class public final Lio/appmetrica/analytics/impl/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lio/appmetrica/analytics/impl/x1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/x1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/i1;->c:Lio/appmetrica/analytics/impl/x1;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/i1;->a:Ljava/lang/String;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/i1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/i1;->c:Lio/appmetrica/analytics/impl/x1;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/x1;->a:Lio/appmetrica/analytics/impl/C0;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/i1;->a:Ljava/lang/String;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i1;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lio/appmetrica/analytics/impl/B0;->c()Lio/appmetrica/analytics/impl/Uc;

    move-result-object v0

    invoke-interface {v0, v1, p0}, Lio/appmetrica/analytics/impl/Uc;->putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
