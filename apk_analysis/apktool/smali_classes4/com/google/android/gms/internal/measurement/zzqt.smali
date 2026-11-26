.class public final Lcom/google/android/gms/internal/measurement/zzqt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Ljava/lang/Boolean;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/zzlk;

.field public final b:Landroid/net/Uri;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzlk;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzqt;->a:Lcom/google/android/gms/internal/measurement/zzlk;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzqt;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzsa;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzrz;

    move-result-object p1

    const-string p3, "phenotype"

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzrz;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzrz;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    new-instance p4, Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x4

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "/"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".pb"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzrz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzrz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzrz;->zzd()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzqt;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final a()Lscc;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzqt;->a:Lcom/google/android/gms/internal/measurement/zzlk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzky;->zzb(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqv;->zzi()Lcom/google/android/gms/internal/measurement/zzqv;

    move-result-object p0

    new-instance v0, Lrcc;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v1}, Lrcc;-><init>(II)V

    new-instance v1, Lscc;

    invoke-direct {v1, p0, v0}, Lscc;-><init>(Lcom/google/android/gms/internal/measurement/zzqv;Lrcc;)V

    return-object v1

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzqt;->d:Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-nez v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v1, v4, :cond_1

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqt;->d:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    :try_start_0
    const-class v1, Landroid/os/Process;

    const-string v4, "isIsolated"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/Boolean;

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqt;->d:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqt;->d:Ljava/lang/Boolean;

    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzd()Lcom/google/android/gms/internal/measurement/zzrf;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/measurement/zzrf;->zzc(Z)Lcom/google/android/gms/internal/measurement/zzqn;

    move-result-object v1

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzabz;->zzd:Lcom/google/android/gms/internal/measurement/zzabz;

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzlg;->a:Landroidx/collection/ArrayMap;

    const-string v6, "#"

    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/zzqt;->c:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_4

    const-string v6, "@"

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    move-object v6, v7

    goto :goto_1

    :cond_3
    const-string p0, "Invalid package name: "

    invoke-virtual {p0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v3

    :cond_4
    invoke-virtual {v7, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzqn;->zzg(Lcom/google/android/gms/internal/measurement/zzabz;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_5

    new-instance v1, Lrcc;

    invoke-direct {v1, v5}, Lrcc;-><init>(I)V

    new-instance v4, Li8c;

    invoke-direct {v4, v3, v1}, Li8c;-><init>(Lcom/google/android/gms/internal/measurement/zznd;Lrcc;)V

    goto/16 :goto_5

    :cond_5
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzqn;->zzc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zze()Lrz5;

    move-result-object v5

    invoke-virtual {v5}, Lrz5;->b()Z

    move-result v6

    if-nez v6, :cond_6

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lxr4;

    move-result-object v3

    const-string v5, "Unable to get GMS application info, using defaults."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v5, v4}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznd;->zza()Lcom/google/android/gms/internal/measurement/zznd;

    move-result-object v1

    new-instance v3, Lrcc;

    const/4 v4, 0x7

    invoke-direct {v3, v2, v4}, Lrcc;-><init>(II)V

    new-instance v4, Li8c;

    invoke-direct {v4, v1, v3}, Li8c;-><init>(Lcom/google/android/gms/internal/measurement/zznd;Lrcc;)V

    goto/16 :goto_5

    :catch_1
    move-exception v1

    goto/16 :goto_4

    :cond_6
    invoke-virtual {v5}, Lrz5;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    :cond_7
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzqn;->zzb()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzmz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzqn;->zza()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v8

    const-string v9, ""

    invoke-direct {v6, v8, v7, v9}, Lcom/google/android/gms/internal/measurement/zzmz;-><init>(Lcom/google/android/gms/internal/measurement/zzacr;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Landroid/net/Uri$Builder;

    invoke-direct {v8}, Landroid/net/Uri$Builder;-><init>()V

    const-string v9, "file"

    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzmz;->zza()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    new-instance v6, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v6, v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v6}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzi()Lcom/google/android/gms/internal/measurement/zzru;

    move-result-object v6

    new-instance v8, Lcom/google/android/gms/internal/measurement/zzna;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzqn;->zzf()Lcom/google/android/gms/internal/measurement/zznf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zznf;->zza()Z

    move-result v1

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/measurement/zzna;-><init>(Z)V

    invoke-virtual {v6, v4, v8}, Lcom/google/android/gms/internal/measurement/zzru;->zza(Landroid/net/Uri;Lcom/google/android/gms/internal/measurement/zzrt;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zznd;

    new-instance v4, Lrcc;

    const/4 v6, 0x5

    const/4 v8, 0x2

    invoke-direct {v4, v6, v8}, Lrcc;-><init>(II)V

    new-instance v6, Li8c;

    invoke-direct {v6, v1, v4}, Li8c;-><init>(Lcom/google/android/gms/internal/measurement/zznd;Lrcc;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/android/gms/internal/measurement/zzaeh; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v4, v6

    goto :goto_5

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    :try_start_4
    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lxr4;

    move-result-object v6

    const-string v8, "Failed to parse snapshot from shared storage for %s"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v4, v6, v1, v8, v9}, Lcom/google/android/gms/internal/measurement/zzlz;->zzb(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lrcc;

    const/16 v4, 0x9

    invoke-direct {v1, v4}, Lrcc;-><init>(I)V

    new-instance v4, Li8c;

    invoke-direct {v4, v3, v1}, Li8c;-><init>(Lcom/google/android/gms/internal/measurement/zznd;Lrcc;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    :catch_3
    :try_start_6
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lxr4;

    move-result-object v4

    const-string v6, "Shared storage file not found for %s"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v1, v4, v6, v8}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lrcc;

    const/16 v4, 0x8

    invoke-direct {v1, v4}, Lrcc;-><init>(I)V

    new-instance v4, Li8c;

    invoke-direct {v4, v3, v1}, Li8c;-><init>(Lcom/google/android/gms/internal/measurement/zznd;Lrcc;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :goto_3
    :try_start_7
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :goto_4
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lxr4;

    move-result-object v4

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Failed to read shared file for %s"

    invoke-static {v3, v4, v1, v6, v5}, Lcom/google/android/gms/internal/measurement/zzlz;->zzb(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznd;->zza()Lcom/google/android/gms/internal/measurement/zznd;

    move-result-object v1

    new-instance v3, Lrcc;

    const/16 v4, 0xa

    invoke-direct {v3, v2, v4}, Lrcc;-><init>(II)V

    new-instance v4, Li8c;

    invoke-direct {v4, v1, v3}, Li8c;-><init>(Lcom/google/android/gms/internal/measurement/zznd;Lrcc;)V

    :goto_5
    iget-object v1, v4, Li8c;->b:Lrcc;

    iget-object v3, v4, Li8c;->a:Lcom/google/android/gms/internal/measurement/zznd;

    if-eqz v3, :cond_8

    new-instance p0, Lscc;

    invoke-direct {p0, v3, v1}, Lscc;-><init>(Lcom/google/android/gms/internal/measurement/zznd;Lrcc;)V

    return-object p0

    :cond_8
    iget v1, v1, Lrcc;->b:I

    :try_start_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzi()Lcom/google/android/gms/internal/measurement/zzru;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzqt;->b:Landroid/net/Uri;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqv;->zzi()Lcom/google/android/gms/internal/measurement/zzqv;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzss;->zzb(Lcom/google/android/gms/internal/measurement/zzafc;)Lcom/google/android/gms/internal/measurement/zzss;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzru;->zza(Landroid/net/Uri;Lcom/google/android/gms/internal/measurement/zzrt;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzqv;

    new-instance v4, Lrcc;

    const/4 v5, 0x4

    invoke-direct {v4, v5, v1}, Lrcc;-><init>(II)V

    new-instance v1, Lscc;

    invoke-direct {v1, v3, v4}, Lscc;-><init>(Lcom/google/android/gms/internal/measurement/zzqv;Lrcc;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_6

    :catch_4
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lxr4;

    move-result-object v0

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Unable to retrieve flag snapshot for %s, using defaults."

    invoke-static {v1, v0, v4, v3}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzqt;->b()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznd;->zza()Lcom/google/android/gms/internal/measurement/zznd;

    move-result-object p0

    new-instance v0, Lrcc;

    const/16 v1, 0x10

    invoke-direct {v0, v2, v1}, Lrcc;-><init>(II)V

    new-instance v1, Lscc;

    invoke-direct {v1, p0, v0}, Lscc;-><init>(Lcom/google/android/gms/internal/measurement/zznd;Lrcc;)V

    goto :goto_6

    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqv;->zzi()Lcom/google/android/gms/internal/measurement/zzqv;

    move-result-object p0

    new-instance v0, Lrcc;

    const/16 v1, 0xb

    invoke-direct {v0, v2, v1}, Lrcc;-><init>(II)V

    new-instance v1, Lscc;

    invoke-direct {v1, p0, v0}, Lscc;-><init>(Lcom/google/android/gms/internal/measurement/zzqv;Lrcc;)V

    :goto_6
    return-object v1

    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqv;->zzi()Lcom/google/android/gms/internal/measurement/zzqv;

    move-result-object p0

    new-instance v0, Lrcc;

    const/16 v1, 0x12

    invoke-direct {v0, v2, v1}, Lrcc;-><init>(II)V

    new-instance v1, Lscc;

    invoke-direct {v1, p0, v0}, Lscc;-><init>(Lcom/google/android/gms/internal/measurement/zzqv;Lrcc;)V

    return-object v1
.end method

.method public final b()Z
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzqt;->a:Lcom/google/android/gms/internal/measurement/zzlk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzd()Lcom/google/android/gms/internal/measurement/zzrf;

    move-result-object p0

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzabz;->zzd:Lcom/google/android/gms/internal/measurement/zzabz;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzrf;->zzb(ZLcom/google/android/gms/internal/measurement/zzabz;)Z

    move-result p0

    return p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/measurement/zzqv;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    new-instance v0, Lqcc;

    invoke-direct {v0, p0, p1}, Lqcc;-><init>(Lcom/google/android/gms/internal/measurement/zzqt;Lcom/google/android/gms/internal/measurement/zzqv;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzqt;->a:Lcom/google/android/gms/internal/measurement/zzlk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lxr4;

    move-result-object p0

    new-instance p1, Ln39;

    invoke-direct {p1, v0}, Ln39;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p1
.end method
