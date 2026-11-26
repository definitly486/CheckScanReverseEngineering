.class public final Lio/appmetrica/analytics/impl/A5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/j;

.field public final c:Ljava/util/EnumSet;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/A5;->a:Landroid/content/Context;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Fa;->b()Lio/appmetrica/analytics/impl/j;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/A5;->b:Lio/appmetrica/analytics/impl/j;

    sget-object p1, Lio/appmetrica/analytics/coreapi/internal/system/NetworkType;->OFFLINE:Lio/appmetrica/analytics/coreapi/internal/system/NetworkType;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/A5;->c:Ljava/util/EnumSet;

    const-string p1, "connection based"

    iput-object p1, p0, Lio/appmetrica/analytics/impl/A5;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final canBeExecuted()Z
    .locals 5

    iget-object v0, p0, Lio/appmetrica/analytics/impl/A5;->b:Lio/appmetrica/analytics/impl/j;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A5;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lio/appmetrica/analytics/impl/Qe;->a:Lio/appmetrica/analytics/impl/Me;

    const-string v0, "connectivity"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sget-object v1, Lio/appmetrica/analytics/coreapi/internal/system/NetworkType;->UNDEFINED:Lio/appmetrica/analytics/coreapi/internal/system/NetworkType;

    new-instance v2, Lio/appmetrica/analytics/impl/Pe;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Pe;-><init>()V

    const-string v3, "getting connection type"

    const-string v4, "ConnectivityManager"

    invoke-static {v0, v3, v4, v1, v2}, Lio/appmetrica/analytics/coreutils/internal/system/SystemServiceUtils;->accessSystemServiceSafelyOrDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/coreapi/internal/system/NetworkType;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/A5;->c:Ljava/util/EnumSet;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final description()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/A5;->d:Ljava/lang/String;

    return-object p0
.end method
