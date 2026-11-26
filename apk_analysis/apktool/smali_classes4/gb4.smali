.class public final enum Lgb4;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgb4;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgb4;

.field public static final enum BOOLEAN:Lgb4;

.field public static final enum BYTE_STRING:Lgb4;

.field public static final enum DOUBLE:Lgb4;

.field public static final enum ENUM:Lgb4;

.field public static final enum FLOAT:Lgb4;

.field public static final enum INT:Lgb4;

.field public static final enum LONG:Lgb4;

.field public static final enum MESSAGE:Lgb4;

.field public static final enum STRING:Lgb4;

.field public static final enum VOID:Lgb4;


# instance fields
.field private final boxedType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final defaultDefault:Ljava/lang/Object;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v0, Lgb4;

    const-class v3, Ljava/lang/Void;

    const/4 v5, 0x0

    const-string v1, "VOID"

    const/4 v2, 0x0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lgb4;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    sput-object v0, Lgb4;->VOID:Lgb4;

    new-instance v1, Lgb4;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v2, "INT"

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    invoke-direct/range {v1 .. v6}, Lgb4;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    sput-object v1, Lgb4;->INT:Lgb4;

    new-instance v2, Lgb4;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v7, "LONG"

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v10, Ljava/lang/Long;

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lgb4;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    sput-object v2, Lgb4;->LONG:Lgb4;

    new-instance v3, Lgb4;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const-string v7, "FLOAT"

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v10, Ljava/lang/Float;

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lgb4;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    sput-object v3, Lgb4;->FLOAT:Lgb4;

    new-instance v6, Lgb4;

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    const-string v7, "DOUBLE"

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v10, Ljava/lang/Double;

    invoke-direct/range {v6 .. v11}, Lgb4;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    sput-object v6, Lgb4;->DOUBLE:Lgb4;

    new-instance v7, Lgb4;

    const-class v11, Ljava/lang/Boolean;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v8, "BOOLEAN"

    const/4 v9, 0x5

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct/range {v7 .. v12}, Lgb4;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    move-object v13, v7

    sput-object v13, Lgb4;->BOOLEAN:Lgb4;

    new-instance v7, Lgb4;

    const-class v10, Ljava/lang/String;

    const-string v12, ""

    const-string v8, "STRING"

    const/4 v9, 0x6

    move-object v11, v10

    invoke-direct/range {v7 .. v12}, Lgb4;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    move-object v14, v7

    sput-object v14, Lgb4;->STRING:Lgb4;

    new-instance v7, Lgb4;

    const-class v10, Lfx0;

    sget-object v12, Lfx0;->c:Lfx0$h;

    const-string v8, "BYTE_STRING"

    const/4 v9, 0x7

    move-object v11, v10

    invoke-direct/range {v7 .. v12}, Lgb4;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    move-object v15, v7

    sput-object v15, Lgb4;->BYTE_STRING:Lgb4;

    new-instance v7, Lgb4;

    const/16 v9, 0x8

    const/4 v12, 0x0

    const-string v8, "ENUM"

    move-object v10, v4

    move-object v11, v5

    invoke-direct/range {v7 .. v12}, Lgb4;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    sput-object v7, Lgb4;->ENUM:Lgb4;

    new-instance v16, Lgb4;

    const-class v19, Ljava/lang/Object;

    const/16 v21, 0x0

    const-string v17, "MESSAGE"

    const/16 v18, 0x9

    move-object/from16 v20, v19

    invoke-direct/range {v16 .. v21}, Lgb4;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    sput-object v16, Lgb4;->MESSAGE:Lgb4;

    move-object v4, v6

    move-object v8, v7

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v9, v16

    filled-new-array/range {v0 .. v9}, [Lgb4;

    move-result-object v0

    sput-object v0, Lgb4;->$VALUES:[Lgb4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lgb4;->type:Ljava/lang/Class;

    iput-object p4, p0, Lgb4;->boxedType:Ljava/lang/Class;

    iput-object p5, p0, Lgb4;->defaultDefault:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgb4;
    .locals 1

    const-class v0, Lgb4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgb4;

    return-object p0
.end method

.method public static values()[Lgb4;
    .locals 1

    sget-object v0, Lgb4;->$VALUES:[Lgb4;

    invoke-virtual {v0}, [Lgb4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgb4;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lgb4;->boxedType:Ljava/lang/Class;

    return-object p0
.end method
