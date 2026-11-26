.class public final Lio/appmetrica/analytics/impl/r4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/client/ClientStorageProvider;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Nl;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Nl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/r4;->a:Lio/appmetrica/analytics/impl/Nl;

    return-void
.end method


# virtual methods
.method public final modulePreferences(Ljava/lang/String;)Lio/appmetrica/analytics/modulesapi/internal/common/ModulePreferences;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/jd;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/r4;->a:Lio/appmetrica/analytics/impl/Nl;

    invoke-direct {v0, p1, p0}, Lio/appmetrica/analytics/impl/jd;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/Nl;)V

    return-object v0
.end method
