.class public final enum Lcom/tapjoy/TJCloseButton$ClosePosition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCloseButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClosePosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/TJCloseButton$ClosePosition;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTTOM_CENTER:Lcom/tapjoy/TJCloseButton$ClosePosition;

.field public static final enum BOTTOM_LEFT:Lcom/tapjoy/TJCloseButton$ClosePosition;

.field public static final enum BOTTOM_RIGHT:Lcom/tapjoy/TJCloseButton$ClosePosition;

.field public static final enum CENTER:Lcom/tapjoy/TJCloseButton$ClosePosition;

.field public static final enum TOP_CENTER:Lcom/tapjoy/TJCloseButton$ClosePosition;

.field public static final enum TOP_LEFT:Lcom/tapjoy/TJCloseButton$ClosePosition;

.field public static final enum TOP_RIGHT:Lcom/tapjoy/TJCloseButton$ClosePosition;

.field public static final synthetic a:[Lcom/tapjoy/TJCloseButton$ClosePosition;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/tapjoy/TJCloseButton$ClosePosition;

    const/4 v1, 0x0

    const-string v2, "TOP_LEFT"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/TJCloseButton$ClosePosition;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/TJCloseButton$ClosePosition;->TOP_LEFT:Lcom/tapjoy/TJCloseButton$ClosePosition;

    new-instance v1, Lcom/tapjoy/TJCloseButton$ClosePosition;

    const/4 v2, 0x1

    const-string v3, "TOP_CENTER"

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TJCloseButton$ClosePosition;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/tapjoy/TJCloseButton$ClosePosition;->TOP_CENTER:Lcom/tapjoy/TJCloseButton$ClosePosition;

    new-instance v2, Lcom/tapjoy/TJCloseButton$ClosePosition;

    const/4 v3, 0x2

    const-string v4, "TOP_RIGHT"

    invoke-direct {v2, v3, v4}, Lcom/tapjoy/TJCloseButton$ClosePosition;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/tapjoy/TJCloseButton$ClosePosition;->TOP_RIGHT:Lcom/tapjoy/TJCloseButton$ClosePosition;

    new-instance v3, Lcom/tapjoy/TJCloseButton$ClosePosition;

    const/4 v4, 0x3

    const-string v5, "CENTER"

    invoke-direct {v3, v4, v5}, Lcom/tapjoy/TJCloseButton$ClosePosition;-><init>(ILjava/lang/String;)V

    sput-object v3, Lcom/tapjoy/TJCloseButton$ClosePosition;->CENTER:Lcom/tapjoy/TJCloseButton$ClosePosition;

    new-instance v4, Lcom/tapjoy/TJCloseButton$ClosePosition;

    const/4 v5, 0x4

    const-string v6, "BOTTOM_LEFT"

    invoke-direct {v4, v5, v6}, Lcom/tapjoy/TJCloseButton$ClosePosition;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/tapjoy/TJCloseButton$ClosePosition;->BOTTOM_LEFT:Lcom/tapjoy/TJCloseButton$ClosePosition;

    new-instance v5, Lcom/tapjoy/TJCloseButton$ClosePosition;

    const/4 v6, 0x5

    const-string v7, "BOTTOM_CENTER"

    invoke-direct {v5, v6, v7}, Lcom/tapjoy/TJCloseButton$ClosePosition;-><init>(ILjava/lang/String;)V

    sput-object v5, Lcom/tapjoy/TJCloseButton$ClosePosition;->BOTTOM_CENTER:Lcom/tapjoy/TJCloseButton$ClosePosition;

    new-instance v6, Lcom/tapjoy/TJCloseButton$ClosePosition;

    const/4 v7, 0x6

    const-string v8, "BOTTOM_RIGHT"

    invoke-direct {v6, v7, v8}, Lcom/tapjoy/TJCloseButton$ClosePosition;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/tapjoy/TJCloseButton$ClosePosition;->BOTTOM_RIGHT:Lcom/tapjoy/TJCloseButton$ClosePosition;

    filled-new-array/range {v0 .. v6}, [Lcom/tapjoy/TJCloseButton$ClosePosition;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TJCloseButton$ClosePosition;->a:[Lcom/tapjoy/TJCloseButton$ClosePosition;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/TJCloseButton$ClosePosition;
    .locals 1

    const-class v0, Lcom/tapjoy/TJCloseButton$ClosePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/TJCloseButton$ClosePosition;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/TJCloseButton$ClosePosition;
    .locals 1

    sget-object v0, Lcom/tapjoy/TJCloseButton$ClosePosition;->a:[Lcom/tapjoy/TJCloseButton$ClosePosition;

    invoke-virtual {v0}, [Lcom/tapjoy/TJCloseButton$ClosePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/TJCloseButton$ClosePosition;

    return-object v0
.end method
