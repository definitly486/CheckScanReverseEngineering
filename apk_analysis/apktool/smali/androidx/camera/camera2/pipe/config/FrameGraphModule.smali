.class public abstract Landroidx/camera/camera2/pipe/config/FrameGraphModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/config/FrameGraphModule$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/config/FrameGraphModule$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/config/FrameGraphModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/config/FrameGraphModule$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/config/FrameGraphModule;->Companion:Landroidx/camera/camera2/pipe/config/FrameGraphModule$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindFrameGraph(Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;)Landroidx/camera/camera2/pipe/FrameGraph;
.end method
