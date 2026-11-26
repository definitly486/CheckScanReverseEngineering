.class public final Lyads/xn2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/gh5;

.field public final b:Lyads/qi5;

.field public final c:Lyads/zn0;

.field public final d:Lyads/kv3;

.field public final e:Lyads/fd;

.field public final f:Lyads/yn2;

.field public final g:Lyads/ed;

.field public final h:Lyads/vn2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;)V
    .locals 5

    new-instance v0, Lyads/gh5;

    invoke-direct {v0}, Lyads/gh5;-><init>()V

    new-instance v1, Lyads/qi5;

    invoke-direct {v1}, Lyads/qi5;-><init>()V

    new-instance v2, Lyads/zn0;

    invoke-direct {v2}, Lyads/zn0;-><init>()V

    invoke-static {p1}, Lyads/jv3;->a(Landroid/content/Context;)Lyads/kv3;

    move-result-object p1

    new-instance v3, Lyads/fd;

    invoke-direct {v3}, Lyads/fd;-><init>()V

    new-instance v4, Lyads/yn2;

    invoke-direct {v4}, Lyads/yn2;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/xn2;->a:Lyads/gh5;

    iput-object v1, p0, Lyads/xn2;->b:Lyads/qi5;

    iput-object v2, p0, Lyads/xn2;->c:Lyads/zn0;

    iput-object p1, p0, Lyads/xn2;->d:Lyads/kv3;

    iput-object v3, p0, Lyads/xn2;->e:Lyads/fd;

    iput-object v4, p0, Lyads/xn2;->f:Lyads/yn2;

    iget-object p1, p2, Lyads/e4;->b:Lyads/c40;

    iget-object p2, p1, Lyads/c40;->b:Lyads/ed;

    iput-object p2, p0, Lyads/xn2;->g:Lyads/ed;

    iget-object p1, p1, Lyads/c40;->a:Lyads/vn2;

    iput-object p1, p0, Lyads/xn2;->h:Lyads/vn2;

    return-void
.end method

.method public static final a(Lyads/m35;Ljava/lang/String;Ljava/lang/String;)Lj59;
    .locals 0

    .line 490
    invoke-virtual {p0, p1, p2}, Lyads/m35;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lbm3;)V
    .locals 10

    const-string v0, "app_id"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v0

    :goto_0
    const-string v3, "app_version_code"

    invoke-interface {p2, v3, v2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-object v2, v0

    :goto_1
    const-string v3, "app_version_name"

    invoke-interface {p2, v3, v2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "vast-integration-type"

    const-string v3, "inapp_sdk"

    invoke-interface {p2, v2, v3}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lyads/xn2;->a:Lyads/gh5;

    const-string v3, "%d.%d%d"

    invoke-virtual {v2, v3}, Lyads/gh5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdk_version"

    invoke-interface {p2, v3, v2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lyads/xn2;->a:Lyads/gh5;

    const-string v3, "%d.%d.%d"

    invoke-virtual {v2, v3}, Lyads/gh5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdk_version_name"

    invoke-interface {p2, v3, v2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sdk_vendor"

    const-string v3, "yandex"

    invoke-interface {p2, v2, v3}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lyads/xn2;->f:Lyads/yn2;

    invoke-virtual {v2}, Lyads/yn2;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lyads/xn2;->c:Lyads/zn0;

    invoke-virtual {v3, p1}, Lyads/zn0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lyads/xn2;->c:Lyads/zn0;

    iget-object v2, v2, Lyads/zn0;->b:Lyads/fv3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Lyads/dv3;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "locale"

    invoke-interface {p2, v3, v2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lyads/xn2;->c:Lyads/zn0;

    iget-object v2, v2, Lyads/zn0;->b:Lyads/fv3;

    invoke-virtual {v2, p1}, Lyads/fv3;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "content_language"

    invoke-interface {p2, v3, v2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lyads/xn2;->c:Lyads/zn0;

    iget-object v2, v2, Lyads/zn0;->b:Lyads/fv3;

    invoke-virtual {v2, p1}, Lyads/fv3;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const-string v4, ","

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v2, "device_languages"

    invoke-interface {p2, v2, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lyads/xn2;->f:Lyads/yn2;

    invoke-virtual {v0}, Lyads/yn2;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lyads/xn2;->c:Lyads/zn0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/zn0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lyads/xn2;->f:Lyads/yn2;

    invoke-virtual {v0}, Lyads/yn2;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lyads/xn2;->c:Lyads/zn0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {p2, v0, v2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lyads/xn2;->f:Lyads/yn2;

    invoke-virtual {v0}, Lyads/yn2;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lyads/xn2;->c:Lyads/zn0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "android"

    invoke-interface {p2, v0, v2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lyads/xn2;->f:Lyads/yn2;

    invoke-virtual {v0}, Lyads/yn2;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lyads/xn2;->c:Lyads/zn0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {p2, v0, v2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lyads/xn2;->b:Lyads/qi5;

    invoke-virtual {v0, p1}, Lyads/qi5;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lyads/xn2;->d:Lyads/kv3;

    invoke-virtual {v0}, Lyads/kv3;->a()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "location_timestamp"

    invoke-interface {p2, v3, v2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lat"

    invoke-interface {p2, v3, v2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lon"

    invoke-interface {p2, v3, v2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "precision"

    invoke-interface {p2, v2, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lyads/xn2;->b:Lyads/qi5;

    invoke-virtual {v0, p1}, Lyads/qi5;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lyads/xn2;->f:Lyads/yn2;

    invoke-virtual {v0}, Lyads/yn2;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lyads/xn2;->h:Lyads/vn2;

    iget-object v2, v2, Lyads/vn2;->a:Ljava/lang/String;

    invoke-interface {p2, v0, v2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lyads/xn2;->g:Lyads/ed;

    iget-object v0, v0, Lyads/ed;->d:Ljava/lang/String;

    const-string v2, "app_set_id"

    invoke-interface {p2, v2, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lyads/xn2;->g:Lyads/ed;

    iget-object v0, v0, Lyads/ed;->a:Lyads/id;

    const/4 v2, 0x1

    const-string v3, "00000000-0000-0000-0000-000000000000"

    if-eqz v0, :cond_4

    iget-boolean v4, v0, Lyads/id;->b:Z

    iget-object v0, v0, Lyads/id;->a:Ljava/lang/String;

    iget-object v5, p0, Lyads/xn2;->e:Lyads/fd;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v1

    :goto_3
    if-nez v4, :cond_4

    if-eqz v5, :cond_4

    const-string v4, "google_aid"

    invoke-interface {p2, v4, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lyads/xn2;->g:Lyads/ed;

    iget-object v0, v0, Lyads/ed;->b:Lyads/id;

    if-eqz v0, :cond_7

    iget-boolean v4, v0, Lyads/id;->b:Z

    iget-object v0, v0, Lyads/id;->a:Ljava/lang/String;

    iget-object p0, p0, Lyads/xn2;->e:Lyads/fd;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    move v1, v2

    :cond_6
    :goto_4
    if-nez v4, :cond_7

    if-eqz v1, :cond_7

    const-string p0, "huawei_oaid"

    invoke-interface {p2, p0, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-static {p1}, Lyads/eh6;->d(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "screen_width"

    invoke-interface {p2, v0, p0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lyads/eh6;->b(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "screen_height"

    invoke-interface {p2, v0, p0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    const-string v0, "scalefactor"

    invoke-interface {p2, v0, p0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lyads/eh6;->a(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "screen_dpi"

    invoke-interface {p2, p1, p0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Landroid/content/Context;Lyads/m35;)V
    .locals 1

    .line 492
    new-instance v0, Lqha;

    invoke-direct {v0, p2}, Lqha;-><init>(Lyads/m35;)V

    invoke-virtual {p0, p1, v0}, Lyads/xn2;->a(Landroid/content/Context;Lbm3;)V

    return-void
.end method
