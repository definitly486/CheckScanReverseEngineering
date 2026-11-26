.class public final synthetic Ly5a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lio/appmetrica/analytics/idsync/impl/J;

.field public final synthetic c:Lio/appmetrica/analytics/idsync/impl/q;

.field public final synthetic d:Lio/appmetrica/analytics/idsync/impl/G;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/idsync/impl/J;Lio/appmetrica/analytics/idsync/impl/q;Lio/appmetrica/analytics/idsync/impl/G;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly5a;->b:Lio/appmetrica/analytics/idsync/impl/J;

    iput-object p2, p0, Ly5a;->c:Lio/appmetrica/analytics/idsync/impl/q;

    iput-object p3, p0, Ly5a;->d:Lio/appmetrica/analytics/idsync/impl/G;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ly5a;->c:Lio/appmetrica/analytics/idsync/impl/q;

    iget-object v1, p0, Ly5a;->d:Lio/appmetrica/analytics/idsync/impl/G;

    iget-object p0, p0, Ly5a;->b:Lio/appmetrica/analytics/idsync/impl/J;

    invoke-static {p0, v0, v1}, Lio/appmetrica/analytics/idsync/impl/q;->a(Lio/appmetrica/analytics/idsync/impl/J;Lio/appmetrica/analytics/idsync/impl/q;Lio/appmetrica/analytics/idsync/impl/G;)V

    return-void
.end method
