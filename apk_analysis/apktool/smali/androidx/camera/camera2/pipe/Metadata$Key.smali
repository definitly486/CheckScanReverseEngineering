.class public final Landroidx/camera/camera2/pipe/Metadata$Key;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/Metadata$Key$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/Metadata$Key$Companion;

.field private static final keys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;

.field private final type:Lne4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lne4<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/Metadata$Key$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/Metadata$Key$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/Metadata$Key;->Companion:Landroidx/camera/camera2/pipe/Metadata$Key$Companion;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/Metadata$Key;->keys:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lne4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lne4<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/Metadata$Key;->name:Ljava/lang/String;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/Metadata$Key;->type:Lne4;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lne4;Ljh2;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/Metadata$Key;-><init>(Ljava/lang/String;Lne4;)V

    return-void
.end method

.method public static final synthetic access$getKeys$cp()Ljava/util/Map;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/Metadata$Key;->keys:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getType$p(Landroidx/camera/camera2/pipe/Metadata$Key;)Lne4;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/Metadata$Key;->type:Lne4;

    return-object p0
.end method

.method public static final getKeys$camera_camera2_pipe()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "*>;>;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/camera2/pipe/Metadata$Key;->Companion:Landroidx/camera/camera2/pipe/Metadata$Key$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/Metadata$Key$Companion;->getKeys$camera_camera2_pipe()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Metadata.Key("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/Metadata$Key;->name:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lxp;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
