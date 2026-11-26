.class public final enum Luu4$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/proto/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luu4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luu4$a;",
        ">;",
        "Lcom/google/firebase/encoders/proto/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luu4$a;

.field public static final enum CACHE_FULL:Luu4$a;

.field public static final enum INVALID_PAYLOD:Luu4$a;

.field public static final enum MAX_RETRIES_REACHED:Luu4$a;

.field public static final enum MESSAGE_TOO_OLD:Luu4$a;

.field public static final enum PAYLOAD_TOO_BIG:Luu4$a;

.field public static final enum REASON_UNKNOWN:Luu4$a;

.field public static final enum SERVER_ERROR:Luu4$a;


# instance fields
.field private final number_:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Luu4$a;

    const-string v1, "REASON_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Luu4$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Luu4$a;->REASON_UNKNOWN:Luu4$a;

    new-instance v1, Luu4$a;

    const-string v2, "MESSAGE_TOO_OLD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Luu4$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Luu4$a;->MESSAGE_TOO_OLD:Luu4$a;

    new-instance v2, Luu4$a;

    const-string v3, "CACHE_FULL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Luu4$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Luu4$a;->CACHE_FULL:Luu4$a;

    new-instance v3, Luu4$a;

    const-string v4, "PAYLOAD_TOO_BIG"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Luu4$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Luu4$a;->PAYLOAD_TOO_BIG:Luu4$a;

    new-instance v4, Luu4$a;

    const-string v5, "MAX_RETRIES_REACHED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Luu4$a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Luu4$a;->MAX_RETRIES_REACHED:Luu4$a;

    new-instance v5, Luu4$a;

    const-string v6, "INVALID_PAYLOD"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Luu4$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Luu4$a;->INVALID_PAYLOD:Luu4$a;

    new-instance v6, Luu4$a;

    const-string v7, "SERVER_ERROR"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Luu4$a;-><init>(Ljava/lang/String;II)V

    sput-object v6, Luu4$a;->SERVER_ERROR:Luu4$a;

    filled-new-array/range {v0 .. v6}, [Luu4$a;

    move-result-object v0

    sput-object v0, Luu4$a;->$VALUES:[Luu4$a;

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

    iput p3, p0, Luu4$a;->number_:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Luu4$a;
    .locals 1

    const-class v0, Luu4$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luu4$a;

    return-object p0
.end method

.method public static values()[Luu4$a;
    .locals 1

    sget-object v0, Luu4$a;->$VALUES:[Luu4$a;

    invoke-virtual {v0}, [Luu4$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luu4$a;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Luu4$a;->number_:I

    return p0
.end method
