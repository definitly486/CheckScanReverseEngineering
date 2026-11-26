.class final Landroidx/camera/core/impl/CameraValidatorImpl$Api34Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/CameraValidatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api34Impl"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/core/impl/CameraValidatorImpl$Api34Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/impl/CameraValidatorImpl$Api34Impl;

    invoke-direct {v0}, Landroidx/camera/core/impl/CameraValidatorImpl$Api34Impl;-><init>()V

    sput-object v0, Landroidx/camera/core/impl/CameraValidatorImpl$Api34Impl;->INSTANCE:Landroidx/camera/core/impl/CameraValidatorImpl$Api34Impl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDeviceId(Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getDeviceId()I

    move-result p0

    return p0
.end method
