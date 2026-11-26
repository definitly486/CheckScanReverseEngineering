.class public final enum Lcom/tapjoy/TJLogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJLogLevel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/TJLogLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/tapjoy/TJLogLevel$Companion;

.field public static final enum DEBUG:Lcom/tapjoy/TJLogLevel;

.field public static final enum ERROR:Lcom/tapjoy/TJLogLevel;

.field public static final enum INFO:Lcom/tapjoy/TJLogLevel;

.field public static final enum WARNING:Lcom/tapjoy/TJLogLevel;

.field public static final synthetic b:[Lcom/tapjoy/TJLogLevel;

.field public static final synthetic c:Lg03;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/tapjoy/TJLogLevel;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tapjoy/TJLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tapjoy/TJLogLevel;->ERROR:Lcom/tapjoy/TJLogLevel;

    new-instance v1, Lcom/tapjoy/TJLogLevel;

    const-string v2, "WARNING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/tapjoy/TJLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tapjoy/TJLogLevel;->WARNING:Lcom/tapjoy/TJLogLevel;

    new-instance v2, Lcom/tapjoy/TJLogLevel;

    const-string v3, "INFO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/tapjoy/TJLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/tapjoy/TJLogLevel;->INFO:Lcom/tapjoy/TJLogLevel;

    new-instance v3, Lcom/tapjoy/TJLogLevel;

    const-string v4, "DEBUG"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/tapjoy/TJLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tapjoy/TJLogLevel;->DEBUG:Lcom/tapjoy/TJLogLevel;

    filled-new-array {v0, v1, v2, v3}, [Lcom/tapjoy/TJLogLevel;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TJLogLevel;->b:[Lcom/tapjoy/TJLogLevel;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lcom/tapjoy/TJLogLevel;->c:Lg03;

    new-instance v0, Lcom/tapjoy/TJLogLevel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tapjoy/TJLogLevel$Companion;-><init>(Ljh2;)V

    sput-object v0, Lcom/tapjoy/TJLogLevel;->Companion:Lcom/tapjoy/TJLogLevel$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tapjoy/TJLogLevel;->a:I

    return-void
.end method

.method public static getEntries()Lg03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg03<",
            "Lcom/tapjoy/TJLogLevel;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/tapjoy/TJLogLevel;->c:Lg03;

    return-object v0
.end method

.method public static final valueOf(I)Lcom/tapjoy/TJLogLevel;
    .locals 1

    .line 9
    sget-object v0, Lcom/tapjoy/TJLogLevel;->Companion:Lcom/tapjoy/TJLogLevel$Companion;

    invoke-virtual {v0, p0}, Lcom/tapjoy/TJLogLevel$Companion;->valueOf(I)Lcom/tapjoy/TJLogLevel;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/TJLogLevel;
    .locals 1

    const-class v0, Lcom/tapjoy/TJLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/TJLogLevel;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/TJLogLevel;
    .locals 1

    sget-object v0, Lcom/tapjoy/TJLogLevel;->b:[Lcom/tapjoy/TJLogLevel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/TJLogLevel;

    return-object v0
.end method


# virtual methods
.method public final getLevel()I
    .locals 0

    iget p0, p0, Lcom/tapjoy/TJLogLevel;->a:I

    return p0
.end method

.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/tapjoy/TJLogLevel;->a:I

    return p0
.end method
