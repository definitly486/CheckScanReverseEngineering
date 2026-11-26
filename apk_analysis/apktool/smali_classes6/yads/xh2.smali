.class public final Lyads/xh2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lyads/xh2;->a:F

    iput v0, p0, Lyads/xh2;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lyads/xh2;->c:I

    return-void
.end method


# virtual methods
.method public final a(IFI)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lyads/xh2;->a:F

    iput v0, p0, Lyads/xh2;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lyads/xh2;->c:I

    const/high16 v0, 0x40000000    # 2.0f

    sparse-switch p1, :sswitch_data_0

    const-string p0, "Invalid gravity is set: "

    invoke-static {p1, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :sswitch_0
    sget p1, Lyads/yh2;->b:I

    invoke-static {p3, p2}, Lyads/wh2;->c(IF)F

    move-result p1

    iput p1, p0, Lyads/xh2;->a:F

    iput p1, p0, Lyads/xh2;->b:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lyads/xh2;->c:I

    return-void

    :sswitch_1
    sget p1, Lyads/yh2;->b:I

    invoke-static {p3, p2}, Lyads/wh2;->b(IF)F

    move-result p1

    iput p1, p0, Lyads/xh2;->b:F

    return-void

    :sswitch_2
    sget p1, Lyads/yh2;->b:I

    invoke-static {p3, p2}, Lyads/wh2;->a(IF)F

    move-result p1

    iput p1, p0, Lyads/xh2;->a:F

    mul-float p2, p1, v0

    iput p2, p0, Lyads/xh2;->b:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lyads/xh2;->c:I

    return-void

    :sswitch_3
    iput p2, p0, Lyads/xh2;->a:F

    :sswitch_4
    return-void

    :sswitch_5
    div-float/2addr p2, v0

    iput p2, p0, Lyads/xh2;->a:F

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x3 -> :sswitch_4
        0x5 -> :sswitch_3
        0x10 -> :sswitch_5
        0x30 -> :sswitch_4
        0x50 -> :sswitch_3
        0x1000000 -> :sswitch_2
        0x2000000 -> :sswitch_1
        0x4000000 -> :sswitch_0
        0x10000000 -> :sswitch_2
        0x20000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method
