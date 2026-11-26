.class public final synthetic Ltu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreutils/internal/buffering/BatchProcessor;


# instance fields
.field public final synthetic b:Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltu0;->b:Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;

    return-void
.end method


# virtual methods
.method public final processBatch(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Ltu0;->b:Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;

    invoke-static {p0, p1}, Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;->b(Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;Ljava/util/List;)V

    return-void
.end method
