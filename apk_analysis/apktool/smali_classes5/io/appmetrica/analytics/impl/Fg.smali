.class public final Lio/appmetrica/analytics/impl/Fg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/a8;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/j5;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/j5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/j5;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Fg;->a:Lio/appmetrica/analytics/impl/j5;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/B4;)Lio/appmetrica/analytics/impl/Ua;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/Fg;->b(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/B4;)Lio/appmetrica/analytics/impl/Eg;

    move-result-object p0

    return-object p0
.end method

.method public final a()Lio/appmetrica/analytics/impl/j5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/impl/j5;"
        }
    .end annotation

    .line 5
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Fg;->a:Lio/appmetrica/analytics/impl/j5;

    return-object p0
.end method

.method public final b(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/B4;)Lio/appmetrica/analytics/impl/Eg;
    .locals 7

    new-instance v0, Lio/appmetrica/analytics/impl/Eg;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/Fg;->a:Lio/appmetrica/analytics/impl/j5;

    new-instance v5, Lio/appmetrica/analytics/impl/c5;

    invoke-direct {v5}, Lio/appmetrica/analytics/impl/c5;-><init>()V

    invoke-static {}, Lio/appmetrica/analytics/impl/Xl;->a()Lio/appmetrica/analytics/impl/Xl;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/Eg;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/B4;Lio/appmetrica/analytics/impl/j5;Lio/appmetrica/analytics/impl/c5;Lio/appmetrica/analytics/impl/Xl;)V

    return-object v0
.end method
