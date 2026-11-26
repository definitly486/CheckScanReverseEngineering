.class public final Lio/appmetrica/analytics/impl/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/x1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/x1;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/f1;->a:Lio/appmetrica/analytics/impl/x1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/f1;->a:Lio/appmetrica/analytics/impl/x1;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/x1;->a(Lio/appmetrica/analytics/impl/x1;)Lio/appmetrica/analytics/impl/Wa;

    move-result-object v0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/f1;->a:Lio/appmetrica/analytics/impl/x1;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/x1;->b:Lio/appmetrica/analytics/impl/Ro;

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Wa;->a(Lio/appmetrica/analytics/impl/Ro;)V

    return-void
.end method
