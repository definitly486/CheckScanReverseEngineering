.class public final Landroidx/camera/camera2/pipe/OutputStream$Config$ExternalOutputConfig;
.super Landroidx/camera/camera2/pipe/OutputStream$Config;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/OutputStream$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExternalOutputConfig"
.end annotation


# instance fields
.field private final output:Landroid/hardware/camera2/params/OutputConfiguration;


# direct methods
.method private constructor <init>(Landroid/util/Size;ILjava/lang/String;Landroid/hardware/camera2/params/OutputConfiguration;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "I",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            "Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/OutputStream$SensorPixelMode;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p4 .. p4}, Landroidx/camera/camera2/pipe/compat/Api33Compat;->getMirrorMode(Landroid/hardware/camera2/params/OutputConfiguration;)I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;->constructor-impl(I)I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;->box-impl(I)Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    move-result-object v5

    invoke-static/range {p4 .. p4}, Landroidx/camera/camera2/pipe/compat/Api33Compat;->getTimestampBase(Landroid/hardware/camera2/params/OutputConfiguration;)I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->constructor-impl(I)I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;->box-impl(I)Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;

    move-result-object v6

    invoke-static/range {p4 .. p4}, Landroidx/camera/camera2/pipe/compat/Api33Compat;->getDynamicRangeProfile(Landroid/hardware/camera2/params/OutputConfiguration;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;->box-impl(J)Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    move-result-object v7

    invoke-static/range {p4 .. p4}, Landroidx/camera/camera2/pipe/compat/Api33Compat;->getStreamUseCase(Landroid/hardware/camera2/params/OutputConfiguration;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->box-impl(J)Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    move-result-object v8

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v1 .. v11}, Landroidx/camera/camera2/pipe/OutputStream$Config;-><init>(Landroid/util/Size;ILjava/lang/String;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;Ljh2;)V

    move-object/from16 p1, p4

    iput-object p1, p0, Landroidx/camera/camera2/pipe/OutputStream$Config$ExternalOutputConfig;->output:Landroid/hardware/camera2/params/OutputConfiguration;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/util/Size;ILjava/lang/String;Landroid/hardware/camera2/params/OutputConfiguration;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;Ljh2;)V
    .locals 0

    .line 74
    invoke-direct/range {p0 .. p6}, Landroidx/camera/camera2/pipe/OutputStream$Config$ExternalOutputConfig;-><init>(Landroid/util/Size;ILjava/lang/String;Landroid/hardware/camera2/params/OutputConfiguration;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getOutput()Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/OutputStream$Config$ExternalOutputConfig;->output:Landroid/hardware/camera2/params/OutputConfiguration;

    return-object p0
.end method
