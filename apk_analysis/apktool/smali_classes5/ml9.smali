.class public final enum Lml9;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lml9;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Lml9;

.field public static final enum LIST:Lml9;

.field public static final enum MAP:Lml9;

.field public static final enum OBJ:Lml9;

.field public static final enum POLY_OBJ:Lml9;


# instance fields
.field public final begin:C

.field public final end:C


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lml9;

    const-string v1, "OBJ"

    const/4 v2, 0x0

    const/16 v3, 0x7b

    const/16 v4, 0x7d

    invoke-direct {v0, v1, v2, v3, v4}, Lml9;-><init>(Ljava/lang/String;ICC)V

    sput-object v0, Lml9;->OBJ:Lml9;

    new-instance v1, Lml9;

    const-string v2, "LIST"

    const/4 v5, 0x1

    const/16 v6, 0x5b

    const/16 v7, 0x5d

    invoke-direct {v1, v2, v5, v6, v7}, Lml9;-><init>(Ljava/lang/String;ICC)V

    sput-object v1, Lml9;->LIST:Lml9;

    new-instance v2, Lml9;

    const-string v5, "MAP"

    const/4 v8, 0x2

    invoke-direct {v2, v5, v8, v3, v4}, Lml9;-><init>(Ljava/lang/String;ICC)V

    sput-object v2, Lml9;->MAP:Lml9;

    new-instance v3, Lml9;

    const-string v4, "POLY_OBJ"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v6, v7}, Lml9;-><init>(Ljava/lang/String;ICC)V

    sput-object v3, Lml9;->POLY_OBJ:Lml9;

    filled-new-array {v0, v1, v2, v3}, [Lml9;

    move-result-object v0

    sput-object v0, Lml9;->$VALUES:[Lml9;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lml9;->$ENTRIES:Lg03;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ICC)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CC)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-char p3, p0, Lml9;->begin:C

    iput-char p4, p0, Lml9;->end:C

    return-void
.end method

.method public static a()Lg03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg03<",
            "Lml9;",
            ">;"
        }
    .end annotation

    sget-object v0, Lml9;->$ENTRIES:Lg03;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lml9;
    .locals 1

    const-class v0, Lml9;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lml9;

    return-object p0
.end method

.method public static values()[Lml9;
    .locals 1

    sget-object v0, Lml9;->$VALUES:[Lml9;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lml9;

    return-object v0
.end method
