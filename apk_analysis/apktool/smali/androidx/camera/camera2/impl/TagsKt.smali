.class public final Landroidx/camera/camera2/impl/TagsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CAMERAX_TAG_BUNDLE:Landroidx/camera/camera2/pipe/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "Landroidx/camera/core/impl/TagBundle;",
            ">;"
        }
    .end annotation
.end field

.field private static final USE_CASE_CAMERA_STATE_CUSTOM_TAG:Landroidx/camera/camera2/pipe/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Landroidx/camera/camera2/pipe/Metadata$Key;->Companion:Landroidx/camera/camera2/pipe/Metadata$Key$Companion;

    const-class v1, Landroidx/camera/core/impl/TagBundle;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    const-string v2, "camerax.tag_bundle"

    invoke-virtual {v0, v2, v1}, Landroidx/camera/camera2/pipe/Metadata$Key$Companion;->create(Ljava/lang/String;Lne4;)Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v1

    sput-object v1, Landroidx/camera/camera2/impl/TagsKt;->CAMERAX_TAG_BUNDLE:Landroidx/camera/camera2/pipe/Metadata$Key;

    const-class v1, Ljava/lang/Integer;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    const-string v2, "use_case_camera_state.tag"

    invoke-virtual {v0, v2, v1}, Landroidx/camera/camera2/pipe/Metadata$Key$Companion;->create(Ljava/lang/String;Lne4;)Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/impl/TagsKt;->USE_CASE_CAMERA_STATE_CUSTOM_TAG:Landroidx/camera/camera2/pipe/Metadata$Key;

    return-void
.end method

.method public static final getCAMERAX_TAG_BUNDLE()Landroidx/camera/camera2/pipe/Metadata$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "Landroidx/camera/core/impl/TagBundle;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/camera2/impl/TagsKt;->CAMERAX_TAG_BUNDLE:Landroidx/camera/camera2/pipe/Metadata$Key;

    return-object v0
.end method

.method public static final getUSE_CASE_CAMERA_STATE_CUSTOM_TAG()Landroidx/camera/camera2/pipe/Metadata$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/camera2/impl/TagsKt;->USE_CASE_CAMERA_STATE_CUSTOM_TAG:Landroidx/camera/camera2/pipe/Metadata$Key;

    return-object v0
.end method
