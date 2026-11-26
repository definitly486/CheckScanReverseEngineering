.class public final Lio/appmetrica/analytics/impl/Q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lio/appmetrica/analytics/impl/x1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/x1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Q0;->b:Lio/appmetrica/analytics/impl/x1;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Q0;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Q0;->b:Lio/appmetrica/analytics/impl/x1;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/x1;->c()Lio/appmetrica/analytics/impl/yc;

    move-result-object v0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/yc;->b:Lio/appmetrica/analytics/impl/K7;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Q0;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lio/appmetrica/analytics/impl/K7;->a(Ljava/lang/String;Z)V

    return-void
.end method
