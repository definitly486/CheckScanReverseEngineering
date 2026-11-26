.class public final synthetic Ld2a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreutils/internal/buffering/BatchProcessor;


# instance fields
.field public final synthetic b:Lio/appmetrica/analytics/impl/m3;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/m3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2a;->b:Lio/appmetrica/analytics/impl/m3;

    return-void
.end method


# virtual methods
.method public final processBatch(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Ld2a;->b:Lio/appmetrica/analytics/impl/m3;

    invoke-static {p0, p1}, Lio/appmetrica/analytics/impl/m3;->a(Lio/appmetrica/analytics/impl/m3;Ljava/util/List;)V

    return-void
.end method
