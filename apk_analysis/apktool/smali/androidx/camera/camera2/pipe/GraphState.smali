.class public abstract Landroidx/camera/camera2/pipe/GraphState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/GraphState$GraphStateError;,
        Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;,
        Landroidx/camera/camera2/pipe/GraphState$GraphStateStarting;,
        Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;,
        Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/GraphState;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/GraphState;->name:Ljava/lang/String;

    return-object p0
.end method
