.class public final enum Lq03;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq03;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lq03;

.field public static final enum CANCEL:Lq03;

.field public static final enum COMPRESSION_ERROR:Lq03;

.field public static final enum CONNECT_ERROR:Lq03;

.field public static final enum ENHANCE_YOUR_CALM:Lq03;

.field public static final enum FLOW_CONTROL_ERROR:Lq03;

.field public static final enum FRAME_TOO_LARGE:Lq03;

.field public static final enum HTTP_1_1_REQUIRED:Lq03;

.field public static final enum INADEQUATE_SECURITY:Lq03;

.field public static final enum INTERNAL_ERROR:Lq03;

.field public static final enum INVALID_CREDENTIALS:Lq03;

.field public static final enum INVALID_STREAM:Lq03;

.field public static final enum NO_ERROR:Lq03;

.field public static final enum PROTOCOL_ERROR:Lq03;

.field public static final enum REFUSED_STREAM:Lq03;

.field public static final enum STREAM_ALREADY_CLOSED:Lq03;

.field public static final enum STREAM_CLOSED:Lq03;

.field public static final enum STREAM_IN_USE:Lq03;

.field public static final enum UNSUPPORTED_VERSION:Lq03;


# instance fields
.field public final httpCode:I

.field public final spdyGoAwayCode:I

.field public final spdyRstCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v0, Lq03;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lq03;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lq03;->NO_ERROR:Lq03;

    new-instance v1, Lq03;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v2, "PROTOCOL_ERROR"

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Lq03;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lq03;->PROTOCOL_ERROR:Lq03;

    new-instance v2, Lq03;

    const/4 v6, 0x2

    const/4 v7, -0x1

    const-string v3, "INVALID_STREAM"

    const/4 v4, 0x2

    invoke-direct/range {v2 .. v7}, Lq03;-><init>(Ljava/lang/String;IIII)V

    sput-object v2, Lq03;->INVALID_STREAM:Lq03;

    new-instance v3, Lq03;

    const/4 v7, 0x4

    const/4 v8, -0x1

    const-string v4, "UNSUPPORTED_VERSION"

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-direct/range {v3 .. v8}, Lq03;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lq03;->UNSUPPORTED_VERSION:Lq03;

    new-instance v4, Lq03;

    const/16 v8, 0x8

    const/4 v9, -0x1

    const-string v5, "STREAM_IN_USE"

    const/4 v6, 0x4

    const/4 v7, 0x1

    invoke-direct/range {v4 .. v9}, Lq03;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lq03;->STREAM_IN_USE:Lq03;

    new-instance v5, Lq03;

    const/16 v9, 0x9

    const/4 v10, -0x1

    const-string v6, "STREAM_ALREADY_CLOSED"

    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-direct/range {v5 .. v10}, Lq03;-><init>(Ljava/lang/String;IIII)V

    sput-object v5, Lq03;->STREAM_ALREADY_CLOSED:Lq03;

    new-instance v6, Lq03;

    const/4 v10, 0x6

    const/4 v11, 0x2

    const-string v7, "INTERNAL_ERROR"

    const/4 v8, 0x6

    const/4 v9, 0x2

    invoke-direct/range {v6 .. v11}, Lq03;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lq03;->INTERNAL_ERROR:Lq03;

    new-instance v7, Lq03;

    const/4 v11, 0x7

    const/4 v12, -0x1

    const-string v8, "FLOW_CONTROL_ERROR"

    const/4 v9, 0x7

    const/4 v10, 0x3

    invoke-direct/range {v7 .. v12}, Lq03;-><init>(Ljava/lang/String;IIII)V

    sput-object v7, Lq03;->FLOW_CONTROL_ERROR:Lq03;

    new-instance v8, Lq03;

    const/4 v13, -0x1

    const-string v9, "STREAM_CLOSED"

    const/16 v10, 0x8

    const/4 v11, 0x5

    invoke-direct/range {v8 .. v13}, Lq03;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lq03;->STREAM_CLOSED:Lq03;

    new-instance v9, Lq03;

    const/16 v13, 0xb

    const/4 v14, -0x1

    const-string v10, "FRAME_TOO_LARGE"

    const/16 v11, 0x9

    const/4 v12, 0x6

    invoke-direct/range {v9 .. v14}, Lq03;-><init>(Ljava/lang/String;IIII)V

    sput-object v9, Lq03;->FRAME_TOO_LARGE:Lq03;

    new-instance v10, Lq03;

    const/4 v14, 0x3

    const/4 v15, -0x1

    const-string v11, "REFUSED_STREAM"

    const/16 v12, 0xa

    const/4 v13, 0x7

    invoke-direct/range {v10 .. v15}, Lq03;-><init>(Ljava/lang/String;IIII)V

    sput-object v10, Lq03;->REFUSED_STREAM:Lq03;

    new-instance v11, Lq03;

    const/4 v15, 0x5

    const/16 v16, -0x1

    const-string v12, "CANCEL"

    const/16 v13, 0xb

    const/16 v14, 0x8

    invoke-direct/range {v11 .. v16}, Lq03;-><init>(Ljava/lang/String;IIII)V

    sput-object v11, Lq03;->CANCEL:Lq03;

    new-instance v12, Lq03;

    const/16 v17, -0x1

    const-string v13, "COMPRESSION_ERROR"

    const/16 v14, 0xc

    const/16 v15, 0x9

    invoke-direct/range {v12 .. v17}, Lq03;-><init>(Ljava/lang/String;IIII)V

    sput-object v12, Lq03;->COMPRESSION_ERROR:Lq03;

    new-instance v13, Lq03;

    const/16 v18, -0x1

    const-string v14, "CONNECT_ERROR"

    const/16 v15, 0xd

    const/16 v16, 0xa

    invoke-direct/range {v13 .. v18}, Lq03;-><init>(Ljava/lang/String;IIII)V

    sput-object v13, Lq03;->CONNECT_ERROR:Lq03;

    new-instance v14, Lq03;

    const/16 v19, -0x1

    const-string v15, "ENHANCE_YOUR_CALM"

    const/16 v16, 0xe

    const/16 v17, 0xb

    invoke-direct/range {v14 .. v19}, Lq03;-><init>(Ljava/lang/String;IIII)V

    sput-object v14, Lq03;->ENHANCE_YOUR_CALM:Lq03;

    new-instance v16, Lq03;

    const/16 v20, -0x1

    move-object/from16 v15, v16

    const-string v16, "INADEQUATE_SECURITY"

    const/16 v17, 0xf

    const/16 v18, 0xc

    invoke-direct/range {v15 .. v20}, Lq03;-><init>(Ljava/lang/String;IIII)V

    sput-object v15, Lq03;->INADEQUATE_SECURITY:Lq03;

    new-instance v16, Lq03;

    const/16 v21, -0x1

    const-string v17, "HTTP_1_1_REQUIRED"

    const/16 v18, 0x10

    const/16 v19, 0xd

    invoke-direct/range {v16 .. v21}, Lq03;-><init>(Ljava/lang/String;IIII)V

    sput-object v16, Lq03;->HTTP_1_1_REQUIRED:Lq03;

    new-instance v17, Lq03;

    const/16 v21, 0xa

    const/16 v22, -0x1

    const-string v18, "INVALID_CREDENTIALS"

    const/16 v19, 0x11

    invoke-direct/range {v17 .. v22}, Lq03;-><init>(Ljava/lang/String;IIII)V

    sput-object v17, Lq03;->INVALID_CREDENTIALS:Lq03;

    move-object/from16 v18, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    filled-new-array/range {v1 .. v18}, [Lq03;

    move-result-object v0

    sput-object v0, Lq03;->$VALUES:[Lq03;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lq03;->httpCode:I

    iput p4, p0, Lq03;->spdyRstCode:I

    iput p5, p0, Lq03;->spdyGoAwayCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq03;
    .locals 1

    const-class v0, Lq03;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq03;

    return-object p0
.end method

.method public static values()[Lq03;
    .locals 1

    sget-object v0, Lq03;->$VALUES:[Lq03;

    invoke-virtual {v0}, [Lq03;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq03;

    return-object v0
.end method
