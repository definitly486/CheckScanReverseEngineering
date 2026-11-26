.class public final Lyads/l2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "com.yandex.mobile.ads.common.AdActivity"

.field public static final c:Ljava/lang/String; = "There is no presence of com.yandex.mobile.ads.common.AdActivity activity in AndroidManifest file."


# instance fields
.field public final a:Lyads/c2;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/c2;

    invoke-direct {v0}, Lyads/c2;-><init>()V

    iput-object v0, p0, Lyads/l2;->a:Lyads/c2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lyads/l2;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iget-object p0, p0, Lyads/l2;->a:Lyads/c2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/c2;->a(Landroid/content/pm/ActivityInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Lyads/vm3;

    sget-object p1, Lyads/l2;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lyads/vm3;-><init>(Ljava/lang/String;)V

    throw p0
.end method
