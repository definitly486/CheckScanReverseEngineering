.class public final Lio/appmetrica/analytics/impl/de;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Ic;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/R8;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lgt9;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/de;->a:Lio/appmetrica/analytics/impl/R8;

    return-void
.end method

.method public static final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/R8;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/de;->a:Lio/appmetrica/analytics/impl/R8;

    return-object p0
.end method
