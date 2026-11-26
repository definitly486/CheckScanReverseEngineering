.class public final Ld37;
.super Lg37;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lj95;

.field public final synthetic b:Ljava/io/File;


# direct methods
.method public constructor <init>(Lj95;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Ld37;->a:Lj95;

    iput-object p2, p0, Ld37;->b:Ljava/io/File;

    invoke-direct {p0}, Lg37;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object p0, p0, Ld37;->b:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()Lj95;
    .locals 0

    iget-object p0, p0, Ld37;->a:Lj95;

    return-object p0
.end method

.method public final c(Lvu0;)V
    .locals 2

    iget-object p0, p0, Ld37;->b:Ljava/io/File;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lt54;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object p0, Lwv8;->d:Lwv8$a;

    invoke-direct {v0, v1, p0}, Lt54;-><init>(Ljava/io/InputStream;Lwv8;)V

    :try_start_0
    invoke-interface {p1, v0}, Lvu0;->j0(Lv48;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lt54;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, p0}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method
