.class public final Landroidx/camera/video/internal/OutputStorageImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/OutputStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/internal/OutputStorageImpl$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Landroidx/camera/video/internal/OutputStorageImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "OutputStorageImpl"


# instance fields
.field private final outputOptions:Landroidx/camera/video/OutputOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/video/internal/OutputStorageImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/video/internal/OutputStorageImpl$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/video/internal/OutputStorageImpl;->Companion:Landroidx/camera/video/internal/OutputStorageImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/video/OutputOptions;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/OutputStorageImpl;->outputOptions:Landroidx/camera/video/OutputOptions;

    return-void
.end method


# virtual methods
.method public getAvailableBytes()J
    .locals 5

    const-string v0, "Unknown OutputOptions: "

    const-wide v1, 0x7fffffffffffffffL

    :try_start_0
    iget-object v3, p0, Landroidx/camera/video/internal/OutputStorageImpl;->outputOptions:Landroidx/camera/video/OutputOptions;

    instance-of v4, v3, Landroidx/camera/video/FileOutputOptions;

    if-eqz v4, :cond_0

    check-cast v3, Landroidx/camera/video/FileOutputOptions;

    invoke-virtual {v3}, Landroidx/camera/video/FileOutputOptions;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/camera/video/internal/utils/StorageUtil;->getAvailableBytes(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    instance-of v4, v3, Landroidx/camera/video/MediaStoreOutputOptions;

    if-eqz v4, :cond_1

    check-cast v3, Landroidx/camera/video/MediaStoreOutputOptions;

    invoke-virtual {v3}, Landroidx/camera/video/MediaStoreOutputOptions;->getCollectionUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/camera/video/internal/utils/StorageUtil;->getAvailableBytesForMediaStoreUri(Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    instance-of v3, v3, Landroidx/camera/video/FileDescriptorOutputOptions;

    if-eqz v3, :cond_2

    return-wide v1

    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/camera/video/internal/OutputStorageImpl;->outputOptions:Landroidx/camera/video/OutputOptions;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "OutputStorageImpl"

    const-string v3, "Fail to access the available bytes."

    invoke-static {v0, v3, p0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v1
.end method

.method public getOutputOptions()Landroidx/camera/video/OutputOptions;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/OutputStorageImpl;->outputOptions:Landroidx/camera/video/OutputOptions;

    return-object p0
.end method
