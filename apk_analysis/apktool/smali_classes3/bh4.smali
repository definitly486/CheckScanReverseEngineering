.class public final enum Lbh4;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbh4;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbh4;

.field public static final enum ADD:Lbh4;

.field public static final enum COLOR:Lbh4;

.field public static final enum COLOR_BURN:Lbh4;

.field public static final enum COLOR_DODGE:Lbh4;

.field public static final enum DARKEN:Lbh4;

.field public static final enum DIFFERENCE:Lbh4;

.field public static final enum EXCLUSION:Lbh4;

.field public static final enum HARD_LIGHT:Lbh4;

.field public static final enum HARD_MIX:Lbh4;

.field public static final enum HUE:Lbh4;

.field public static final enum LIGHTEN:Lbh4;

.field public static final enum LUMINOSITY:Lbh4;

.field public static final enum MULTIPLY:Lbh4;

.field public static final enum NORMAL:Lbh4;

.field public static final enum OVERLAY:Lbh4;

.field public static final enum SATURATION:Lbh4;

.field public static final enum SCREEN:Lbh4;

.field public static final enum SOFT_LIGHT:Lbh4;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v1, Lbh4;

    const-string v0, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbh4;->NORMAL:Lbh4;

    new-instance v2, Lbh4;

    const-string v0, "MULTIPLY"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lbh4;->MULTIPLY:Lbh4;

    new-instance v3, Lbh4;

    const-string v0, "SCREEN"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lbh4;->SCREEN:Lbh4;

    new-instance v4, Lbh4;

    const-string v0, "OVERLAY"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lbh4;->OVERLAY:Lbh4;

    new-instance v5, Lbh4;

    const-string v0, "DARKEN"

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lbh4;->DARKEN:Lbh4;

    new-instance v6, Lbh4;

    const-string v0, "LIGHTEN"

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lbh4;->LIGHTEN:Lbh4;

    new-instance v7, Lbh4;

    const-string v0, "COLOR_DODGE"

    const/4 v8, 0x6

    invoke-direct {v7, v0, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lbh4;->COLOR_DODGE:Lbh4;

    new-instance v8, Lbh4;

    const-string v0, "COLOR_BURN"

    const/4 v9, 0x7

    invoke-direct {v8, v0, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lbh4;->COLOR_BURN:Lbh4;

    new-instance v9, Lbh4;

    const-string v0, "HARD_LIGHT"

    const/16 v10, 0x8

    invoke-direct {v9, v0, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lbh4;->HARD_LIGHT:Lbh4;

    new-instance v10, Lbh4;

    const-string v0, "SOFT_LIGHT"

    const/16 v11, 0x9

    invoke-direct {v10, v0, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lbh4;->SOFT_LIGHT:Lbh4;

    new-instance v11, Lbh4;

    const-string v0, "DIFFERENCE"

    const/16 v12, 0xa

    invoke-direct {v11, v0, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lbh4;->DIFFERENCE:Lbh4;

    new-instance v12, Lbh4;

    const-string v0, "EXCLUSION"

    const/16 v13, 0xb

    invoke-direct {v12, v0, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lbh4;->EXCLUSION:Lbh4;

    new-instance v13, Lbh4;

    const-string v0, "HUE"

    const/16 v14, 0xc

    invoke-direct {v13, v0, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lbh4;->HUE:Lbh4;

    new-instance v14, Lbh4;

    const-string v0, "SATURATION"

    const/16 v15, 0xd

    invoke-direct {v14, v0, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lbh4;->SATURATION:Lbh4;

    new-instance v15, Lbh4;

    const-string v0, "COLOR"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    invoke-direct {v15, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lbh4;->COLOR:Lbh4;

    new-instance v0, Lbh4;

    const-string v1, "LUMINOSITY"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbh4;->LUMINOSITY:Lbh4;

    new-instance v1, Lbh4;

    const-string v2, "ADD"

    move-object/from16 v18, v0

    const/16 v0, 0x10

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbh4;->ADD:Lbh4;

    new-instance v0, Lbh4;

    const-string v2, "HARD_MIX"

    move-object/from16 v19, v1

    const/16 v1, 0x11

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbh4;->HARD_MIX:Lbh4;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v0

    filled-new-array/range {v1 .. v18}, [Lbh4;

    move-result-object v0

    sput-object v0, Lbh4;->$VALUES:[Lbh4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lbh4;
    .locals 1

    const-class v0, Lbh4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbh4;

    return-object p0
.end method

.method public static values()[Lbh4;
    .locals 1

    sget-object v0, Lbh4;->$VALUES:[Lbh4;

    invoke-virtual {v0}, [Lbh4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbh4;

    return-object v0
.end method
