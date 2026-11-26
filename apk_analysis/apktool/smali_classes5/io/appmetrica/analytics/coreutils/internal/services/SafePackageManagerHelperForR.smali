.class public final Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManagerHelperForR;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManagerHelperForR;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManagerHelperForR;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManagerHelperForR;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManagerHelperForR;->INSTANCE:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManagerHelperForR;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final extractPackageInstaller(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
