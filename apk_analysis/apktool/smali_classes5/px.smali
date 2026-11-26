.class public final Lpx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;
.implements Lrxa;


# static fields
.field public static final c:Lpx;

.field public static final d:Lpx;

.field public static final e:Lbh8;

.field public static final f:Lbh8;

.field public static final synthetic g:Lpx;

.field public static final synthetic h:Lpx;

.field public static final synthetic i:Lpx;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lpx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpx;-><init>(I)V

    sput-object v0, Lpx;->c:Lpx;

    new-instance v0, Lpx;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lpx;-><init>(I)V

    sput-object v0, Lpx;->d:Lpx;

    new-instance v0, Lbh8;

    const-string v1, "NONE"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lpx;->e:Lbh8;

    new-instance v0, Lbh8;

    const-string v1, "PENDING"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lpx;->f:Lbh8;

    new-instance v0, Lpx;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lpx;-><init>(I)V

    sput-object v0, Lpx;->g:Lpx;

    new-instance v0, Lpx;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lpx;-><init>(I)V

    sput-object v0, Lpx;->h:Lpx;

    new-instance v0, Lpx;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lpx;-><init>(I)V

    sput-object v0, Lpx;->i:Lpx;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lpx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Lz68;
    .locals 1

    new-instance v0, Lz68;

    if-nez p0, :cond_0

    sget-object p0, Laq5;->b:Lbh8;

    :cond_0
    invoke-direct {v0, p0}, Lz68;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final c(Lhd3;Lbm3;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lse3;->a(Lhd3;Lbm3;)Lj91;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lud3;->a(Lhd3;I)Lhd3;

    move-result-object p0

    sget-object p1, Llo5;->b:Llo5;

    invoke-interface {p0, p1, p2}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    :goto_0
    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final f(Lid3;Lhd3;Lpg8;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lyt8;

    if-nez v0, :cond_1

    invoke-interface {p1, p0, p2}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_1
    check-cast p0, Lyt8;

    iget-object p0, p0, Lyt8;->b:Ljava/lang/Throwable;

    throw p0
.end method

.method public static final h(Lhd3;Ly22;)Ls68;
    .locals 2

    new-instance v0, Ltd3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltd3;-><init>(Lhd3;Le02;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p0

    return-object p0
.end method

.method public static k(B)Z
    .locals 1

    const/16 v0, -0x41

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/location/zzec;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/location/zzec;->zzy(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public b(Li87;Lz47;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public d(Ljava/io/File;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "failed to delete "

    invoke-static {p1, p0}, Lav;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length p1, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lpx;->e(Ljava/io/File;)V

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "failed to delete "

    invoke-static {v2, p0}, Lav;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const-string p0, "not a readable directory: "

    invoke-static {p1, p0}, Lav;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public g(Ljava/io/File;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public i(Ljava/io/File;Ljava/io/File;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2}, Lpx;->d(Ljava/io/File;)V

    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to rename "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public j(Ljava/io/File;)Lt06;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v1, Lt06;

    new-instance v2, Lwv8;

    invoke-direct {v2}, Lwv8;-><init>()V

    invoke-direct {v1, v0, v2}, Lt06;-><init>(Ljava/io/OutputStream;Lwv8;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance p0, Lt06;

    new-instance p1, Lwv8;

    invoke-direct {p1}, Lwv8;-><init>()V

    invoke-direct {p0, v0, p1}, Lt06;-><init>(Ljava/io/OutputStream;Lwv8;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lpx;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "FileSystem.SYSTEM"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic zza()Ljava/lang/Object;
    .locals 2

    iget p0, p0, Lpx;->b:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzy()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzo()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
