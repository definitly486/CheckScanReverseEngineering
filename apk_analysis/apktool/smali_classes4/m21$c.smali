.class public final enum Lm21$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lm21$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lm21$c;

.field public static final enum EXPERIMENTAL_PAYLOAD:Lm21$c;

.field public static final enum PAYLOAD_NOT_SET:Lm21$c;

.field public static final enum VANILLA_PAYLOAD:Lm21$c;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lm21$c;

    const-string v1, "VANILLA_PAYLOAD"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lm21$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lm21$c;->VANILLA_PAYLOAD:Lm21$c;

    new-instance v1, Lm21$c;

    const-string v4, "EXPERIMENTAL_PAYLOAD"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lm21$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lm21$c;->EXPERIMENTAL_PAYLOAD:Lm21$c;

    new-instance v3, Lm21$c;

    const-string v4, "PAYLOAD_NOT_SET"

    invoke-direct {v3, v4, v5, v2}, Lm21$c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lm21$c;->PAYLOAD_NOT_SET:Lm21$c;

    filled-new-array {v0, v1, v3}, [Lm21$c;

    move-result-object v0

    sput-object v0, Lm21$c;->$VALUES:[Lm21$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lm21$c;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lm21$c;
    .locals 1

    const-class v0, Lm21$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lm21$c;

    return-object p0
.end method

.method public static values()[Lm21$c;
    .locals 1

    sget-object v0, Lm21$c;->$VALUES:[Lm21$c;

    invoke-virtual {v0}, [Lm21$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm21$c;

    return-object v0
.end method
