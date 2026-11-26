.class public final Lio/appmetrica/analytics/impl/Lh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/j5;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/Qm;)Lio/appmetrica/analytics/impl/Za;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/impl/Lh;->b(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/Qm;)Lio/appmetrica/analytics/impl/Kh;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/Qm;)Lio/appmetrica/analytics/impl/Kh;
    .locals 8

    new-instance v0, Lio/appmetrica/analytics/impl/Kh;

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->h()Lio/appmetrica/analytics/impl/S6;

    move-result-object v4

    invoke-virtual {p4}, Lio/appmetrica/analytics/impl/Qm;->e()Lio/appmetrica/analytics/impl/vm;

    move-result-object v5

    new-instance v6, Lio/appmetrica/analytics/impl/Ig;

    invoke-direct {v6, p4}, Lio/appmetrica/analytics/impl/Ig;-><init>(Lio/appmetrica/analytics/impl/Qm;)V

    new-instance v7, Lio/appmetrica/analytics/impl/a5;

    invoke-direct {v7}, Lio/appmetrica/analytics/impl/a5;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lio/appmetrica/analytics/impl/Kh;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/vm;Lio/appmetrica/analytics/impl/g5;Lio/appmetrica/analytics/impl/E9;)V

    return-object v0
.end method
