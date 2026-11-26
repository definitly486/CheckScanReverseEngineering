.class public final enum Lcom/tapjoy/TJStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/TJStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FALSE:Lcom/tapjoy/TJStatus;

.field public static final enum TRUE:Lcom/tapjoy/TJStatus;

.field public static final enum UNKNOWN:Lcom/tapjoy/TJStatus;

.field public static final synthetic a:[Lcom/tapjoy/TJStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/tapjoy/TJStatus;

    const/4 v1, 0x0

    const-string v2, "FALSE"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/TJStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/TJStatus;->FALSE:Lcom/tapjoy/TJStatus;

    new-instance v1, Lcom/tapjoy/TJStatus;

    const/4 v2, 0x1

    const-string v3, "TRUE"

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TJStatus;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/tapjoy/TJStatus;->TRUE:Lcom/tapjoy/TJStatus;

    new-instance v2, Lcom/tapjoy/TJStatus;

    const/4 v3, 0x2

    const-string v4, "UNKNOWN"

    invoke-direct {v2, v3, v4}, Lcom/tapjoy/TJStatus;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/tapjoy/TJStatus;->UNKNOWN:Lcom/tapjoy/TJStatus;

    filled-new-array {v0, v1, v2}, [Lcom/tapjoy/TJStatus;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TJStatus;->a:[Lcom/tapjoy/TJStatus;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/tapjoy/TJStatus;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/tapjoy/TJStatus;->UNKNOWN:Lcom/tapjoy/TJStatus;

    return-object p0

    :cond_0
    sget-object p0, Lcom/tapjoy/TJStatus;->TRUE:Lcom/tapjoy/TJStatus;

    return-object p0

    :cond_1
    sget-object p0, Lcom/tapjoy/TJStatus;->FALSE:Lcom/tapjoy/TJStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/TJStatus;
    .locals 1

    .line 14
    const-class v0, Lcom/tapjoy/TJStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/TJStatus;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/TJStatus;
    .locals 1

    sget-object v0, Lcom/tapjoy/TJStatus;->a:[Lcom/tapjoy/TJStatus;

    invoke-virtual {v0}, [Lcom/tapjoy/TJStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/TJStatus;

    return-object v0
.end method


# virtual methods
.method public getBoolean()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/tapjoy/j0;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getValue()I
    .locals 2

    sget-object v0, Lcom/tapjoy/j0;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/tapjoy/TJStatus;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
