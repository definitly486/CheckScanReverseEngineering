.class public final Lio/appmetrica/analytics/impl/R6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Q6;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/mf;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/mf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/R6;->a:Lio/appmetrica/analytics/impl/mf;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/R6;->a:Lio/appmetrica/analytics/impl/mf;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/mf;->d()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final a(Z)V
    .locals 0

    .line 7
    iget-object p0, p0, Lio/appmetrica/analytics/impl/R6;->a:Lio/appmetrica/analytics/impl/mf;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/mf;->c(Z)V

    return-void
.end method
