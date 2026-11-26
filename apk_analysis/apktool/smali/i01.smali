.class public final synthetic Li01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La13$b;
.implements Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;
.implements Lyads/l66;
.implements Lcom/my/target/m1$b;
.implements Lyads/st3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 7
    iput p1, p0, Li01;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz94$b;Lxda;)V
    .locals 0

    const/4 p1, 0x6

    iput p1, p0, Li01;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic b()Landroid/graphics/ColorSpace$Named;
    .locals 1

    sget-object v0, Landroid/graphics/ColorSpace$Named;->BT2020_PQ:Landroid/graphics/ColorSpace$Named;

    return-object v0
.end method

.method public static c(Lgi0;Ltc5;)V
    .locals 1

    new-instance v0, Lm08;

    invoke-direct {v0, p0}, Ld64;-><init>(Lgi0;)V

    invoke-virtual {p1, v0}, Ltc5;->a(Ld64;)V

    return-void
.end method

.method public static d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 34
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Li01;->b:I

    sparse-switch p0, :sswitch_data_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lyads/z51;->b(J)Z

    move-result p0

    return p0

    :sswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lyads/u01;->a(Ljava/lang/String;)Z

    move-result p0

    return p0

    :sswitch_1
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lyads/az1;->a(D)Z

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Ljava/util/List;)Z
    .locals 0

    .line 35
    invoke-static {p1}, Lyads/zg1;->a(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/app/UiModeManager;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/Z7;->a(Landroid/app/UiModeManager;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
