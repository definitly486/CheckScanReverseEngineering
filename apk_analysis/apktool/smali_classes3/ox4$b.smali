.class public final enum Lox4$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lox4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lox4$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lox4$b;

.field public static final enum NONE:Lox4$b;

.field public static final enum PLAY:Lox4$b;

.field public static final enum RESUME:Lox4$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lox4$b;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lox4$b;->NONE:Lox4$b;

    new-instance v1, Lox4$b;

    const-string v2, "PLAY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lox4$b;->PLAY:Lox4$b;

    new-instance v2, Lox4$b;

    const-string v3, "RESUME"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lox4$b;->RESUME:Lox4$b;

    filled-new-array {v0, v1, v2}, [Lox4$b;

    move-result-object v0

    sput-object v0, Lox4$b;->$VALUES:[Lox4$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lox4$b;
    .locals 1

    const-class v0, Lox4$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lox4$b;

    return-object p0
.end method

.method public static values()[Lox4$b;
    .locals 1

    sget-object v0, Lox4$b;->$VALUES:[Lox4$b;

    invoke-virtual {v0}, [Lox4$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lox4$b;

    return-object v0
.end method
