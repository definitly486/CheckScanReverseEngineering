.class public final Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/graph/GraphCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/graph/GraphCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Repeat"
.end annotation


# instance fields
.field private final request:Landroidx/camera/camera2/pipe/Request;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/Request;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;->request:Landroidx/camera/camera2/pipe/Request;

    return-void
.end method


# virtual methods
.method public final getRequest()Landroidx/camera/camera2/pipe/Request;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;->request:Landroidx/camera/camera2/pipe/Request;

    return-object p0
.end method
