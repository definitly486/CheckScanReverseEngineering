.class public final Landroidx/camera/camera2/pipe/OutputStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/OutputStatus$Companion;
    }
.end annotation


# static fields
.field private static final AVAILABLE:I

.field public static final Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

.field private static final ERROR_OUTPUT_ABORTED:I

.field private static final ERROR_OUTPUT_DROPPED:I

.field private static final ERROR_OUTPUT_FAILED:I

.field private static final ERROR_OUTPUT_MISSING:I

.field private static final PENDING:I

.field private static final UNAVAILABLE:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputStatus;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/OutputStatus;->PENDING:I

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputStatus;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/OutputStatus;->AVAILABLE:I

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputStatus;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/OutputStatus;->UNAVAILABLE:I

    const/16 v0, 0xa

    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputStatus;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/OutputStatus;->ERROR_OUTPUT_FAILED:I

    const/16 v0, 0xb

    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputStatus;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/OutputStatus;->ERROR_OUTPUT_ABORTED:I

    const/16 v0, 0xc

    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputStatus;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/OutputStatus;->ERROR_OUTPUT_MISSING:I

    const/16 v0, 0xd

    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputStatus;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/OutputStatus;->ERROR_OUTPUT_DROPPED:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/camera2/pipe/OutputStatus;->value:I

    return-void
.end method

.method public static final synthetic access$getAVAILABLE$cp()I
    .locals 1

    sget v0, Landroidx/camera/camera2/pipe/OutputStatus;->AVAILABLE:I

    return v0
.end method

.method public static final synthetic access$getERROR_OUTPUT_ABORTED$cp()I
    .locals 1

    sget v0, Landroidx/camera/camera2/pipe/OutputStatus;->ERROR_OUTPUT_ABORTED:I

    return v0
.end method

.method public static final synthetic access$getERROR_OUTPUT_DROPPED$cp()I
    .locals 1

    sget v0, Landroidx/camera/camera2/pipe/OutputStatus;->ERROR_OUTPUT_DROPPED:I

    return v0
.end method

.method public static final synthetic access$getERROR_OUTPUT_FAILED$cp()I
    .locals 1

    sget v0, Landroidx/camera/camera2/pipe/OutputStatus;->ERROR_OUTPUT_FAILED:I

    return v0
.end method

.method public static final synthetic access$getERROR_OUTPUT_MISSING$cp()I
    .locals 1

    sget v0, Landroidx/camera/camera2/pipe/OutputStatus;->ERROR_OUTPUT_MISSING:I

    return v0
.end method

.method public static final synthetic access$getPENDING$cp()I
    .locals 1

    sget v0, Landroidx/camera/camera2/pipe/OutputStatus;->PENDING:I

    return v0
.end method

.method public static final synthetic access$getUNAVAILABLE$cp()I
    .locals 1

    sget v0, Landroidx/camera/camera2/pipe/OutputStatus;->UNAVAILABLE:I

    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/camera/camera2/pipe/OutputStatus;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/OutputStatus;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/OutputStatus;-><init>(I)V

    return-object v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/camera/camera2/pipe/OutputStatus;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/camera/camera2/pipe/OutputStatus;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/OutputStatus;->unbox-impl()I

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

.method public static hashCode-impl(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v0, "OutputStatus(value="

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lqz0;->d(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "ERROR_OUTPUT_DROPPED"

    return-object p0

    :pswitch_1
    const-string p0, "ERROR_OUTPUT_MISSING"

    return-object p0

    :pswitch_2
    const-string p0, "ERROR_OUTPUT_ABORTED"

    return-object p0

    :pswitch_3
    const-string p0, "ERROR_OUTPUT_FAILED"

    return-object p0

    :cond_0
    const-string p0, "UNAVAILABLE"

    return-object p0

    :cond_1
    const-string p0, "AVAILABLE"

    return-object p0

    :cond_2
    const-string p0, "PENDING"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/OutputStatus;->value:I

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/OutputStatus;->equals-impl(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getValue()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/OutputStatus;->value:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/OutputStatus;->value:I

    invoke-static {p0}, Landroidx/camera/camera2/pipe/OutputStatus;->hashCode-impl(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/OutputStatus;->value:I

    invoke-static {p0}, Landroidx/camera/camera2/pipe/OutputStatus;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/OutputStatus;->value:I

    return p0
.end method
