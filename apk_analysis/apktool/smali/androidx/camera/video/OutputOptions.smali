.class public abstract Landroidx/camera/video/OutputOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/OutputOptions$OutputOptionsInternal;,
        Landroidx/camera/video/OutputOptions$Builder;
    }
.end annotation


# static fields
.field public static final DURATION_UNLIMITED:I

.field public static final FILE_SIZE_UNLIMITED:I


# instance fields
.field private final mOutputOptionsInternal:Landroidx/camera/video/OutputOptions$OutputOptionsInternal;


# direct methods
.method public constructor <init>(Landroidx/camera/video/OutputOptions$OutputOptionsInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/OutputOptions;->mOutputOptionsInternal:Landroidx/camera/video/OutputOptions$OutputOptionsInternal;

    return-void
.end method


# virtual methods
.method public getDurationLimitMillis()J
    .locals 2

    iget-object p0, p0, Landroidx/camera/video/OutputOptions;->mOutputOptionsInternal:Landroidx/camera/video/OutputOptions$OutputOptionsInternal;

    invoke-virtual {p0}, Landroidx/camera/video/OutputOptions$OutputOptionsInternal;->getDurationLimitMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFileSizeLimit()J
    .locals 2

    iget-object p0, p0, Landroidx/camera/video/OutputOptions;->mOutputOptionsInternal:Landroidx/camera/video/OutputOptions$OutputOptionsInternal;

    invoke-virtual {p0}, Landroidx/camera/video/OutputOptions$OutputOptionsInternal;->getFileSizeLimit()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/OutputOptions;->mOutputOptionsInternal:Landroidx/camera/video/OutputOptions$OutputOptionsInternal;

    invoke-virtual {p0}, Landroidx/camera/video/OutputOptions$OutputOptionsInternal;->getLocation()Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method
