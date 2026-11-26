.class public final enum Lcom/hookedonplay/decoviewlib/DecoView$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hookedonplay/decoviewlib/DecoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hookedonplay/decoviewlib/DecoView$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hookedonplay/decoviewlib/DecoView$c;

.field public static final enum GRAVITY_HORIZONTAL_CENTER:Lcom/hookedonplay/decoviewlib/DecoView$c;

.field public static final enum GRAVITY_HORIZONTAL_FILL:Lcom/hookedonplay/decoviewlib/DecoView$c;

.field public static final enum GRAVITY_HORIZONTAL_LEFT:Lcom/hookedonplay/decoviewlib/DecoView$c;

.field public static final enum GRAVITY_HORIZONTAL_RIGHT:Lcom/hookedonplay/decoviewlib/DecoView$c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/hookedonplay/decoviewlib/DecoView$c;

    const-string v1, "GRAVITY_HORIZONTAL_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hookedonplay/decoviewlib/DecoView$c;->GRAVITY_HORIZONTAL_LEFT:Lcom/hookedonplay/decoviewlib/DecoView$c;

    new-instance v1, Lcom/hookedonplay/decoviewlib/DecoView$c;

    const-string v2, "GRAVITY_HORIZONTAL_CENTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hookedonplay/decoviewlib/DecoView$c;->GRAVITY_HORIZONTAL_CENTER:Lcom/hookedonplay/decoviewlib/DecoView$c;

    new-instance v2, Lcom/hookedonplay/decoviewlib/DecoView$c;

    const-string v3, "GRAVITY_HORIZONTAL_RIGHT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/hookedonplay/decoviewlib/DecoView$c;->GRAVITY_HORIZONTAL_RIGHT:Lcom/hookedonplay/decoviewlib/DecoView$c;

    new-instance v3, Lcom/hookedonplay/decoviewlib/DecoView$c;

    const-string v4, "GRAVITY_HORIZONTAL_FILL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hookedonplay/decoviewlib/DecoView$c;->GRAVITY_HORIZONTAL_FILL:Lcom/hookedonplay/decoviewlib/DecoView$c;

    filled-new-array {v0, v1, v2, v3}, [Lcom/hookedonplay/decoviewlib/DecoView$c;

    move-result-object v0

    sput-object v0, Lcom/hookedonplay/decoviewlib/DecoView$c;->$VALUES:[Lcom/hookedonplay/decoviewlib/DecoView$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hookedonplay/decoviewlib/DecoView$c;
    .locals 1

    const-class v0, Lcom/hookedonplay/decoviewlib/DecoView$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hookedonplay/decoviewlib/DecoView$c;

    return-object p0
.end method

.method public static values()[Lcom/hookedonplay/decoviewlib/DecoView$c;
    .locals 1

    sget-object v0, Lcom/hookedonplay/decoviewlib/DecoView$c;->$VALUES:[Lcom/hookedonplay/decoviewlib/DecoView$c;

    invoke-virtual {v0}, [Lcom/hookedonplay/decoviewlib/DecoView$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hookedonplay/decoviewlib/DecoView$c;

    return-object v0
.end method
