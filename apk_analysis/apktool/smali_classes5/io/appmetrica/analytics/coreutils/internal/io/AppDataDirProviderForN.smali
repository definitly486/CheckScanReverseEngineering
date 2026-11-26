.class public final Lio/appmetrica/analytics/coreutils/internal/io/AppDataDirProviderForN;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/appmetrica/analytics/coreutils/internal/io/AppDataDirProviderForN;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/io/AppDataDirProviderForN;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/io/AppDataDirProviderForN;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/coreutils/internal/io/AppDataDirProviderForN;->INSTANCE:Lio/appmetrica/analytics/coreutils/internal/io/AppDataDirProviderForN;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dataDir(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
