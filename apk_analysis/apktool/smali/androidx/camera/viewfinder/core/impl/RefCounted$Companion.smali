.class public final Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/viewfinder/core/impl/RefCounted;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$released(Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;)Lb36;
    .locals 0

    invoke-direct {p0}, Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;->released()Lb36;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$uninitialized(Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;)Lb36;
    .locals 0

    invoke-direct {p0}, Landroidx/camera/viewfinder/core/impl/RefCounted$Companion;->uninitialized()Lb36;

    move-result-object p0

    return-object p0
.end method

.method private final released()Lb36;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lb36<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroidx/camera/viewfinder/core/impl/RefCounted;->access$getRELEASED$cp()Lb36;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method private final uninitialized()Lb36;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lb36<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroidx/camera/viewfinder/core/impl/RefCounted;->access$getUNINITIALIZED$cp()Lb36;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
