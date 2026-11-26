.class public final Lkz2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lod2$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkz2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lrn2$a;

.field public volatile b:Lrn2;


# direct methods
.method public constructor <init>(Lrn2$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkz2$c;->a:Lrn2$a;

    return-void
.end method


# virtual methods
.method public final a()Lrn2;
    .locals 4

    iget-object v0, p0, Lkz2$c;->b:Lrn2;

    if-nez v0, :cond_6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkz2$c;->b:Lrn2;

    if-nez v0, :cond_4

    iget-object v0, p0, Lkz2$c;->a:Lrn2$a;

    check-cast v0, Lbo2;

    iget-object v0, v0, Lbo2;->a:Lik0;

    const-string v1, "image_manager_disk_cache"

    iget-object v0, v0, Lik0;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v2, Lco2;

    invoke-direct {v2, v3}, Lco2;-><init>(Ljava/io/File;)V

    :cond_3
    :goto_1
    iput-object v2, p0, Lkz2$c;->b:Lrn2;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v0, p0, Lkz2$c;->b:Lrn2;

    if-nez v0, :cond_5

    new-instance v0, Ll1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lkz2$c;->b:Lrn2;

    :cond_5
    monitor-exit p0

    goto :goto_4

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    :goto_4
    iget-object p0, p0, Lkz2$c;->b:Lrn2;

    return-object p0
.end method
