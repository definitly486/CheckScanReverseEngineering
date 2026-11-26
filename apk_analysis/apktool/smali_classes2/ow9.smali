.class public final Low9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lxa5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lxa5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Low9;->a:Landroid/content/Context;

    iput-object p2, p0, Low9;->b:Lxa5;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 3

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x1c

    const/4 v2, 0x0

    iget-object p0, p0, Low9;->a:Landroid/content/Context;

    if-lt v0, v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v0, p0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    new-instance v0, Lk57$a;

    invoke-direct {v0, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_1
    invoke-static {p0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_2
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(Luz4;)V
    .locals 2

    const-string v0, "sdkVersion"

    const-string v1, "10.0.0"

    invoke-virtual {p1, v0, v1}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Low9;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "appVersion"

    invoke-virtual {p1, v1, v0}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Low9;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "package_name"

    invoke-virtual {p1, v0, p0}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "sdkName"

    const-string v0, "ru.rustore.sdk:installreferrer"

    invoke-virtual {p1, p0, v0}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Ljava/lang/String;Luz4;)V
    .locals 3

    new-instance v0, Lya5;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, p1, p2, v1, v2}, Lya5;-><init>(Ljava/lang/String;Ljava/util/Map;J)V

    iget-object p0, p0, Low9;->b:Lxa5;

    iget-object p0, p0, Lxa5;->b:Ljava/lang/Object;

    check-cast p0, Lx2a;

    new-instance p1, Ls1a;

    invoke-direct {p1, p0, v0}, Ls1a;-><init>(Lx2a;Lya5;)V

    new-instance p2, Lk08;

    invoke-direct {p2, p1}, Lk08;-><init>(Lll3;)V

    iget-object p0, p0, Lx2a;->d:Lem9;

    new-instance p1, Lf18;

    invoke-direct {p1, p2, p0}, Lf18;-><init>(Llz7;Ljo2;)V

    invoke-static {}, Lpo2;->a()Ljo2;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lf18;

    invoke-direct {p2, p1, p0}, Lf18;-><init>(Llz7;Ljo2;)V

    sget-object p0, Llw9;->f:Llw9;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lv08;

    invoke-direct {p1, p2, p0}, Lv08;-><init>(Lf18;Lnl3;)V

    sget-object p0, Lmw9;->f:Lmw9;

    sget-object p2, Lv03;->a:Lv03$a;

    invoke-static {p1, p2, p0}, Ld31;->r(Llz7;Lnl3;Lnl3;)Ld18;

    return-void
.end method
