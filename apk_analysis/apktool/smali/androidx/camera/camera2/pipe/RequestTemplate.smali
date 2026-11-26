.class public final Landroidx/camera/camera2/pipe/RequestTemplate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final value:I


# direct methods
.method private synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/camera2/pipe/RequestTemplate;->value:I

    return-void
.end method

.method public static final synthetic box-impl(I)Landroidx/camera/camera2/pipe/RequestTemplate;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/RequestTemplate;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/RequestTemplate;-><init>(I)V

    return-object v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/camera/camera2/pipe/RequestTemplate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/camera/camera2/pipe/RequestTemplate;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/RequestTemplate;->unbox-impl()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final getName-impl(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN-"

    invoke-static {p0, v0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "TEMPLATE_MANUAL"

    return-object p0

    :pswitch_1
    const-string p0, "TEMPLATE_ZERO_SHUTTER_LAG"

    return-object p0

    :pswitch_2
    const-string p0, "TEMPLATE_VIDEO_SNAPSHOT"

    return-object p0

    :pswitch_3
    const-string p0, "TEMPLATE_RECORD"

    return-object p0

    :pswitch_4
    const-string p0, "TEMPLATE_STILL_CAPTURE"

    return-object p0

    :pswitch_5
    const-string p0, "TEMPLATE_PREVIEW"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hashCode-impl(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 2

    const-string v0, "RequestTemplate(value="

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lqz0;->d(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/RequestTemplate;->value:I

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/RequestTemplate;->equals-impl(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getValue()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/RequestTemplate;->value:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/RequestTemplate;->value:I

    invoke-static {p0}, Landroidx/camera/camera2/pipe/RequestTemplate;->hashCode-impl(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/RequestTemplate;->value:I

    invoke-static {p0}, Landroidx/camera/camera2/pipe/RequestTemplate;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/RequestTemplate;->value:I

    return p0
.end method
