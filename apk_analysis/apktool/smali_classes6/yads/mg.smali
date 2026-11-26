.class public final Lyads/mg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String; = "Incorrect AppMetrica Integration. The minimum supported version of AppMetrica SDK is 8.3.0 (inclusive) and the maximum supported version is 9.0.0 (exclusive). Please, check your AppMetrica integration."

.field public static final d:Ljava/lang/String; = "Incorrect AppMetrica Version. The minimum supported version of AppMetrica SDK is 8.3.0 (inclusive) and the maximum supported version is 9.0.0 (exclusive). And the current version of AppMetrica SDK is "


# instance fields
.field public final a:Lyads/k96;

.field public final b:Lyads/vg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lyads/k96;

    invoke-direct {v0}, Lyads/k96;-><init>()V

    invoke-static {p1}, Lyads/dg;->a(Landroid/content/Context;)Lyads/vg;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/mg;->a:Lyads/k96;

    iput-object p1, p0, Lyads/mg;->b:Lyads/vg;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 88
    sget-object v0, Lyads/mg;->d:Ljava/lang/String;

    .line 89
    invoke-static {v0, p0}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lyads/mg;->b:Lyads/vg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Lyads/vg;->b:Lyads/ej0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lio/appmetrica/analytics/AppMetrica;->getLibraryVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lyads/mg;->a:Lyads/k96;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "8.3.0"

    invoke-static {v1}, Lyads/k96;->a(Ljava/lang/String;)Lyads/j96;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lyads/mg;->a:Lyads/k96;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "9.0.0"

    invoke-static {v2}, Lyads/k96;->a(Ljava/lang/String;)Lyads/j96;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lyads/mg;->a:Lyads/k96;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lyads/k96;->a(Ljava/lang/String;)Lyads/j96;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Lyads/j96;->a(Lyads/j96;)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {p0, v2}, Lyads/j96;->a(Lyads/j96;)I

    move-result p0

    if-gez p0, :cond_2

    :goto_1
    return-void

    :cond_2
    new-instance p0, Lyads/vm3;

    invoke-static {v0}, Lyads/mg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lyads/vm3;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lyads/vm3;

    sget-object v0, Lyads/mg;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lyads/vm3;-><init>(Ljava/lang/String;)V

    throw p0
.end method
