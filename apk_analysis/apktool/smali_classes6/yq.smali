.class public final synthetic Lyq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;
.implements Lyads/st3;
.implements Lyads/l66;
.implements Lyads/kb3;
.implements Lyads/jv;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lyq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic b()Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->EXTENSION_STRENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    return-object v0
.end method

.method public static synthetic c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic d(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Lyads/kv;
    .locals 0

    .line 45
    invoke-static {p1}, Lyads/z35;->a(Landroid/os/Bundle;)Lyads/z35;

    move-result-object p0

    return-object p0
.end method

.method public a(IIIII)Z
    .locals 0

    .line 44
    invoke-static {p1, p2, p3, p4, p5}, Lyads/mb3;->b(IIIII)Z

    move-result p0

    return p0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lyq;->b:I

    check-cast p1, Ljava/lang/Long;

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lyads/zg1;->b(J)Z

    move-result p0

    return p0

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lyads/tz1;->b(J)Z

    move-result p0

    return p0

    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lyads/s11;->b(J)Z

    move-result p0

    return p0

    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lyads/gr0;->b(J)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/util/List;)Z
    .locals 0

    .line 46
    invoke-static {p1}, Lyads/az1;->b(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public align(ILandroidx/compose/ui/unit/LayoutDirection;)I
    .locals 0

    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/Arrangement;->e(ILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result p0

    return p0
.end method
