.class public final Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceConfig;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getNativeCrashFolder()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceConfig;->a:Ljava/lang/String;

    return-object p0
.end method
