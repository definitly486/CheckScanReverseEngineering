.class public final synthetic Lcx9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;


# virtual methods
.method public final consume(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/hg;->a(Ljava/io/File;)V

    return-void
.end method
