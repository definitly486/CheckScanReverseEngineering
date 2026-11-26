.class public final enum Lcom/tapjoy/TJEntryPoint;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/TJEntryPoint;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ENTRY_POINT_COMPLETE:Lcom/tapjoy/TJEntryPoint;

.field public static final enum ENTRY_POINT_EXIT:Lcom/tapjoy/TJEntryPoint;

.field public static final enum ENTRY_POINT_FAIL:Lcom/tapjoy/TJEntryPoint;

.field public static final enum ENTRY_POINT_HUD:Lcom/tapjoy/TJEntryPoint;

.field public static final enum ENTRY_POINT_INBOX:Lcom/tapjoy/TJEntryPoint;

.field public static final enum ENTRY_POINT_INIT:Lcom/tapjoy/TJEntryPoint;

.field public static final enum ENTRY_POINT_MAIN_MENU:Lcom/tapjoy/TJEntryPoint;

.field public static final enum ENTRY_POINT_OTHER:Lcom/tapjoy/TJEntryPoint;

.field public static final enum ENTRY_POINT_STORE:Lcom/tapjoy/TJEntryPoint;

.field public static final enum ENTRY_POINT_UNKNOWN:Lcom/tapjoy/TJEntryPoint;

.field public static final synthetic b:[Lcom/tapjoy/TJEntryPoint;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/tapjoy/TJEntryPoint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "ENTRY_POINT_UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/tapjoy/TJEntryPoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/TJEntryPoint;->ENTRY_POINT_UNKNOWN:Lcom/tapjoy/TJEntryPoint;

    new-instance v1, Lcom/tapjoy/TJEntryPoint;

    const/4 v2, 0x1

    const-string v3, "other"

    const-string v4, "ENTRY_POINT_OTHER"

    invoke-direct {v1, v4, v2, v3}, Lcom/tapjoy/TJEntryPoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tapjoy/TJEntryPoint;->ENTRY_POINT_OTHER:Lcom/tapjoy/TJEntryPoint;

    new-instance v2, Lcom/tapjoy/TJEntryPoint;

    const/4 v3, 0x2

    const-string v4, "main_menu"

    const-string v5, "ENTRY_POINT_MAIN_MENU"

    invoke-direct {v2, v5, v3, v4}, Lcom/tapjoy/TJEntryPoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/tapjoy/TJEntryPoint;->ENTRY_POINT_MAIN_MENU:Lcom/tapjoy/TJEntryPoint;

    new-instance v3, Lcom/tapjoy/TJEntryPoint;

    const/4 v4, 0x3

    const-string v5, "hud"

    const-string v6, "ENTRY_POINT_HUD"

    invoke-direct {v3, v6, v4, v5}, Lcom/tapjoy/TJEntryPoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/tapjoy/TJEntryPoint;->ENTRY_POINT_HUD:Lcom/tapjoy/TJEntryPoint;

    new-instance v4, Lcom/tapjoy/TJEntryPoint;

    const/4 v5, 0x4

    const-string v6, "exit"

    const-string v7, "ENTRY_POINT_EXIT"

    invoke-direct {v4, v7, v5, v6}, Lcom/tapjoy/TJEntryPoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/tapjoy/TJEntryPoint;->ENTRY_POINT_EXIT:Lcom/tapjoy/TJEntryPoint;

    new-instance v5, Lcom/tapjoy/TJEntryPoint;

    const/4 v6, 0x5

    const-string v7, "fail"

    const-string v8, "ENTRY_POINT_FAIL"

    invoke-direct {v5, v8, v6, v7}, Lcom/tapjoy/TJEntryPoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/tapjoy/TJEntryPoint;->ENTRY_POINT_FAIL:Lcom/tapjoy/TJEntryPoint;

    new-instance v6, Lcom/tapjoy/TJEntryPoint;

    const/4 v7, 0x6

    const-string v8, "complete"

    const-string v9, "ENTRY_POINT_COMPLETE"

    invoke-direct {v6, v9, v7, v8}, Lcom/tapjoy/TJEntryPoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/tapjoy/TJEntryPoint;->ENTRY_POINT_COMPLETE:Lcom/tapjoy/TJEntryPoint;

    new-instance v7, Lcom/tapjoy/TJEntryPoint;

    const/4 v8, 0x7

    const-string v9, "inbox"

    const-string v10, "ENTRY_POINT_INBOX"

    invoke-direct {v7, v10, v8, v9}, Lcom/tapjoy/TJEntryPoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/tapjoy/TJEntryPoint;->ENTRY_POINT_INBOX:Lcom/tapjoy/TJEntryPoint;

    new-instance v8, Lcom/tapjoy/TJEntryPoint;

    const/16 v9, 0x8

    const-string v10, "initialisation"

    const-string v11, "ENTRY_POINT_INIT"

    invoke-direct {v8, v11, v9, v10}, Lcom/tapjoy/TJEntryPoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/tapjoy/TJEntryPoint;->ENTRY_POINT_INIT:Lcom/tapjoy/TJEntryPoint;

    new-instance v9, Lcom/tapjoy/TJEntryPoint;

    const/16 v10, 0x9

    const-string v11, "store"

    const-string v12, "ENTRY_POINT_STORE"

    invoke-direct {v9, v12, v10, v11}, Lcom/tapjoy/TJEntryPoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/tapjoy/TJEntryPoint;->ENTRY_POINT_STORE:Lcom/tapjoy/TJEntryPoint;

    filled-new-array/range {v0 .. v9}, [Lcom/tapjoy/TJEntryPoint;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TJEntryPoint;->b:[Lcom/tapjoy/TJEntryPoint;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tapjoy/TJEntryPoint;->a:Ljava/lang/String;

    return-void
.end method

.method public static fromOrdinal(I)Lcom/tapjoy/TJEntryPoint;
    .locals 1

    invoke-static {}, Lcom/tapjoy/TJEntryPoint;->values()[Lcom/tapjoy/TJEntryPoint;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/tapjoy/TJEntryPoint;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "initialisation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "store"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_2
    const-string v0, "other"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_3
    const-string v0, "inbox"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_4
    const-string v0, "fail"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v0, "exit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_6
    const-string v0, "hud"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_7
    const-string v0, "main_menu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_8
    const-string v0, "complete"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget-object p0, Lcom/tapjoy/TJEntryPoint;->ENTRY_POINT_UNKNOWN:Lcom/tapjoy/TJEntryPoint;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/tapjoy/TJEntryPoint;->ENTRY_POINT_INIT:Lcom/tapjoy/TJEntryPoint;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/tapjoy/TJEntryPoint;->ENTRY_POINT_STORE:Lcom/tapjoy/TJEntryPoint;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/tapjoy/TJEntryPoint;->ENTRY_POINT_OTHER:Lcom/tapjoy/TJEntryPoint;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/tapjoy/TJEntryPoint;->ENTRY_POINT_INBOX:Lcom/tapjoy/TJEntryPoint;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/tapjoy/TJEntryPoint;->ENTRY_POINT_FAIL:Lcom/tapjoy/TJEntryPoint;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/tapjoy/TJEntryPoint;->ENTRY_POINT_EXIT:Lcom/tapjoy/TJEntryPoint;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/tapjoy/TJEntryPoint;->ENTRY_POINT_HUD:Lcom/tapjoy/TJEntryPoint;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/tapjoy/TJEntryPoint;->ENTRY_POINT_MAIN_MENU:Lcom/tapjoy/TJEntryPoint;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/tapjoy/TJEntryPoint;->ENTRY_POINT_COMPLETE:Lcom/tapjoy/TJEntryPoint;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x23bacec7 -> :sswitch_8
        -0xef98bdb -> :sswitch_7
        0x194f7 -> :sswitch_6
        0x2fb91e -> :sswitch_5
        0x2fd71e -> :sswitch_4
        0x5fb2286 -> :sswitch_3
        0x6527f10 -> :sswitch_2
        0x68af8e1 -> :sswitch_1
        0x6f078c47 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/TJEntryPoint;
    .locals 1

    const-class v0, Lcom/tapjoy/TJEntryPoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/TJEntryPoint;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/TJEntryPoint;
    .locals 1

    sget-object v0, Lcom/tapjoy/TJEntryPoint;->b:[Lcom/tapjoy/TJEntryPoint;

    invoke-virtual {v0}, [Lcom/tapjoy/TJEntryPoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/TJEntryPoint;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJEntryPoint;->a:Ljava/lang/String;

    return-object p0
.end method
