.class public interface abstract Landroidx/camera/camera2/pipe/media/OutputImage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/media/ImageWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/media/OutputImage$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/media/OutputImage$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/media/OutputImage$Companion;->$$INSTANCE:Landroidx/camera/camera2/pipe/media/OutputImage$Companion;

    sput-object v0, Landroidx/camera/camera2/pipe/media/OutputImage;->Companion:Landroidx/camera/camera2/pipe/media/OutputImage$Companion;

    return-void
.end method


# virtual methods
.method public abstract getOutputId-4LaLFng()I
.end method

.method public abstract getStreamId-ptHMqGs()I
.end method
