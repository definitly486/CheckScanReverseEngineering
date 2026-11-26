.class public final Lio/appmetrica/analytics/impl/T0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lio/appmetrica/analytics/impl/x1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/x1;Z)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/T0;->b:Lio/appmetrica/analytics/impl/x1;

    iput-boolean p2, p0, Lio/appmetrica/analytics/impl/T0;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T0;->b:Lio/appmetrica/analytics/impl/x1;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/x1;->a:Lio/appmetrica/analytics/impl/C0;

    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/T0;->a:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lio/appmetrica/analytics/impl/B0;->c()Lio/appmetrica/analytics/impl/Uc;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Uc;->a(Z)V

    return-void
.end method
