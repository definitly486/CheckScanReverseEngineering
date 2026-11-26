.class public final Lio/appmetrica/analytics/impl/e2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/le;

.field public final synthetic b:Lio/appmetrica/analytics/impl/K7;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/g2;Lio/appmetrica/analytics/impl/K7;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/e2;->a:Lio/appmetrica/analytics/impl/le;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/e2;->b:Lio/appmetrica/analytics/impl/K7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/e2;->a:Lio/appmetrica/analytics/impl/le;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/e2;->b:Lio/appmetrica/analytics/impl/K7;

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/le;->consume(Ljava/lang/Object;)V

    return-void
.end method
