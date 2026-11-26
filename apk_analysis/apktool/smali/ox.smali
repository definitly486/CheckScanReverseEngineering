.class public final enum Lox;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lox;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lox;

.field public static final enum Login:Lox;

.field public static final enum SignUp:Lox;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lox;

    const-string v1, "Login"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lox;->Login:Lox;

    new-instance v1, Lox;

    const-string v2, "SignUp"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lox;->SignUp:Lox;

    filled-new-array {v0, v1}, [Lox;

    move-result-object v0

    sput-object v0, Lox;->$VALUES:[Lox;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lox;
    .locals 1

    const-class v0, Lox;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lox;

    return-object p0
.end method

.method public static values()[Lox;
    .locals 1

    sget-object v0, Lox;->$VALUES:[Lox;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lox;

    return-object v0
.end method
