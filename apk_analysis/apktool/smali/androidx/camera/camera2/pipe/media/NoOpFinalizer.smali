.class public final Landroidx/camera/camera2/pipe/media/NoOpFinalizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/media/Finalizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/camera2/pipe/media/Finalizer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/media/NoOpFinalizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/media/NoOpFinalizer;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/media/NoOpFinalizer;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/media/NoOpFinalizer;->INSTANCE:Landroidx/camera/camera2/pipe/media/NoOpFinalizer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finalize(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
