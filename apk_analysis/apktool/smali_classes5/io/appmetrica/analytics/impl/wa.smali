.class public final Lio/appmetrica/analytics/impl/wa;
.super Lio/appmetrica/analytics/impl/g;
.source "SourceFile"


# static fields
.field public static final g:Ljava/lang/String; = "foreground"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/il;Lio/appmetrica/analytics/impl/nl;Lio/appmetrica/analytics/impl/ek;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V
    .locals 8

    sget-object v0, Lio/appmetrica/analytics/impl/ol;->b:Lio/appmetrica/analytics/impl/ol;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/gl;->a(Lio/appmetrica/analytics/impl/ol;)Lio/appmetrica/analytics/impl/fl;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/fl;->a()Lio/appmetrica/analytics/impl/gl;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/appmetrica/analytics/impl/g;-><init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/il;Lio/appmetrica/analytics/impl/nl;Lio/appmetrica/analytics/impl/gl;Lio/appmetrica/analytics/impl/bb;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V

    return-void
.end method
