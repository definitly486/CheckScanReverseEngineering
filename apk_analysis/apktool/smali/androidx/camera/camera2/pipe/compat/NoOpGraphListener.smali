.class public final Landroidx/camera/camera2/pipe/compat/NoOpGraphListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/graph/GraphListener;


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/compat/NoOpGraphListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/compat/NoOpGraphListener;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/compat/NoOpGraphListener;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/NoOpGraphListener;->INSTANCE:Landroidx/camera/camera2/pipe/compat/NoOpGraphListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGraphError(Landroidx/camera/camera2/pipe/GraphState$GraphStateError;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onGraphModified(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onGraphStarted(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onGraphStopped(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)V
    .locals 0

    return-void
.end method
