.class public final synthetic Lbp3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreutils/internal/buffering/BatchProcessor;


# instance fields
.field public final synthetic b:Lio/appmetrica/analytics/impl/Gb;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/Gb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbp3;->b:Lio/appmetrica/analytics/impl/Gb;

    return-void
.end method


# virtual methods
.method public final processBatch(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lbp3;->b:Lio/appmetrica/analytics/impl/Gb;

    invoke-static {p0, p1}, Lio/appmetrica/analytics/impl/Gb;->a(Lio/appmetrica/analytics/impl/Gb;Ljava/util/List;)V

    return-void
.end method
