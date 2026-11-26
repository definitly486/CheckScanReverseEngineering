.class public final Lio/appmetrica/analytics/impl/Ke;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/Ao;

.field public final c:Lio/appmetrica/analytics/impl/Bo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/impl/Ao;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Ao;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/Bo;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Bo;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lio/appmetrica/analytics/impl/Ke;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Ao;Lio/appmetrica/analytics/impl/Bo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Ao;Lio/appmetrica/analytics/impl/Bo;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ke;->a:Landroid/content/Context;

    .line 16
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Ke;->b:Lio/appmetrica/analytics/impl/Ao;

    .line 17
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Ke;->c:Lio/appmetrica/analytics/impl/Bo;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ke;->c:Lio/appmetrica/analytics/impl/Bo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/Bo;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ke;->b:Lio/appmetrica/analytics/impl/Ao;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lra8;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ke;->a:Landroid/content/Context;

    const-string v0, "uuid.dat"

    invoke-static {p0, v0}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->getFileFromSdkStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p1, v0}, Lio/appmetrica/analytics/impl/Xa;->a(Ljava/lang/String;Ljava/io/FileOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object p1

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a()V
    .locals 3

    .line 62
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ke;->a:Landroid/content/Context;

    const-string v1, "uuid.dat"

    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->getFileFromSdkStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ke;->a:Landroid/content/Context;

    invoke-static {p0, v1}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->getFileFromAppStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 65
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-static {p0, v0}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->copyToNullable(Ljava/io/File;Ljava/io/File;)Z

    :cond_1
    :goto_0
    return-void
.end method
