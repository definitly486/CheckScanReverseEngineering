.class public final Landroidx/camera/video/MediaStoreOutputOptions;
.super Landroidx/camera/video/OutputOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/MediaStoreOutputOptions$MediaStoreOutputOptionsInternal;,
        Landroidx/camera/video/MediaStoreOutputOptions$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY_CONTENT_VALUES:Landroid/content/ContentValues;


# instance fields
.field private final mMediaStoreOutputOptionsInternal:Landroidx/camera/video/MediaStoreOutputOptions$MediaStoreOutputOptionsInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Landroidx/camera/video/MediaStoreOutputOptions;->EMPTY_CONTENT_VALUES:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/video/MediaStoreOutputOptions$MediaStoreOutputOptionsInternal;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/video/OutputOptions;-><init>(Landroidx/camera/video/OutputOptions$OutputOptionsInternal;)V

    iput-object p1, p0, Landroidx/camera/video/MediaStoreOutputOptions;->mMediaStoreOutputOptionsInternal:Landroidx/camera/video/MediaStoreOutputOptions$MediaStoreOutputOptionsInternal;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/camera/video/MediaStoreOutputOptions;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Landroidx/camera/video/MediaStoreOutputOptions;->mMediaStoreOutputOptionsInternal:Landroidx/camera/video/MediaStoreOutputOptions$MediaStoreOutputOptionsInternal;

    check-cast p1, Landroidx/camera/video/MediaStoreOutputOptions;

    iget-object p1, p1, Landroidx/camera/video/MediaStoreOutputOptions;->mMediaStoreOutputOptionsInternal:Landroidx/camera/video/MediaStoreOutputOptions$MediaStoreOutputOptionsInternal;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getCollectionUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/MediaStoreOutputOptions;->mMediaStoreOutputOptionsInternal:Landroidx/camera/video/MediaStoreOutputOptions$MediaStoreOutputOptionsInternal;

    invoke-virtual {p0}, Landroidx/camera/video/MediaStoreOutputOptions$MediaStoreOutputOptionsInternal;->getCollectionUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/MediaStoreOutputOptions;->mMediaStoreOutputOptionsInternal:Landroidx/camera/video/MediaStoreOutputOptions$MediaStoreOutputOptionsInternal;

    invoke-virtual {p0}, Landroidx/camera/video/MediaStoreOutputOptions$MediaStoreOutputOptionsInternal;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/MediaStoreOutputOptions;->mMediaStoreOutputOptionsInternal:Landroidx/camera/video/MediaStoreOutputOptions$MediaStoreOutputOptionsInternal;

    invoke-virtual {p0}, Landroidx/camera/video/MediaStoreOutputOptions$MediaStoreOutputOptionsInternal;->getContentValues()Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/MediaStoreOutputOptions;->mMediaStoreOutputOptionsInternal:Landroidx/camera/video/MediaStoreOutputOptions$MediaStoreOutputOptionsInternal;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Landroidx/camera/video/MediaStoreOutputOptions;->mMediaStoreOutputOptionsInternal:Landroidx/camera/video/MediaStoreOutputOptions$MediaStoreOutputOptionsInternal;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaStoreOutputOptionsInternal"

    const-string v1, "MediaStoreOutputOptions"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
